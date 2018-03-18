<<<<<<< HEAD
package com.jcmz.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jcmz.mapper.BlockMapper;
import com.jcmz.mapper.PostMapper;
import com.jcmz.mapper.PostpageMapper;
import com.jcmz.mapper.UserMapper;
import com.jcmz.model.Block;
import com.jcmz.model.Post;
import com.jcmz.model.Postpage;
import com.jcmz.model.PostpageExample;
import com.jcmz.model.User;

@Service
public class ZZ_TestService {
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private BlockMapper blockMapper;
	@Autowired
	private PostpageMapper ppm;
	@Autowired
	private PostMapper pm;
	public void testservice() {
		System.out.println("service方法");
	}

	
	public void insertUsers(User user) {
		// TODO Auto-generated method stub
		userMapper.insert(user);
	}
	public void insertBlocks(Block b) {
		blockMapper.insert(b);
	}
	public List<Postpage> getPostPage() {
		
		return ppm.selectByExample( new PostpageExample());
	}
	public List<Postpage> selectPageAndBlock() {
		
		return ppm.selectPageAndBlock();
	}


	public void insertPosts(Post post) {
		// TODO Auto-generated method stub
		pm.insert(post);
	}
}
=======
package com.jcmz.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jcmz.mapper.BlockMapper;
import com.jcmz.mapper.PostMapper;
import com.jcmz.mapper.PostpageMapper;
import com.jcmz.mapper.UserMapper;
import com.jcmz.model.Block;
import com.jcmz.model.Post;
import com.jcmz.model.Postpage;
import com.jcmz.model.PostpageExample;
import com.jcmz.model.User;

@Service
public class ZZ_TestService {
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private BlockMapper blockMapper;
	@Autowired
	private PostpageMapper ppm;
	@Autowired
	private PostMapper pm;
	public void testservice() {
		System.out.println("service方法");
	}

	
	public void insertUsers(User user) {
		// TODO Auto-generated method stub
		userMapper.insert(user);
	}
	public void insertBlocks(Block b) {
		blockMapper.insert(b);
	}
	public List<Postpage> getPostPage() {
		
		return ppm.selectByExample( new PostpageExample());
	}
	public List<Postpage> selectPageAndBlock() {
		
		return ppm.selectPageAndBlock();
	}


	public void insertPosts(Post post) {
		// TODO Auto-generated method stub
		pm.insert(post);
	}
}
>>>>>>> remotes/origin/master
