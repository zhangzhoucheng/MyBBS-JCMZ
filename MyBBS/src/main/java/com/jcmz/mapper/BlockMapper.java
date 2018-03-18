package com.jcmz.mapper;

import com.jcmz.model.Block;
import com.jcmz.model.BlockExample;
import com.jcmz.model.Post;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BlockMapper {
    long countByExample(BlockExample example);

    int deleteByExample(BlockExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Block record);

    int insertSelective(Block record);

    List<Block> selectByExample(BlockExample example);

    Block selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Block record, @Param("example") BlockExample example);

    int updateByExample(@Param("record") Block record, @Param("example") BlockExample example);

    int updateByPrimaryKeySelective(Block record);

    int updateByPrimaryKey(Block record);

	List<Block> getBlocksByPid(int p_id);

	
}