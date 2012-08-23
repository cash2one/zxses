package com.agilefly.web.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.stereotype.Controller;

import com.agilefly.bean.SysConfig;
import com.agilefly.bean.SysModule;
import com.agilefly.bean.SysPrivilege;
import com.agilefly.bean.SysRole;
import com.agilefly.bean.SysUser;
import com.agilefly.commons.SysConstant;
import com.agilefly.service.sysconfig.ISysConfigService;
import com.agilefly.service.sysmodule.ISysModuleService;
import com.agilefly.service.sysprivilege.ISysPrivilegeService;
import com.agilefly.service.sysrole.ISysRoleService;
import com.agilefly.service.systemuser.ISysUserService;
import com.agilefly.utils.CipherUtil;

/**
 * @author boleyn_renlei
 * @date May 18, 2012 10:39:46 PM
 */
@Controller("/sys/systeminit")
public class InitAction extends Action{
	@Resource ISysPrivilegeService sysPrivilegeService;
	@Resource ISysModuleService sysModuleService;
	@Resource ISysRoleService sysRoleService;
	@Resource ISysUserService sysUserService;
	@Resource ISysConfigService sysConfigService;
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		initSysModule();
		initSysPrivilege();
		initSysUserRole();
		initSysConfig();
		//request.setAttribute("showMsg", SysObj.SystemInit());
		request.setAttribute("message", "系统初始化成功");
		request.setAttribute("urladdress", "sys/login.do?method=toLogin");
		return mapping.findForward("message");
	}
	
	/**
	 * 添加系统模块
	 */
	private void initSysModule(){
		if(sysModuleService.getCount() == 0){
			SysModule systemManage = new SysModule();
			systemManage.setName("系统管理");
			systemManage.setSn("systemManage");
			systemManage.setOrderNo(1);
			sysModuleService.addSysModule(systemManage, 0);
			
			SysModule sysWebSiteManage = new SysModule();
			sysWebSiteManage.setName("博客管理");
			sysWebSiteManage.setSn("sysWebSiteManage");
			sysWebSiteManage.setOrderNo(2);
			sysModuleService.addSysModule(sysWebSiteManage, 0);
			
			//系统管理子模块
			SysModule sysModuleManage = new SysModule();
			sysModuleManage.setName("模块管理");
			sysModuleManage.setSn("sysModuleManage");
			sysModuleManage.setUrl("view/sysmodule.do");
			sysModuleManage.setOrderNo(1);
			sysModuleService.addSysModule(sysModuleManage, systemManage.getId());
			
			SysModule sysUserManage = new SysModule();
			sysUserManage.setName("用户管理");
			sysUserManage.setSn("sysUserManage");
			sysUserManage.setUrl("view/sysuser.do");
			sysUserManage.setOrderNo(2);
			sysModuleService.addSysModule(sysUserManage, systemManage.getId());
			
			SysModule sysRoleManage = new SysModule();
			sysRoleManage.setName("角色管理");
			sysRoleManage.setSn("sysRoleManage");
			sysRoleManage.setUrl("view/sysrole.do");
			sysRoleManage.setOrderNo(3);
			sysModuleService.addSysModule(sysRoleManage, systemManage.getId());
			
			//博客管理子模块
			SysModule sysBlogTypeManage = new SysModule();
			sysBlogTypeManage.setName("类型管理");
			sysBlogTypeManage.setSn("sysBlogTypeManage");
			sysBlogTypeManage.setUrl("view/sysblogtype.do");
			sysBlogTypeManage.setOrderNo(1);
			sysModuleService.addSysModule(sysBlogTypeManage, sysWebSiteManage.getId());
		}
	}
	
	/**
	 * 添加系统权限
	 */
	private void initSysPrivilege(){
		if(sysPrivilegeService.getCount() == 0){
			List<SysPrivilege> sysPrivileges = new ArrayList<SysPrivilege>();
			//模块操作权限
			sysPrivileges.add(new SysPrivilege("sysModuleManage","add","新增"));
			sysPrivileges.add(new SysPrivilege("sysModuleManage","delete","删除"));
			sysPrivileges.add(new SysPrivilege("sysModuleManage","update","修改"));
			sysPrivileges.add(new SysPrivilege("sysModuleManage","view","查看"));
			
			//用户管理操作权限
			sysPrivileges.add(new SysPrivilege("sysUserManage","add","新增"));
			sysPrivileges.add(new SysPrivilege("sysUserManage","assignRole","分配角色"));
			sysPrivileges.add(new SysPrivilege("sysUserManage","delete","删除"));
			sysPrivileges.add(new SysPrivilege("sysUserManage","update","修改"));
			sysPrivileges.add(new SysPrivilege("sysUserManage","view","查看"));
			
			//角色管理操作权限
			sysPrivileges.add(new SysPrivilege("sysRoleManage","add","新增"));
			sysPrivileges.add(new SysPrivilege("sysRoleManage","assignPrivilege","分配权限"));
			sysPrivileges.add(new SysPrivilege("sysRoleManage","delete","删除"));
			sysPrivileges.add(new SysPrivilege("sysRoleManage","update","修改"));
			sysPrivileges.add(new SysPrivilege("sysRoleManage","view","查看"));
			sysPrivilegeService.batchSave(sysPrivileges);
			
			
			//系统设置管理操作权限
			sysPrivileges.add(new SysPrivilege("sysConfigManage","update","修改"));
			sysPrivileges.add(new SysPrivilege("sysConfigManage","view","查看"));
			sysPrivilegeService.batchSave(sysPrivileges);
			
			//博客类型管理操作权限
			sysPrivileges.add(new SysPrivilege("sysBlogTypeManage","add","新增"));
			sysPrivileges.add(new SysPrivilege("sysBlogTypeManage","delete","删除"));
			sysPrivileges.add(new SysPrivilege("sysBlogTypeManage","update","修改"));
			sysPrivileges.add(new SysPrivilege("sysBlogTypeManage","view","查看"));
			
			sysPrivilegeService.batchSave(sysPrivileges);
		}
	}
	
	/**
	 * 添加用户系统权限信息
	 */
	private void initSysUserRole(){
		if(sysRoleService.getCount() == 0 && sysUserService.getCount() == 0){
			SysRole sysRole = new SysRole();
			sysRole.setRoleName("系统管理员");
			
			//分配权限
			List<SysPrivilege> sysPrivileges = sysPrivilegeService.getScrollData().getResultlist();
			for (SysPrivilege sysPrivilege : sysPrivileges) {
				sysRole.addSysPrivilege(sysPrivilege);
			}
			
			sysRoleService.save(sysRole);
			
			SysUser sysUser = new SysUser();
			sysUser.setUsername("admin");
			sysUser.setRealname("系统管理员");
			sysUser.setPassword(CipherUtil.generatePassword("admin"));
			//不需要审批
			sysUser.setApproveStatus((byte)1);
			//默认启用
			sysUser.setAvailable((byte)1);
			//有效记录
			sysUser.setRecordStatus((byte)1);
			//设置为教师类型(后台只有教师类型才能登录)
			sysUser.setUserType(SysConstant.TEACHER);
			
			//分配角色
			sysUser.addSysRole(sysRole);
			sysUserService.save(sysUser);
		}
	}
	
	/**
	 * 添加系统配置信息
	 */
	private void initSysConfig(){
		if(sysConfigService.getCount() == 0 && sysUserService.getCount() == 0){
			SysConfig sysConfig = new SysConfig();
			
			sysConfig.setSysConfigCode("sysConfigManage");
			
			sysConfigService.save(sysConfig);
		}
	}
}
