package com.yuantu.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

public interface BaseDao<T> {
    //添加或者保存信息
	void saveOrUpdate(T t);
	// 增
	void save(T t);
	// 删
	void delete(T t);
	// 删
	void delete(Serializable id);
	// 改
	void update(T t);
	// 查根据ID查
	T	getById(Serializable id);
	// 查询总记录数
	Integer getTotalCount(DetachedCriteria dc);
	// 查询分页数据
    List<T> getPageList(DetachedCriteria dc,Integer start,Integer pageSize);

}
