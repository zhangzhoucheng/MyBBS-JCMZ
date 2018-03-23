package com.jcmz.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSONObject;
import com.jcmz.base.BasePropertise;
import com.jcmz.base.MyCookie;
import com.jcmz.mapper.PostreplyMapper;
import com.jcmz.model.PageBean;
import com.jcmz.model.Postreply;
import com.jcmz.model.User;
import com.jcmz.service.PostPagingService;
import com.jcmz.service.PostReplyService;
import com.jcmz.service.PostService;
import com.jcmz.service.UserService;

/***
 * @remark 关于帖子操作的类
 * @author for jld
 * @time 2018/3/18
 */
@Controller
@RequestMapping("/baseJsp")
public class PostController {
	@Autowired
	private PostService ps;
	@Autowired
	private UserService us;
	@Autowired
	private PostPagingService pps;
	@Autowired
	private PostreplyMapper prm;
	@Autowired
	private BasePropertise bp;
	@Autowired
	private MyCookie myCookie;
	@Autowired
	private PostReplyService prs;
	
	
	
	/***
	 * @remark 跳转到该帖子
	 * @param b_id
	 * @param model
	 * @param pageName
	 * @param p_id
	 * @param po_id
	 * @return
	 * @author for jld
	 * @time 2018/3/18
	 */
	@RequestMapping("goToPost")
	public String goToPost(@Param("b_id") int b_id,Model model,@Param("pageName") String pageName,@Param("p_id") int p_id,@Param("po_id") int po_id,@Param("blockName")String blockName,HttpServletRequest request) {
		int nowPage = 1,inp = 1,allCount=0,allPages=0;
		int perPageCount=15;
		List<Postreply> Postreplys=new ArrayList<>();;
		//获取楼主和帖子基础信息
		User userHost=us.getUserAndPostByPid(po_id);
		//model.addAttribute("userHost", userHost);
		request.getSession().setAttribute("userHost", userHost);
		//总条数
		allCount=prm.getAllCount(po_id);
		if(allCount<1) {
			 nowPage=0;
			 inp=0;
			 allCount=0;
		}else {
			//获取回复帖子的有关信息
			 perPageCount=Integer.parseInt(bp.getPropertiesValue("${postPagingTrs}"));
			 Postreplys=pps.findResultsByPageBeanOfPostReply(nowPage, po_id).getPageLists();//取得回复的集合
			 allPages=(allCount+ perPageCount-1)/perPageCount;//取得页数
		}
		model.addAttribute("Postreplys", Postreplys);		
		//其他继续保持的id属性
		model.addAttribute("b_id", b_id);
		model.addAttribute("pageName", pageName);
		model.addAttribute("p_id", p_id);
		model.addAttribute("po_id", po_id);
		model.addAttribute("blockName", blockName);
		model.addAttribute("allPages", allPages);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("inp", inp);
		
		return "/baseJsp/bas-mainThePost";
	}
	
	/**
	 * @remark 用于对楼主的帖子进行点赞的操作，cookie中存在帖子id，以及“点赞”或者”已赞“状态，从而进行对post表点赞数的修改
	 * @param po_id
	 * @param sp_praise
	 * @param request
	 * @param response
	 * @author for jld
	 * @throws IOException 
	 * @time 2018/3/20 18:57
	 */
	
	
	@RequestMapping("praiseToHost")
	public void praiseToHost(@Param("po_id") int po_id,@Param("sp_praise") String sp_praise,HttpServletRequest request,HttpServletResponse response) throws IOException {
		  PrintWriter pw=response.getWriter();
		  JSONObject json=new JSONObject();
		  String poidName="po_id"+po_id;
		  String sta="";
		  if("取赞".equals(sp_praise)||"已赞".equals(sp_praise)) {
			  ps.canclePraise(po_id);//减少一个赞
			 
			  sta="点赞";//json值
			  myCookie.deleteCookie(response, poidName);//把cookie销毁，这样，就可以继续点赞
			  
		  }else {
			  if(!myCookie.isExistTheCookie(poidName, request)) {
				  //cookie不存在，此时可以进行点赞操作，数据库值加一
				  ps.addOnePraise(po_id);
				  sta="取赞";
				  myCookie.getCookie(response, 24, poidName,"1");//为1表示已经赞过
			  }else {
				  //此时表示在之前，这个用户已经通过该浏览器赞过（24小时以后才可以继续赞）
				  //此时把状态变成“已赞”，不加减数据库
				  sta="已赞";
			  }
		  }
		  User userHost=us.getUserAndPostByPid(po_id);
		  request.getSession().setAttribute("userHost", userHost);
		  json.put("sta", sta);
		  pw.println(json.toJSONString());
		  
	}
	
	@RequestMapping("praiseToReply")
	public void praiseToReply(@Param("po_id") int po_id,@Param("sp_praise") String sp_praise,@Param("reply_id")int reply_id,@Param("nowPage")int  nowPage,@Param("inp") int inp,HttpServletRequest request,HttpServletResponse response) throws IOException {
		  PrintWriter pw=response.getWriter();
		  JSONObject json=new JSONObject();
		  String poidName="reply_id"+reply_id;
		  String sta="";
		  if("取赞".equals(sp_praise)||"已赞".equals(sp_praise)) {
			  prs.canclePraise(reply_id);//减少一个赞
			 
			  sta="点赞";//json值
			  myCookie.deleteCookie(response, poidName);//把cookie销毁，这样，就可以继续点赞
			  
		  }else {
			  if(!myCookie.isExistTheCookie(poidName, request)) {
				  //cookie不存在，此时可以进行点赞操作，数据库值加一
				  prs.addOnePraise(reply_id);
				  sta="取赞";
				  myCookie.getCookie(response, 24, poidName,"1");//为1表示已经赞过
			  }else {
				  //此时表示在之前，这个用户已经通过该浏览器赞过（24小时以后才可以继续赞）
				  //此时把状态变成“已赞”，不加减数据库
				  sta="已赞";
			  }
		  }
		  PageBean<Postreply> pag=pps.findResultsByPageBeanOfPostReply(nowPage, po_id);
		  HttpSession session =request.getSession();
		  session.setAttribute("Postreplys", pag.getPageLists());
		  session.setAttribute("nowPage", pag.getNowPage());
		  session.setAttribute("allPages", pag.getPageCount());
		  session.setAttribute("inp",inp); session.setAttribute("po_id",po_id);
			
		  json.put("sta", sta);
		  pw.println(json.toJSONString());
		  
	}
	
	
}
