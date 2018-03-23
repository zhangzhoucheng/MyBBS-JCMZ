package com.jcmz.mapper;

import com.jcmz.model.Postreply;
import com.jcmz.model.PostreplyExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PostreplyMapper {
    long countByExample(PostreplyExample example);

    int deleteByExample(PostreplyExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Postreply record);

    int insertSelective(Postreply record);

    List<Postreply> selectByExample(PostreplyExample example);

    Postreply selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Postreply record, @Param("example") PostreplyExample example);

    int updateByExample(@Param("record") Postreply record, @Param("example") PostreplyExample example);

    int updateByPrimaryKeySelective(Postreply record);

    int updateByPrimaryKey(Postreply record);

	int getAllCount(int po_id);

	List<Postreply> getPostUserReplyByPidLimit(@Param("po_id")int po_id, @Param("start")int start, @Param("perPageCount")int perPageCount);

	Postreply getPostReplyById(int i);

	void updateReply(Postreply p);

	void canclePraise(int reply_id);

	void addOnePraise(int reply_id);
}