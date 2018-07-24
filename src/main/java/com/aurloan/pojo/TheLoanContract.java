package com.aurloan.pojo;

public class TheLoanContract {
	//贷款签约信息
	private Integer loanNumber;//签约信息编号
	private String repaymentDate;//签约日期
	private Integer creditCardNumbers;//签约银行卡号
	

	public int getLoanNumber() {
		return loanNumber;
	}
	public void setLoanNumber(int loanNumber) {
		this.loanNumber = loanNumber;
	}
	public String getRepaymentDate() {
		return repaymentDate;
	}
	public void setRepaymentDate(String repaymentDate) {
		this.repaymentDate = repaymentDate;
	}
	public int getCreditCardNumbers() {
		return creditCardNumbers;
	}
	public void setCreditCardNumbers(int creditCardNumbers) {
		this.creditCardNumbers = creditCardNumbers;
	}
	

	public TheLoanContract(int loanNumber, String repaymentDate, int creditCardNumbers) {
		super();
		this.loanNumber = loanNumber;
		this.repaymentDate = repaymentDate;
		this.creditCardNumbers = creditCardNumbers;
	}

	//�޲ι��췽��
	public TheLoanContract() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	//toString
	@Override
	public String toString() {
		return "TheLoanContract [loanNumber=" + loanNumber + ", repaymentDate=" + repaymentDate + ", creditCardNumbers="
				+ creditCardNumbers + "]";
	}
	
	
}
