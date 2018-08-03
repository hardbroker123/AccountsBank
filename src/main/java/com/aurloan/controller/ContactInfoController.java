package com.aurloan.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aurloan.pojo.ContactInfo;
import com.aurloan.pojo.PerInfo;
import com.aurloan.service.ContactInfoService;
/**
 * @author Administrator
 *用户详细信息
 */
@Controller
@RequestMapping("/jsp")
public class ContactInfoController {
	
	@Autowired
	ContactInfoService contactInfoService;
	
	
	
//	插入基本信息
	@RequestMapping("/addContactInfo")
	public  void addContactInfo(ContactInfo contactInfo,HttpSession session,HttpServletResponse resp){
		resp.setCharacterEncoding("UTF-8"); 
		//将person编号赋值
		PerInfo perinfo = (PerInfo) session.getAttribute("PerInfo");
		contactInfo.setPersonId(perinfo.getPersonId());
		//插入操作
		contactInfoService.insertContactInfo(contactInfo);
		try {
			resp.getWriter().write("success");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
//	更改用户基本信息
	@RequestMapping("/updateContactJson")
	public  void updateContactJson(ContactInfo contactInfo,HttpSession session,HttpServletResponse resp){
		resp.setCharacterEncoding("UTF-8"); 
		contactInfoService.updateContactJson(contactInfo);
		try {
			resp.getWriter().write("success");
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	//查询所有
	/*@RequestMapping("/getAllContactJson")
	public void getAllContactJson(HttpServletResponse resp) throws IOException{
		resp.setCharacterEncoding("UTF-8"); 
		List<ContactInfo> contactList = contactInfoService.getContactJson();
		JSONArray contactArray = JSONArray.fromObject(contactList);
		resp.getWriter().write(contactArray.toString());
		resp.getWriter().flush();
		resp.getWriter().close();
	}*/
	
	//查询byID
		@RequestMapping("/getContactJsonById")
		public void getContactJsonById(int contactId,HttpServletResponse resp) throws IOException{
			resp.setCharacterEncoding("UTF-8"); 
			ContactInfo contactInfo = contactInfoService.getContactJsonById(contactId);
			JSONObject contactInfojson = JSONObject.fromObject(contactInfo);
			resp.getWriter().write(contactInfojson.toString());
			resp.getWriter().flush();
			resp.getWriter().close();
		}
	
/*	模糊查询*/
	@RequestMapping("/getContactSearch")
	public void getContactSearch(ContactInfo contactInfo,HttpServletResponse resp) throws IOException{
		resp.setCharacterEncoding("UTF-8"); 
		
		List<ContactInfo> contactsList = contactInfoService.getContactSearch(contactInfo);
		JSONArray contactArray = JSONArray.fromObject(contactsList);
		resp.getWriter().write(contactArray.toString());
		resp.getWriter().flush();
		resp.getWriter().close();
	}
	
/*	删除*/
	@RequestMapping("/deleteContactJson")
	public void deleteContactJson(int contactId,HttpServletResponse resp) throws IOException{
		contactInfoService.deleteContactJson(contactId);
		resp.getWriter().write("success");
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public ContactInfoService getContactInfoService() {
		return contactInfoService;
	}

	public void setContactInfoService(ContactInfoService contactInfoService) {
		this.contactInfoService = contactInfoService;
	}
	


}
