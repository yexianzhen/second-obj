package com.ecp.entity;

import java.io.Serializable;

public class ContcatInfo  implements  Serializable{

	private Integer id;
    private String street1;
    private String street2;
    private String city;
    private String zip;
    private String email;
    private String homePhone;
    private String cellPhone;
    private String officePhone;   
    private User  user;
    private Country  country;
    private Province province;
	public String getCellPhone() {
		return cellPhone;
	}
	public void setCellPhone(String cellPhone) {
		this.cellPhone = cellPhone;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public Country getCountry() {
		return country;
	}
	public void setCountry(Country country) {
		this.country = country;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHomePhone() {
		return homePhone;
	}
	public void setHomePhone(String homePhone) {
		this.homePhone = homePhone;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getOfficePhone() {
		return officePhone;
	}
	public void setOfficePhone(String officePhone) {
		this.officePhone = officePhone;
	}
	public Province getProvince() {
		return province;
	}
	public void setProvince(Province province) {
		this.province = province;
	}
	public String getStreet1() {
		return street1;
	}
	public void setStreet1(String street1) {
		this.street1 = street1;
	}
	public String getStreet2() {
		return street2;
	}
	public void setStreet2(String street2) {
		this.street2 = street2;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public ContcatInfo(String phone, String city, Country country, String email, String phone2, String phone3, Province province, String street1, String street2, User user, String zip) {
		super();
		// TODO Auto-generated constructor stub
		cellPhone = phone;
		this.city = city;
		this.country = country;
		this.email = email;
		homePhone = phone2;
		officePhone = phone3;
		this.province = province;
		this.street1 = street1;
		this.street2 = street2;
		this.user = user;
		this.zip = zip;
	}
	public ContcatInfo() {
		super();
		
	}
    
}
