package com.yuantu.web.action;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.yuantu.entity.Apply;
import com.yuantu.entity.BaseDict;
import com.yuantu.service.ApplyService;

public class ApplyAction extends ActionSupport implements ModelDriven<Apply> {
    private Apply apply=new Apply();
	
	private ApplyService as;
	
	/**
	 * 查询我的报名信息
	 */
	public String query() throws Exception {
		 
		// 封装离线查询条件
		DetachedCriteria dc=DetachedCriteria.forClass(Apply.class);
		// 添加查询条件
	    dc.add(Restrictions.eq("u_id",apply.getU_id()));
        // 调用service根据type_name查type_item
		List<Apply> apply = as.getApplyByUid(dc);
		// 将apply保存到域当中
		ActionContext.getContext().put("apply", apply);
		
		return "message";
	}

	/**
	 * 跳转到添加课程界面
	 */
	@Override
	public String execute() throws Exception {
		/*// 封装离线查询条件
		DetachedCriteria dc=DetachedCriteria.forClass(Apply.class);
		// 添加查询条件
	    dc.add(Restrictions.eq("u_id",apply.getU_id()));
        // 调用service根据type_name查type_item
*/		
		  return "addClass";
	}

    
	/**
	 * 添加课程
	 */
	public String add() throws Exception {
		// 调用service保存
		
		try {
			as.save(apply);
		} catch (Exception e) {
			e.printStackTrace();
		    Exception e2=new Exception("请填写正确信息");
			ActionContext.getContext().put("error", e2.getMessage());
			return "addClass";
		}
		
		return "success";
	}
    
	/**
	 * 结束课程
	 */
	public String remove() throws Exception {
		
	    
        // 调用service根据查c_id删除课程
	    as.delete(apply.getC_id());
	    
		return "toIndex";
	}
	
	
	@Override
	public Apply getModel() {
		// TODO Auto-generated method stub
		return apply;
	}


	public void setAs(ApplyService as) {
		this.as = as;
	}


	


	
    
	
	
	
}
