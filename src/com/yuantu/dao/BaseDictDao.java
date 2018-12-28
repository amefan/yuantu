package com.yuantu.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.yuantu.entity.BaseDict;

public interface BaseDictDao {

	List<BaseDict> getListByCriteria(DetachedCriteria dc);

}
