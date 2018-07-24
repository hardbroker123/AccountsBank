package com.aurloan.pojo;

public class ProductType {
	//产品类型
	private Integer productId;//产品类型id
	private String productName;//产品类型名称

	public ProductType() {
	}

	public ProductType(Integer productId, String productName) {
		this.productId = productId;
		this.productName = productName;
	}

	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	@Override
	public String toString() {
		return "ProductType{" +
				"productId=" + productId +
				", productName='" + productName + '\'' +
				'}';
	}
}
