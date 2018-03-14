package com.jcmz.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;

import java.util.ArrayList;
import java.util.List;

import javax.tools.Tool;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jcmz.model.Block;
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
	
	@RequestMapping("test")
	public void test() {
		log.info("test begin");
		System.out.println("hello");
		zz_testService.testservice();
		log.debug("test end");
	}
	
	@RequestMapping("insertUsers")
	public  void insertUsers() {
		int k=10;//定义插入的结束值
		int j=0;//定义插入的起始值
		
		for(int i=j;i<k;i++) {
		zz_testService.insertUsers(new User( "名字"+i, "jld"+i, "昵称"+i,(int) tool.getZeroOne(), (int)tool.getZeroOne()));
		}
	}
	@RequestMapping("insertBlocks")
	public void insertBlocks() {
		int k=7;//定义插入的结束值
		int j=1;//定义插入的起始值
		int z=1;
		List<Postpage> l=zz_testService.getPostPage();
		List<Postpage> l2=zz_testService.selectPageAndBlock();
		for(Postpage p:l) {
		for(int i=j;i<k;i++) {
			
		//  zz_testService.insertBlocks(new Block((p.getPagename()+"的板块"+i).toString(), (p.getPagename()+"的板块"+i+"的描述"+i).toString(),(Integer) tool.getZeroOne("int"), z));
			
		}
		z++;
		}
	}
}
