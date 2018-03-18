<<<<<<< HEAD
package com.jcmz.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.tools.Tool;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jcmz.base.BasePropertise;
import com.jcmz.model.Block;
import com.jcmz.model.Post;
import com.jcmz.model.Postpage;
import com.jcmz.model.User;
import com.jcmz.service.ZZ_TestService;
import com.jcmz.tool.DataTypeTool;

/***
 * @remark 用于测试的基础controller类
 * @author for jld
 * @time 2018/2/9/15:30
 *
 */
@Controller
@RequestMapping("/baseJsp")//简单地说为路径型，/* 路径型和后缀型
public class ZZ_TestController {
	public ZZ_TestController() {
		super();
		
	}
	 static DataTypeTool tool;
	static {
		tool=new DataTypeTool();
	}
	private Logger log=LoggerFactory.getLogger(this.getClass());
	@Autowired
	private ZZ_TestService zz_testService;
	@Autowired
	private BasePropertise bp;
	
	@RequestMapping("test")
	public void test() {
		log.info("test begin");
		System.out.println("hello");
		zz_testService.testservice();
		log.debug("test end");
	}
	
	/***
	 * @remark 用于插入数据到用户表
	 * @author for jld
	 * @since 2018/1/29
	 * 
	 */
	@RequestMapping("insertUsers")
	public  void insertUsers() {
		int k=10;//定义插入的结束值
		int j=0;//定义插入的起始值
		
		for(int i=j;i<k;i++) {
		zz_testService.insertUsers(new User( "名字"+i, "jld"+i, "昵称"+i,(int) tool.getZeroOne(), (int)tool.getZeroOne()));
		}
	}
	
	/***
	 * @remark 用于插入数据到block板块表
	 * @author for jld
	 * @since 2018/3/13
	 * 
	 */
	@RequestMapping("insertBlocks")
	public void insertBlocks() {
		int k=7;//定义插入的结束值
		int j=1;//定义插入的起始值
		int z=1;
		List<Postpage> l=zz_testService.getPostPage();
		List<Postpage> l2=zz_testService.selectPageAndBlock();System.out.println("pro:"+bp.getPropertiesValue("${p1}")+"cshi:"+bp.getPropertiesValue("{p"+((1+Math.random()*23))+"}"));
		int ran=(int)(1+Math.random()*23);
		System.out.println("new:"+bp.getPropertiesValue("${p"+ran+"}"));
		
		for(Postpage p:l) {
		for(int i=j;i<k;i++) {
			
		// zz_testService.insertBlocks(new Block((p.getPagename()+"的板块"+i).toString(), (p.getPagename()+"的板块"+i+"的描述"+i).toString(),(Integer) tool.getZeroOne("int"), z));
			
		}
		z++;
		}
	}
	
	/***
	 * @remark 用于插入数据到post帖子表
	 * @author for jld
	 * @since 2018/3/14
	 * 
	 */
	@RequestMapping("insertPosts")
	public void insertPosts() {
		for(int i=1;i<=25;i++) {//25个用户
			for(int k=1;k<=69;k++) {//每个用户69个板块
				for(int j=1;j<=10;j++) {//每个板块20个帖子
					int blockId=k;
					if((int)tool.getZeroOne()==1) {
						blockId=k+j%4;
					}else {
						blockId=k-j%4;
					}
					int ran=(int)(1+Math.random()*23);
			zz_testService.insertPosts(new Post("帖子内容a"+i+"b"+k+"c"+j+"\n"+bp.getPropertiesValue("${p"+ran+"}"), "主题a"+i+"b"+k+"c"+j, (int)(1+Math.random()*25), blockId, (Timestamp) tool.getDateByIJK(i, j, k), 0, i*blockId*j)  );
			
				}
			}
			}
	}
}
=======
package com.jcmz.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.tools.Tool;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jcmz.base.BasePropertise;
import com.jcmz.model.Block;
import com.jcmz.model.Post;
import com.jcmz.model.Postpage;
import com.jcmz.model.User;
import com.jcmz.service.ZZ_TestService;
import com.jcmz.tool.DataTypeTool;

/***
 * @remark 用于测试的基础controller类
 * @author for jld
 * @time 2018/2/9/15:30
 *
 */
@Controller
@RequestMapping("/baseJsp")//简单地说为路径型，/* 路径型和后缀型
public class ZZ_TestController {
	public ZZ_TestController() {
		super();
		
	}
	 static DataTypeTool tool;
	static {
		tool=new DataTypeTool();
	}
	private Logger log=LoggerFactory.getLogger(this.getClass());
	@Autowired
	private ZZ_TestService zz_testService;
	@Autowired
	private BasePropertise bp;
	
	@RequestMapping("test")
	public void test() {
		log.info("test begin");
		System.out.println("hello");
		zz_testService.testservice();
		log.debug("test end");
	}
	
	/***
	 * @remark 用于插入数据到用户表
	 * @author for jld
	 * @since 2018/1/29
	 * 
	 */
	@RequestMapping("insertUsers")
	public  void insertUsers() {
		int k=10;//定义插入的结束值
		int j=0;//定义插入的起始值
		
		for(int i=j;i<k;i++) {
		zz_testService.insertUsers(new User( "名字"+i, "jld"+i, "昵称"+i,(int) tool.getZeroOne(), (int)tool.getZeroOne()));
		}
	}
	
	/***
	 * @remark 用于插入数据到block板块表
	 * @author for jld
	 * @since 2018/3/13
	 * 
	 */
	@RequestMapping("insertBlocks")
	public void insertBlocks() {
		int k=7;//定义插入的结束值
		int j=1;//定义插入的起始值
		int z=1;
		List<Postpage> l=zz_testService.getPostPage();
		List<Postpage> l2=zz_testService.selectPageAndBlock();System.out.println("pro:"+bp.getPropertiesValue("${p1}")+"cshi:"+bp.getPropertiesValue("{p"+((1+Math.random()*23))+"}"));
		int ran=(int)(1+Math.random()*23);
		System.out.println("new:"+bp.getPropertiesValue("${p"+ran+"}"));
		
		for(Postpage p:l) {
		for(int i=j;i<k;i++) {
			
		// zz_testService.insertBlocks(new Block((p.getPagename()+"的板块"+i).toString(), (p.getPagename()+"的板块"+i+"的描述"+i).toString(),(Integer) tool.getZeroOne("int"), z));
			
		}
		z++;
		}
	}
	
	/***
	 * @remark 用于插入数据到post帖子表
	 * @author for jld
	 * @since 2018/3/14
	 * 
	 */
	@RequestMapping("insertPosts")
	public void insertPosts() {
		for(int i=1;i<=25;i++) {//25个用户
			for(int k=1;k<=69;k++) {//每个用户69个板块
				for(int j=1;j<=10;j++) {//每个板块20个帖子
					int blockId=k;
					if((int)tool.getZeroOne()==1) {
						blockId=k+j%4;
					}else {
						blockId=k-j%4;
					}
					int ran=(int)(1+Math.random()*23);
			zz_testService.insertPosts(new Post("帖子内容a"+i+"b"+k+"c"+j+"\n"+bp.getPropertiesValue("${p"+ran+"}"), "主题a"+i+"b"+k+"c"+j, (int)(1+Math.random()*25), blockId, (Timestamp) tool.getDateByIJK(i, j, k), 0, i*blockId*j)  );
			
				}
			}
			}
	}
}
>>>>>>> remotes/origin/master
