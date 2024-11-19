package com.spring.app;
 
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
 
public class Driver {
	public static Order loadBookDetails() {
		//fill the code
		ConfigurableApplicationContext context = new AnnotationConfigApplicationContext(ApplicationConfig.class);
		Order o = context.getBean(Order.class);
		return o;
	}
 
	public static void main(String[] args) {
		Order order=loadBookDetails();
		order.displayOrderDetails();
		//fill the code
	}
 
}