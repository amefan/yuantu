package com.yuantu.service.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.yuantu.dao.ApplyDao;
import com.yuantu.entity.Apply;
import com.yuantu.service.ApplyService;

public class ApplyServiceImpl implements ApplyService {
    private ApplyDao ad;
	
	@Override
	public void save(Apply apply) {
	    
		ad.save(apply);
	}
    
	@Override
	public List<Apply> getApplyByUid(DetachedCriteria dc) {
		
		return ad.getApplyByUid(dc);
	}
	public void setAd(ApplyDao ad) {
		this.ad = ad;
	}

	@Override
	public void delete(int c_id) {
		
		ad.delete(c_id);
	}

	
   
	
}
