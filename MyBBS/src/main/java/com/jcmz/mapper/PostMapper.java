<<<<<<< HEAD
package com.jcmz.mapper;

import com.jcmz.model.Post;
import com.jcmz.model.PostExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PostMapper {
    long countByExample(PostExample example);

    int deleteByExample(PostExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Post record);

    int insertSelective(Post record);

    List<Post> selectByExample(PostExample example);

    Post selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Post record, @Param("example") PostExample example);

    int updateByExample(@Param("record") Post record, @Param("example") PostExample example);

    int updateByPrimaryKeySelective(Post record);

    int updateByPrimaryKey(Post record);
    List<Post> getPostsByBid(int b_id);

	List<Post> getoBlockSetTop(int b_id);

	List<Post> getoBlockByTime(int b_id);

	int getAllCount(int b_id);

	List<Post> getPostsByPaging(@Param("b_id")int b_id,@Param("start")int start, @Param("perPageCount")int perPageCount);

	
=======
package com.jcmz.mapper;

import com.jcmz.model.Post;
import com.jcmz.model.PostExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PostMapper {
    long countByExample(PostExample example);

    int deleteByExample(PostExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Post record);

    int insertSelective(Post record);

    List<Post> selectByExample(PostExample example);

    Post selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Post record, @Param("example") PostExample example);

    int updateByExample(@Param("record") Post record, @Param("example") PostExample example);

    int updateByPrimaryKeySelective(Post record);

    int updateByPrimaryKey(Post record);
    List<Post> getPostsByBid(int b_id);

	List<Post> getoBlockSetTop(int b_id);

	List<Post> getoBlockByTime(int b_id);

	int getAllCount(int b_id);

	List<Post> getPostsByPaging(@Param("b_id")int b_id,@Param("start")int start, @Param("perPageCount")int perPageCount);

	
>>>>>>> remotes/origin/master
}