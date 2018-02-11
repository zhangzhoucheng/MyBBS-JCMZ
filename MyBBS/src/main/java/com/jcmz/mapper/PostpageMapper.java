package com.jcmz.mapper;

import com.jcmz.model.Postpage;
import com.jcmz.model.PostpageExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PostpageMapper {
    long countByExample(PostpageExample example);

    int deleteByExample(PostpageExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Postpage record);

    int insertSelective(Postpage record);

    List<Postpage> selectByExample(PostpageExample example);

    Postpage selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Postpage record, @Param("example") PostpageExample example);

    int updateByExample(@Param("record") Postpage record, @Param("example") PostpageExample example);

    int updateByPrimaryKeySelective(Postpage record);

    int updateByPrimaryKey(Postpage record);
}