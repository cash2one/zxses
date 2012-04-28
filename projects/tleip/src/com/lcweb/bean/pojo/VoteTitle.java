package com.lcweb.bean.pojo;

import java.util.HashSet;
import java.util.Set;

/**
 * VoteTitle entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class VoteTitle implements java.io.Serializable {

	// Fields

	private Long voteId;
	private String voteName;
	private Byte voteType;
	private String voteDate;
	private Set voteItemses = new HashSet(0);
	
	private String voteTypeStr;

	// Constructors

	public String getVoteTypeStr() {
		if(voteType == 1){
			return "<font color='green'>单选</font>";
		}else{
			return "<font color='green'>多选</font>";
		}
	}

	/** default constructor */
	public VoteTitle() {
	}

	/** full constructor */
	public VoteTitle(String voteName, Byte voteType, String voteDate, Set voteItemses) {
		this.voteName = voteName;
		this.voteType = voteType;
		this.voteDate = voteDate;
		this.voteItemses = voteItemses;
	}

	// Property accessors

	public Long getVoteId() {
		return this.voteId;
	}

	public void setVoteId(Long voteId) {
		this.voteId = voteId;
	}

	public String getVoteName() {
		return this.voteName;
	}

	public void setVoteName(String voteName) {
		this.voteName = voteName;
	}

	public Byte getVoteType() {
		return this.voteType;
	}

	public void setVoteType(Byte voteType) {
		this.voteType = voteType;
	}

	public String getVoteDate() {
		return this.voteDate;
	}

	public void setVoteDate(String voteDate) {
		this.voteDate = voteDate;
	}

	public Set getVoteItemses() {
		return this.voteItemses;
	}

	public void setVoteItemses(Set voteItemses) {
		this.voteItemses = voteItemses;
	}

}