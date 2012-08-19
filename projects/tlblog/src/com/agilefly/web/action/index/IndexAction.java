package com.agilefly.web.action.index;

import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.stereotype.Controller;

import com.agilefly.bean.SysUser;
import com.agilefly.service.systemuser.ISysUserService;
import com.agilefly.utils.BeanUtilEx;
import com.agilefly.utils.CipherUtil;
import com.agilefly.utils.WebUtil;
import com.agilefly.web.action.BaseAction;
import com.agilefly.web.form.SysUserForm;

@Controller("/client/index")
public class IndexAction extends BaseAction{
	@Resource
	private ISysUserService sysUserService;
	
	/**
	 * 跳转到注册界面
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public ActionForward signup(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		return mapping.findForward("signup");
	}
	
	/**
	 * 用户注册
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public ActionForward signupUser(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		SysUserForm suf = (SysUserForm) form;
		
		if(!SysUserForm.validateImageFileType(suf.getUserHeadpic())){
			request.setAttribute("message", "图片格式不正确");
			//request.setAttribute("urladdress", "view/right.jsp");
			request.setAttribute("urladdress", "signup");
			return mapping.findForward("client_message");
		}
		
		SysUser sysUser = new SysUser();
		
		BeanUtilEx.copyProperties(sysUser, suf);
		
		//MD5加密保存
		sysUser.setPassword(CipherUtil.generatePassword(suf.getPassword()));
		sysUser.setUserLoginip(request.getRemoteAddr());
		sysUser.setUserRegtime(new Date());
		sysUser.setUserLogintime(new Date());
		sysUser.setUserClick(0);
		
		//需要审批
		sysUser.setApproveStatus((byte)0);
		//默认启用
		sysUser.setAvailable((byte)1);
		//有效记录
		sysUser.setRecordStatus((byte)1);
		
		if(suf.getUserHeadpic()!=null && suf.getUserHeadpic().getFileSize()>0){
			SimpleDateFormat dateformat = new SimpleDateFormat("yyyy/MM/dd");
			String logopathdir = "/images/headpic/"+ dateformat.format(new Date());//构建图片保存的目录
			//得到图片保存目录的真实路径
			String logorealpathdir = request.getSession().getServletContext().getRealPath(logopathdir);
			File logosavedir = new File(logorealpathdir);
			if(!logosavedir.exists()) logosavedir.mkdirs();//如果目录不存在就创建
			String ext = suf.getUserHeadpic().getFileName().substring(suf.getUserHeadpic().getFileName().lastIndexOf('.'));
			String imagename = suf.getUsername() + ext;//UUID.randomUUID().toString()+ ext;//构建文件名称
			FileOutputStream fileoutstream = new FileOutputStream(new File(logorealpathdir, imagename));
			fileoutstream.write(suf.getUserHeadpic().getFileData());
			fileoutstream.close();
			String logopath = logopathdir+"/"+imagename;
			sysUser.setUserHeadpic(logopath);
		}	
		sysUserService.save(sysUser);
		request.setAttribute("message", "用户注册成功");
		request.setAttribute("urladdress", "");
		return mapping.findForward("client_message");
	}
	
	/**
	 * 用户登录验证
	 */
	public ActionForward login(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String userType = request.getParameter("userType");
		//String checkCode = request.getParameter("checkCode");
		
		//检查验证码
		//Object randcode = request.getSession().getAttribute("frontUserRand");
		/*if(randcode == null){
			//页面过期，需要刷新
			WebUtil.writeResponse(response, "pageExpired");
			return null;
		}*/
		password = CipherUtil.generatePassword(password);
		SysUser frontUser = sysUserService.findByUnamePass(username, password);
		if(frontUser != null){
			/*if (!randcode.toString().equals(checkCode)) {
				WebUtil.writeResponse(response, "codeFail");
				return null;
			}else {*/
				//记录没有逻辑删除
				if(frontUser.getRecordStatus() == 1){
					//检查用户是否审核和启用(启用)
					if(frontUser.getAvailable() == 1 && frontUser.getApproveStatus() == 1){
						request.getSession().setAttribute("frontUserInfo",frontUser);
						return new ActionForward("/client/index/userInfo.jsp");
					}else{
						WebUtil.writeResponse(response, "userDisable");
						return null;
					}
				}else{
					WebUtil.writeResponse(response, "userDisable");
					return null;
				}
			//}
		}else {
			WebUtil.writeResponse(response, "fail");
			return null;
		}
	}
	
	/**
	 * 用户注册 检查用户名是否使用
	 */
	public ActionForward checkUserName(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		SysUserForm userForm = (SysUserForm)form;
		boolean exists = sysUserService.checkUnameExist(userForm.getUsername());
		if(exists){
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
		request.getSession().removeAttribute("frontUserInfo");
		request.getSession().invalidate();
		ActionForward forward = new ActionForward("/");
		forward.setRedirect(true);
		return forward;
	}
}
