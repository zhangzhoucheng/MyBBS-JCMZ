package com.jcmz.mapper;

import com.jcmz.model.Basetype;
import com.jcmz.model.BasetypeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BasetypeMapper {
    long countByExample(BasetypeExample example);

    int deleteByExample(BasetypeExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Basetype record);

    int insertSelective(Basetype record);

    List<Basetype> selectByExampleWithBLOBs(BasetypeExample example);

    List<Basetype> selectByExample(BasetypeExample example);

    Basetype selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Basetype record, @Param("example") BasetypeExample example);

    int updateByExampleWithBLOBs(@Param("record") Basetype record, @Param("example") BasetypeExample example);

    int updateByExample(@Param("record") Basetype record, @Param("example") BasetypeExample example);

    int updateByPrimaryKeySelective(Basetype record);

    int updateByPrimaryKeyWithBLOBs(Basetype record);

    int updateByPrimaryKey(Basetype record);
}