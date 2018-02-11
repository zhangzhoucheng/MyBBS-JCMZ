package com.jcmz.controller;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;

public class StartUp_load extends HttpServlet implements ApplicationListener<ContextRefreshedEvent>   {

	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@SuppressWarnings("unused")
	@Autowired  
	private HttpSession session;
	//如下两种方式都可以再项目刚启动后执行方法
		//<1>:这个注解是root applicationContext初始话后，
	@PostConstruct
	public String GetStudentList() {
		//List<Student> list=studentService.getStudentList();
		System.out.println("此项目启动forjld");
		
		return "studentlist";
	}
	public void onApplicationEvent(ContextRefreshedEvent  event) {
		// TODO Auto-generated method stub
		if(event.getApplicationContext().getParent() == null){//root application context 没有parent，他就是老大.
			//需要执行的逻辑代码，当spring容器初始化完成后就会执行该方法。
			System.out.println("猪猪侠报道");
			}
		if(event.getApplicationContext().getParent() != null){//root application context 没有parent，他就是老大.
			//需要执行的逻辑代码，当spring容器初始化完成和servlet容器也初始化完成后就会执行该方法。
			System.out.println("mmmmmmmmm哒哒");
			/*ServletRequestAttributes sra = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
			HttpServletRequest request = sra.getRequest();
			request.getSession().setAttribute("k", "tjl");*/
		    //此初始化操作可以读取一些数据放到本地盘之类的，方便程序后续执行，
			//关于这个操作我想法是直接能够获取数据放入map，这样页面就可以直接访问数据了（但是无法获取request对象？？？）
		
			}
	
	}
	
	
	
	
}
