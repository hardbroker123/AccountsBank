package com.aurloan.controller;

import com.aurloan.pojo.LoanInformation;
import com.aurloan.pojo.PerInfo;
import com.aurloan.pojo.TheLoanContract;
import com.aurloan.service.LoanInformationService;
import com.aurloan.service.TheLoanContractService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/jsp")
public class TheLoanContractController {
	@Autowired
    TheLoanContractService theLoanContractService;
	@Autowired
    LoanInformationService loanInformationService;
	
	/**
	 * 插入一条贷款签约信息
	 * @param theloancontract
	 * @param session
	 * @return
	 */
	@RequestMapping("loanApply/insertLoanContractInfo")
	public String insertLoanContractInfo(TheLoanContract theloancontract, HttpSession session){
		System.out.println("insertLoanContractInfo");
//		从session中获取用户id
		PerInfo person = (PerInfo) session.getAttribute("PerInfo");
//		补全信息
		theloancontract.setPersonId(person.getPersonId());
		
//		从session（loanInfo）获取贷款编号（appliNumber）
		LoanInformation loan=(LoanInformation) session.getAttribute("loanInfo");
//		补全信息
		theloancontract.setAppliNumber(loan.getAppliNumber());
		
//		测试数据
//		theloancontract.setPersonId(3);
//		theloancontract.setAppliNumber(2);
//		插入一条贷款签约信息
		theLoanContractService.insertLoanContractInfo(theloancontract);
		
//		根据贷款编号查询信息
		TheLoanContract theloancon=theLoanContractService.selectLoanContract(theloancontract.getAppliNumber());
//		TheLoanContract theloancon=theLoanContractService.selectLoanContract(2);
		session.setAttribute("theloancontract", theloancon);
		
		System.out.println(theloancontract.getAppliNumber());
		
//		修改贷款状态
		loanInformationService.updateLoanStateByApplinum(theloancontract.getAppliNumber());
		
		System.out.println(theloancontract.getAppliNumber());
		
		return "index";
	}

	
	
}
