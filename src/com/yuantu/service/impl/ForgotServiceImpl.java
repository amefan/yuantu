package com.yuantu.service.impl;

import com.yuantu.dao.ForgotDao;
import com.yuantu.entity.Forgot;
import com.yuantu.service.ForgotService;

public class ForgotServiceImpl implements ForgotService {
    
	private ForgotDao fd;
	@Override
	public void save(Forgot forget) {

          fd.save(forget);
	}
	
	public void setFd(ForgotDao fd) {
		this.fd = fd;
	}
    
	
}
