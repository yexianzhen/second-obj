package com.ecp.entity;

import java.io.Serializable;

public class User  implements  Serializable{

	private Integer id;
	private String name;
	private String passwd;
	private ContcatInfo info;
	
	public ContcatInfo getInfo() {
		return info;
	}
	public void setInfo(ContcatInfo info) {
		this.info = info;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public User( String name, String passwd) {
		super();
		this.name = name;
		this.passwd = passwd;
	}
	public User() {
		super();
		
	}
	
}
