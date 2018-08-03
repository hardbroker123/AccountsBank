package com.aurloan.service;

import java.util.List;

import com.aurloan.pojo.CompanyInformation;

public interface CompanyInformationService {
	/**
	 * 根据用户id查询一条企业信息
	 */
	public CompanyInformation getOneCompanyInfo(int personId);
	
	/**
	 * 插入企业信息
	 */
	public void insertCompanyInfo(CompanyInformation companyInformation);
	
	/**
	 * 修改企业信息
	 */
	public void updateCompanyInfo(CompanyInformation companyInformation);
	
	/**
	 * 根据用户id查询企业信息（所有）
	 */
	public List<CompanyInformation> getAllCompanyInfo(int personId);
	
	/**
	 * 根据用户id修改企业状态
	 */
	public void updateComPersonState(int personid);
}
