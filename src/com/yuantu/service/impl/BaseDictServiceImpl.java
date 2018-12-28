package com.yuantu.service.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.yuantu.dao.BaseDictDao;
import com.yuantu.entity.BaseDict;
import com.yuantu.service.BaseDictService;

public class BaseDictServiceImpl implements BaseDictService {
    private BaseDictDao bdd;
	
	@Override
	public List<BaseDict> getListByTypeName(DetachedCriteria dc){
		
	    // ����ѯ���Ľ��ֱ�ӷ���
		return bdd.getListByCriteria(dc);
	}

	
	public void setBdd(BaseDictDao bdd) {
		this.bdd = bdd;
	}
   
	
}
