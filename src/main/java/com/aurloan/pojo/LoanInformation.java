package com.aurloan.pojo;

import java.util.Date;

public class LoanInformation {
	//贷款信息
	private Integer appliNumber;//申请编号
	private Integer personId;//申请人id
	private String personName;//申请人姓名
	private Integer proName;//产品名称id
	private Integer proType;//产品类型id
	private Integer appliAmount;//申请金额
	private Integer approAmount;//审批金额
	private Double anIntereRate;//年利率
	private Double fineInTerestRate;//罚息利率
	private String periodValidity;//额度有效期
	private Integer singleLoanCycle;//单笔贷款周期
	private String interestRate;//计息方式
	private String repayMethod;//还款方式
	private Date appTime;//审批通过时间
	private Integer LoanInformationStatus;//贷款信息状态

	public LoanInformation() {
	}

	public LoanInformation(Integer appliNumber, Integer personId, String personName, Integer proName, Integer proType, Integer appliAmount, Integer approAmount, Double anIntereRate, Double fineInTerestRate, String periodValidity, Integer singleLoanCycle, String interestRate, String repayMethod, Date appTime, Integer loanInformationStatus) {
		this.appliNumber = appliNumber;
		this.personId = personId;
		this.personName = personName;
		this.proName = proName;
		this.proType = proType;
		this.appliAmount = appliAmount;
		this.approAmount = approAmount;
		this.anIntereRate = anIntereRate;
		this.fineInTerestRate = fineInTerestRate;
		this.periodValidity = periodValidity;
		this.singleLoanCycle = singleLoanCycle;
		this.interestRate = interestRate;
		this.repayMethod = repayMethod;
		this.appTime = appTime;
		LoanInformationStatus = loanInformationStatus;
	}

	public Integer getAppliNumber() {
		return appliNumber;
	}

	public void setAppliNumber(Integer appliNumber) {
		this.appliNumber = appliNumber;
	}

	public Integer getPersonId() {
		return personId;
	}

	public void setPersonId(Integer personId) {
		this.personId = personId;
	}

	public String getPersonName() {
		return personName;
	}

	public void setPersonName(String personName) {
		this.personName = personName;
	}

	public Integer getProName() {
		return proName;
	}

	public void setProName(Integer proName) {
		this.proName = proName;
	}

	public Integer getProType() {
		return proType;
	}

	public void setProType(Integer proType) {
		this.proType = proType;
	}

	public Integer getAppliAmount() {
		return appliAmount;
	}

	public void setAppliAmount(Integer appliAmount) {
		this.appliAmount = appliAmount;
	}

	public Integer getApproAmount() {
		return approAmount;
	}

	public void setApproAmount(Integer approAmount) {
		this.approAmount = approAmount;
	}

	public Double getAnIntereRate() {
		return anIntereRate;
	}

	public void setAnIntereRate(Double anIntereRate) {
		this.anIntereRate = anIntereRate;
	}

	public Double getFineInTerestRate() {
		return fineInTerestRate;
	}

	public void setFineInTerestRate(Double fineInTerestRate) {
		this.fineInTerestRate = fineInTerestRate;
	}

	public String getPeriodValidity() {
		return periodValidity;
	}

	public void setPeriodValidity(String periodValidity) {
		this.periodValidity = periodValidity;
	}

	public Integer getSingleLoanCycle() {
		return singleLoanCycle;
	}

	public void setSingleLoanCycle(Integer singleLoanCycle) {
		this.singleLoanCycle = singleLoanCycle;
	}

	public String getInterestRate() {
		return interestRate;
	}

	public void setInterestRate(String interestRate) {
		this.interestRate = interestRate;
	}

	public String getRepayMethod() {
		return repayMethod;
	}

	public void setRepayMethod(String repayMethod) {
		this.repayMethod = repayMethod;
	}

	public Date getAppTime() {
		return appTime;
	}

	public void setAppTime(Date appTime) {
		this.appTime = appTime;
	}

	public Integer getLoanInformationStatus() {
		return LoanInformationStatus;
	}

	public void setLoanInformationStatus(Integer loanInformationStatus) {
		LoanInformationStatus = loanInformationStatus;
	}

	@Override
	public String toString() {
		return "LoanInformation{" +
				"appliNumber=" + appliNumber +
				", personId=" + personId +
				", personName='" + personName + '\'' +
				", proName=" + proName +
				", proType=" + proType +
				", appliAmount=" + appliAmount +
				", approAmount=" + approAmount +
				", anIntereRate=" + anIntereRate +
				", fineInTerestRate=" + fineInTerestRate +
				", periodValidity='" + periodValidity + '\'' +
				", singleLoanCycle=" + singleLoanCycle +
				", interestRate='" + interestRate + '\'' +
				", repayMethod='" + repayMethod + '\'' +
				", appTime=" + appTime +
				", LoanInformationStatus=" + LoanInformationStatus +
				'}';
	}
}
