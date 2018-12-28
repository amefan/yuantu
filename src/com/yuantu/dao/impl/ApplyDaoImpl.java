package com.yuantu.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.yuantu.dao.ApplyDao;
import com.yuantu.entity.Apply;

public class ApplyDaoImpl extends BaseDaoImpl<Apply> implements ApplyDao {

	@Override
	public List<Apply> getApplyByUid(DetachedCriteria dc) {
		
		List<Apply> list = (List<Apply>) getHibernateTemplate().findByCriteria(dc);
		
		if(list!=null&&list.size()>0){
			
			
			return list;
		}
		return null;
	}

	
}
