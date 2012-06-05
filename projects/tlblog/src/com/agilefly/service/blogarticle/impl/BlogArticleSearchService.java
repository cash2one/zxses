package com.agilefly.service.blogarticle.impl;

import javax.annotation.Resource;

import org.compass.core.Compass;
import org.compass.spring.CompassDaoSupport;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.agilefly.bean.BlogArticle;
import com.agilefly.commons.QueryResult;
import com.agilefly.commons.web.SystemContext;
import com.agilefly.service.blogarticle.IBlogArticleSearchService;

/**
 * @author boleyn_renlei
 * @date Jun 4, 2012 10:18:14 AM
 * 博客文章搜素service
 */
@Service @Transactional
public class BlogArticleSearchService extends CompassDaoSupport implements IBlogArticleSearchService{
	@Resource
	public void setSuperCompass(Compass compass){
		super.setCompass(compass);
	}
	
	@Override
	public QueryResult<BlogArticle> search(String key, int startIndex, int maxResult) {
		return this.getCompassTemplate().execute(new BlogArticleCallback(key, startIndex, maxResult));
	}

	@Override
	public QueryResult<BlogArticle> searchByThread(String key) {
		return this.getCompassTemplate().execute(new BlogArticleCallback(key, SystemContext.getOffset(), SystemContext.getPagesize()));
	}
}
