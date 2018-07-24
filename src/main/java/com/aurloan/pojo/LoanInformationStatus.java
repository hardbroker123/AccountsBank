package com.aurloan.pojo;

public class LoanInformationStatus {
//贷款信息状态
	private Integer loanInformationStatusId;//贷款信息id
	private String statusName;//贷款信息名称  已申请 待审批 审批通过等



	public Integer getLoanInformationStatusId() {
		return loanInformationStatusId;
	}

	public void setLoanInformationStatusId(Integer loanInformationStatusId) {
		this.loanInformationStatusId = loanInformationStatusId;
	}

	public String getStatusName() {
		return statusName;
	}

	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}

	public LoanInformationStatus(Integer loanInformationStatusId, String statusName) {
		this.loanInformationStatusId = loanInformationStatusId;
		this.statusName = statusName;
	}

	public LoanInformationStatus() {
	}

	@Override
	public String toString() {
		return "LoanInformationStatus{" +
				"loanInformationStatusId=" + loanInformationStatusId +
				", statusName='" + statusName + '\'' +
				'}';
	}
}
