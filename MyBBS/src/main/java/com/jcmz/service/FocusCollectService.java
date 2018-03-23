package com.jcmz.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jcmz.mapper.CollectPostMapper;
import com.jcmz.mapper.FocusUserMapper;
import com.jcmz.model.CollectPost;

/***
 * @remark 收藏和关注的服务类
 * @author for jld
 *@time 2018/3/20
 */
@Service
public class FocusCollectService {
	@Autowired
	private FocusUserMapper fum;
	@Autowired
	private  CollectPostMapper cppm;
	@Autowired
	private PostService ps;
	public void insertCollect(int po_id, int user_id) {
		// TODO Auto-generated method stub
		cppm.insertCollect(po_id,user_id);
	}
	public boolean isCollectThePost(int po_id, int user_id) {
		// TODO Auto-generated method stub
		List<CollectPost> cps=getCollectPostByUserid(user_id);
		int flag=0;
		for(CollectPost c:cps) {
			if(c.getPostid()==po_id) {
				flag=1;
				break;
			}
		}
		if(flag==1) {
			return true;
		}else {
			return false;
		}
		
	}
	/**
	 * @remark 通过用户id，获取他收藏帖子的集合实体CollectPost的集合
	 * @param user_id
	 * @return
	 */
	private List<CollectPost> getCollectPostByUserid(int user_id) {
		// TODO Auto-generated method stub
		return cppm.getCollectPostByUserid(user_id);
	}
	public void cancleCollect(int user_id, int po_id) {
		// TODO Auto-generated method stub
		cppm.cancleCollect(user_id,po_id);
	}
	public void subCollectedNumInPostTable(int po_id) {
		// TODO Auto-generated method stub
		ps.subCollectedNumInPostTable(po_id);
		
	}
	public void addCollectedNumInPostTable(int po_id) {
		// TODO Auto-generated method stub
		ps.addCollectedNumInPostTable(po_id);
	}
}
