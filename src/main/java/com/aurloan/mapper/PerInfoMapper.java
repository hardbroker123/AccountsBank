package com.aurloan.mapper;

import com.aurloan.pojo.PerInfo;

/**
 * @author Administrator
 *用户详细信息表
 */
public interface PerInfoMapper {
	/**
	 * 根据用户身份证号查询用户所有基本信息
	 */
	public PerInfo getAllPerInfo(String personcardid);
	
	/**
	 * 插入用户基本信息
	 */
	public int insertOnePerInfo(PerInfo PerInfo);
	/**
	 * 修改用户信息
	 */
	public int updateOnePerInfo(PerInfo PerInfo);
	/**
	 * 通过用户注册id查询用户所有信息
	 * */
    PerInfo getOnePerInfoByRegId(int userRegId);
}
