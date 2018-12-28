package com.yuantu.service.impl;

import org.springframework.util.DigestUtils;

import com.yuantu.dao.UserDao;
import com.yuantu.entity.User;
import com.yuantu.service.UserService;

public class UserServiceImpl implements UserService {
    
	private UserDao ud;
	
	@Override
	public void saveUser(User user) {
		//1 ����Dao����ע��ĵ�½������û�����
		User existU = ud.getByUserName(user.getU_name());
		if(existU!=null){
			//2 �����õ�user����,�û����Ѿ�����,�׳��쳣
			throw new RuntimeException("�û����Ѿ�����!");
		}
		// md5��������
		String str=DigestUtils.md5DigestAsHex(user.getU_password().getBytes());
		
		user.setU_password(str);
		//3 ����Daoִ�б���
		ud.save(user);
	}

	
	@Override
	public User getUserByNamePassword(User user) {
		//1 ���ݵ�½���Ʋ�ѯ��½�û�
		User existU = ud.getByUserName(user.getU_name());
		//2 �ж��û��Ƿ����.������=>�׳��쳣,��ʾ�û���������
		if(existU==null){
			throw new RuntimeException("�û���������!");
		}
		//3 �ж��û������Ƿ���ȷ=>����ȷ=>�׳��쳣,��ʾ�������
		if(!existU.getU_password().equals(DigestUtils.md5DigestAsHex(user.getU_password().getBytes()))){
			
			throw new RuntimeException("�������!");
		}
		//4 ���ز�ѯ�����û�����
	
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
