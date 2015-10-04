package com.bizmate.beans;

public class ServiceFeedback {

	private ServiceRequest serviceRequest;
	
	private String complaint;
	private String feed;
	private String improveFeed;
	private float rating;
	public ServiceRequest getServiceRequest() {
		return serviceRequest;
	}
	public void setServiceRequest(ServiceRequest serviceRequest) {
		this.serviceRequest = serviceRequest;
	}
	public String getComplaint() {
		return complaint;
	}
	public void setComplaint(String complaint) {
		this.complaint = complaint;
	}
	public String getFeed() {
		return feed;
	}
	public void setFeed(String feed) {
		this.feed = feed;
	}
	public String getImproveFeed() {
		return improveFeed;
	}
	public void setImproveFeed(String improveFeed) {
		this.improveFeed = improveFeed;
	}
	public float getRating() {
		return rating;
	}
	public void setRating(float rating) {
		this.rating = rating;
	}
	
	
	
}
