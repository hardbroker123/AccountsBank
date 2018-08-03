package com.aurloan.pojo;

public class TheLoanContract {
	//贷款签约信息

	private Integer loanNumber;//签约信息编号
	private String repaymentDate;//还款日期
	private String creditCardNumbers;//签约银行卡号
	private Integer personId;//签约人
	private Integer appliNumber;//贷款编号

	public TheLoanContract(Integer loanNumber, String repaymentDate, String creditCardNumbers, Integer personId, Integer appliNumber) {
		this.loanNumber = loanNumber;
		this.repaymentDate = repaymentDate;
		this.creditCardNumbers = creditCardNumbers;
		this.personId = personId;
		this.appliNumber = appliNumber;
	}

	public Integer getPersonId() {
		return personId;
	}

	public void setPersonId(Integer personId) {
		this.personId = personId;
	}

	public Integer getAppliNumber() {
		return appliNumber;
	}

	public void setAppliNumber(Integer appliNumber) {
		this.appliNumber = appliNumber;
	}

	@Override
	public String toString() {
		return "TheLoanContract{" +
				"loanNumber=" + loanNumber +
				", repaymentDate='" + repaymentDate + '\'' +
				", creditCardNumbers='" + creditCardNumbers + '\'' +
				", personId=" + personId +
				", appliNumber=" + appliNumber +
				'}';
	}

	public TheLoanContract() {
	}

	public Integer getLoanNumber() {
		return loanNumber;
	}

	public void setLoanNumber(Integer loanNumber) {
		this.loanNumber = loanNumber;
	}

	public String getRepaymentDate() {
		return repaymentDate;
	}

	public void setRepaymentDate(String repaymentDate) {
		this.repaymentDate = repaymentDate;
	}

	public String getCreditCardNumbers() {
		return creditCardNumbers;
	}

	public void setCreditCardNumbers(String creditCardNumbers) {
		this.creditCardNumbers = creditCardNumbers;
	}


}
