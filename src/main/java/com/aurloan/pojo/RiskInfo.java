package com.aurloan.pojo;

//������Ϣ��
public class RiskInfo {
	private Integer riskId;//������ϢId
	private Integer creditId;//������Ϣid��CreditInvest��������id����
	private Integer creditScore;//���÷�ֵ
	private Integer riskRateScore;//����������ֵ
	private Integer personId;//������Ϣid��������Ϣ��������
	
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
