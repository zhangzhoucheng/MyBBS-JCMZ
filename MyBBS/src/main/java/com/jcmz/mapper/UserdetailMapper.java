package com.jcmz.mapper;

import com.jcmz.model.Userdetail;
import com.jcmz.model.UserdetailExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserdetailMapper {
    long countByExample(UserdetailExample example);

    int deleteByExample(UserdetailExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Userdetail record);

    int insertSelective(Userdetail record);

    List<Userdetail> selectByExample(UserdetailExample example);

    Userdetail selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Userdetail record, @Param("example") UserdetailExample example);

    int updateByExample(@Param("record") Userdetail record, @Param("example") UserdetailExample example);

    int updateByPrimaryKeySelective(Userdetail record);

    int updateByPrimaryKey(Userdetail record);
}