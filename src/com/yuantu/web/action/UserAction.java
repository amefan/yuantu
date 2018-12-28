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
	  
	  String code;// 获取客户端验证码
	  
	  String name;
	  String remember="0";
	  /**
	   * 注销登录
	   */
	  public String quit() throws Exception {
		 // 清除存在session中的user    
		 ActionContext.getContext().getSession().remove("user");
		 //  重定向到项目首页
	     return "toHome";
	  }
	  
	  /**
	   * 	用户登录  
	   */
	  public String login() throws Exception {
		  
			//1 调用Service执行登陆逻辑
			User u = us.getUserByNamePassword(user);
			//2 将返回的User对象放入session域
			ActionContext.getContext().getSession().put("user", u);
			if(remember.equals("1")){
				 //创建两个Cookie对象
	        	     Cookie nameCookie = new Cookie("username", URLEncoder.encode(u.getU_name(), "UTF-8"));
	                 //设置Cookie的有效期为3天
	        	     nameCookie.setMaxAge(60 * 60 * 24 * 3);
	        	     Cookie pwdCookie = new Cookie("password",u.getU_password());
	        	     pwdCookie.setMaxAge(60 * 60 * 24 * 3);
	                 ServletActionContext.getResponse().addCookie(nameCookie);
	                 ServletActionContext.getResponse().addCookie(pwdCookie);
				
			 }
			//3 重定向到项目首页
		     return "toHome";
	}
	  
	  
	/**
	 *  用户注册
	 */
	public String regist() throws Exception {
		
		// 获取session中验证码
		StringBuilder re_code=(StringBuilder) ActionContext.getContext().getSession().get("code");
		String pcode = re_code.toString();
		
		// 判断验证码
		if(!code.equalsIgnoreCase(pcode)){
			Exception e=new Exception("验证码错误");
			ActionContext.getContext().put("error", e.getMessage());
			return "regist";
		}else{
		// 1 调用Service保存注册用
		try {
			us.saveUser(user);
		} catch (Exception e) {
			e.printStackTrace();
			ActionContext.getContext().put("error", e.getMessage());
			return "regist";
		}
		}
		//2 重定向到登陆页面
	    return "Login";
	}

	/**
	 * 检查用户名
	 * @throws Exception 
	 */
	
	public String isExitName() throws Exception{
		
		HashMap<String,Integer> map=new HashMap<>();
		System.out.println(name);
		boolean b = us.isExitName(name);
		if(!b){
			map.put("status", 1);
			String json = JSON.toJSONString(map);
			// 将json发送给浏览器
			ServletActionContext.getResponse().setContentType("application/json;charset=utf-8");
			ServletActionContext.getResponse().getWriter().write(json);
		}else{
			map.put("status", 0);
			String json = JSON.toJSONString(map);
			// 将json发送给浏览器
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
