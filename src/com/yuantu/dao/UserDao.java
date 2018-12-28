package com.yuantu.dao;

import com.yuantu.entity.User;

public interface UserDao extends BaseDao<User> {

	User getByUserName(String u_name);

}
