package com.spring.app;


 import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.spring.app.Account;

public class Driver {
	
	
	public static Account loadAccount()
	{
		ApplicationContext ctx = new ClassPathXmlApplicationContext("beans.xml");

	    return (Account) ctx.getBean(Account.class);
	}

	public static void main(String[] args) 
	{
		Account acc = loadAccount();
// 		if(acc==null)
// 		{
// 			System.out.println("issue in getting the bean");
// 			return;
// 		}
		
		System.out.println("Account number:"+acc.getAccNumber());
		System.out.println("Account holder name:"+acc.getAccHolderName());
		System.out.println("Balance:"+acc.getAccBalance());
		System.out.println("Loan type:"+acc.getLoanInfo().getLoanType());
		System.out.println("Loan amount:"+acc.getLoanInfo().getLoanAmount());
		

	}	 	  	    	    		        	 	


}
