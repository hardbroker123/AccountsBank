package com.aurloan.service.impl;

import com.aurloan.pojo.CorrelationInformation;
import com.aurloan.mapper.CorrelationInformationMapper;
import com.aurloan.service.CorrelationInformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CorrelationInformationServiceImpl implements CorrelationInformationService {
	@Autowired
    CorrelationInformationMapper correlationInformationMapper;
	/**
	 * 根据用户id查询关联信息
	 */
	@Override
	public CorrelationInformation getAllCorrelationInfo(int personId) {
		return correlationInformationMapper.getAllCorrelationInfo(personId);
	}
	
	/**
	 * 插入用户关联信息
	 */
	@Override
	public void insertOneCorrInfo(CorrelationInformation corrinfo) {
		correlationInformationMapper.insertOneCorrInfo(corrinfo);
	}
	
	/**
	 * 修改用户关联信息
	 */
	@Override
	public void updateOneCorrInfo(CorrelationInformation corrinfo) {
		correlationInformationMapper.updateOneCorrInfo(corrinfo);
	}

//	get/set方法：
	public CorrelationInformationMapper getCorrelationInformationMapper() {
		return correlationInformationMapper;
	}

	public void setCorrelationInformationMapper(CorrelationInformationMapper correlationInformationMapper) {
		this.correlationInformationMapper = correlationInformationMapper;
	}
}
