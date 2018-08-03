package com.aurloan.service;

import com.aurloan.pojo.CorrelationInformation;

public interface CorrelationInformationService {
	/**
	 * 根据用户id查询关联信息
	 */
	public CorrelationInformation getAllCorrelationInfo(int personId);
	
	/**
	 * 插入用户关联信息
	 */
	public void insertOneCorrInfo(CorrelationInformation corrinfo);
	
	/**
	 * 修改用户关联信息
	 */
	public void updateOneCorrInfo(CorrelationInformation corrinfo);

}
