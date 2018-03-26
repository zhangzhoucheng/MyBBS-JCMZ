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
import com.jcmz.model.PageBean;
import com.jcmz.model.Postreply;
import com.jcmz.model.User;
import com.jcmz.service.FocusCollectService;
import com.jcmz.service.PostPagingService;
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
				}
			}else {//该用户没收藏，那么就完成收藏
				msg="取藏";
				fcs.insertCollect(po_id,user_id);//完成收藏，对收藏表增加一条数据
				fcs.addCollectedNumInPostTable(po_id);//同时对帖子表地收藏数量加一
				User userHost=us.getUserAndPostByPid(po_id);//用于获取局部刷新的数据
				session.setAttribute("userHost", userHost);
			}
			
		}
		j.put("msg", msg);
		pw.println(j.toJSONString());
		
	}
	
}
