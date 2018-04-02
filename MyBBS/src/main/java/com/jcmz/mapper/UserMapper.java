package com.jcmz.mapper;

import com.jcmz.model.User;
import com.jcmz.model.UserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    long countByExample(UserExample example);

    int deleteByExample(UserExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    List<User> selectByExample(UserExample example);

    User selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") User record, @Param("example") UserExample example);

    int updateByExample(@Param("record") User record, @Param("example") UserExample example);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

	int getIdByUsername(String name);

	List<User> getUserSById(int p_id);

	User getUserAndPostByPid(@Param("po_id")int po_id);

	List<User> getUserPostReplyByPid(@Param("po_id")int po_id);

	List<User> getUserPostReplyByPidLimit(@Param("po_id")int po_id, @Param("start")int start, @Param("perPageCount")int perPageCount);

	List<User> getOnlyUsers(int po_id);

	User getUserByName(String username);

	void subFocusNumInUserTable(int po_id);

	int getBefocusedUserIdByPoid(int po_id);

	void addFocusNumInUserTable(int uid);

	void subMyFocusNum(int uid);

	void addMyFocusNum(int uid);

	void subFocusNum(int uid);

	void subMyCollectNum(int user_id);

	void addMyCollectNum(int user_id);
}