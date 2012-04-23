package com.lcweb.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.lcweb.base.util.WebUtil;
import com.lcweb.bean.pojo.FrontUser;
import com.lcweb.commons.CipherUtil;
import com.lcweb.service.front.FrontLoginService;
import com.lcweb.struts.form.FrontUserForm;

public class FrontUserAction extends DispatchAction {
	private FrontLoginService frontLoginService;
	
	public void setFrontLoginService(FrontLoginService frontLoginService) {
		this.frontLoginService = frontLoginService;
	}

	/**
	 * 用户登录验证
	 */
	public ActionForward frontLogin(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String userAccount = request.getParameter("userAccount");
		String password = request.getParameter("password");
		String userType = request.getParameter("userType");
		String checkCode = request.getParameter("checkCode");
		
		//检查验证码
		Object randcode = request.getSession().getAttribute("frontUserRand");
		if(randcode == null){
			//页面过期，需要刷新
			WebUtil.writeResponse(response, "pageExpired");
			return null;
		}
		password = CipherUtil.generatePassword(password);
		FrontUser frontUser = frontLoginService.findUserByUnamePassType(userAccount, password, userType);
		if(frontUser != null){
			if (!randcode.toString().equals(checkCode)) {
				WebUtil.writeResponse(response, "codeFail");
				return null;
			}else {
				if(frontUser.getRecordStatus() == 1){
					request.getSession().setAttribute("frontUserInfo",frontUser);
					return new ActionForward("/client/index/content/login_reg/userInfo.jsp");
				}else{
					WebUtil.writeResponse(response, "userDisable");
					return null;
				}
			}
		}else {
			WebUtil.writeResponse(response, "fail");
			return null;
		}
	}
	
	/**
	 * 用户注册
	 */
	public ActionForward userReg(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		FrontUserForm userForm = (FrontUserForm)form;
		FrontUser frontUser = new FrontUser();
		
		frontUser.setUserAccount(userForm.getUserAccount());
		frontUser.setUserName(userForm.getUserName());
		//MD5加密保存
		frontUser.setPassword(CipherUtil.generatePassword(userForm.getPassword()));
		frontUser.setSex(userForm.getSex());
		frontUser.setUserType(userForm.getUserType());
		frontUser.setBirthday(userForm.getBirthday());
		frontUser.setAddress(userForm.getAddress());
		frontUser.setPhone(userForm.getPhone());
		frontUser.setEmail(userForm.getEmail());
		frontLoginService.saveObject(frontUser);
		
		request.getSession().setAttribute("frontUserInfo",frontUser);
		
		return new ActionForward("/");
	}
	
	/**
	 * 用户注册 检查用户名是否使用
	 */
	public ActionForward checkUserAccount(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		FrontUserForm userForm = (FrontUserForm)form;
		FrontUser frontUser = null;
		frontUser = frontLoginService.findUserByAccount(userForm.getUserAccount());
		if(frontUser != null){
			WebUtil.writeResponse(response, "used");
		}else{
			WebUtil.writeResponse(response, "unused");
		}
		return null;
	}

	/**
	 * 用户注销
	 */
	public ActionForward loginOut(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		request.getSession().removeAttribute("logininfo");
		request.getSession().invalidate();
		ActionForward forward = new ActionForward("/");
		forward.setRedirect(true);
		return forward;
	}
}
