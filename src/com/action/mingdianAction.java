package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TAdminDAO;
import com.dao.TCanguanDAO;
import com.model.TAdmin;
import com.model.TCanguan;
import com.model.TMingdian;
import com.model.TMingdianDAO;
import com.opensymphony.xwork2.ActionSupport;

public class mingdianAction extends ActionSupport
{
	private int id;
	private String name;
	private String address;
	private String tel;
	private String beizhu;
	 
	private String message;
	private String path;
	
	private TMingdianDAO mingdianDAO;
	
	
	public String mingdianAddMy()
	{
		TMingdian mingdian=new TMingdian();
		mingdian.setName(name);
		mingdian.setAddress(address);
		mingdian.setTel(tel);
		mingdian.setBeizhu(beizhu);
		mingdian.setZhuantai("noshenhe");
		mingdian.setDel("no");
		mingdianDAO.save(mingdian);
		
		return ActionSupport.SUCCESS;
	}
	
	public String mingdianDel()
	{
		TMingdian mingdian=mingdianDAO.findById(id);
		mingdian.setDel("yes");
		mingdianDAO.attachDirty(mingdian);
		
		this.setMessage("操作成功");
		this.setPath("mingdianMana.action");
		return "succeed";
	}
	
	public String mingdianMana()
	{
		String sql="from TMingdian where del='no' order by zhuantai";
		List mingdianList=mingdianDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("mingdianList", mingdianList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String mingdianAll()
	{
		String sql="from TMingdian where del='no' and zhuantai='yishenhe'";
		List mingdianList=mingdianDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("mingdianList", mingdianList);
		return ActionSupport.SUCCESS;
	}
	
	public String mingdianShenhe()
	{
		TMingdian mingdian=mingdianDAO.findById(id);
		mingdian.setZhuantai("yishenhe");
		mingdianDAO.attachDirty(mingdian);
		
		this.setMessage("操作成功");
		this.setPath("mingdianMana.action");
		return "succeed";
	}
	
	

	public String getAddress()
	{
		return address;
	}

	public void setAddress(String address)
	{
		this.address = address;
	}


	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public String getBeizhu()
	{
		return beizhu;
	}

	public void setBeizhu(String beizhu)
	{
		this.beizhu = beizhu;
	}


	public int getId()
	{
		return id;
	}

	public void setId(int id)
	{
		this.id = id;
	}

	public String getMessage()
	{
		return message;
	}

	public void setMessage(String message)
	{
		this.message = message;
	}

	public TMingdianDAO getMingdianDAO()
	{
		return mingdianDAO;
	}

	public void setMingdianDAO(TMingdianDAO mingdianDAO)
	{
		this.mingdianDAO = mingdianDAO;
	}

	public String getPath()
	{
		return path;
	}

	public void setPath(String path)
	{
		this.path = path;
	}

	public String getTel()
	{
		return tel;
	}

	public void setTel(String tel)
	{
		this.tel = tel;
	}
}
