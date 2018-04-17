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
import com.aliyuncs.http.HttpResponse;
import com.jcmz.model.FocusUser;
import com.jcmz.model.PageBean;
import com.jcmz.model.Post;

import com.jcmz.model.Postreply;
import com.jcmz.model.User;
import com.jcmz.service.FocusCollectService;
import com.jcmz.service.PostPagingService;

@Controller
@RequestMapping("/baseJsp")
public class PostPagingController {
	
	@Autowired
	private PostPagingService pps;
	@Autowired
	private FocusCollectService fcs;
	
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
	
	//对于index主页的帖子列表，进行分页，（是针对所有帖子）
	@RequestMapping("postAllPaging")
	public void postAllPaging(@Param("nowPage") int nowPage , int inp,Model model,HttpServletResponse response,HttpServletRequest request) throws IOException {
		PrintWriter pw=response.getWriter();
		JSONObject jons=new JSONObject();
		HttpSession session=request.getSession();
		PageBean<Post> pag=pps.findAllResultsByPageBean(nowPage);
		if(inp==0) {
			inp=1;
		}else if(inp>pag.getPageCount()){
			inp=pag.getPageCount();
					
		}else {
			
		}
		session.setAttribute("posts", pag.getPageLists());
		session.setAttribute("nowPage", pag.getNowPage());
		session.setAttribute("allCount", pag.getPageCount());
		session.setAttribute("inp", inp);
		jons.put("suc", 1);
		pw.print(jons.toJSONString());
	}
	
	
	//对于index主页的我的收藏贴子列表，进行分页，
	@RequestMapping("postCollectPaging")
	public void postCollectPaging(@Param("nowPage") int nowPage , int inp,Model model,HttpServletResponse response,HttpServletRequest request) throws IOException {
		PrintWriter pw=response.getWriter();
		JSONObject jons=new JSONObject();
		User user=null;
		if(request.getSession().getAttribute("user")!=null) {
			user=(User) request.getSession().getAttribute("user");
		}
		PageBean<Post> pag=pps.findPriseResultsByPageBean(nowPage,user.getId());
		if(inp==0) {
			inp=1;
		}else if(inp>pag.getPageCount()){
			inp=pag.getPageCount();
					
		}else {
			
		}
		
		jons.put("nowPage", pag.getNowPage());
		jons.put("allCount", pag.getPageCount());
		jons.put("inp", inp);
		jons.put("posts", pag.getPageLists());
		pw.print(jons.toJSONString());
	}
	
	//对于index主页的我的贴子列表，进行分页，
		@RequestMapping("pagingMyposts")
		public void pagingMyposts(@Param("nowPage") int nowPage , @Param("inp")int inp,Model model,HttpServletResponse response,HttpServletRequest request) throws IOException {
			PrintWriter pw=response.getWriter();
			JSONObject jons=new JSONObject();
			User user=null;
			if(request.getSession().getAttribute("user")!=null) {
				user=(User) request.getSession().getAttribute("user");
			}
			PageBean<Post> pag=pps.findMyPostResultsByPageBean(nowPage,user.getId());
			if(inp==0) {
				inp=1;
			}else if(inp>pag.getPageCount()){
				inp=pag.getPageCount();
						
			}else {
				
			}
			
			jons.put("nowPage", pag.getNowPage());
			jons.put("allCount", pag.getPageCount());
			jons.put("inp", inp);
			jons.put("posts", pag.getPageLists());
			pw.print(jons.toJSONString());
		}
	
	//对于index主页的“我的关注”--点击查看后得到“我的关注的该人的帖子列表”，进行分页，
			@RequestMapping("pagingTheUserPost")
			public void pagingTheUserPost(@Param("nowPage") int nowPage , @Param("inp")int inp,@Param("userId")int userId,Model model,HttpServletResponse response,HttpServletRequest request) throws IOException {
				PrintWriter pw=response.getWriter();
				JSONObject jons=new JSONObject();
				User user=null;
				if(request.getSession().getAttribute("user")!=null) {
					user=(User) request.getSession().getAttribute("user");
				}
				PageBean<Post> pag=pps.findMyPostResultsByPageBean(nowPage,userId);
				if(inp==0) {
					inp=1;
				}else if(inp>pag.getPageCount()){
					inp=pag.getPageCount();
							
				}else {
					
				}
				
				jons.put("nowPage", pag.getNowPage());
				jons.put("allCount", pag.getPageCount());
				jons.put("inp", inp);
				jons.put("posts", pag.getPageLists());
				pw.print(jons.toJSONString());
			}
	
	//对于index主页的"我的关注"列表（是指关注某个人)，进行分页，
			@RequestMapping("pagingMyFocus")
			public void pagingMyFocus(@Param("nowPage") int nowPage , int inp,Model model,HttpServletResponse response,HttpServletRequest request) throws IOException {
				PrintWriter pw=response.getWriter();
				JSONObject jons=new JSONObject();
				User user=null;
				if(request.getSession().getAttribute("user")!=null) {
					user=(User) request.getSession().getAttribute("user");
				}
				PageBean<FocusUser> pag=pps.findMyFocuseUserResultsByPageBean(nowPage,user.getId());
				if(inp==0) {
					inp=1;
				}else if(inp>pag.getPageCount()){
					inp=pag.getPageCount();
							
				}else {
					
				}
				
				jons.put("nowPage", pag.getNowPage());
				jons.put("allCount", pag.getPageCount());
				jons.put("inp", inp);
				jons.put("posts", pag.getPageLists());
				pw.print(jons.toJSONString());
			}
	
			/*删除我关注的某个人，这条记录，*/
			@RequestMapping("deleteMyFocus")
			public void deleteMyFocus(@Param("nowPage") int nowPage ,@Param("toUserId") int toUserId, int inp,Model model,HttpServletResponse response,HttpServletRequest request) throws IOException {
				//删除focus表，以及改变user中的，我的关注数，和他的被关注数（都减一）
				
				User user=null;
				if(request.getSession().getAttribute("user")!=null) {
					user=(User) request.getSession().getAttribute("user");
				}else {
					return ;
				}
				fcs.cancleFocus(user.getId(),toUserId);//对关注表删除一条数据
				fcs.subFocusNum(toUserId);//同时减少对象的关注数量
				fcs.subMyFocusNum(user.getId());//同时减少“我的关注”的数量
				
				pagingMyFocus(nowPage, inp, model, response, request);
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
