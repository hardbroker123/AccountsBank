package com.aurloan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aurloan.pojo.CompanyInformation;
import com.aurloan.mapper.CompanyInformationMapper;
import com.aurloan.service.CompanyInformationService;

@Service
public class CompanyInformationServiceImpl implements CompanyInformationService{
	@Autowired
	CompanyInformationMapper companyInfoMapper;
	
	/**
	 * 根据用户id查询一条企业信息
	 */
	@Override
	public CompanyInformation getOneCompanyInfo(int personId) {
		// TODO Auto-generated method stub
		return companyInfoMapper.getOneCompanyInfo(personId);
	}

//	插入企业信息
	@Override
	public void insertCompanyInfo(CompanyInformation companyInformation) {
		// TODO Auto-generated method stub
		companyInfoMapper.insertCompanyInfo(companyInformation);
	}

//	修改企业信息
	@Override
	public void updateCompanyInfo(CompanyInformation companyInformation) {
		// TODO Auto-generated method stub
		companyInfoMapper.updateCompanyInfo(companyInformation);
	}
	
//	查询所有企业信息
	@Override
	public List<CompanyInformation> getAllCompanyInfo(int personId) {
		// TODO Auto-generated method stub
		return companyInfoMapper.getAllCompanyInfo(personId);
	}
	
//	根据用户id更新企业状态
	@Override
	public void updateComPersonState(int personid) {
		// TODO Auto-generated method stub
		companyInfoMapper.updateComPersonState(personid);
	}
	
//	get/set方法
	public CompanyInformationMapper getCompanyInfoMapper() {
		return companyInfoMapper;
	}

	public void setCompanyInfoMapper(CompanyInformationMapper companyInfoMapper) {
		this.companyInfoMapper = companyInfoMapper;
	}




	
}
