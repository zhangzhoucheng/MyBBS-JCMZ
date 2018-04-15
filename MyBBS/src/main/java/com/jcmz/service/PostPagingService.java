package com.jcmz.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jcmz.base.BasePropertise;
import com.jcmz.mapper.PostMapper;
import com.jcmz.mapper.PostreplyMapper;
import com.jcmz.model.PageBean;
import com.jcmz.model.Post;
import com.jcmz.model.Postreply;
import com.jcmz.model.User;

/***
 * @remark 帖子分页的业务类
 * @author for jld
 * @time 2018/3/16
 */
@Service
public class PostPagingService {
	@Autowired
	private PostMapper pm;
	@Autowired
	private BasePropertise bp;
	@Autowired
	private UserService us;
	@Autowired
	private PostreplyMapper prm;
	@Autowired
	private PostReplyService prs;
	
	/***
	 * @remark 得到pagebean对象，里面封装了分页的参数和值
	 * @param nowPage
	 * @param b_id
	 * @return
	 * @author for jld
	 * @time 2018/3/16
	 */
	public PageBean<Post> findResultsByPageBean( int nowPage,int b_id) {//即通过当前页码从而获取到对应的输出的集合
		List<Post> pageLists=new ArrayList<>();
		PageBean<Post> pag=new PageBean<>();
		
		
		//封装总记录数，通过总的查询语句
		pag.setAllCount(pm.getAllCount(b_id));
		//封装一页显示多少条，配置写在了properties文件中的postPagingTrs\
		//int perCoun=bp.getPropertiesValue("$")
		pag.setPerPageCount(Integer.parseInt(bp.getPropertiesValue("${postPagingTrs}")));
		//封装总页数,向上取整数
		int allPage=(pag.getAllCount()+pag.getPerPageCount()-1)/pag.getPerPageCount();
		//封装当前页码
		if(nowPage<1) {nowPage=1;}
		if(nowPage>allPage) {nowPage=allPage;}
		pag.setNowPage(nowPage);
		pag.setPageCount(allPage);//不理解参照工具类datatypetool的数学证明；
		//获取开始行数
		int start=(nowPage-1)*pag.getPerPageCount();
		pageLists=pm.getPostsByPaging(b_id ,start,pag.getPerPageCount());
		pag.setPageLists(pageLists);
		return pag;
	}
	
	
	
	
	//获取所有满足条件的post集合
	public PageBean<Post> findAllResultsByPageBean( int nowPage) {//即通过当前页码从而获取到对应的输出的集合
		List<Post> pageLists=new ArrayList<>();
		PageBean<Post> pag=new PageBean<>();
		
		
		//封装总记录数，通过总的查询语句
		pag.setAllCount(pm.getAllPostAndItsBlockPageCount());
		//封装一页显示多少条，配置写在了properties文件中的postPagingTrs\
		//int perCoun=bp.getPropertiesValue("$")
		pag.setPerPageCount(Integer.parseInt(bp.getPropertiesValue("10")));
		//封装总页数,向上取整数
		int allPage=(pag.getAllCount()+pag.getPerPageCount()-1)/pag.getPerPageCount();
		//封装当前页码
		if(nowPage<1) {nowPage=1;}
		if(nowPage>allPage) {nowPage=allPage;}
		pag.setNowPage(nowPage);System.out.println("页："+allPage);
		pag.setPageCount(allPage);//不理解参照工具类datatypetool的数学证明；
		//获取开始行数
		int start=(nowPage-1)*pag.getPerPageCount();
		pageLists=pm.getAllPostAndItsBlockPageLimit(start,pag.getPerPageCount());
		pag.setPageLists(pageLists);
		return pag;
	}
	
	//获取满足“我的收藏”的帖子集合
	public PageBean<Post> findPriseResultsByPageBean( int nowPage,int userId) {//即通过当前页码从而获取到对应的输出的集合
		List<Post> pageLists=new ArrayList<>();
		PageBean<Post> pag=new PageBean<>();
		
		
		//封装总记录数，通过总的查询语句
		pag.setAllCount(pm.getCollectPostAndItsBlockPageCount(userId));
		//封装一页显示多少条，配置写在了properties文件中的postPagingTrs\
		//int perCoun=bp.getPropertiesValue("$")
		pag.setPerPageCount(Integer.parseInt(bp.getPropertiesValue("10")));
		//封装总页数,向上取整数
		int allPage=(pag.getAllCount()+pag.getPerPageCount()-1)/pag.getPerPageCount();
		//封装当前页码
		if(nowPage<1) {nowPage=1;}
		if(nowPage>allPage) {nowPage=allPage;}
		pag.setNowPage(nowPage);System.out.println("页："+allPage);
		pag.setPageCount(allPage);//不理解参照工具类datatypetool的数学证明；
		//获取开始行数
		int start=(nowPage-1)*pag.getPerPageCount();
		pageLists=pm.getPrisePostByUserIdLimit(start,pag.getPerPageCount(),userId);
		pag.setPageLists(pageLists);
		return pag;
	}
	
	
	public PageBean<User> findResultsByPageBeanOfReply( int nowPage,int po_id) {//即通过当前页码从而获取到对应的输出的集合存在问题，集合是针对user的当一个user多条回复，不好页面渲染所以回复
		List<User> users=new ArrayList<>();
		PageBean<User> pag=new PageBean<>();
		
		
		//封装总记录数，通过总的查询语句
		int allC=prm.getAllCount(po_id);
		pag.setAllCount(allC);
		//封装一页显示多少条，配置写在了properties文件中的postPagingTrs\
		//int perCoun=bp.getPropertiesValue("$")
		pag.setPerPageCount(Integer.parseInt(bp.getPropertiesValue("${postPagingTrs}")));
		//封装总页数,向上取整数
		int allPage=(pag.getAllCount()+pag.getPerPageCount()-1)/pag.getPerPageCount();
		//封装当前页码
		if(nowPage<1) {nowPage=1;}
		if(nowPage>allPage) {nowPage=allPage;}
		pag.setNowPage(nowPage);
		pag.setPageCount(allPage);//不理解参照工具类datatypetool的数学证明；
		//获取开始行数
		int start=(nowPage-1)*pag.getPerPageCount();
		if(allC<1) {
			users=us.getOnlyUsers(po_id);
		}else {
		 users=us.getUserPostReplyByPidLimit(po_id,start,pag.getPerPageCount());
		}
		pag.setPageLists(users);
		return pag;
	}
	
	public PageBean<Postreply> findResultsByPageBeanOfPostReply( int nowPage,int po_id) {//即通过当前页码从而获取到对应的输出的集合存在问题，集合是针对user的当一个user多条回复，不好页面渲染所以回复
		List<Postreply> postRs=new ArrayList<>();
		PageBean<Postreply> pag=new PageBean<>();
		
		
		
		//封装总记录数，通过总的查询语句
		int allC=prm.getAllCount(po_id);
		pag.setAllCount(allC);
		//封装一页显示多少条，配置写在了properties文件中的postPagingTrs\
		//int perCoun=bp.getPropertiesValue("$")
		pag.setPerPageCount(Integer.parseInt(bp.getPropertiesValue("${postPagingTrs}")));
		//封装总页数,向上取整数
		int allPage=(pag.getAllCount()+pag.getPerPageCount()-1)/pag.getPerPageCount();
		//封装当前页码
		if(nowPage<1) {nowPage=1;}
		if(nowPage>allPage) {nowPage=allPage;}
		pag.setNowPage(nowPage);
		pag.setPageCount(allPage);//不理解参照工具类datatypetool的数学证明；
		//获取开始行数
		int start=(nowPage-1)*pag.getPerPageCount();
		if(allC<1) {
			
		}else {
			postRs=prs.getPostUserReplyByPidLimit(po_id,start,pag.getPerPageCount());
		}
		pag.setPageLists(postRs);
		return pag;
	}
}
