package com.jcmz.controller;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jcmz.service.PostService;

/***
 * @remark 关于帖子操作的类
 * @author for jld
 * @time 2018/3/18
 */
@Controller
@RequestMapping("/baseJsp")
public class PostController {
	@Autowired
	private PostService ps;
	
	/***
	 * @remark 跳转到该帖子
	 * @param b_id
	 * @param model
	 * @param pageName
	 * @param p_id
	 * @param po_id
	 * @return
	 * @author for jld
	 * @time 2018/3/18
	 */
	@RequestMapping("goToPost")
	public String goToPost(@Param("b_id") int b_id,Model model,@Param("pageName") String pageName,@Param("p_id") int p_id,@Param("po_id") int po_id,@Param("blockName")String blockName) {
		
		model.addAttribute("b_id", b_id);
		model.addAttribute("pageName", pageName);
		model.addAttribute("p_id", p_id);
		model.addAttribute("po_id", po_id);
		model.addAttribute("blockName", blockName);
		return "/baseJsp/bas-mainThePost";
	}
}
