package com.jcmz.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.WebFault;

import org.springframework.security.core.userdetails.User;

/***
 * @remark 用于过滤拦截请求，不符合则跳转home页面
 * @author for jld
 * @time 2018/2/9/11：29
 *
 */
@WebFilter("/*")
public class FilterResource implements Filter{
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		//先不考虑
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		System.out.println("过滤器执行");
		HttpServletRequest httpRequest=(HttpServletRequest) arg0;
		HttpServletResponse httpReponse=(HttpServletResponse) arg1;
		HttpSession session=httpRequest.getSession();
		com.jcmz.model.User user=(com.jcmz.model.User) session.getAttribute("user");
		String path=httpRequest.getServletPath();
		if(path.indexOf("/login")!=-1||path.indexOf("/baseJsp")!=-1||path.indexOf("/css")!=-1
				||path.indexOf("images")!=-1
				||path.indexOf("/img")!=-1
				||path.indexOf("/js")!=-1
				||path.indexOf("/plugins")!=-1
				||path.indexOf("/Scripts")!=-1
				||path.indexOf("/styles")!=-1
				||path.indexOf("/index.jsp")!=-1
				||path.indexOf("/myRegister.jsp")!=-1
				||path.indexOf("LoginAction")!=-1
				||path.indexOf("/testJsp")!=-1
				||path.indexOf("/homePage.jsp")!=-1
				||path.indexOf("RegisterAction")!=-1){
			System.out.println("go1");
			arg2.doFilter(arg0, arg1);
			return;
		}
		if(user!=null){
			System.out.println("go2");
			arg2.doFilter(arg0, arg1);
			return;
		}
		httpReponse.sendRedirect("/MyBBS/homePage.jsp");
		
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
