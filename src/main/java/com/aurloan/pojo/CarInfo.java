package com.aurloan.pojo;

//������Ϣ��
public class CarInfo {
	private Integer carAssetsId;//������Ϣid
	private String carNum;//���ƺ�  oracle��VARCHAR2(20)
	private String carOwner;//���������û���Ϣ��������һ�£� oracle��VARCHAR2(20)
	private String secMatDate;//���յ�������  oracle��VARCHAR2(20)
	
	public Integer getCarAssetsId() {
		return carAssetsId;
	}
	public void setCarAssetsId(Integer carAssetsId) {
		this.carAssetsId = carAssetsId;;
	}
	public String getCarNum() {
		return carNum;
	}
	public void setCarNum(String carNum) {
		this.carNum = carNum;
	}
	public String getCarOwner() {
		return carOwner;
	}
	public void setCarOwner(String carOwner) {
		this.carOwner = carOwner;
	}
	public String getSecMatDate() {
		return secMatDate;
	}
	public void setSecMatDate(String secMatDate) {
		this.secMatDate = secMatDate;
	}
	public CarInfo(Integer carAssetsId, String carNum, String carOwner, String secMatDate) {
		super();
		this.carAssetsId = carAssetsId;
		this.carNum = carNum;
		this.carOwner = carOwner;
		this.secMatDate = secMatDate;
	}
	public CarInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "CarInfo [carAssetsId=" + carAssetsId + ", carNum=" + carNum + ", carOwner=" + carOwner + ", secMatDate="
				+ secMatDate + "]";
	}
	
	
	
}
