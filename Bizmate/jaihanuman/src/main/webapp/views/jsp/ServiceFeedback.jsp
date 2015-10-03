
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Service Feedback</title>

<div class="jumbotron inverse">
	<h2>Service Feedback</h2>
</div>
<script src="../../bizmate/resources/core/js/star-rating.js" ></script>
<!-- <script src="../../bizmate/resources/core/js/star-rating-min.js"></script> -->
   <link rel="stylesheet"
	href="../../bizmate/resources/core/css/star-rating.css">

<link rel="stylesheet"
	href="../../bizmate/resources/core/css/star-rating.min.css">
  </head>
<body>
	<form:form modelAttribute="serviceFeedPost" ng-controller="ServiceFeedController">
	<div>Customer Id:${serviceFeedPost.serviceRequest.cust.custId}<br></div>
	<div>Customer Name:${serviceFeedPost.serviceRequest.cust.custName}<br></div>
	<div>Customer PhoneNumber:${serviceFeedPost.serviceRequest.cust.custPhoneNumber}<br></div>
	<div>Service RequestId:${serviceFeedPost.serviceRequest.serviceId}<br></div>
<div>Vehicle Number:${serviceFeedPost.serviceRequest.vehicleId}<br></div>
<div>Complaint Details:<form:input path="complaint" type="text" name="complaint"/><br></div>
	<div>Customer Feedback:<form:input path="feed" type="text" name="feed"/><br></div>
	<div>Improvement Feedback: <form:input path="improveFeed"  type="text" name="improveFeed"/><br></div>
	<div>	<label>Rate the feedback:</label>
		<form:input path="rating" name="rating" id="input-21a" value="0" type="number" class="rating"
			data-symbol="*" min="0" max="5" step="0.5" data-size="md"></form:input>
		</div><br>
<div><input type="button" value="Submit" ng-click="submitFeed()"/></div>
	</form:form>
</body>
</html>