package com.aurloan.pojo;

//风险信息表
public class RiskInfo {
	private Integer riskId;//风险信息Id
	private Integer creditId;//信用信息id（CreditInvest中主键（id））
	private Integer creditScore;//信用分值
	private Integer riskRateScore;//风险评估分值
	private Integer personId;//个人信息id（个人信息表主键）
	
	public Integer getRiskId() {
		return riskId;
	}
	public void setRiskId(Integer riskId) {
		this.riskId = riskId;
	}
	public Integer getCreditId() {
		return creditId;
	}
	public void setCreditId(Integer creditId) {
		this.creditId = creditId;
	}
	public Integer getCreditScore() {
		return creditScore;
	}
	public void setCreditScore(Integer creditScore) {
		this.creditScore = creditScore;
	}
	public Integer getRiskRateScore() {
		return riskRateScore;
	}
	public void setRiskRateScore(Integer riskRateScore) {
		this.riskRateScore = riskRateScore;
	}
	public Integer getPersonId() {
		return personId;
	}
	public void setPersonId(Integer personId) {
		this.personId = personId;
	}
	public RiskInfo(Integer riskId, Integer creditId, Integer creditScore, Integer riskRateScore, Integer personId) {
		super();
		this.riskId = riskId;
		this.creditId = creditId;
		this.creditScore = creditScore;
		this.riskRateScore = riskRateScore;
		this.personId = personId;
	}
	@Override
	public String toString() {
		return "RiskInfo [riskId=" + riskId + ", creditId=" + creditId + ", creditScore=" + creditScore
				+ ", riskRateScore=" + riskRateScore + ", personId=" + personId + "]";
	}
	public RiskInfo() {
		super();
	}
	
	
}
