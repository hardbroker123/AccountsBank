package com.aurloan.pojo;

//授权银行卡信息表
public class UserAuthInfo {
	private Integer userAuthInfoId;//授权编号
	private String account;//授权银行卡账户
	private double transMoney;//转账金额
	private Integer personId;//申请人编号
	private String authState;//用户授权状态
	
	
	public Integer getUserAuthInfoId() {
		return userAuthInfoId;
	}
	public void setUserAuthInfoId(Integer userAuthInfoId) {
		this.userAuthInfoId = userAuthInfoId;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public double getTransMoney() {
		return transMoney;
	}
	public void setTransMoney(double transMoney) {
		this.transMoney = transMoney;
	}
	public Integer getPersonId() {
		return personId;
	}
	public void setPersonId(Integer personId) {
		this.personId = personId;
	}
	public UserAuthInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getAuthState() {
		return authState;
	}
	public void setAuthState(String authState) {
		this.authState = authState;
	}
	public UserAuthInfo(Integer userAuthInfoId, String account,
			double transMoney, Integer personId, String authState) {
		super();
		this.userAuthInfoId = userAuthInfoId;
		this.account = account;
		this.transMoney = transMoney;
		this.personId = personId;
		this.authState = authState;
	}
	public UserAuthInfo(String account, String authState) {
		super();
		this.account = account;
		this.authState = authState;
	}
	
	
}
