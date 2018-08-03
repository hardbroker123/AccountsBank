package com.aurloan.controller;

import com.aurloan.pojo.CorrelationInformation;
import com.aurloan.pojo.PerInfo;
import com.aurloan.service.CorrelationInformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/jsp")
public class CorrelationInformationController {
	@Autowired
    CorrelationInformationService correlationInformationService;
	/**
	 * 根据用户id查询关联信息
	 */
	@SuppressWarnings("null")
	@RequestMapping("/getAllCorrelationInfo")
	public String getAllCorrelationInfo(HttpSession session) {
//		通过session获取personid
		PerInfo person=(PerInfo) session.getAttribute("PerInfo");
//		查询用户关联信息
		CorrelationInformation corrinfo=correlationInformationService.getAllCorrelationInfo(person.getPersonId());
		
//		判断查询是否有结果，如果查询内容为空，则跳转至提示页面
		if((corrinfo==null&&corrinfo.getPersonId()==null)||
				(corrinfo.getQqNumber()==null&&corrinfo.getWeChat()==null)){
			session.setAttribute("corrinfo", corrinfo);
			return "notifications";
		}
//		将查询到的信息存放至session
		session.setAttribute("corrinfo", corrinfo);
//		跳转至用户关联信息页面
		return "searchCorrInfo";
	}
	
//	插入或修改关联信息
	@SuppressWarnings("unused")
	@RequestMapping("/insertOrUpdateCorrInfo.action")
	public String insertOrUpdateCorrInfo(CorrelationInformation corrinfo, HttpSession session){
//		通过session获取用户关联信息，通过结果判断修改还是插入
		CorrelationInformation temp=(CorrelationInformation) session.getAttribute("corrinfo");
//		补充信息(先将关联信息补全)
		corrinfo.setPersonId(temp.getPersonId());
//		如果temp为空，则插入一条信息
		if (temp==null&&temp.getPersonId()==null) {
			correlationInformationService.insertOneCorrInfo(corrinfo);
		}else if (temp!=null&&temp.getPersonId()!=null) {
//			如果不为空则修改
//			补全informationId信息
			corrinfo.setInformationId(temp.getInformationId());
//			修改关联信息
			correlationInformationService.updateOneCorrInfo(corrinfo);
		}
		return "redirect:getAllCorrelationInfo.action";
	}
	
}
