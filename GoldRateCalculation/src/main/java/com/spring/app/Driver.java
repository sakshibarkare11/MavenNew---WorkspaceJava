package com.spring.app;

import java.util.Scanner;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Driver {
	
	public static GoldRateInfo loadGoldRateDetails() {
		//fill the code
//		ApplicationContext context = new ClassPathXmlApplicationContext("beans.xml");
		ApplicationContext c = new ClassPathXmlApplicationContext("beans.xml");

		return (GoldRateInfo) c.getBean("rateInfoObj");
	}
	
public static void main(String[] args){
	GoldRateInfo goldRateInfo = loadGoldRateDetails();
//	GoldRateInfo goldInfo = loadGoldRateDetails();
	
	Scanner sc=new Scanner(System.in);
	System.out.println("Enter the carat:");
	int carat = sc.nextInt();
	System.out.println("Enter Total Grams:");
	double grams = sc.nextDouble();
	
	GoldRateInfo g = loadGoldRateDetails();
	//fill the code
	double totalRate = goldRateInfo.calculateGoldRate(carat, grams);
    System.out.println("Total Gold Rate is Rs: " + totalRate);
    
	
}

}
	 	  	    	    		        	 	
