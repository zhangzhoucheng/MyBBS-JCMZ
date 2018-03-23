package com.jcmz.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jcmz.mapper.PostMapper;

@Service
public class PostService {
	@Autowired
	private PostMapper pm;

	public void canclePraise(int po_id) {
		// TODO Auto-generated method stub
		pm.canclePraise(po_id);
	}

	public void addOnePraise(int po_id) {
		// TODO Auto-generated method stub
		pm.addOnePraise(po_id);
	}

	public void subCollectedNumInPostTable(int po_id) {
		// TODO Auto-generated method stub
		pm.subCollectedNumInPostTable(po_id);
	}

	public void addCollectedNumInPostTable(int po_id) {
		// TODO Auto-generated method stub
		pm.addCollectedNumInPostTable(po_id);
	}
}
