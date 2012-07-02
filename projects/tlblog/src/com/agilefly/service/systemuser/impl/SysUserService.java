package com.agilefly.service.systemuser.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.agilefly.bean.SysUser;
import com.agilefly.service.base.BaseDaoImpl;
import com.agilefly.service.systemuser.ISysUserService;

/**
 * @author boleyn_renlei
 * @date May 18, 2012 10:39:21 PM
 */
@Service
@Transactional
public class SysUserService extends BaseDaoImpl<SysUser> implements ISysUserService {

	@SuppressWarnings("unchecked")
	@Transactional(readOnly=true,propagation=Propagation.NOT_SUPPORTED)
	@Override
	public SysUser findByUnamePass(String username, String password) {
		List<SysUser> list = getSession().createQuery("from SysUser o where o.username=? and o.password=?")
				.setParameter(0, username).setParameter(1, password).list();
		if(list.size() == 0)
			return null;
		else{
			return list.get(0);
		}
	}
	
	@SuppressWarnings("unchecked")
	@Transactional(readOnly=true,propagation=Propagation.NOT_SUPPORTED)
	@Override
	public SysUser findByUnamePassType(String username, String password, String userType) {
		List<SysUser> list = getSession().createQuery("from SysUser o where o.username=? and o.password=? and o.userType=?")
				.setParameter(0, username).setParameter(1, password).setParameter(2, userType).list();
		if(list.size() == 0)
			return null;
		else{
			return list.get(0);
		}
	}
	
	@SuppressWarnings("unchecked")
	@Transactional(readOnly=true,propagation=Propagation.NOT_SUPPORTED)
	@Override
	public SysUser findByUname(String username) {
		List<SysUser> list = getSession().createQuery("from SysUser o where o.username=? ")
				.setParameter(0, username).list();
		if(list.size() == 0)
			return null;
		else{
			return list.get(0);
		}
	}
	
	@Transactional(readOnly=true,propagation=Propagation.NOT_SUPPORTED)
	@Override
	public boolean checkUnameExist(String username){
		Long size = (Long)getSession().createQuery("select count(*) from " + getEntityName(this.entityClass)+ " o where o.username=?").setParameter(0, username).uniqueResult();
		return size > 0;
	}
}
