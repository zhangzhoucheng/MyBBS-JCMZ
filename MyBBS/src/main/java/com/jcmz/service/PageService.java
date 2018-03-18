package com.jcmz.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jcmz.base.BasePropertise;
import com.jcmz.mapper.BlockMapper;
import com.jcmz.mapper.PostpageMapper;
import com.jcmz.mapper.UserMapper;
import com.jcmz.model.Block;
import com.jcmz.model.BlocksHotNum;
import com.jcmz.model.Postpage;
import com.jcmz.model.User;

@Service
public class PageService {
	@Autowired
	private BasePropertise bp;
	@Autowired
	private PostpageMapper ppm;
	@Autowired
	private UserMapper up;
	@Autowired
	private BlockMapper bm;
	

	public String getPageNameById(int p_id) {
		// TODO Auto-generated method stub
		
		return ppm.selectByPrimaryKey(p_id).getPagename();
	}

	public Postpage getPageById(int p_id) {
		
		Postpage postpage=new Postpage();
		postpage=ppm.selectByPrimaryKey(p_id);
		List<User> users=up.getUserSById(p_id);
		/*for(User u:users) {
		System.err.println("cccc:"+u.toString());
		}*/
		List<Block> blocks=bm.getBlocksByPid(p_id);
		/*for(Block u:blocks) {
			System.err.println("bbbb:"+u.toString());
			}*/
		postpage.setBlocks(blocks);
		postpage.setUsers(users);
		
		
		return postpage;
	}
	
}
