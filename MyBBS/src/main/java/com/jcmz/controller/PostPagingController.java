package com.jcmz.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSONObject;
import com.jcmz.model.PageBean;
import com.jcmz.model.Post;
import com.jcmz.model.Postbase;
import com.jcmz.model.Postreply;
import com.jcmz.model.User;
import com.jcmz.service.PostPagingService;

@Controller
@RequestMapping("/baseJsp")
public class PostPagingController {
	
	@Autowired
	private PostPagingService pps;
	
	/***
	 * @remark 分页的操作类，对于帖子集合页面的分页
	 * @param nowPage
	 * @param b_id
	 * @param inp
	 * @param p_id
	 * @param pageName
	 * @param blockName
	 * @param response
	 * @param request
	 * @param model
	 * @throws IOException
	 * @author for jld
	 * @time 2018/3/16 23:58
	 */
	@RequestMapping("postPaging")
	public void postPaging(@Param("nowPage") int nowPage ,@Param("b_id") int b_id ,@Param("inp") int inp,@Param("p_id") int p_id,@Param("pageName") String pageName,@Param("blockName") String blockName,HttpServletResponse response,HttpServletRequest request,Model model) throws IOException {
		PrintWriter pw=response.getWriter();
		JSONObject jons=new JSONObject();
		HttpSession session=request.getSession();
		PageBean<Post> pag=pps.findResultsByPageBean(nowPage, b_id);
		if(inp==0) {
			inp=1;
		}else if(inp>pag.getPageCount()){
			inp=pag.getPageCount();
					
		}else {
			
		}
		session.setAttribute("postsByTime", pag.getPageLists());
		session.setAttribute("nowPage", pag.getNowPage());
		session.setAttribute("allCount", pag.getPageCount());
		session.setAttribute("inp", inp);
		session.setAttribute("p_id", p_id);
		session.setAttribute("pageName", pageName);
		session.setAttribute("blockName",blockName);

		session.setAttribute("b_id", b_id);
		jons.put("suc", 1);
		pw.print(jons.toJSONString());
	}
	
	/***
	 * @remark 分页操作，对于帖子详情的回复者的基础信息的错操作
	 * @param nowPage
	 * @param po_id
	 * @param inp
	 * @param response
	 * @param request
	 * @param model
	 * @throws IOException
	 * @author for jld
	 * @time 2018/3/21 0：00
	 * 
	 */
	@RequestMapping("postReplyPaging")
	public void userPaging(@Param("nowPage") int nowPage ,@Param("po_id") int po_id ,@Param("inp") int inp,HttpServletResponse response,HttpServletRequest request,Model model) throws IOException {
		PrintWriter pw=response.getWriter();
		JSONObject jons=new JSONObject();
		HttpSession session=request.getSession();
		PageBean<Postreply> pag=pps.findResultsByPageBeanOfPostReply(nowPage, po_id);
		if(inp==0) {
			inp=1;
		}else if(inp>pag.getPageCount()){
			inp=pag.getPageCount();
					
		}else {
			
		}
		session.setAttribute("Postreplys", pag.getPageLists());
		session.setAttribute("nowPage", pag.getNowPage());
		session.setAttribute("allPages", pag.getPageCount());
		session.setAttribute("inp", inp);
		

		session.setAttribute("po_id", po_id);
		jons.put("suc", 1);
		pw.print(jons.toJSONString());
	}
}
