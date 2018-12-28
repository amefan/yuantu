package com.yuantu.entity;
/**
 * 
 * CREATE TABLE `forgot` (
 * `f_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '忘记密码用户表主键',
 *`f_name` varchar(18) NOT NULL COMMENT '用户名',
 *`f_email` varchar(18) NOT NULL COMMENT '用户邮箱',
 * PRIMARY KEY (`f_id`)
 * ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 *
 */
public class Forgot {
   
	private int f_id;
	private String  f_name;
	private String f_email;
	public int getF_id() {
		return f_id;
	}
	public void setF_id(int f_id) {
		this.f_id = f_id;
	}
	public String getF_name() {
		return f_name;
	}
	public void setF_name(String f_name) {
		this.f_name = f_name;
	}
	public String getF_email() {
		return f_email;
	}
	public void setF_email(String f_email) {
		this.f_email = f_email;
	}
	@Override
	public String toString() {
		return "Forget [f_id=" + f_id + ", f_name=" + f_name + ", f_email=" + f_email + "]";
	}
	
	
}
