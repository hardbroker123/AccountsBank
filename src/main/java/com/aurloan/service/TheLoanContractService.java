package com.aurloan.service;

import com.aurloan.pojo.TheLoanContract;

public interface TheLoanContractService {
	/**
	 * 插入一条签约银行卡信息
	 */
	public void insertLoanContractInfo(TheLoanContract theloancontract);
	/**
	 * 通过用户id查询签约信息 
	 */
	public TheLoanContract selectLoanContract(int personid);
}
