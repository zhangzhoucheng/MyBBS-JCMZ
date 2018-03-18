package com.jcmz.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jcmz.model.Block;
import com.jcmz.model.Postpage;
import com.jcmz.service.HomeService;

@Controller
@RequestMapping("/baseJsp")
public class HomeController {

	@Autowired
	private HomeService hs;
	
	@RequestMapping("/tourist")
	public String tourist( Model model) {
		List<Postpage> list=hs.getPostPages();
		
		model.addAttribute("pageList", list);
		return "/baseJsp/bas-mainPage";
		
	}
}
