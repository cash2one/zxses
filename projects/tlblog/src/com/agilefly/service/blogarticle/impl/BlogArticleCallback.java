package com.agilefly.service.blogarticle.impl;

import java.util.ArrayList;
import java.util.List;

import org.compass.core.CompassCallback;
import org.compass.core.CompassException;
import org.compass.core.CompassHits;
import org.compass.core.CompassSession;

import com.agilefly.bean.BlogArticle;
import com.agilefly.commons.QueryResult;
import com.agilefly.utils.HtmlUtils;

public class BlogArticleCallback implements CompassCallback<QueryResult<BlogArticle>> {
	private String key;
	private int startIndex;
	private int maxResult;
	
	@Override
	public QueryResult<BlogArticle> doInCompass(CompassSession compass) throws CompassException {
		List<BlogArticle> articles = new ArrayList<BlogArticle>();
		CompassHits hits = compass.find(key);
		int lastIndex = startIndex + maxResult - 1;
		if(lastIndex > (hits.length()-1)){
			lastIndex = hits.length()-1;
		}
		for(int i = startIndex; i <= lastIndex; i++){
			BlogArticle article = (BlogArticle) hits.data(i);
			String hlArticleTitle = hits.highlighter(i).fragment("articleTitle");
			String hlArticleContent = hits.highlighter(i).fragment("articleContent");
			if(hlArticleTitle != null){
				article.setArticleTitle(hlArticleTitle);
			}
			if(hlArticleContent != null){
				article.setArticleContent(hlArticleContent);
			}
			//不管是否在内容索引到项，最后去掉html标记，截取部分内容
			article.setArticleContent(HtmlUtils.splitAndFilterString(article.getArticleContent(),250));
			
			articles.add(article);
		}
		QueryResult<BlogArticle> qr = new QueryResult<BlogArticle>();
		qr.setResultlist(articles);
		qr.setTotalrecord(hits.length());//设置查询到的总记录数
		return qr;
	}
	
	public BlogArticleCallback(String key, int startIndex, int maxResult){
		this.key = key;
		this.startIndex = startIndex;
		this.maxResult = maxResult;
	}

}