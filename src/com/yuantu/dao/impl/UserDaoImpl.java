package com.yuantu.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate5.HibernateCallback;

import com.yuantu.dao.UserDao;
import com.yuantu.entity.User;

public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao {

	@Override
	public User getByUserName(final String u_name) {
		//HQL
	   return getHibernateTemplate().execute(new HibernateCallback<User>() {
		   
		   @Override
		   public User doInHibernate(Session session) throws HibernateException {
				String hql = "from User where u_name = ? ";
				Query query = session.createQuery(hql);
				query.setParameter(0, u_name);
				User user = (User) query.uniqueResult();
			      return user;
			   		}
				});
	}

	
}
