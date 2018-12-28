package com.yuantu.web.action;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.HashMap;

import javax.servlet.http.Cookie;

import org.apache.struts2.ServletActionContext;

import com.alibaba.fastjson.JSON;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.yuantu.entity.User;
import com.yuantu.service.UserService;

public class UserAction extends ActionSupport implements ModelDriven<User>{
      
	  private User user=new User();
	  
	  private UserService us;
	  
	  String code;// ��ȡ�ͻ�����֤��
	  
	  String name;
	  String remember="0";
	  /**
	   * ע����¼
	   */
	  public String quit() throws Exception {
		 // �������session�е�user    
		 ActionContext.getContext().getSession().remove("user");
		 //  �ض�����Ŀ��ҳ
	     return "toHome";
	  }
	  
	  /**
	   * 	�û���¼  
	   */
	  public String login() throws Exception {
		  
			//1 ����Serviceִ�е�½�߼�
			User u = us.getUserByNamePassword(user);
			//2 �����ص�User�������session��
			ActionContext.getContext().getSession().put("user", u);
			if(remember.equals("1")){
				 //��������Cookie����
	        	     Cookie nameCookie = new Cookie("username", URLEncoder.encode(u.getU_name(), "UTF-8"));
	                 //����Cookie����Ч��Ϊ3��
	        	     nameCookie.setMaxAge(60 * 60 * 24 * 3);
	        	     Cookie pwdCookie = new Cookie("password",u.getU_password());
	        	     pwdCookie.setMaxAge(60 * 60 * 24 * 3);
	                 ServletActionContext.getResponse().addCookie(nameCookie);
	                 ServletActionContext.getResponse().addCookie(pwdCookie);
				
			 }
			//3 �ض�����Ŀ��ҳ
		     return "toHome";
	}
	  
	  
	/**
	 *  �û�ע��
	 */
	public String regist() throws Exception {
		
		// ��ȡsession����֤��
		StringBuilder re_code=(StringBuilder) ActionContext.getContext().getSession().get("code");
		String pcode = re_code.toString();
		
		// �ж���֤��
		if(!code.equalsIgnoreCase(pcode)){
			Exception e=new Exception("��֤�����");
			ActionContext.getContext().put("error", e.getMessage());
			return "regist";
		}else{
		// 1 ����Service����ע����
		try {
			us.saveUser(user);
		} catch (Exception e) {
			e.printStackTrace();
			ActionContext.getContext().put("error", e.getMessage());
			return "regist";
		}
		}
		//2 �ض��򵽵�½ҳ��
	    return "Login";
	}

	/**
	 * ����û���
	 * @throws Exception 
	 */
	
	public String isExitName() throws Exception{
		
		HashMap<String,Integer> map=new HashMap<>();
		System.out.println(name);
		boolean b = us.isExitName(name);
		if(!b){
			map.put("status", 1);
			String json = JSON.toJSONString(map);
			// ��json���͸������
			ServletActionContext.getResponse().setContentType("application/json;charset=utf-8");
			ServletActionContext.getResponse().getWriter().write(json);
		}else{
			map.put("status", 0);
			String json = JSON.toJSONString(map);
			// ��json���͸������
			ServletActionContext.getResponse().setContentType("application/json;charset=utf-8");
			ServletActionContext.getResponse().getWriter().write(json);
		}
		return null;
	}
	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}


	public void setUs(UserService us) {
		this.us = us;
	}


	public String getCode() {
		return code;
	}


	public void setCode(String code) {
		this.code = code;
	}

	public String getRemember() {
		return remember;
	}

	public void setRemember(String remember) {
		this.remember = remember;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
    
	
}
