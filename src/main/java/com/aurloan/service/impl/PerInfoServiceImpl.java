package com.aurloan.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aurloan.pojo.PerInfo;
import com.aurloan.mapper.PerInfoMapper;
import com.aurloan.service.PerInfoService;

/**
 * @author Administrator
 *用户详细信息
 */
@Service
public class PerInfoServiceImpl implements PerInfoService{
	
	@Autowired
	PerInfoMapper perInfoMapper;
	/**
	 * 根据用户注册id查询用户所有信息
	 *
	 * @param userRegId
	 */
	@Override
	public PerInfo getOnePerInfoByRegId(int userRegId) {
		return perInfoMapper.getOnePerInfoByRegId(userRegId);
	}
//	通过姓名查询用户所有信息
	
	@Override
	public PerInfo getAllPerInfo(String personcardid) {
		return perInfoMapper.getAllPerInfo(personcardid);
	}

//	插入用户基本信息
	@Override
	public int insertOnePerInfo(PerInfo PerInfo) {
		return perInfoMapper.insertOnePerInfo(PerInfo);
	}
	
//更新
	
	
	
	@Override
	public int updateOnePerInfo(PerInfo PerInfo) {
		 int num = perInfoMapper.updateOnePerInfo(PerInfo);
		 return num;
	}
	
	
	
	
	
	
	
	
	
	
	
//	get/set方法
	public PerInfoMapper getPerInfoMapper() {
		return perInfoMapper;
	}

	public void setPerInfoMapper(PerInfoMapper perInfoMapper) {
		this.perInfoMapper = perInfoMapper;
	}





}
