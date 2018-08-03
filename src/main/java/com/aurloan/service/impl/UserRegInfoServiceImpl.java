package com.aurloan.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aurloan.mapper.UserRegInfoMapper;
import com.aurloan.pojo.UserRegInfo;
import com.aurloan.service.UserRegInfoService;

/**
 * @author Administrator
 *用户注册信息
 */
@Service
public class UserRegInfoServiceImpl implements UserRegInfoService{
	@Autowired
	UserRegInfoMapper userRegInfoMapper;
	
	@Override
	public UserRegInfo userLogin(UserRegInfo userRegInfo) {
		UserRegInfo userLogin = userRegInfoMapper.userLogin(userRegInfo);
		if (userLogin == null || userLogin.getUserRegId() == null) {
			return null;
		}
		//当用户查询到时，补充用户详细信息
		
		return userLogin;
	}
	
	
	@Override
	public int userRegist(UserRegInfo userRegInfo) {
		return userRegInfoMapper.userRegist(userRegInfo);
	}
	
	
	@Override
	public int updateUserPwd(UserRegInfo userRegInfo) {
		return userRegInfoMapper.updateUserPwd(userRegInfo);
	}
	
	
	
	
	@Override
	public int updatePwdForget(UserRegInfo userRegInfo) {
		return userRegInfoMapper.updateUserPwd(userRegInfo);
	}
	
	
	
	@Override
	public int queryUserTel(String userTel) {
		return userRegInfoMapper.queryUserTel(userTel);
	}
	
	@Override
	public int queryloginName(String loginName) {
		return userRegInfoMapper.queryloginName(loginName);
	}
	
	
	
	
	
	
	
	public UserRegInfoMapper getUserRegInfoMapper() {
		return userRegInfoMapper;
	}
	public void setUserRegInfoMapper(UserRegInfoMapper userRegInfoMapper) {
		this.userRegInfoMapper = userRegInfoMapper;
	}



























}
