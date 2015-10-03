package com.bizmate.bl;

import com.bizmate.beans.Customer;
import com.bizmate.beans.ServiceFeedback;
import com.bizmate.beans.ServiceRequest;

public class ServiceFeedbackbl {
public ServiceFeedback getServiceFeed(){
	ServiceFeedback sf= new ServiceFeedback();
	sf.setServiceRequest(getServiceRequest());
	
	return sf;
	}
public ServiceRequest getServiceRequest(){
	ServiceRequest sr= new ServiceRequest();
	sr.setCust(setCustomer());
	sr.setServiceId("43654");
	sr.setServiceDate("10/12/2015");
	sr.setVehicleId("TS43234");
	return sr;
}
public Customer setCustomer(){
	Customer cust= new Customer();
	cust.setCustName("Krishna");
	cust.setCustId(124);
	cust.setCustPhoneNumber("923354546");
	return cust;
}
}
