package com.aurloan.pojo;

//������Ϣ��(���ű�)
public class CreditInvest {
	private Integer creditId;//���ű��
	private Integer personId;//�����˱��
	private Integer creditScore;//��������
	private String creditState;//����״̬���ɴ������ɴ���
	
	
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
