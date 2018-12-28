package com.yuantu.web.intercept;


import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;
import com.yuantu.entity.User;

public class CheckIntercept extends MethodFilterInterceptor {

	@Override
	//��У���½����
	protected String doIntercept(ActionInvocation invacation) throws Exception {
		// ��ȡsession
		User user = (User) ActionContext.getContext().getSession().get("user");
		//�ж��Ƿ��½
		if(user!=null){
			
			return invacation.invoke();
		}else{
			return "toLogin";
		}
		
	
	}

}
