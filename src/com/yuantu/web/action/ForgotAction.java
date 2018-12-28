package com.yuantu.web.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.yuantu.entity.Forgot;
import com.yuantu.service.ForgotService;

public class ForgotAction extends ActionSupport implements ModelDriven<Forgot>{
    private Forgot forget=new Forgot();
	
    private ForgotService fs;
    
	/**
	 * 保存忘记密码用户信息
	 */
	public String saveForgeter() throws Exception {
		
		fs.save(forget);
		return "success";
	}

	
	@Override
	public Forgot getModel() {
		// TODO Auto-generated method stub
		return forget;
	}


	public void setFs(ForgotService fs) {
		this.fs = fs;
	}
    
	
}
