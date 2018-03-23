package com.jcmz.controller;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jcmz.mapper.BlocksHotNumMapper;
import com.jcmz.model.PageBean;
import com.jcmz.model.Post;
import com.jcmz.service.BlockService;
import com.jcmz.service.PostPagingService;
import com.jcmz.tool.SqlTableQuick;

/***
 * @remark 用于访问到某个版块的controller，操作后，进入该板块，显示帖子列表
 * @author for jld
 * @time 2018/3/15
 *
 */
@Controller
@RequestMapping("/baseJsp")
public class BlockController {

	@Autowired
	private BlockService blockService;
	
	@Autowired
	private BlocksHotNumMapper bh;
	@Autowired
	private PostPagingService pps;
	
	/***
	 * @remark 跳转入该板块
	 * @param b_id
	 */
	@RequestMapping("gotoBlock")
	public String  gotoBlock( @Param("b_id") int b_id,Model model,@Param("pageName") String pageName,@Param("p_id") int p_id) {
		List<Post> posts=blockService.getoBlock(b_id);
		List<Post> postsBySetTop=blockService.getoBlockSetTop(b_id);
		//List<Post> postsByTime=blockService.getoBlockByTime(b_id);
		PageBean<Post> pag=pps.findResultsByPageBean(1, b_id);
		List<Post> postsByTime=pag.getPageLists();//初始显示第一页
		int allCount=pag.getPageCount();
		String blocksHotNum=bh.selectByPrimaryKey(1).getNum().toString();
		String blockName=blockService.getBlockById(b_id).getBlockname();
		model.addAttribute("pageName", pageName);
		model.addAttribute("posts", posts);
		model.addAttribute("blocksHotNum",blocksHotNum );
		model.addAttribute("postsBySetTop",postsBySetTop );
		model.addAttribute("postsByTime",postsByTime );
		model.addAttribute("blockName", blockName);
		model.addAttribute("p_id", p_id);
		model.addAttribute("b_id", b_id);
		model.addAttribute("allCount", allCount);
		model.addAttribute("nowPage", 1);
		model.addAttribute("inp", 1);


		return "/baseJsp/bas-mainTheBlock";
	}
}
