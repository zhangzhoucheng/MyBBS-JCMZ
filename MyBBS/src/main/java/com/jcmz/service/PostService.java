package com.jcmz.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jcmz.mapper.PostMapper;

@Service
public class PostService {
	@Autowired
	private PostMapper pm;
}
