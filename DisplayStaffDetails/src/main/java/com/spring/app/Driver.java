package com.spring.app;
 
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
 
public class Driver {
	public static Department loadStaffDetails()
	{
		//fill the code
		ApplicationContext context = new ClassPathXmlApplicationContext("beans.xml"); 
		Department dept = (Department) context.getBean("DepartmentObject");
        return dept ;
	}
 
	public static void main(String[] args) {
		//fill the code
		Department dept = loadStaffDetails();
		dept.displayStaffDetails();
	}
 
}