package com.bizmate.beans;

import java.util.Date;

public class ServiceRequest {
private Customer cust;
private String serviceId;
private String vehicleId;
private String serviceDate;
private String comments;
public Customer getCust() {
	return cust;
}
public void setCust(Customer cust) {
	this.cust = cust;
}
public String getServiceId() {
	return serviceId;
}
public void setServiceId(String serviceId) {
	this.serviceId = serviceId;
}
public String getVehicleId() {
	return vehicleId;
}
public void setVehicleId(String vehicleId) {
	this.vehicleId = vehicleId;
}
public String getServiceDate() {
	return serviceDate;
}
public void setServiceDate(String serviceDate) {
	this.serviceDate = serviceDate;
}
public String getComments() {
	return comments;
}
public void setComments(String comments) {
	this.comments = comments;
}
}
