package com.jcmz.mapper;

import com.jcmz.model.Pagemanager;
import com.jcmz.model.PagemanagerExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PagemanagerMapper {
    long countByExample(PagemanagerExample example);

    int deleteByExample(PagemanagerExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Pagemanager record);

    int insertSelective(Pagemanager record);

    List<Pagemanager> selectByExample(PagemanagerExample example);

    Pagemanager selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Pagemanager record, @Param("example") PagemanagerExample example);

    int updateByExample(@Param("record") Pagemanager record, @Param("example") PagemanagerExample example);

    int updateByPrimaryKeySelective(Pagemanager record);

    int updateByPrimaryKey(Pagemanager record);
}