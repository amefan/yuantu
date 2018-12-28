package com.yuantu.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.yuantu.entity.Apply;

public interface ApplyDao extends BaseDao<Apply> {

	List<Apply> getApplyByUid(DetachedCriteria dc);

}
