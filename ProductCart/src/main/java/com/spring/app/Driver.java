package com.spring.app;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Driver {

	public static void main(String args[]) {
		//fill the code
		ApplicationContext cntx = new ClassPathXmlApplicationContext("beans.xml");
		Cart c = cntx.getBean(Cart.class);
		
		System.out.println("Total Price  Rs:" +c.getProductList().stream().mapToDouble(p->p.getPrice()).reduce(0, (a,b)->a+b));
	}
}
