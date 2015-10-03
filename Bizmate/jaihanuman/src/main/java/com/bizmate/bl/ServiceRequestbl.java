package com.bizmate.bl;

import com.bizmate.beans.Customer;
import com.bizmate.beans.ServiceRequest;

public class ServiceRequestbl {
	
	public ServiceRequest getServiceRequest(String reqID)
	{
		ServiceRequest sr=new ServiceRequest();
		sr.setCust(setCustomer());
		sr.setServiceId("Ts 08 TTT");
		sr.setVehicleId("AP 09 1805");
		return sr;
	}
	public Customer setCustomer(){
		
		Customer cust= new Customer();
		cust.setCustId(123);
		cust.setCustName("Vijay Satlawar");
		cust.setCustAddress("Parvath Nagar, Borabanda");
		cust.setCustPhoneNumber("12323435");
		return cust;
		
	}
}
