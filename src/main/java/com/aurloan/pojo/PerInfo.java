package com.aurloan.pojo;

public class PerInfo {
//个人信息
	private Integer personId;//个人信息id
	private Integer userRegId;//用户注册id
	private String personCardId;//身份证号
	private String personName;//姓名
	private String personSex;//性别
	private Integer personAge;//年龄
	protected String city;//所在城市
	private String detailedAddress;//详细住址
	private String registeredResidence;//户籍所在地
	private Integer workingTime;//工作年限
	private String spousalName;//配偶姓名
	private String spousalCardId;//配偶身份证
	private String spousalTel;//配偶电话
	private String maritalStatus;//婚姻状况
	private Integer childrenNumber;//子女状况
	private String educational;//教育背景
	private String housingSituation;//住房情况
	private String housePhone;//家庭电话



	public Integer getUserRegId() {
		return userRegId;
	}
	public void setUserRegId(Integer userRegId) {
		this.userRegId = userRegId;
	}
	public String getEducational() {
		return educational;
	}
	public void setEducational(String educational) {
		this.educational = educational;
	}
	public String getHousingSituation() {
		return housingSituation;
	}
	public void setHousingSituation(String housingSituation) {
		this.housingSituation = housingSituation;
	}
	public String getHomePhone() {
		return housePhone;
	}
	public void setHomePhone(String homePhone) {
		this.housePhone = homePhone;
	}
	public Integer getPersonId() {
		return personId;
	}
	public void setPersonId(Integer personId) {
		this.personId = personId;
	}
	public String getPersonCardId() {
		return personCardId;
	}
	public void setPersonCardId(String personCardId) {
		this.personCardId = personCardId;
	}
	public String getPersonName() {
		return personName;
	}
	public void setPersonName(String personName) {
		this.personName = personName;
	}
	public String getPersonSex() {
		return personSex;
	}
	public void setPersonSex(String personSex) {
		this.personSex = personSex;
	}
	public Integer getPersonAge() {
		return personAge;
	}
	public void setPersonAge(Integer personAge) {
		this.personAge = personAge;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDetailedAddress() {
		return detailedAddress;
	}
	public void setDetailedAddress(String detailedAddress) {
		this.detailedAddress = detailedAddress;
	}
	public String getRegisteredResidence() {
		return registeredResidence;
	}
	public void setRegisteredResidence(String registeredResidence) {
		this.registeredResidence = registeredResidence;
	}
	public Integer getWorkingTime() {
		return workingTime;
	}
	public void setWorkingTime(Integer workingTime) {
		this.workingTime = workingTime;
	}
	public String getSpousalName() {
		return spousalName;
	}
	public void setSpousalName(String spousalName) {
		this.spousalName = spousalName;
	}
	public String getSpousalCardId() {
		return spousalCardId;
	}
	public void setSpousalCardId(String spousalCardId) {
		this.spousalCardId = spousalCardId;
	}
	public String getSpousalTel() {
		return spousalTel;
	}
	public void setSpousalTel(String spousalTel) {
		this.spousalTel = spousalTel;
	}
	public String getMaritalStatus() {
		return maritalStatus;
	}
	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}
	public Integer getChildrenNumber() {
		return childrenNumber;
	}
	public void setChildrenNumber(Integer childrenNumber) {
		this.childrenNumber = childrenNumber;
	}
	
	@Override
	public String toString() {
		return "PersonaIInformation [personId=" + personId + ", userRegId=" + userRegId + ", personCardId="
				+ personCardId + ", personName=" + personName + ", personSex=" + personSex + ", personAge=" + personAge
				+ ", city=" + city + ", detailedAddress=" + detailedAddress + ", registeredResidence="
				+ registeredResidence + ", workingTime=" + workingTime + ", spousalName=" + spousalName
				+ ", spousalCardId=" + spousalCardId + ", spousalTel=" + spousalTel + ", maritalStatus=" + maritalStatus
				+ ", childrenNumber=" + childrenNumber + ", educational=" + educational + ", housingSituation="
				+ housingSituation + ", housePhone=" + housePhone + "]";
	}
	public PerInfo(Integer personId, Integer userRegId, String personCardId,
			String personName, String personSex, Integer personAge,
			String city, String detailedAddress, String registeredResidence,
			Integer workingTime, String spousalName, String spousalCardId,
			String spousalTel, String maritalStatus, Integer childrenNumber,
			String educational, String housingSituation, String housePhone) {
		super();
		this.personId = personId;
		this.userRegId = userRegId;
		this.personCardId = personCardId;
		this.personName = personName;
		this.personSex = personSex;
		this.personAge = personAge;
		this.city = city;
		this.detailedAddress = detailedAddress;
		this.registeredResidence = registeredResidence;
		this.workingTime = workingTime;
		this.spousalName = spousalName;
		this.spousalCardId = spousalCardId;
		this.spousalTel = spousalTel;
		this.maritalStatus = maritalStatus;
		this.childrenNumber = childrenNumber;
		this.educational = educational;
		this.housingSituation = housingSituation;
		this.housePhone = housePhone;
	}
	public PerInfo() {
		super();
	}
	
	
	
	
	
}
