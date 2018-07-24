package com.aurloan.pojo;

public class ProductName {
	//产品名称
	private Integer productId;//产品名称id
	private String productName;//产品名称

	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}

	public ProductName(int productId, String productName) {
		super();
		this.productId = productId;
		this.productName = productName;
	}

	public ProductName() {
		super();
		// TODO Auto-generated constructor stub
	}
	//toString
	@Override
	public String toString() {
		return "ProductName [productId=" + productId + ", productName=" + productName + "]";
	}
	
}
