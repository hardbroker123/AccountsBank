package com.aurloan.pojo;

//��Ȩ���п���Ϣ��
public class UserAuthInfo {
	private Integer userAuthInfoId;//��Ȩ���
	private String account;//��Ȩ���п��˻�
	private double transMoney;//ת�˽��
	private Integer personId;//�����˱��
	private String authState;//�û���Ȩ״̬
	
	
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
