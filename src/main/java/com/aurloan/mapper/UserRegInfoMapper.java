package com.aurloan.mapper;

import com.aurloan.pojo.UserRegInfo;


/**
 * @author Administrator
 *	用户注册信息
 */
public interface UserRegInfoMapper {
	/**
	 * 根据用户名查询密码
	 */
	public  UserRegInfo userLogin(UserRegInfo userRegInfo);
	/**
	 * 注册用户
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
	 * 检测电话号是否可用
	 */
	public  int queryUserTel(String userTel);
	
	
}
