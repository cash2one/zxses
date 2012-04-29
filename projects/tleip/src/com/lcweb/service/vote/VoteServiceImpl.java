package com.lcweb.service.vote;

import java.util.List;

import com.lcweb.bean.pojo.FrontMessage;
import com.lcweb.bean.pojo.VoteTitle;
import com.lcweb.service.base.BaseServiceImpl;

public class VoteServiceImpl extends BaseServiceImpl implements VoteService {
	/**
	 * 删除投票主题
	 */
	public void deleteVoteTitles(String[] ids) {
		this.deleteObjects(new VoteTitle(), ids);
	}

	@Override
	public VoteTitle queryNewVoteTitle() {
		List list = this.queryObjectList("from VoteTitle v order by v.voteDate desc");
		if(list != null && list.size() > 0){
			return (VoteTitle)list.get(0);
		}
		return null;
	}

	@Override
	public Integer getItemsBallotCount(Long id) {
		Object obj = this.queryObjectList("select sum(c.voteItemses.itemBallot) from VoteTitle c where c.voteId = " + id).get(0);
		int recordCounts = 0 ;
		if(obj != null){
			recordCounts = (Integer) obj; 
		}
		return recordCounts;
	}
}
