package com.yuantu.entity;
/**
 * CREATE TABLE `yt_user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `u_name` varchar(16) NOT NULL COMMENT '用户名',
  `u_password` varchar(16) NOT NULL COMMENT '用户密码',
  `u_phone` varchar(12) NOT NULL COMMENT '用户联系号码',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 * @author Administrator
 *
 */
public class User {
    
	private int    u_id;
	private String u_name;
	private String u_password;
	private String u_phone;
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_password() {
		return u_password;
	}
	public void setU_password(String u_password) {
		this.u_password = u_password;
	}
	public String getU_phone() {
		return u_phone;
	}
	public void setU_phone(String u_phone) {
		this.u_phone = u_phone;
	}
	@Override
	public String toString() {
		return "User [u_id=" + u_id + ", u_name=" + u_name + ", u_password=" + u_password + "]";
	}
	
	
}
