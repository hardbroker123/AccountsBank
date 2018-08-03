package com.aurloan.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aurloan.mapper.ContactInfoMapper;
import com.aurloan.pojo.ContactInfo;
import com.aurloan.service.ContactInfoService;

/**
 * @author Administrator
 *用户详细信息
 */
@Service
public class ContactInfoServiceImpl implements ContactInfoService{
	
	@Autowired
	ContactInfoMapper contactInfoMapper;

	@Override
	public int insertContactInfo(ContactInfo contactInfo) {
		return contactInfoMapper.insertContactInfo(contactInfo);
	}
	
	@Override
	public ArrayList<ContactInfo> getContactJson() {
		return contactInfoMapper.getContactJson();
	}
	
/*	模糊查询*/
	@Override
	public List<ContactInfo> getContactSearch(ContactInfo contactInfo) {
		return contactInfoMapper.getContactSearch(contactInfo);
	}
	
	
	
	
	@Override
	public int deleteContactJson(int contactId) {
		return contactInfoMapper.deleteContactJson(contactId);
	}
	
	
	
	@Override
	public ContactInfo getContactJsonById(int contactId) {
		return contactInfoMapper.getContactJsonById(contactId);
	}
	
	@Override
	public void updateContactJson(ContactInfo contactInfo) {
		contactInfoMapper.updateContactJson(contactInfo);
	}
	
	
	
	
	
	
	
	
	public ContactInfoMapper getContactInfoMapper() {
		return contactInfoMapper;
	}

	public void setContactInfoMapper(ContactInfoMapper contactInfoMapper) {
		this.contactInfoMapper = contactInfoMapper;
	}














	
	
	
	
	




}
