package com.yuantu.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

public interface BaseDao<T> {
    //��ӻ��߱�����Ϣ
	void saveOrUpdate(T t);
	// ��
	void save(T t);
	// ɾ
	void delete(T t);
	// ɾ
	void delete(Serializable id);
	// ��
	void update(T t);
	// �����ID��
	T	getById(Serializable id);
	// ��ѯ�ܼ�¼��
	Integer getTotalCount(DetachedCriteria dc);
	// ��ѯ��ҳ����
    List<T> getPageList(DetachedCriteria dc,Integer start,Integer pageSize);

}
