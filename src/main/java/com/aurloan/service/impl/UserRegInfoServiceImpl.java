package com.aurloan.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aurloan.mapper.UserRegInfoMapper;
import com.aurloan.pojo.UserRegInfo;
import com.aurloan.service.UserRegInfoService;

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
	
	
	
	
	
	
	
	
	public UserRegInfoMapper getUserRegInfoMapper() {
		return userRegInfoMapper;
	}
	public void setUserRegInfoMapper(UserRegInfoMapper userRegInfoMapper) {
		this.userRegInfoMapper = userRegInfoMapper;
	}
























}
