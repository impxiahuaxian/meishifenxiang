package com.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TCatelogDAO;
import com.dao.TGoodsDAO;
import com.model.TCatelog;
import com.model.TGoods;
import com.opensymphony.xwork2.ActionSupport;

public class goodsAction extends ActionSupport
{
	private int goodsId;
	private String goodsName;
	private String goodsMiaoshu;
	private String fujian;
	private int goodsJiage=0;
	
	private int goodsCatelogId;
	private int goodsCanguanId;
	
	private int catelogId;
	
	private String message;
	private String path;
	
	private TGoodsDAO goodsDAO;
	private TCatelogDAO catelogDAO;
	
	public String goodsAdd()
	{
		TGoods goods=new TGoods();
		goods.setGoodsName(goodsName);
		goods.setGoodsMiaoshu(goodsMiaoshu);
		goods.setGoodsPic(fujian);
		goods.setGoodsJiage(goodsJiage);
		goods.setGoodsCatelogId(goodsCatelogId);
		goods.setGoodsCanguanId(goodsCanguanId);
		goods.setGoodsDel("no");
		goodsDAO.save(goods);
		this.setMessage("操作成功");
		this.setPath("goodsMana.action");
		return "succeed";
		
	}
	
	public String goodsDel()
	{
		TGoods goods=goodsDAO.findById(goodsId);
		goods.setGoodsDel("yes");
		goodsDAO.attachDirty(goods);
		this.setMessage("操作成功");
		this.setPath("goodsMana.action");
		return "succeed";
	}
	
	public String goodsMana()
	{
		String sql="from TGoods where goodsDel='no'";
		List goodsList=goodsDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("goodsList", goodsList);
		return ActionSupport.SUCCESS;
	}
	
	
	
	
	
	public String goodsDetail()
	{
		Map request=(Map)ServletActionContext.getContext().get("request");
		
		TGoods goods=goodsDAO.findById(goodsId);
		request.put("goods", goods);
		return ActionSupport.SUCCESS;
	}
	
	
	
	
	public String goodsAll()
	{
        String sql="from TGoods where goodsDel='no'";
		List goodsList=goodsDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("goodsList", goodsList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String goodsByCatelog()
	{
        Map request=(Map)ServletActionContext.getContext().get("request");
		
		String sql="from TGoods where goodsDel='no' and goodsCatelogId=?";
		Object[] con={catelogId};
		List goodsList=goodsDAO.getHibernateTemplate().find(sql,con);
		request.put("goodsList", goodsList);
		
		return ActionSupport.SUCCESS;
	}
	
	
	public String goodSearch()
	{
        Map request=(Map)ServletActionContext.getContext().get("request");
		String sql="";
		sql="from TGoods where goodsDel='no' and goodsName like '%"+goodsName+"%'";
		
		List goodsList=goodsDAO.getHibernateTemplate().find(sql);
		request.put("goodsList", goodsList);
		
		return ActionSupport.SUCCESS;
	}

	public TCatelogDAO getCatelogDAO()
	{
		return catelogDAO;
	}

	public void setCatelogDAO(TCatelogDAO catelogDAO)
	{
		this.catelogDAO = catelogDAO;
	}

	public int getCatelogId()
	{
		return catelogId;
	}

	public void setCatelogId(int catelogId)
	{
		this.catelogId = catelogId;
	}

	public String getFujian()
	{
		return fujian;
	}

	public void setFujian(String fujian)
	{
		this.fujian = fujian;
	}

	public int getGoodsCanguanId()
	{
		return goodsCanguanId;
	}

	public void setGoodsCanguanId(int goodsCanguanId)
	{
		this.goodsCanguanId = goodsCanguanId;
	}

	public int getGoodsCatelogId()
	{
		return goodsCatelogId;
	}

	public void setGoodsCatelogId(int goodsCatelogId)
	{
		this.goodsCatelogId = goodsCatelogId;
	}

	public TGoodsDAO getGoodsDAO()
	{
		return goodsDAO;
	}

	public void setGoodsDAO(TGoodsDAO goodsDAO)
	{
		this.goodsDAO = goodsDAO;
	}

	public int getGoodsId()
	{
		return goodsId;
	}

	public void setGoodsId(int goodsId)
	{
		this.goodsId = goodsId;
	}

	public int getGoodsJiage()
	{
		return goodsJiage;
	}

	public void setGoodsJiage(int goodsJiage)
	{
		this.goodsJiage = goodsJiage;
	}

	public String getGoodsMiaoshu()
	{
		return goodsMiaoshu;
	}

	public void setGoodsMiaoshu(String goodsMiaoshu)
	{
		this.goodsMiaoshu = goodsMiaoshu;
	}

	public String getGoodsName()
	{
		return goodsName;
	}

	public void setGoodsName(String goodsName)
	{
		this.goodsName = goodsName;
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
