package com.lcweb.service.vote;

import com.lcweb.bean.pojo.VoteTitle;
import com.lcweb.service.base.BaseService;

public interface VoteService extends BaseService{
	/**
	 * 删除投票
	 */
	public void deleteVoteTitles(String[] ids);
	
	/**
	 * 查询最新的投票
	 */
	public VoteTitle queryNewVoteTitle();
	
	public Integer getItemsBallotCount(Long id);
}
