package com.aurloan.pojo;

public class UserRegInfo {

	private Integer userRegId;//用户注册id
	private String userName;//用户姓名
	private String userCardId;//用户身份证号
	private String userTel;//用户电话
	private String loginName;//登陆账户
	private String loginPassword;//登陆密码
	public Integer getUserRegId() {
		return userRegId;
	}
	public void setUserRegId(Integer userRegId) {
		this.userRegId = userRegId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserCardId() {
		return userCardId;
	}
	public void setUserCardId(String userCardId) {
		this.userCardId = userCardId;
	}
	public String getUserTel() {
		return userTel;
	}
	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getLoginPassword() {
		return loginPassword;
	}
	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
	}
	public UserRegInfo(Integer userRegId, String userName, String userCardId, String userTel, String loginName,
			String loginPassword) {
		super();
		this.userRegId = userRegId;
		this.userName = userName;
		this.userCardId = userCardId;
		this.userTel = userTel;
		this.loginName = loginName;
		this.loginPassword = loginPassword;
	}
	public UserRegInfo() {
		super();
	}
	
	
	public UserRegInfo(String loginName, String loginPassword) {
		super();
		this.loginName = loginName;
		this.loginPassword = loginPassword;
	}
	public UserRegInfo(String userName, String userCardId, String userTel,
			String loginName, String loginPassword) {
		super();
		this.userName = userName;
		this.userCardId = userCardId;
		this.userTel = userTel;
		this.loginName = loginName;
		this.loginPassword = loginPassword;
	}
	@Override
	public String toString() {
		return "UserRegInfo [userRegId=" + userRegId + ", userName=" + userName + ", userCardId=" + userCardId
				+ ", userTel=" + userTel + ", loginName=" + loginName + ", loginPassword=" + loginPassword + "]";
	}
}
