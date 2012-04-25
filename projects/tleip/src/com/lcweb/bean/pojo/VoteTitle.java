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
	private Set voteItemses = new HashSet(0);

	// Constructors

	/** default constructor */
	public VoteTitle() {
	}

	/** full constructor */
	public VoteTitle(String voteName, Byte voteType, Set voteItemses) {
		this.voteName = voteName;
		this.voteType = voteType;
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

	public Set getVoteItemses() {
		return this.voteItemses;
	}

	public void setVoteItemses(Set voteItemses) {
		this.voteItemses = voteItemses;
	}

}