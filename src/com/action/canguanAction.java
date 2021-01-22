package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TAdminDAO;
import com.dao.TCanguanDAO;
import com.model.TAdmin;
import com.model.TCanguan;
import com.opensymphony.xwork2.ActionSupport;

public class canguanAction extends ActionSupport
{
	private int canguanId;
	private String canguanName;
	private String canguanAdd;
	private String canguanTel;
	private String canguanBeizhu;
	 
	private String message;
	private String path;
	
	private TCanguanDAO canguanDAO;
	
	
	public String canguanAdd()
	{
		TCanguan canguan=new TCanguan();
		canguan.setCanguanName(canguanName);
		canguan.setCanguanAdd(canguanAdd);
		canguan.setCanguanTel(canguanTel);
		canguan.setCanguanBeizhu(canguanBeizhu);
		canguan.setCanguanDel("no");
		canguanDAO.save(canguan);
		this.setMessage("操作成功");
		this.setPath("canguanMana.action");
		return "succeed";
	}
	
	public String canguanDel()
	{
		canguanDAO.delete(canguanDAO.findById(canguanId));
		this.setMessage("操作成功");
		this.setPath("canguanMana.action");
		return "succeed";
	}
	
	public String canguanMana()
	{
		String sql="from TCanguan where canguanDel='no'";
		List canguanList=canguanDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("canguanList", canguanList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String canguanAll()
	{
		String sql="from TCanguan where canguanDel='no'";
		List canguanList=canguanDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("canguanList", canguanList);
		return ActionSupport.SUCCESS;
	}
	
	public String getCanguanAdd()
	{
		return canguanAdd;
	}



	public void setCanguanAdd(String canguanAdd)
	{
		this.canguanAdd = canguanAdd;
	}



	public String getCanguanBeizhu()
	{
		return canguanBeizhu;
	}



	public void setCanguanBeizhu(String canguanBeizhu)
	{
		this.canguanBeizhu = canguanBeizhu;
	}



	public TCanguanDAO getCanguanDAO()
	{
		return canguanDAO;
	}



	public void setCanguanDAO(TCanguanDAO canguanDAO)
	{
		this.canguanDAO = canguanDAO;
	}



	public int getCanguanId()
	{
		return canguanId;
	}



	public void setCanguanId(int canguanId)
	{
		this.canguanId = canguanId;
	}



	public String getCanguanName()
	{
		return canguanName;
	}



	public void setCanguanName(String canguanName)
	{
		this.canguanName = canguanName;
	}



	public String getCanguanTel()
	{
		return canguanTel;
	}



	public void setCanguanTel(String canguanTel)
	{
		this.canguanTel = canguanTel;
	}



	public String getMessage()
	{
		return message;
	}



	public void setMessage(String message)
	{
		this.message = message;
	}



	public String getPath()
	{
		return path;
	}



	public void setPath(String path)
	{
		this.path = path;
	}
	
}
