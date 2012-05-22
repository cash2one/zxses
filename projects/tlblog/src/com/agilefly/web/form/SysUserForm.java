package com.agilefly.web.form;

import org.apache.struts.action.ActionForm;

/**
 * @author boleyn_renlei
 * @date May 18, 2012 10:40:16 PM
 */
public class SysUserForm extends ActionForm {
	private int id;
	private String username;
	private String password;
	private String realname;
	private String gender;
	private String phone;
	private String email;
	private Byte available;
	private Byte recordStatus;
	private Integer[] roleIds;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Byte getAvailable() {
		return available;
	}
	public void setAvailable(Byte available) {
		this.available = available;
	}
	public Byte getRecordStatus() {
		return recordStatus;
	}
	public void setRecordStatus(Byte recordStatus) {
		this.recordStatus = recordStatus;
	}
	public Integer[] getRoleIds() {
		return roleIds;
	}
	public void setRoleIds(Integer[] roleIds) {
		this.roleIds = roleIds;
	}
	
}
