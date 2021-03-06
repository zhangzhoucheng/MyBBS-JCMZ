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
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.aliyuncs.exceptions.ClientException;
import com.jcmz.base.MyCookie;
import com.jcmz.model.Post;
import com.jcmz.model.User;
import com.jcmz.service.LoginService;
import com.jcmz.service.PostService;
import com.jcmz.service.UserService;
import com.jcmz.tool.BaseSms;
import com.jcmz.tool.GetRandom;
import com.miaodiyun.httpApiDemo.IndustrySMS;
import com.mysql.fabric.Response;

import sun.net.util.IPAddressUtil;

@Controller
@RequestMapping("/baseJsp")
public class LoginController {

	private Logger log=LoggerFactory.getLogger(this.getClass());//日志
	@Autowired
	private LoginService loginService;
	@Autowired
	private UserService us;
	@Autowired
	private PostService ps;
	@Autowired 
	private MyCookie myCookie;//cookie方法
	private GetRandom getRandom=new GetRandom();//随机数类
    private BaseSms baseSms=new BaseSms();//发短信的类
	/**
	 * @remark 核验用户存在不
	 * @param request
	 * @param response
	 * @param username
	 * @throws IOException
	 * @author for jld
	 */
	@RequestMapping("checkName")
	public void checkNmae(HttpServletRequest request,HttpServletResponse response,@Param("username")String username) throws IOException {
		log.info("username:"+username);
		JSONObject js=new JSONObject();
		String msg="";
		PrintWriter pw=response.getWriter();
		if(username!=null&&!"".equals(username)&&loginService.checkName(username)) {
			log.info("用户【"+username+"】存在");
			msg="";
		}else {
			msg="用户名不存在!";
		}
		
		js.put("msg", msg);
		pw.println(js.toJSONString());
		
	}
	/**
	 * 核验密码用户名
	 * @param request
	 * @param response
	 * @param username
	 * @param remberP
	 * @param userpassword
	 * @throws IOException
	 * @author for jld
	 */
	@RequestMapping("checkPas")//核验密码用户名
	public void checkPas(HttpServletRequest request,HttpServletResponse response,@Param("username") String username, @Param("remberP") String remberP,@Param("userpassword") String
			userpassword) throws IOException {
		String msg=loginService.checkPas(username,userpassword);
		if("2".equals(msg)) {//当用户存在且密码输入正确
			if("true".equals(remberP)) {
				Cookie cookie=myCookie.getCookie(response, 24*7, "usernamecookie",userpassword);//利用写好的cookie方法
			}
			else {
				myCookie.deleteCookie(response, username);
			}
			
			request.getSession().setAttribute("user", us.getUserByName(username));
		}
		else {
			myCookie.deleteCookie(response, username);
		}
		JSONObject js=new JSONObject();
		PrintWriter pw=response.getWriter();
		js.put("msg", msg);
		pw.println(js.toJSONString());
	}
	
	/**
	 * @remark 通过传入cookie的名字（username）来获取cookie的value之后放入json传入到jsp之后给密码框赋值
	 * @param request
	 * @param response
	 * @param username
	 * @throws IOException
	 * @author for jld
	 */
	@RequestMapping("checkNameCookie")
	public void checkNameCookie(HttpServletRequest request,HttpServletResponse response,@Param("username") String username) throws IOException {
		username="usernamecookie";
		Cookie []coos= request.getCookies();
		JSONObject js=new JSONObject();
		PrintWriter pw=response.getWriter();
		String p="";
	     for(Cookie c:coos) {System.out.println(c.getName()+","+c.getValue());
	    	 if(c.getName().equals(username)) {	
	    		p=c.getValue();break;
	    	 }
	     }
	     js.put("pas", p);
	     pw.println(js.toJSONString());
	}
	/***
	 * @remark 注册页面校验数据成功后，直接插入用户到数据库,并且跳转到主页
	 * @param firstname
	 * @param lastname
	 * @param password
	 * @return
	 * @author for jld
	 */
	@RequestMapping("registerGo")
	public String  registerGo(@Param(value="firstname") String firstname,@Param("lastname") String lastname,@Param("password") String password,Model model) {
		log.info("【registerGo方法参数】"+"1:"+firstname+",2:"+lastname+",3:"+password);
		loginService.registerGo(firstname, lastname, password);
		
		return "/homePage";
	}
	
	@RequestMapping("loginSuccess")
	public String  loginSuccess(Model model,HttpServletRequest request) {
		getAllPostAndItsBlockPage(model);
		ModelAndView mv=new ModelAndView();
		
		return "/baseJsp/index";
	}
	
	/***
	 * @remark 得到所有帖子列表，除了相应帖子、板块，版面状态为锁住的，
	 * @param model
	 */
	public void getAllPostAndItsBlockPage(Model model) {
		int allCount =0;
		List<Post> posts=new ArrayList<>();
		allCount=ps.getAllPostAndItsBlockPageCount()/10;
		posts=ps.getAllPostAndItsBlockPage();
		
		model.addAttribute("posts", posts);
		model.addAttribute("allCount", allCount);
		model.addAttribute("nowPage", 1);
		model.addAttribute("inp", 1);
	}
	
	/***
	 * @remark 校验验证码是否正确
	 * @param inputCode
	 * @param request
	 * @param response
	 * @throws IOException
	 * @author for jld
	 */
	@RequestMapping("checkCode")
	public void checkCode(@Param("inputCode") String inputCode,HttpServletRequest request,HttpServletResponse response) throws IOException {
		System.out.println("inputCode:"+inputCode);
		String sessionCode=(String) request.getSession().getAttribute("checkCode");
		JSONObject json=new JSONObject();
		PrintWriter pw=response.getWriter();
		String msg="";
		if(sessionCode==null||"".equals(inputCode)) {
			msg="0";
		}else {
			if(!inputCode.equals(sessionCode)) {
				msg="1";
			}else {
				msg="2";
				request.getSession().removeAttribute("checkCode");
			}
		}
		json.put("msg", msg);
		pw.println(json.toJSONString());
	}
	
	/***
	 * @remark 创建6位数随机数字验证码
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ClientException 
	 * @author for jld
	 */
	@RequestMapping("createCheckCode")
	public void createCheckCode(HttpServletRequest request,HttpServletResponse response,@Param(value="username") String username,@Param("tel") String tel) throws IOException, ClientException {
		String checkCode=Integer.toString(getRandom.getRandomByBit(6));
		HttpSession session=request.getSession();
		session.setAttribute("checkCode", checkCode);
		baseSms.sendSms(tel, checkCode, username);//阿里短信
		//IndustrySMS.senMsg(tel, username, checkCode);//秒滴短信
		PrintWriter pw=response.getWriter();
		pw.println("{\"msg\":\"1\"}");
		
	}
	@RequestMapping("removeSession")
	public void removeSesson(HttpServletRequest request,HttpServletResponse response,@Param(value="name") String name) throws IOException {
		request.getSession().removeAttribute(name);
		System.out.println("here----------------------------------------");
		JSONObject json=new JSONObject();
		json.put("msg", "1");
		response.getWriter().println(json.toJSONString());
	}
	@RequestMapping("reStart")
	public void reStart(HttpServletRequest request,HttpServletResponse response) throws IOException {
		HttpSession s=request.getSession();
		JSONObject  j=new JSONObject();
		if(s.getAttribute("user")==null) {
			
		}else {
			s.removeAttribute("user");
		}
		j.put("msg", 1);
		response.getWriter().println(j.toJSONString());
		
	}
}
