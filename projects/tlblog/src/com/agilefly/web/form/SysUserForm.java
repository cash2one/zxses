package com.agilefly.web.form;

import java.util.Date;

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
	private String userPenname;
	private String userBirthday;
	private String userQq;
	private String userBlogname;
	private String userBlogdes;
	private String userLoginip;
	private Date userRegtime;
	private Date userLogintime;
	private String userHeadpic;
	private String userEmail;
	private String sinaWeibo;
	private String tenWeibo;
	private String phone;
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
	public String getUserPenname() {
		return userPenname;
	}
	public void setUserPenname(String userPenname) {
		this.userPenname = userPenname;
	}
	public String getUserBirthday() {
		return userBirthday;
	}
	public void setUserBirthday(String userBirthday) {
		this.userBirthday = userBirthday;
	}
	public String getUserQq() {
		return userQq;
	}
	public void setUserQq(String userQq) {
		this.userQq = userQq;
	}
	public String getUserBlogname() {
		return userBlogname;
	}
	public void setUserBlogname(String userBlogname) {
		this.userBlogname = userBlogname;
	}
	public String getUserBlogdes() {
		return userBlogdes;
	}
	public void setUserBlogdes(String userBlogdes) {
		this.userBlogdes = userBlogdes;
	}
	public String getUserLoginip() {
		return userLoginip;
	}
	public void setUserLoginip(String userLoginip) {
		this.userLoginip = userLoginip;
	}
	public Date getUserRegtime() {
		return userRegtime;
	}
	public void setUserRegtime(Date userRegtime) {
		this.userRegtime = userRegtime;
	}
	public Date getUserLogintime() {
		return userLogintime;
	}
	public void setUserLogintime(Date userLogintime) {
		this.userLogintime = userLogintime;
	}
	public String getUserHeadpic() {
		return userHeadpic;
	}
	public void setUserHeadpic(String userHeadpic) {
		this.userHeadpic = userHeadpic;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getSinaWeibo() {
		return sinaWeibo;
	}
	public void setSinaWeibo(String sinaWeibo) {
		this.sinaWeibo = sinaWeibo;
	}
	public String getTenWeibo() {
		return tenWeibo;
	}
	public void setTenWeibo(String tenWeibo) {
		this.tenWeibo = tenWeibo;
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
