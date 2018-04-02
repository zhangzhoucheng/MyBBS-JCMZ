package com.jcmz.mapper;

import com.jcmz.model.CollectPost;
import com.jcmz.model.CollectPostExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CollectPostMapper {
    long countByExample(CollectPostExample example);

    int deleteByExample(CollectPostExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(CollectPost record);

    int insertSelective(CollectPost record);

    List<CollectPost> selectByExample(CollectPostExample example);

    CollectPost selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") CollectPost record, @Param("example") CollectPostExample example);

    int updateByExample(@Param("record") CollectPost record, @Param("example") CollectPostExample example);

    int updateByPrimaryKeySelective(CollectPost record);

    int updateByPrimaryKey(CollectPost record);

	void insertCollect(@Param("po_id")int po_id,@Param("user_id") int user_id);

	List<CollectPost> getCollectPostByUserid(int user_id);

	void cancleCollect(@Param("user_id")int user_id,@Param("po_id") int po_id);

	
}