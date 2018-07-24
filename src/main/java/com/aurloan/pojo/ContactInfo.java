package com.aurloan.pojo;

public class ContactInfo {
	//联系人信息
	private int contactId;//联系人编号
	private int personId;//个人id
	private String relationship;//与本人关系
	private String contactName;//姓名
	private String contactPersonCardId;//身份证号
	private String contactPhone;//联系电话
	

	public int getContactId() {
		return contactId;
	}
	public void setContactId(int contactId) {
		this.contactId = contactId;
	}
	public int getPersonId() {
		return personId;
	}
	public void setPersonId(int personId) {
		this.personId = personId;
	}
	public String getRelationship() {
		return relationship;
	}
	public void setRelationship(String relationship) {
		this.relationship = relationship;
	}
	public String getContactName() {
		return contactName;
	}
	public void setContactName(String contactName) {
		this.contactName = contactName;
	}
	public String getContactPersonCardId() {
		return contactPersonCardId;
	}
	public void setContactPersonCardId(String contactPersonCardId) {
		this.contactPersonCardId = contactPersonCardId;
	}
	public String getContactPhone() {
		return contactPhone;
	}
	public void setContactPhone(String contactPhone) {
		this.contactPhone = contactPhone;
	}
	//�вι��췽��
	public ContactInfo(int contactId, int personId, String relationship, String contactName, String contactPersonCardId,
			String contactPhone) {
		super();
		this.contactId = contactId;
		this.personId = personId;
		this.relationship = relationship;
		this.contactName = contactName;
		this.contactPersonCardId = contactPersonCardId;
		this.contactPhone = contactPhone;
	}
	//�޲ι��췽��
	public ContactInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	//toString
	@Override
	public String toString() {
		return "contactInfo [contactId=" + contactId + ", personId=" + personId + ", relationship=" + relationship
				+ ", contactName=" + contactName + ", contactPersonCardId=" + contactPersonCardId + ", contactPhone="
				+ contactPhone + "]";
	}
	
	
}
