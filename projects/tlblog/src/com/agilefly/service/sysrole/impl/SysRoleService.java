package com.agilefly.service.sysrole.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.agilefly.bean.SysRole;
import com.agilefly.service.base.BaseDaoImpl;
import com.agilefly.service.sysrole.ISysRoleService;

/**
 * @author boleyn_renlei
 * @date May 18, 2012 10:39:08 PM
 */
@Service
@Transactional
public class SysRoleService extends BaseDaoImpl<SysRole> implements ISysRoleService {
}
