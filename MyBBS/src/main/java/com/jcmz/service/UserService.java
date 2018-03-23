package com.jcmz.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jcmz.mapper.UserMapper;
import com.jcmz.model.User;

@Service
public class UserService {
	@Autowired
	private UserMapper um;

	public User getUserAndPostByPid(int po_id) {
		// TODO Auto-generated method stub
		
		return um.getUserAndPostByPid(po_id)!=null?um.getUserAndPostByPid(po_id):null;
	}

	public List<User> getUserPostReplyByPid(int po_id) {
		// TODO Auto-generated method stub
		List<User> list=um.getUserPostReplyByPid(po_id);
		if(list!=null) {
			return list;
		}
		else {
			return null;
		}
	}

	public List<User> getUserPostReplyByPidLimit(int po_id, int start, int perPageCount) {
		// TODO Auto-generated method stub
		return um.getUserPostReplyByPidLimit(po_id,  start,  perPageCount);
	}

	public List<User> getOnlyUsers(int po_id) {
		// TODO Auto-generated method stub
		return um.getOnlyUsers(po_id);
	}

	public User getUserByName(String username) {
		// TODO Auto-generated method stub
		return um.getUserByName(username);
	}
	
}
