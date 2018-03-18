package com.jcmz.mapper;

import com.jcmz.model.BlocksHotNum;
import com.jcmz.model.BlocksHotNumExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BlocksHotNumMapper {
    long countByExample(BlocksHotNumExample example);

    int deleteByExample(BlocksHotNumExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(BlocksHotNum record);

    int insertSelective(BlocksHotNum record);

    List<BlocksHotNum> selectByExample(BlocksHotNumExample example);

    BlocksHotNum selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") BlocksHotNum record, @Param("example") BlocksHotNumExample example);

    int updateByExample(@Param("record") BlocksHotNum record, @Param("example") BlocksHotNumExample example);

    int updateByPrimaryKeySelective(BlocksHotNum record);

    int updateByPrimaryKey(BlocksHotNum record);
}