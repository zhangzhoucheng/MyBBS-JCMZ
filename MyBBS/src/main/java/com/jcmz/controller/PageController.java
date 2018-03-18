package com.jcmz.controller;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jcmz.mapper.BlocksHotNumMapper;
import com.jcmz.model.BlocksHotNum;
import com.jcmz.model.Postpage;
import com.jcmz.service.PageService;

/***
 * @remark 对版面操作的controller，如点击进入该版面，里面会有很多板块
 * @author for jld
 * @time 2018/3/13
 *
 */
@Controller
@RequestMapping("/baseJsp")
public class PageController {

	@Autowired
	private PageService ps;
	@Autowired
	private BlocksHotNumMapper bh;
	
	/***
	 * @remark 用于点击版面列表某个版面的时候会跳转到对应的版面详情页面
	 * @param p_id
	 * @param model
	 * @return
	 * @time 2018/3/15
	 */
	@RequestMapping("gotoBlocks")
	public String  gotoBlocks(@Param("p_id") int p_id,Model model) {
		String pageName=ps.getPageNameById(p_id);
		Postpage postpage=ps.getPageById(p_id);
		String blocksHotNum=bh.selectByPrimaryKey(1).getNum().toString();
		model.addAttribute("pageName",pageName);
		model.addAttribute("blocksHotNum", blocksHotNum);
		model.addAttribute("postpage", postpage);
		model.addAttribute("p_id", p_id);
		return "/baseJsp/bas-maniThePage";
	}
}
