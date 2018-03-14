package com.jcmz.mapper;

import com.jcmz.model.Postbase;
import com.jcmz.model.PostbaseExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PostbaseMapper {
    long countByExample(PostbaseExample example);

    int deleteByExample(PostbaseExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Postbase record);

    int insertSelective(Postbase record);

    List<Postbase> selectByExample(PostbaseExample example);

    Postbase selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Postbase record, @Param("example") PostbaseExample example);

    int updateByExample(@Param("record") Postbase record, @Param("example") PostbaseExample example);

    int updateByPrimaryKeySelective(Postbase record);

    int updateByPrimaryKey(Postbase record);
}