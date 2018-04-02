package com.jcmz.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSONObject;
import com.jcmz.base.MyCookie;
import com.jcmz.model.PageBean;
import com.jcmz.model.Postreply;
import com.jcmz.model.User;
import com.jcmz.service.FocusCollectService;
import com.jcmz.service.PostPagingService;
import com.jcmz.service.PostReplyService;
import com.jcmz.service.UserService;

/***
 * @remark  操作:关注某个人，收藏帖子的控制类
 * @author for jld
 *
 */
@Controller
@RequestMapping("/baseJsp")
public class FocusCollectController {
	@Autowired
	private FocusCollectService fcs;
	@Autowired
	private PostPagingService pps;
	@Autowired
	private UserService us;
	@Autowired
	private PostReplyService prs;
	@Autowired
	private MyCookie myCookie;
	
	
	/***
	 * @remark 收藏帖子的方法
	 * @param po_id
	 * @param user_id
	 * @author for jld
	 * @throws IOException 
	 * @time 2018/3/21 10:20
	 */
	@RequestMapping("collectPost")
	private void collectPost(@Param("po_id") int po_id, @Param("nowPage") int nowPage,@Param("host_col") String host_col,HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		HttpSession session=request.getSession();	
		PrintWriter pw=response.getWriter();
		JSONObject j=new JSONObject();
		PageBean<Postreply> pag;
		int user_id=1;
		User user;
		String msg="";
		if(null==session.getAttribute("user")||"".equals(session.getAttribute("user"))) {
				msg="0";//此时用户没有登录
		}else {//用户登录了
			user=(User)session.getAttribute("user");
			user_id=user.getId();
			if(fcs.isCollectThePost(po_id,user_id)) {//检查一下用户有没有已经收藏该贴子
				//当收藏了：
				if("收藏".equals(host_col)) {
					msg="已藏";
				}else if("已藏".equals(host_col)||"取藏".equals(host_col)) {
					msg="收藏";//此时进行取消收藏的操作，所以要更改两张数据库的表（用户表里面的收藏
					fcs.cancleCollect(user_id,po_id);//对收藏表删除一条数据
					fcs.subCollectedNumInPostTable(po_id);//同时对帖子表地收藏数量减一
					 fcs.subMyCollectNum(user_id);                                  //同时对我的收藏数减一
				}
			}else {//该用户没收藏，那么就完成收藏
				msg="取藏";
				fcs.insertCollect(po_id,user_id);//完成收藏，对收藏表增加一条数据
				fcs.addCollectedNumInPostTable(po_id);//同时对帖子表地收藏数量加一
				fcs.addMyCollectNum(user_id);//同时对我的收藏数加一
				
			}
			User userHost=us.getUserAndPostByPid(po_id);//用于获取局部刷新的数据
			session.setAttribute("userHost", userHost);
			
		}
		j.put("msg", msg);
		pw.println(j.toJSONString());
		
	}
	
	
/*	
	@RequestMapping("focusPostHost")
	private void focusPostHost(@Param("po_id") int po_id,@Param("host_foc") String host_foc,HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		HttpSession session=request.getSession();	
		PrintWriter pw=response.getWriter();
		JSONObject j=new JSONObject();
		PageBean<Postreply> pag;
		int user_id=1;
		User user;
		String msg="";
		int uid=fcs.getBefocusedUserIdByPoid(po_id);//获取贴主id，通过帖子id
		if(null==session.getAttribute("user")||"".equals(session.getAttribute("user"))) {
				msg="0";//此时用户没有登录
		}else {//用户登录了
			user=(User)session.getAttribute("user");
			user_id=user.getId();
			if(fcs.isfocusTheUser(po_id,user_id)) {//检查一下用户有没有已经关注该人
				//当关注了：
				if("关注".equals(host_foc)) {
					msg="已关";
				}else if("已关".equals(host_foc)||"取关".equals(host_foc)) {
					msg="关注";//此时进行取消关注的操作，所以要更改两张数据库的表（用户表里面的关注
					fcs.cancleFocus(user_id,uid);//对关注表删除一条数据
					fcs.subFocusNumInUserTable(po_id);//同时对帖子表地关注数量减一
				}
			}else {//该用户没关注，那么就完成关注
				msg="取关";
				fcs.insertFocus(po_id,user_id);//完成关注，对关注表增加一条数据
				
				fcs.addFocusNumInUserTable(uid);//同时对用户表地关注数量加一,
				
			}
			User userHost=us.getUserAndPostByPid(po_id);//用于获取局部刷新的数据
			session.setAttribute("userHost", userHost);
			
		}
		j.put("msg", msg);
		pw.println(j.toJSONString());
		
	}*/
	
	@RequestMapping("focusPostHost")
	private void focusPostHost(@Param("po_id") int po_id,@Param("host_foc") String host_foc,HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		HttpSession session=request.getSession();	
		PrintWriter pw=response.getWriter();
		JSONObject j=new JSONObject();
		PageBean<Postreply> pag;
		int user_id=1;
		User user;
		String msg="";
		int uid=fcs.getBefocusedUserIdByPoid(po_id);//获取贴主id，通过帖子id
		if(null==session.getAttribute("user")||"".equals(session.getAttribute("user"))) {
				msg="0";//此时用户没有登录
		}else {//用户登录了
			user=(User)session.getAttribute("user");
			user_id=user.getId();
			if(fcs.isfocusTheUser(po_id,user_id)) {//检查一下用户有没有已经关注该人
				//当关注了：
				if("关注".equals(host_foc)) {
					msg="已关";
				}else if("已关".equals(host_foc)||"取关".equals(host_foc)) {
					msg="关注";//此时进行取消关注的操作，所以要更改两张数据库的表（用户表里面的关注
					fcs.cancleFocus(user_id,uid);//对关注表删除一条数据
					fcs.subFocusNumInUserTable(po_id);//同时对用户表的贴主关注数量减一
					fcs.subMyFocusNum(user_id);//同时减少“我的关注”的数量
				}
			}else {//该用户没关注，那么就完成关注
				msg="取关";
				fcs.insertFocus(po_id,user_id);//完成关注，对关注表增加一条数据
				
				fcs.addFocusNumInUserTable(uid);//同时对用户表地关注数量加一,addMyFocusNum
				fcs.addMyFocusNum(user_id);//同时增加我关注其他人的数量
			}
			User userHost=us.getUserAndPostByPid(po_id);//用于获取局部刷新的数据
			session.setAttribute("userHost", userHost);
			
		}
		j.put("msg", msg);
		pw.println(j.toJSONString());
		
	}
	
	
	@RequestMapping("focusReplyUser")
	public void focusReplyUser(@Param("po_id") int po_id,@Param("sp_focus") String sp_focus,@Param("reply_userId")int reply_userId,@Param("nowPage")int  nowPage,@Param("inp") int inp,HttpServletRequest request,HttpServletResponse response) throws IOException {
		  PrintWriter pw=response.getWriter();
		  JSONObject json=new JSONObject();
		  HttpSession session=request.getSession();	
		  String sta="";
		  int uid=reply_userId;
		  int user_id;
		  User user;
		  if("取关".equals(sp_focus)||"已关".equals(sp_focus)) {//此时用户一定已经登录
			 user=(User)session.getAttribute("user");
			 user_id=user.getId();
			 fcs.cancleFocus(user_id, uid);//删除关注回复者的记录，在关注表中
			 fcs.subFocusNum(uid);//删除关注uid对应的用户的关注数
			 fcs.subMyFocusNum(user_id);//删除我关注别人的数量
			 
			  sta="关注";//json值
			
			  
		  }else {
			  if(null==session.getAttribute("user")||"".equals(session.getAttribute("user"))) {
				  sta="0";
				 
			  }else{
				  user=(User)session.getAttribute("user");
				  user_id=user.getId();
				  if(fcs.isFocusTheUserByIdId(user_id,uid)) {//检查登录用户是否关注该回复帖子的用户
					  sta="已关";
				  }else {//当没有关注的时候则进行关注
					  fcs.inserFocusByIdId(user_id,uid);//给关注表增加一条记录，通过登录用户id和回复者的id
					  fcs.addFocusNumInUserTable(uid);//增加关注该回复者的关注者数量
					  fcs.addMyFocusNum(user_id);//增加我的关注数量
					  sta="取关";
				  }
				 
			  }
		  }
		  PageBean<Postreply> pag=pps.findResultsByPageBeanOfPostReply(nowPage, po_id);
		  session.setAttribute("Postreplys", pag.getPageLists());
		  session.setAttribute("nowPage", pag.getNowPage());
		  session.setAttribute("allPages", pag.getPageCount());
		  session.setAttribute("inp",inp); session.setAttribute("po_id",po_id);
			
		  json.put("sta", sta);
		  pw.println(json.toJSONString());
		  
	}
	
}
