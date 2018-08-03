package com.aurloan.mapper;

import java.util.ArrayList;
import java.util.List;

import com.aurloan.pojo.ContactInfo;

/**
 * @author Administrator
 *联系人表
 */
public interface ContactInfoMapper {
	
	/**
	 * 
	 * 查询所有联系人json
	 */
	public ArrayList<ContactInfo> getContactJson();
	/**
	 * 
	 * 添加
	 */
	public int insertContactInfo(ContactInfo contactInfo);
	/**
	 * 
	 * 查询所有联系人-模糊查询
	 */
	public List<ContactInfo> getContactSearch(ContactInfo contactInfo);
	/**
	 * 
	 * 删除
	 */
	public int deleteContactJson(int contactId);
	/**
	 * 
	 * 更新
	 */
	public void updateContactJson(ContactInfo contactInfo);
	/**
	 * 
	 * 根据id查询
	 */
	public ContactInfo getContactJsonById(int contactId);
	
	
}
