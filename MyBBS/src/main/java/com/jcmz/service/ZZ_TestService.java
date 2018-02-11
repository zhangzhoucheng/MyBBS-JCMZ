package com.jcmz.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jcmz.mapper.UserMapper;
import com.jcmz.model.User;

@Service
public class ZZ_TestService {
	@Autowired
	private UserMapper userMapper;
	public void testservice() {
		System.out.println("service方法");
	}

	
	public void insertUsers(User user) {
		// TODO Auto-generated method stub
		userMapper.insert(user);
	}
}
