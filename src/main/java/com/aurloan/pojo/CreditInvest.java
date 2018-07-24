package com.aurloan.pojo;

//信用信息表(征信表)
public class CreditInvest {
	private Integer creditId;//征信编号
	private Integer personId;//申请人编号
	private Integer creditScore;//征信评分
	private String creditState;//征信状态（可贷、不可贷）
	
	
	public Integer getCreditId() {
		return creditId;
	}
	public void setCreditId(Integer creditId) {
		this.creditId = creditId;
	}
	public Integer getPersonId() {
		return personId;
	}
	public void setPersonId(Integer personId) {
		this.personId = personId;
	}
	public Integer getCreditScore() {
		return creditScore;
	}
	public void setCreditScore(Integer creditScore) {
		this.creditScore = creditScore;
	}
	public String getCreditState() {
		return creditState;
	}
	public void setCreditState(String creditState) {
		this.creditState = creditState;
	}
	public CreditInvest(Integer creditId, Integer personId, Integer creditScore, String creditState) {
		super();
		this.creditId = creditId;
		this.personId = personId;
		this.creditScore = creditScore;
		this.creditState = creditState;
	}
	public CreditInvest() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "CreditInvest [creditId=" + creditId + ", personId=" + personId + ", creditScore=" + creditScore
				+ ", creditState=" + creditState + "]";
	}
}
