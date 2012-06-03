package com.agilefly.bean;

import org.compass.annotations.Index;
import org.compass.annotations.Searchable;
import org.compass.annotations.SearchableId;
import org.compass.annotations.SearchableProperty;
import org.compass.annotations.Store;

/**
 * BlogArticle entity.
 * 
 * @author MyEclipse Persistence Tools
 */

@Searchable
public class BlogArticle implements java.io.Serializable {

	// Fields

	private Integer id;
	private String articleTitle;
	private String articleContent;
	private Short articleTypeId;

	// Constructors

	/** default constructor */
	public BlogArticle() {
	}

	/** full constructor */
	public BlogArticle(String articleTitle, String articleContent, Short articleTypeId) {
		this.articleTitle = articleTitle;
		this.articleContent = articleContent;
		this.articleTypeId = articleTypeId;
	}

	// Property accessors

	@SearchableId
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@SearchableProperty(index=Index.ANALYZED,store=Store.YES)
	public String getArticleTitle() {
		return this.articleTitle;
	}

	@SearchableProperty(index=Index.ANALYZED,store=Store.YES)
	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}

	public String getArticleContent() {
		return this.articleContent;
	}

	public void setArticleContent(String articleContent) {
		this.articleContent = articleContent;
	}

	public Short getArticleTypeId() {
		return this.articleTypeId;
	}

	public void setArticleTypeId(Short articleTypeId) {
		this.articleTypeId = articleTypeId;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		final BlogArticle other = (BlogArticle) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

	
}