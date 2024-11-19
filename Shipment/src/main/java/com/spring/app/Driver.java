package com.spring.app;

import java.util.Scanner;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Driver {

	public static void main(String[] args) {

//Fill the code
		ApplicationContext context = new ClassPathXmlApplicationContext("beans.xml");
//		return (Shipment) context.getBean("Shipment");
		
		Scanner scanner=new Scanner(System.in);
		        
        // For Shipment 1
        System.out.println("Shipment Details 1");
        Item item1 = (Item) context.getBean("item");
        System.out.print("Enter the Item Name: ");
        item1.setItemName(scanner.nextLine());
        System.out.print("Enter the Item Price: ");
        item1.setPrice(scanner.nextDouble());
        scanner.nextLine(); // Consume the newline

        Shipment shipment1 = (Shipment) context.getBean("shipment");
        System.out.print("Enter the Shipment ID: ");
        shipment1.setShipmentId(scanner.nextLine());
        System.out.print("Enter the Delivery Status: ");
        shipment1.setDeliveryStatus(scanner.nextLine());
        shipment1.setItem(item1); // Associate item with shipment

        // For Shipment 2
        System.out.println("\nShipment Details 2");
        Item item2 = (Item) context.getBean("item");
        System.out.print("Enter the Item Name: ");
        item2.setItemName(scanner.nextLine());
        System.out.print("Enter the Item Price: ");
        item2.setPrice(scanner.nextDouble());
        scanner.nextLine(); // Consume the newline

        Shipment shipment2 = (Shipment) context.getBean("shipment");
        System.out.print("Enter the Shipment ID: ");
        shipment2.setShipmentId(scanner.nextLine());
        System.out.print("Enter the Delivery Status: ");
        shipment2.setDeliveryStatus(scanner.nextLine());
        shipment2.setItem(item2); // Associate item with shipment

        // Display delivery statuses
        System.out.println("\nDelivery status of shipment ID: " + shipment1.getShipmentId() + " is " + shipment1.getDeliveryStatus());
        System.out.println("Delivery status of shipment ID: " + shipment2.getShipmentId() + " is " + shipment2.getDeliveryStatus());
        
		
	}	 

	
}
