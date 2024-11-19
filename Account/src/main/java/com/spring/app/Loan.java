package com.spring.app;

public class Loan {

	public Loan(String loanType, double loanAmount) {
		super();
		this.loanType = loanType;
		this.loanAmount = loanAmount;
	}
	private String loanType;
	private double loanAmount;

	public String getLoanType() {
		return loanType;
	}
	public void setLoanType(String loanType) {
		this.loanType = loanType;
	}
	public double getLoanAmount() {
		return loanAmount;
	}
	public void setLoanAmount(double loanAmount) {
		this.loanAmount = loanAmount;
	}
	
}
