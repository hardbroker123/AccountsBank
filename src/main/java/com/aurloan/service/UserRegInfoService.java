package com.aurloan.service;

import com.aurloan.pojo.UserRegInfo;

public interface UserRegInfoService {
	/**
	 * 根据用户名查询密码
	 */
	public  UserRegInfo userLogin(UserRegInfo userRegInfo);
	/**
	 * 用户注册
	 */
	public  int userRegist(UserRegInfo userRegInfo);
	/**
	 * 修改密码
	 */
	public  int updateUserPwd(UserRegInfo userRegInfo);
	/**
	 * 忘记密码
	 */
	public  int updatePwdForget(UserRegInfo userRegInfo);
	/**
	 * 检查电话号
	 */
	public  int queryUserTel(String userTel);
	
	
	
	
	
	
}
