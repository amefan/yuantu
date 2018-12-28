package com.yuantu.service;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.yuantu.entity.BaseDict;

public interface BaseDictService {

	List<BaseDict> getListByTypeName(DetachedCriteria dc);
   
}
