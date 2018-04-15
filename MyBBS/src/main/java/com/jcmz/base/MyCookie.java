package com.jcmz.base;



import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
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
	 * @remark 初始化一个cookie
	 * @param response
	 * @param hour
	 * @param cookieName
	 * @param cookieValue
	 * @return
	 * @Restructure for jld
	 * @time 2018/3/20 19:23
	 */
	public Cookie getCookie(HttpServletResponse response,int hour,String cookieName,String cookieValue) {
		deleteCookie(response,cookieName);
		Cookie cookie=new Cookie(cookieName,cookieValue);
		cookie.setMaxAge(hour*60*60);
		response.addCookie(cookie);
		return cookie;
	}
	
	/***
	 * @remark 删除一个cookie
	 * @param response
	 * @param cookieName
	 * @author for jld
	 * @time 2018/2
	 */
	public void deleteCookie(HttpServletResponse response,String cookieName) {
		Cookie cookie = new Cookie(cookieName, null);//设置为空，取名字为“cooPaw”是为了如果存在则覆盖销毁，不存在也会创建之后也销毁了
		cookie.setMaxAge(0);//生命周期0；
		response.addCookie(cookie);
	}
	
	/***
	 * @remak 判断是否存在该cookie
	 * @param cookieName
	 * @return
	 * @author for jld
	 * @time 2018/3/20 19:26
	 */
	public boolean isExistTheCookie(String cookieName,HttpServletRequest request) {
		Cookie[] cs=request.getCookies();
		int flag=0;
		for(int i=0;i<cs.length;i++) {
			if (cookieName.equals(cs[i].getName())) {
				//此时存在
				flag=1;
				break;
			}
		}
		if(flag==1) {
			return true;
		}
		else {
			return false;
		}
	}
}
