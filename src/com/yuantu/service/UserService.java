package com.yuantu.service;

import com.yuantu.entity.User;

public interface UserService {

	void saveUser(User user);

	User getUserByNamePassword(User user);

	boolean isExitName(String name);

}
