package com.aurloan.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aurloan.pojo.PerInfo;
import com.aurloan.pojo.UserRegInfo;
import com.aurloan.service.PerInfoService;
import com.aurloan.service.UserRegInfoService;

/**
 * @author Administrator
 *用户详细信息
 */
@Controller
@RequestMapping("/jsp")
public class PerInfoController {
	
	@Autowired
	PerInfoService perInfoService;
	
	@Autowired
	UserRegInfoService userRegInfoService;
	
	//根据注册id查用户基本信息
	@RequestMapping("/getPerInfoByRegId")
	public String getPerInfoByRegId(HttpSession session){
		UserRegInfo userRegInfo= (UserRegInfo) session.getAttribute("userLogin");
		PerInfo perInfo=perInfoService.getOnePerInfoByRegId(userRegInfo.getUserRegId());
		session.setAttribute("PerInfo",perInfo);
		return "elements";
	}
//	插入用户基本信息
	@RequestMapping("/insertOnePerInfo")
	public  String insertOnePerInfo(PerInfo PerInfo,HttpSession session){
		
		//从成功登陆的用户session作用域中获取真实姓名。身份证号。补充到用户基本信息表
		UserRegInfo userRegInfo = (UserRegInfo) session.getAttribute("userLogin");
		PerInfo.setPersonName(userRegInfo.getLoginName());
		/* 身份证号 */
		String card = userRegInfo.getUserCardId();
		PerInfo.setPersonCardId(card);
		
		 /* --计算年龄-- */
	  	//添加到表单
		PerInfo.setPersonAge(Integer.parseInt(String.format("%tY", new Date()))-Integer.parseInt(card.substring(6, 10)));
		/* --计算性别-- */
		if(Integer.parseInt(card.substring(16, 17))%2 == 1){
			PerInfo.setPersonSex("男");
		}else {
			PerInfo.setPersonSex("女");
		}
		PerInfo.setUserRegId(userRegInfo.getUserRegId());
		perInfoService.insertOnePerInfo(PerInfo);
		/*//判断当前用户状态，是否为第一次注册信息
		 * 
		if ((PerInfo) session.getAttribute("PerInfo") == null){
			//执行插入信息操作
			PerInfo.setUserRegId(userRegInfo.getUserRegId());
		} else {
			//执行更新信息操作
			perInfoService.updateOnePerInfo(PerInfo);
		}
		//缓存用户详细信息
*/		session.setAttribute("PerInfo", PerInfo);
		return "elements";
	}
	
//	更改用户基本信息
	@RequestMapping("/updateOnePerInfo")
	public  String updateOnePerInfo(PerInfo PerInfo,HttpSession session){
		perInfoService.updateOnePerInfo(PerInfo);
		return "elements";
	}
	
//	查询用户基本信息
	@RequestMapping("/getAllPerInfo")
	public  String getAllPerInfo(PerInfo PerInfo,HttpSession session){
		return "elements";
	}
	
//	get/set方法
	public PerInfoService getPerInfoService() {
		return perInfoService;
	}

	public void setPerInfoService(PerInfoService perInfoService) {
		this.perInfoService = perInfoService;
	}
	

	public UserRegInfoService getUserRegInfoService() {
		return userRegInfoService;
	}

	public void setUserRegInfoService(UserRegInfoService userRegInfoService) {
		this.userRegInfoService = userRegInfoService;
	}
}
