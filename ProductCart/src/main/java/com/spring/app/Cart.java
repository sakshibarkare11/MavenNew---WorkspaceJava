package com.spring.app;

import java.util.ArrayList;

public class Cart {

	ArrayList<Product>productList;
	// fill the code

	public Cart(ArrayList<Product> productList) {
		super();
		this.productList = productList;
	}
	public Cart(){
		
	}
	public ArrayList<Product> getProductList() {
		return productList;
	}
	public void setProductList(ArrayList<Product> productList) {
		this.productList = productList;
	}

	
}
