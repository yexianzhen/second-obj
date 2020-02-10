package com.ecp.entity;

import java.io.Serializable;

public class Province  implements  Serializable{

	private Integer id;
	private String name;
	private Country country;
	public Country getCountry() {
		return country;
	}
	public void setCountry(Country country) {
		this.country = country;
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
	public Province(Country country, String name) {
		super();
		this.country = country;
		this.name = name;
	}
	public Province() {
		super();
	}
	
	
}
