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
	private Integer typeOrder;
	private Byte available;
	private String extFirst;
	private String extSecond;

	// Constructors

	/** default constructor */
	public SysType() {
	}

	/** full constructor */
	public SysType(String typeName, String typeDes, String typeCode) {
		this.typeName = typeName;
		this.typeDes = typeDes;
		this.typeCode = typeCode;
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

	public String getExtFirst() {
		return extFirst;
	}

	public void setExtFirst(String extFirst) {
		this.extFirst = extFirst;
	}

	public String getExtSecond() {
		return extSecond;
	}

	public void setExtSecond(String extSecond) {
		this.extSecond = extSecond;
	}

	public Integer getTypeOrder() {
		return typeOrder;
	}

	public void setTypeOrder(Integer typeOrder) {
		this.typeOrder = typeOrder;
	}

	public Byte getAvailable() {
		return available;
	}

	public void setAvailable(Byte available) {
		this.available = available;
	}

}