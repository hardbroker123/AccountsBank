package com.aurloan.service.impl;

import com.aurloan.pojo.TheLoanContract;
import com.aurloan.mapper.TheLoanContractMapper;
import com.aurloan.service.TheLoanContractService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TheLoanContractServiceImpl implements TheLoanContractService {
	@Autowired
    TheLoanContractMapper theLoanContractMapper;
	/**
	 * 插入一条签约银行卡信息
	 */
	@Override
	public void insertLoanContractInfo(TheLoanContract theloancontract) {
		theLoanContractMapper.insertLoanContractInfo(theloancontract);

	}
	/**
	 * 通过用户id查询签约信息 
	 */
	@Override
	public TheLoanContract selectLoanContract(int personid) {
		// TODO Auto-generated method stub
		return theLoanContractMapper.selectLoanContract(personid);
	}
	
	public TheLoanContractMapper getTheLoanContractMapper() {
		return theLoanContractMapper;
	}
	public void setTheLoanContractMapper(TheLoanContractMapper theLoanContractMapper) {
		this.theLoanContractMapper = theLoanContractMapper;
	}


	

	
	
}
