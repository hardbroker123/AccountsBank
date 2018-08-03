package com.aurloan.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aurloan.pojo.CompanyInformation;
import com.aurloan.pojo.PerInfo;
import com.aurloan.service.CompanyInformationService;

@Controller
@RequestMapping("/jsp")
public class CompanyInformationController {
	@Autowired
	CompanyInformationService companyInformationService;
	
//	查询企业信息（通过personid）
	@RequestMapping("/getOneCompanyInfo")
	public String getOneCompanyInfo(HttpSession session){
//		PerInfo perInfo = (PerInfo) session.getAttribute("PerInfo");
		
//		int personId =perInfo.getPersonId();
		CompanyInformation companyInformation=companyInformationService.getOneCompanyInfo(1);
		if (companyInformation==null) {
			return "message";	
		}
		session.setAttribute("companyInformation", companyInformation);
		
//		跳转至serchCompanyInfo.jsp
		return "serchCompanyInfo";
	}

//	修改企业信息
	@RequestMapping("/insertOrUpdateCompanyInfo")
	public String insertOrUpdateCompanyInfo(CompanyInformation companyInformation,HttpSession session){
//		判断session中是否有企业信息
		CompanyInformation comsession=(CompanyInformation) session.getAttribute("companyInformation");

		if (comsession==null||comsession.getCompanyId()==null) {
//			session中没有，则插入一条企业信息
//			接收参数并补全信息
			PerInfo perInfo = (PerInfo) session.getAttribute("PerInfo");
			companyInformation.setPersonId(perInfo.getPersonId());
			companyInformationService.insertCompanyInfo(companyInformation);
//			调用查询企业信息方法，并将查询的企业信息存放至session中
			getOneCompanyInfo(session);
			
		}else if (comsession!=null&&comsession.getCompanyId()!=null) {
//			否则，修改企业信息
//			如果企业名称不变，则修改企业的其他信息
			if (companyInformation.getCompanyName().equals(comsession.getCompanyName())) {
				PerInfo perInfo = (PerInfo) session.getAttribute("PerInfo");
				companyInformation.setPersonId(perInfo.getPersonId());
//				根据用户id次改企业信息
				companyInformationService.updateCompanyInfo(companyInformation);
//				调用查询企业信息方法，并将查询的企业信息存放至session中
//				getOneCompanyInfo(session);
//				如果企业名称改变，则插入一条数据：前提：将原来的企业信息状态修改为0（不可用）
			}else if (!companyInformation.getCompanyName().equals(comsession.getCompanyName())) {
//				得到用户id
				PerInfo perInfo = (PerInfo) session.getAttribute("PerInfo");
				
//				根据用户id修改企业状态
				companyInformationService.updateComPersonState(perInfo.getPersonId());
				
//				根据用户输入插入一条企业信息
				companyInformation.setPersonId(perInfo.getPersonId());
				companyInformationService.insertCompanyInfo(companyInformation);
				
//				调用查询企业信息方法，并将查询的企业信息存放至session中
//				getOneCompanyInfo(session);
			}
		}
//		调用查询企业信息的方法
		return "redirect:getOneCompanyInfo.action";
	}
	
	
	
//	get/set方法
	public CompanyInformationService getCompanyInformationService() {
		return companyInformationService;
	}

	public void setCompanyInformationService(CompanyInformationService companyInformationService) {
		this.companyInformationService = companyInformationService;
	}
}
