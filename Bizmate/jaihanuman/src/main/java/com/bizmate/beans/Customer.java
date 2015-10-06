package com.bizmate.beans;

public class Customer {
private int custId;
private String custName;
private String custAddress;
private CustomerAddress custAdd;
public CustomerAddress getCustAdd() {
	return custAdd;
}
public void setCustAdd(CustomerAddress custAdd) {
	this.custAdd = custAdd;
}
private String custPhoneNumber;
public int getCustId() {
	return custId;
}
public void setCustId(int custId) {
	this.custId = custId;
}
public String getCustName() {
	return custName;
}
public void setCustName(String custName) {
	this.custName = custName;
}
public String getCustAddress() {
	return custAddress;
}
public void setCustAddress(String custAddress) {
	this.custAddress = custAddress;
}
public String getCustPhoneNumber() {
	return custPhoneNumber;
}
public void setCustPhoneNumber(String custPhoneNumber) {
	this.custPhoneNumber = custPhoneNumber;
}
}
