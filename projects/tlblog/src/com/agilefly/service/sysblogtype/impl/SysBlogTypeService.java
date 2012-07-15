package com.agilefly.service.sysblogtype.impl;

import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.agilefly.bean.SysType;
import com.agilefly.commons.SysConstant;
import com.agilefly.service.base.BaseDaoImpl;
import com.agilefly.service.sysblogtype.ISysBlogTypeService;

/**
 * @author boleyn_renlei
 * @date May 18, 2012 10:38:43 PM
 */
@Service
@Transactional
public class SysBlogTypeService extends BaseDaoImpl<SysType> implements ISysBlogTypeService {
	@Transactional(readOnly=true,propagation=Propagation.NOT_SUPPORTED)
	public List<SysType> searchSysBlogTypes(String typecode){
		
		String whereHql = "o.typeCode=? and o.extFirst=? ";
		Object[] params = new Object[]{SysConstant.ARTICLE_TYPE,typecode};
		
		//按照排序号排序
		LinkedHashMap<String, String> orderby = new LinkedHashMap<String, String>();
		orderby.put("typeOrder", "asc");
		
		return findByCondition(whereHql, params, orderby);
	}
}
