package com.spring.app;

public class Shipment {

	private String shipmentId;		
	private Item item;
	private String deliveryStatus;
	
	

//	public Shipment(String shipmentId, Item item, String deliveryStatus) {
//		super();
//		this.shipmentId = shipmentId;
//		this.item = item;
//		this.deliveryStatus = deliveryStatus;
//	}
	

	public String getDeliveryStatus() {
		return deliveryStatus;
	}

	public void setDeliveryStatus(String deliveryStatus) {
		this.deliveryStatus = deliveryStatus;
	}

	public String getShipmentId() {
		return shipmentId;
	}

	public void setShipmentId(String shipmentId) {
		this.shipmentId = shipmentId;
	}

	public Item getItem() {
		return item;
	}

	public void setItem(Item item) {
		this.item = item;
	}
	
}

