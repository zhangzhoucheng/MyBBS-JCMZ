package com.jcmz.mapper;

import com.jcmz.model.FocusUser;
import com.jcmz.model.FocusUserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface FocusUserMapper {
    long countByExample(FocusUserExample example);

    int deleteByExample(FocusUserExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(FocusUser record);

    int insertSelective(FocusUser record);

    List<FocusUser> selectByExample(FocusUserExample example);

    FocusUser selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") FocusUser record, @Param("example") FocusUserExample example);

    int updateByExample(@Param("record") FocusUser record, @Param("example") FocusUserExample example);

    int updateByPrimaryKeySelective(FocusUser record);

    int updateByPrimaryKey(FocusUser record);
}