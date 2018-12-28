package com.yuantu.web.intercept;


import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;
import com.yuantu.entity.User;

public class CheckIntercept extends MethodFilterInterceptor {

	@Override
	//不校验登陆方法
	protected String doIntercept(ActionInvocation invacation) throws Exception {
		// 获取session
		User user = (User) ActionContext.getContext().getSession().get("user");
		//判断是否登陆
		if(user!=null){
			
			return invacation.invoke();
		}else{
			return "toLogin";
		}
		
	
	}

}
