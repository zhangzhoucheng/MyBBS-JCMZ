package com.jcmz.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jcmz.mapper.BlockMapper;
import com.jcmz.mapper.PostMapper;
import com.jcmz.model.Block;
import com.jcmz.model.Post;

@Service
public class BlockService {

	@Autowired
	private PostMapper pm;
	@Autowired
	private BlockMapper bm;

	public List<Post> getoBlock(int b_id) {
		// TODO Auto-generated method stub
		List<Post> posts=pm.getPostsByBid(b_id);
		return posts;
	}

	public List<Post> getoBlockSetTop(int b_id) {
		// TODO Auto-generated method stub
		return pm.getoBlockSetTop(b_id);
	}

	public List<Post> getoBlockByTime(int b_id) {
		// TODO Auto-generated method stub
		return pm.getoBlockByTime(b_id);
	}

	public Block getBlockById(int b_id) {
		// TODO Auto-generated method stub
		return bm.selectByPrimaryKey(b_id);
	}
	
}
