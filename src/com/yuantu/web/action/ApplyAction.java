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
	 * ��ѯ�ҵı�����Ϣ
	 */
	public String query() throws Exception {
		 
		// ��װ���߲�ѯ����
		DetachedCriteria dc=DetachedCriteria.forClass(Apply.class);
		// ��Ӳ�ѯ����
	    dc.add(Restrictions.eq("u_id",apply.getU_id()));
        // ����service����type_name��type_item
		List<Apply> apply = as.getApplyByUid(dc);
		// ��apply���浽����
		ActionContext.getContext().put("apply", apply);
		
		return "message";
	}

	/**
	 * ��ת����ӿγ̽���
	 */
	@Override
	public String execute() throws Exception {
		/*// ��װ���߲�ѯ����
		DetachedCriteria dc=DetachedCriteria.forClass(Apply.class);
		// ��Ӳ�ѯ����
	    dc.add(Restrictions.eq("u_id",apply.getU_id()));
        // ����service����type_name��type_item
*/		
		  return "addClass";
	}

    
	/**
	 * ��ӿγ�
	 */
	public String add() throws Exception {
		// ����service����
		
		try {
			as.save(apply);
		} catch (Exception e) {
			e.printStackTrace();
		    Exception e2=new Exception("����д��ȷ��Ϣ");
			ActionContext.getContext().put("error", e2.getMessage());
			return "addClass";
		}
		
		return "success";
	}
    
	/**
	 * �����γ�
	 */
	public String remove() throws Exception {
		
	    
        // ����service���ݲ�c_idɾ���γ�
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
