package com.aurloan.util;


/**
 * 身份证实体类
 * @author wangxw
 * @version 1.0
 * @date Jul 11, 2014 10:46:54 AM
 */
public class IdCard {
 
	// 身份证号码
	private String idCard;
	
	// 出生日期
	private String born;
	
	// 性别
	private String sex;
	
	// 所在地区  省市区
	private String att;
	//区号
	private String areaNo;
	
	
		//邮编
	private String postNo;
	
	//
	
	private String style_simcall;

	public String getIdCard() {
		return idCard;
	}

	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}

	public String getBorn() {
		return born;
	}

	public void setBorn(String born) {
		this.born = born;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getAtt() {
		return att;
	}

	public void setAtt(String att) {
		this.att = att;
	}

	public String getAreaNo() {
		return areaNo;
	}

	public void setAreaNo(String areaNo) {
		this.areaNo = areaNo;
	}

	public String getPostNo() {
		return postNo;
	}

	public void setPostNo(String postNo) {
		this.postNo = postNo;
	}

	public String getStyle_simcall() {
		return style_simcall;
	}

	public void setStyle_simcall(String style_simcall) {
		this.style_simcall = style_simcall;
	}

	@Override
	public String toString() {
		return "IdCard [idCard=" + idCard + ", born=" + born + ", sex=" + sex
				+ ", att=" + att + ", areaNo=" + areaNo + ", postNo=" + postNo
				+ ", style_simcall=" + style_simcall + "]";
	}
 
	
	
}

