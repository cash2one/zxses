package com.agilefly.web.form;

import org.apache.struts.action.ActionForm;

public class BlogArticleForm extends ActionForm {
	private Integer id;
	private String articleTitle;
	private String articleContent;
	private Short articleTypeId;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getArticleTitle() {
		return articleTitle;
	}
	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}
	public String getArticleContent() {
		return articleContent;
	}
	public void setArticleContent(String articleContent) {
		this.articleContent = articleContent;
	}
	public Short getArticleTypeId() {
		return articleTypeId;
	}
	public void setArticleTypeId(Short articleTypeId) {
		this.articleTypeId = articleTypeId;
	}
}
