package com.jcmz.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jcmz.mapper.FocusUserMapper;
import com.jcmz.mapper.PostreplyMapper;
import com.jcmz.model.FocusUser;
import com.jcmz.model.Postreply;
import com.jcmz.model.User;

@Service
public class PostReplyService {

	@Autowired
	private PostreplyMapper prm;
	@Autowired
	private FocusUserMapper fum;
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

	public void insertRep(Postreply pr) {
		// TODO Auto-generated method stub
		prm.insertSelective(pr);
	}

	public List<FocusUser> getMyFocusUsersByIdLimit(int id, int start, int perPageCount) {
		// TODO Auto-generated method stub
		return fum.getMyFocusUsersByIdLimit(id,start,perPageCount);
	}
}
