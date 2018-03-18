package com.jcmz.base;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;

/***
 * @remark 获取传入指定参数的cookie
 * @author for jld
 * @time 2018/2/27 9:19
 */
@Component
public class MyCookie  {

	/***
	 * @remark 添加删除cookie
	 * @param response
	 * @param hour
	 * @param cookieName
	 * @param cookieValue
	 * @return
	 */
	public Cookie getCookie(HttpServletResponse response,int hour,String cookieName,String cookieValue) {
		Cookie cookie=new Cookie(cookieName,cookieValue);
		cookie.setMaxAge(hour*60*60);
		response.addCookie(cookie);
		return cookie;
	}
	public void deleteCookie(HttpServletResponse response,String cookieName) {
		Cookie cookie = new Cookie(cookieName, null);//设置为空，取名字为“cooPaw”是为了如果存在则覆盖销毁，不存在也会创建之后也销毁了
		cookie.setMaxAge(0);//生命周期0；
		response.addCookie(cookie);
	}
}
