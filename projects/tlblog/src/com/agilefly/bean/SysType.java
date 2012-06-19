package com.agilefly.bean;

import java.util.HashSet;
import java.util.Set;

/**
 * SysType entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class SysType implements java.io.Serializable {

	// Fields

	private Integer id;
	private String typeName;
	private String typeDes;
	private String typeCode;
	private Set sysUsers = new HashSet(0);

	// Constructors

	/** default constructor */
	public SysType() {
	}

	/** full constructor */
	public SysType(String typeName, String typeDes, String typeCode, Set sysUsers) {
		this.typeName = typeName;
		this.typeDes = typeDes;
		this.typeCode = typeCode;
		this.sysUsers = sysUsers;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTypeName() {
		return this.typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public String getTypeDes() {
		return this.typeDes;
	}

	public void setTypeDes(String typeDes) {
		this.typeDes = typeDes;
	}

	public String getTypeCode() {
		return this.typeCode;
	}

	public void setTypeCode(String typeCode) {
		this.typeCode = typeCode;
	}

	public Set getSysUsers() {
		return this.sysUsers;
	}

	public void setSysUsers(Set sysUsers) {
		this.sysUsers = sysUsers;
	}

}