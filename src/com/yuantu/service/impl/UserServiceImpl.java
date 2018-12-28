package com.yuantu.service.impl;

import org.springframework.util.DigestUtils;

import com.yuantu.dao.UserDao;
import com.yuantu.entity.User;
import com.yuantu.service.UserService;

public class UserServiceImpl implements UserService {
    
	private UserDao ud;
	
	@Override
	public void saveUser(User user) {
		//1 调用Dao根据注册的登陆名获得用户对象
		User existU = ud.getByUserName(user.getU_name());
		if(existU!=null){
			//2 如果获得到user对象,用户名已经存在,抛出异常
			throw new RuntimeException("用户名已经存在!");
		}
		// md5加密密码
		String str=DigestUtils.md5DigestAsHex(user.getU_password().getBytes());
		
		user.setU_password(str);
		//3 调用Dao执行保存
		ud.save(user);
	}

	
	@Override
	public User getUserByNamePassword(User user) {
		//1 根据登陆名称查询登陆用户
		User existU = ud.getByUserName(user.getU_name());
		//2 判断用户是否存在.不存在=>抛出异常,提示用户名不存在
		if(existU==null){
			throw new RuntimeException("用户名不存在!");
		}
		//3 判断用户密码是否正确=>不正确=>抛出异常,提示密码错误
		if(!existU.getU_password().equals(DigestUtils.md5DigestAsHex(user.getU_password().getBytes()))){
			
			throw new RuntimeException("密码错误!");
		}
		//4 返回查询到的用户对象
	
	    return existU;
		
		
	}
	
	@Override
	public boolean isExitName(String name) {
		User user = ud.getByUserName(name);
		if(user==null){
			return true;
		}
		return false;
	}
	
	
	public void setUd(UserDao ud) {
		this.ud = ud;
	}


	

	

	
	
}
