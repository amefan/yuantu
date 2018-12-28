package com.yuantu.service;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.yuantu.entity.Apply;

public interface ApplyService {

	void save(Apply apply);

	List<Apply> getApplyByUid(DetachedCriteria dc);

	void delete(int c_id);

}
