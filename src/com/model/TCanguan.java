package com.model;

/**
 * TCanguan generated by MyEclipse Persistence Tools
 */

public class TCanguan implements java.io.Serializable
{

	// Fields

	private Integer canguanId;

	private String canguanName;

	private String canguanAdd;

	private String canguanTel;

	private String canguanBeizhu;

	private String canguanDel;

	// Constructors

	/** default constructor */
	public TCanguan()
	{
	}

	/** full constructor */
	public TCanguan(String canguanName, String canguanAdd, String canguanTel,
			String canguanBeizhu, String canguanDel)
	{
		this.canguanName = canguanName;
		this.canguanAdd = canguanAdd;
		this.canguanTel = canguanTel;
		this.canguanBeizhu = canguanBeizhu;
		this.canguanDel = canguanDel;
	}

	// Property accessors

	public Integer getCanguanId()
	{
		return this.canguanId;
	}

	public void setCanguanId(Integer canguanId)
	{
		this.canguanId = canguanId;
	}

	public String getCanguanName()
	{
		return this.canguanName;
	}

	public void setCanguanName(String canguanName)
	{
		this.canguanName = canguanName;
	}

	public String getCanguanAdd()
	{
		return this.canguanAdd;
	}

	public void setCanguanAdd(String canguanAdd)
	{
		this.canguanAdd = canguanAdd;
	}

	public String getCanguanTel()
	{
		return this.canguanTel;
	}

	public void setCanguanTel(String canguanTel)
	{
		this.canguanTel = canguanTel;
	}

	public String getCanguanBeizhu()
	{
		return this.canguanBeizhu;
	}

	public void setCanguanBeizhu(String canguanBeizhu)
	{
		this.canguanBeizhu = canguanBeizhu;
	}

	public String getCanguanDel()
	{
		return this.canguanDel;
	}

	public void setCanguanDel(String canguanDel)
	{
		this.canguanDel = canguanDel;
	}

}