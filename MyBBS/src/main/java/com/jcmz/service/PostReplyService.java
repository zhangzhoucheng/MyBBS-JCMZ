package com.jcmz.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jcmz.mapper.PostreplyMapper;
import com.jcmz.model.Postreply;

@Service
public class PostReplyService {

	@Autowired
	private PostreplyMapper prm;

	public List<Postreply> getPostUserReplyByPidLimit(int po_id, int start, int perPageCount) {
		// TODO Auto-generated method stub
		return prm.getPostUserReplyByPidLimit(po_id,start,perPageCount);
	}

	public void canclePraise(int reply_id) {
		// TODO Auto-generated method stub
		prm.canclePraise(reply_id);
	}

	public void addOnePraise(int reply_id) {
		// TODO Auto-generated method stub
		prm.addOnePraise(reply_id);
	}
}
