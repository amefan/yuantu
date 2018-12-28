package com.yuantu.web.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.opensymphony.xwork2.ActionSupport;

import com.yuantu.entity.BaseDict;
import com.yuantu.service.BaseDictService;
public class BaseDictAction extends ActionSupport {
      
	private String dict_type_name;//
	
	private BaseDictService bds;

	
	/**
	 * 根据type_name查list
	 */
	
	public String list() throws Exception {
		
		//封装离线查询条件
		DetachedCriteria dc=DetachedCriteria.forClass(BaseDict.class);
		//添加查询条件
	    dc.add(Restrictions.eq("dict_type_name",dict_type_name));

        // 调用service根据type_name查type_item
		List<BaseDict> list = bds.getListByTypeName(dc);
		
		// 将list转换为Json(这里使用的是阿里巴巴的fastjson)
		String json = JSON.toJSONString(list);
		
		// 将json发送给浏览器
		ServletActionContext.getResponse().setContentType("application/json;charset=utf-8");
		ServletActionContext.getResponse().getWriter().write(json);
		
		
		return null;
	}


	public String getDict_type_name() {
		return dict_type_name;
	}


	public void setDict_type_name(String dict_type_name) {
		this.dict_type_name = dict_type_name;
	}


	public void setBds(BaseDictService bds) {
		this.bds = bds;
	}
	
	
}
