package com.jcmz.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jcmz.mapper.PostpageMapper;
import com.jcmz.model.Postpage;

@Service
public class HomeService {

	@Autowired
	private PostpageMapper ppm;
	public List<Postpage> getPostPages() {
		// TODO Auto-generated method stub
		return ppm.selectPageWhole();
	}


}
