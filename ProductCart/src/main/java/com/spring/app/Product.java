package com.spring.app;

public class Product {
//fill the code

	private String productId;
	private String productName;
	private double price;

	
	public Product(String productId, String productName, double price) {
//		super();
		this.productId = productId;
		this.productName = productName;
		this.price = price;
	}
	
	public Product() {
		
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
}
