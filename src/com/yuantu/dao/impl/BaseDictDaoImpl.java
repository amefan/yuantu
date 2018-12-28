package com.yuantu.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;


import com.yuantu.dao.BaseDictDao;
import com.yuantu.entity.BaseDict;

public class BaseDictDaoImpl extends BaseDaoImpl<BaseDict> implements BaseDictDao{

	@Override
	public List<BaseDict> getListByCriteria(DetachedCriteria dc) {

		List<BaseDict> list =(List<BaseDict>) getHibernateTemplate().findByCriteria(dc);
		
		if(list!=null){
			return list;
		}
		return null;
		
	}

}
