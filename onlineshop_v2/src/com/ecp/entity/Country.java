package com.ecp.entity;

import java.io.Serializable;

public class Country implements  Serializable{

	private Integer id;
    private String name;	
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
	public Country() {
		super();
	}
	public Country(String name) {
		super();
		this.name = name;
	}
    
}
