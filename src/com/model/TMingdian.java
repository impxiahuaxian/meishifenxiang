package com.model;

/**
 * TMingdian generated by MyEclipse Persistence Tools
 */

public class TMingdian implements java.io.Serializable
{

	// Fields

	private Integer id;

	private String name;

	private String address;

	private String tel;

	private String beizhu;

	private String zhuantai;

	private String del;

	// Constructors

	/** default constructor */
	public TMingdian()
	{
	}

	/** full constructor */
	public TMingdian(String name, String address, String tel, String beizhu,
			String zhuantai, String del)
	{
		this.name = name;
		this.address = address;
		this.tel = tel;
		this.beizhu = beizhu;
		this.zhuantai = zhuantai;
		this.del = del;
	}

	// Property accessors

	public Integer getId()
	{
		return this.id;
	}

	public void setId(Integer id)
	{
		this.id = id;
	}

	public String getName()
	{
		return this.name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public String getAddress()
	{
		return this.address;
	}

	public void setAddress(String address)
	{
		this.address = address;
	}

	public String getTel()
	{
		return this.tel;
	}

	public void setTel(String tel)
	{
		this.tel = tel;
	}

	public String getBeizhu()
	{
		return this.beizhu;
	}

	public void setBeizhu(String beizhu)
	{
		this.beizhu = beizhu;
	}

	public String getZhuantai()
	{
		return this.zhuantai;
	}

	public void setZhuantai(String zhuantai)
	{
		this.zhuantai = zhuantai;
	}

	public String getDel()
	{
		return this.del;
	}

	public void setDel(String del)
	{
		this.del = del;
	}

}