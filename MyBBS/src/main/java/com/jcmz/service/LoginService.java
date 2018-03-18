package com.jcmz.service;

import javax.servlet.http.Cookie;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jcmz.mapper.UserMapper;
import com.jcmz.mapper.UserdetailMapper;
import com.jcmz.model.User;
import com.jcmz.model.UserExample;
import com.jcmz.model.Userdetail;

@Service
public class LoginService {

	@Autowired
	private UserMapper userMp;
	@Autowired
	private UserdetailMapper udmp;
	public boolean checkName(String name) {
		UserExample ue=new UserExample();
		ue.createCriteria().andUsernameEqualTo(name);
		int myLong=(int) userMp.countByExample(ue);
		if(myLong<1) {
		return false;
	}
		else {
			return true;
		}
}
	public String checkPas(String username, String userpassword) {
		// TODO Auto-generated method stub
		UserExample ue=new UserExample();
		if(!checkName(username)) {//用户不存在
		return "0";
		}else {
			ue.createCriteria().andUsernameEqualTo(username).andUserpasswordEqualTo(userpassword);
			int l=(int) userMp.countByExample(ue);
			if(l>=1) {//此时用户存在且密码也输入正确
				return "2";
			}else {//用户存在密码不正确
				return "1";
			}
		}
	}
	/**
	 * @remark插入一个用户到数据库
	 */
	public void registerGo(String name,String tel,String pas) {
		System.out.println("name:"+name+",tel:"+tel+",pas:"+pas);
		User user=new User(name,null, pas) ;
		//添加普通用户权限0
		user.setStatus(0);
		userMp.insert(user);
		//添加tel
		udmp.insert(new Userdetail() {{this.setUserid(userMp.getIdByUsername(name));;this.setTel(tel);}});
		
	}

}