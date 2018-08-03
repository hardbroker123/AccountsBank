package com.aurloan.pojo.vo;

import com.aurloan.pojo.*;

import java.sql.Timestamp;

public class LoanInfoVo extends LoanInformation{


    private Integer creditCardNumbers;//签约银行卡号
    private String repaymentDate;//还款日期

    @Override
    public String getStatusName() {
        return super.getStatusName();
    }

    @Override
    public void setStatusName(String statusName) {
        super.setStatusName(statusName);
    }

    public LoanInfoVo(Integer appliNumber, Integer personId, String personName, String proName, String proType, Integer appliAmount, Integer approAmount, Double anIntereRate, Double fineInTerestRate, String periodValidity, Integer singleLoanCycle, String interestRate, String repayMethod, Timestamp appTime, Integer loanInformationStatusId, LoanInformationStatus loanInformationStatus) {
        super(appliNumber, personId, personName, proName, proType, appliAmount, approAmount, anIntereRate, fineInTerestRate, periodValidity, singleLoanCycle, interestRate, repayMethod, appTime, loanInformationStatusId, loanInformationStatus);
    }

    @Override
    public LoanInformationStatus getLoanInformationStatus() {
        return super.getLoanInformationStatus();
    }

    @Override
    public void setLoanInformationStatus(LoanInformationStatus loanInformationStatus) {
        super.setLoanInformationStatus(loanInformationStatus);
    }

    @Override
    public Integer getAppliNumber() {
        return super.getAppliNumber();
    }

    @Override
    public void setAppliNumber(Integer appliNumber) {
        super.setAppliNumber(appliNumber);
    }

    @Override
    public Integer getPersonId() {
        return super.getPersonId();
    }

    @Override
    public void setPersonId(Integer personId) {
        super.setPersonId(personId);
    }

    @Override
    public String getPersonName() {
        return super.getPersonName();
    }

    @Override
    public void setPersonName(String personName) {
        super.setPersonName(personName);
    }

    @Override
    public String getProName() {
        return super.getProName();
    }

    @Override
    public void setProName(String proName) {
        super.setProName(proName);
    }

    @Override
    public String getProType() {
        return super.getProType();
    }

    @Override
    public void setProType(String proType) {
        super.setProType(proType);
    }

    @Override
    public Integer getAppliAmount() {
        return super.getAppliAmount();
    }

    @Override
    public void setAppliAmount(Integer appliAmount) {
        super.setAppliAmount(appliAmount);
    }

    @Override
    public Integer getApproAmount() {
        return super.getApproAmount();
    }

    @Override
    public void setApproAmount(Integer approAmount) {
        super.setApproAmount(approAmount);
    }

    @Override
    public Double getAnIntereRate() {
        return super.getAnIntereRate();
    }

    @Override
    public void setAnIntereRate(Double anIntereRate) {
        super.setAnIntereRate(anIntereRate);
    }

    @Override
    public Double getFineInTerestRate() {
        return super.getFineInTerestRate();
    }

    @Override
    public void setFineInTerestRate(Double fineInTerestRate) {
        super.setFineInTerestRate(fineInTerestRate);
    }

    @Override
    public String getPeriodValidity() {
        return super.getPeriodValidity();
    }

    @Override
    public void setPeriodValidity(String periodValidity) {
        super.setPeriodValidity(periodValidity);
    }

    @Override
    public Integer getSingleLoanCycle() {
        return super.getSingleLoanCycle();
    }

    @Override
    public void setSingleLoanCycle(Integer singleLoanCycle) {
        super.setSingleLoanCycle(singleLoanCycle);
    }

    @Override
    public String getInterestRate() {
        return super.getInterestRate();
    }

    @Override
    public void setInterestRate(String interestRate) {
        super.setInterestRate(interestRate);
    }

    @Override
    public String getRepayMethod() {
        return super.getRepayMethod();
    }

    @Override
    public void setRepayMethod(String repayMethod) {
        super.setRepayMethod(repayMethod);
    }

    @Override
    public Timestamp getAppTime() {
        return super.getAppTime();
    }

    @Override
    public void setAppTime(Timestamp appTime) {
        super.setAppTime(appTime);
    }

    @Override
    public Integer getLoanInformationStatusId() {
        return super.getLoanInformationStatusId();
    }

    @Override
    public void setLoanInformationStatusId(Integer loanInformationStatusId) {
        super.setLoanInformationStatusId(loanInformationStatusId);
    }

    public LoanInfoVo(Integer personId, String personName, String proName, String proType, Integer appliAmount, Integer approAmount, Double anIntereRate, Double fineInTerestRate, String periodValidity, Integer singleLoanCycle, String interestRate, String repayMethod, Timestamp appTime, Integer loanInformationStatusId) {
        super(personId, personName, proName, proType, appliAmount, approAmount, anIntereRate, fineInTerestRate, periodValidity, singleLoanCycle, interestRate, repayMethod, appTime, loanInformationStatusId);
    }

    public LoanInfoVo(Integer appliNumber, Integer personId, String personName, String proName, String proType, Integer appliAmount, Integer approAmount, Double anIntereRate, Double fineInTerestRate, String periodValidity, Integer singleLoanCycle, String interestRate, String repayMethod, Timestamp appTime, Integer loanInformationStatusId) {
        super(appliNumber, personId, personName, proName, proType, appliAmount, approAmount, anIntereRate, fineInTerestRate, periodValidity, singleLoanCycle, interestRate, repayMethod, appTime, loanInformationStatusId);
    }

    public LoanInfoVo() {
        super();
    }

    @Override
    public String toString() {
        return super.toString()+"LoanInfoVo{" +
                "creditCardNumbers=" + creditCardNumbers +
                ", repaymentDate='" + repaymentDate + '\'' +
                '}';
    }

    public LoanInfoVo(Integer loanInformationStatusId, String statusName, Integer creditCardNumbers, String repaymentDate) {
        super(loanInformationStatusId, statusName);
        this.creditCardNumbers = creditCardNumbers;
        this.repaymentDate = repaymentDate;
    }

    public LoanInfoVo(Integer appliNumber, Integer personId, String personName, String proName, String proType, Integer appliAmount, Integer approAmount, Double anIntereRate, Double fineInTerestRate, String periodValidity, Integer singleLoanCycle, String interestRate, String repayMethod, Timestamp appTime, Integer loanInformationStatusId, LoanInformationStatus loanInformationStatus, Integer creditCardNumbers, String repaymentDate) {
        super(appliNumber, personId, personName, proName, proType, appliAmount, approAmount, anIntereRate, fineInTerestRate, periodValidity, singleLoanCycle, interestRate, repayMethod, appTime, loanInformationStatusId, loanInformationStatus);
        this.creditCardNumbers = creditCardNumbers;
        this.repaymentDate = repaymentDate;
    }

    public LoanInfoVo(Integer personId, String personName, String proName, String proType, Integer appliAmount, Integer approAmount, Double anIntereRate, Double fineInTerestRate, String periodValidity, Integer singleLoanCycle, String interestRate, String repayMethod, Timestamp appTime, Integer loanInformationStatusId, Integer creditCardNumbers, String repaymentDate) {
        super(personId, personName, proName, proType, appliAmount, approAmount, anIntereRate, fineInTerestRate, periodValidity, singleLoanCycle, interestRate, repayMethod, appTime, loanInformationStatusId);
        this.creditCardNumbers = creditCardNumbers;
        this.repaymentDate = repaymentDate;
    }

    public LoanInfoVo(Integer appliNumber, Integer personId, String personName, String proName, String proType, Integer appliAmount, Integer approAmount, Double anIntereRate, Double fineInTerestRate, String periodValidity, Integer singleLoanCycle, String interestRate, String repayMethod, Timestamp appTime, Integer loanInformationStatusId, Integer creditCardNumbers, String repaymentDate) {
        super(appliNumber, personId, personName, proName, proType, appliAmount, approAmount, anIntereRate, fineInTerestRate, periodValidity, singleLoanCycle, interestRate, repayMethod, appTime, loanInformationStatusId);
        this.creditCardNumbers = creditCardNumbers;
        this.repaymentDate = repaymentDate;
    }

    public LoanInfoVo(Integer creditCardNumbers, String repaymentDate) {
        this.creditCardNumbers = creditCardNumbers;
        this.repaymentDate = repaymentDate;
    }

    public Integer getCreditCardNumbers() {
        return creditCardNumbers;
    }

    public void setCreditCardNumbers(Integer creditCardNumbers) {
        this.creditCardNumbers = creditCardNumbers;
    }

    public String getRepaymentDate() {
        return repaymentDate;
    }

    public void setRepaymentDate(String repaymentDate) {
        this.repaymentDate = repaymentDate;
    }
}

