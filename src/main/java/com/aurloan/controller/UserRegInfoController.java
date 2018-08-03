package com.aurloan.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aurloan.pojo.UserRegInfo;
import com.aurloan.service.PerInfoService;
import com.aurloan.service.UserRegInfoService;

/**
 * @author Administrator
 *用户基本信息Controller
 *依次是：userLogin 		用户登录
 *		userRegist		用户注册
 *		userRemove		用户注销
 *		userPwdUpdate	修改密码
 *		userPwdFind		忘记密码
 */

@Controller
@RequestMapping("/jsp")
public class UserRegInfoController {
	
	@Autowired
	UserRegInfoService userRegInfoService;
	
	@RequestMapping("/userLogin")
	public String userLogin(@RequestParam(value="loginName")String loginName,
			@RequestParam(value="loginPassword")String loginPassword,
			HttpSession session){
		
		UserRegInfo userlogin = userRegInfoService.userLogin(new UserRegInfo(loginName, loginPassword));
		if (userlogin != null && userlogin.getUserRegId() !=null) {
			session.setAttribute("userLogin",userlogin );
			//补充用户详细信息
			return "index";
		}else {
			return "page-login";
		}
	}

	@RequestMapping("/userRegist")
	public String userRegist(@RequestParam(value="loginName",defaultValue="zhangsan")String loginName,
			@RequestParam(value="loginPassword",defaultValue="123")String loginPassword,
			@RequestParam(value="userCardId",defaultValue="123")String userCardId,
			@RequestParam(value="userTel",defaultValue="23")String userTel,
			@RequestParam(value="userName",defaultValue="123")String userName,
			HttpSession session
			){
		UserRegInfo uri = new UserRegInfo(userName, userCardId, userTel, loginName, loginPassword);
		userRegInfoService.userRegist(uri);
			return "page-login";
	}
	
	@RequestMapping("/userRemove")
	public String userRemove(HttpSession session){
		session.invalidate();
		return "page-login";
	}
	
	@RequestMapping("/userPwdUpdate")
	public String userPwdUpdate(UserRegInfo UserRegInfo,HttpSession session){
		userRegInfoService.updateUserPwd(UserRegInfo);
		return "page-login";
	}
	
	//请求key value  响应json串
	@ResponseBody
	@RequestMapping("/queryUserTel")
	public int  queryUserTel(String userTel,HttpSession session){
		return userRegInfoService.queryUserTel(userTel);
	}
	
	
	@RequestMapping("/updatePwdForget")
	public  @ResponseBody UserRegInfo updatePwdForget(UserRegInfo UserRegInfo,HttpSession session){
		userRegInfoService.updateUserPwd(UserRegInfo);
		return UserRegInfo;
	}
	
	@RequestMapping("/queryloginName")
	public int queryloginName(String loginName,HttpSession session){
		int num = userRegInfoService.queryloginName(loginName) ==0?1:0 ;
		return num;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public UserRegInfoService getUserRegInfoService() {
		return userRegInfoService;
	}

	public void setUserRegInfoService(UserRegInfoService userRegInfoService) {
		this.userRegInfoService = userRegInfoService;
	}

	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	
}
