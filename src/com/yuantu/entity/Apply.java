package com.yuantu.entity;
/**
 * 
 *CREATE TABLE `apply_list` (
  `c_id` int(16) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `u_id` int(16) NOT NULL AUTO_INCREMENT COMMENT '报名人id',
  `s_name` varchar(20) NOT NULL COMMENT '报名人姓名',
  `s_phone` varchar(15) NOT NULL COMMENT '报名人手机号',
  `s_category` varchar(6) NOT NULL COMMENT '所报类别',
  `s_class` varchar(10) DEFAULT NULL COMMENT '所报年级',
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 *
 *报名情况实体
 */

public class Apply {
    private int c_id;
    private int u_id;
    private String s_name;
    private String s_phone;
    private String s_class;
    
    private BaseDict s_category;

	public int getC_id() {
		return c_id;
	}

	public void setC_id(int c_id) {
		this.c_id = c_id;
	}

	public String getS_name() {
		return s_name;
	}

	public void setS_name(String s_name) {
		this.s_name = s_name;
	}

	public String getS_phone() {
		return s_phone;
	}

	public void setS_phone(String s_phone) {
		this.s_phone = s_phone;
	}

	public String getS_class() {
		return s_class;
	}

	public void setS_class(String s_class) {
		this.s_class = s_class;
	}

	public BaseDict getS_category() {
		return s_category;
	}

	public void setS_category(BaseDict s_category) {
		this.s_category = s_category;
	}
    
	public int getU_id() {
		return u_id;
	}

	public void setU_id(int u_id) {
		this.u_id = u_id;
	}

	@Override
	public String toString() {
		return "Apply_list [c_id=" + c_id + ", s_name=" + s_name + ", s_class=" + s_class + ", s_category=" + s_category
				+ " "+s_phone+ "]";
	}
    
    
}
