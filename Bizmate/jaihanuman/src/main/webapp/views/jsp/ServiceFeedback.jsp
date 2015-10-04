
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
<style type="text/css">

    .rateTable{
    	width:20%; 
    	postion:relative;
    	bottom:0;
    	float:right
    }
</style>
<script src="../../bizmate/resources/core/js/star-rating.js" ></script>
<script type="text/javascript">
function resetFunction(){
	document.getElementById("ServiceFeed").reset();
};</script>
<!-- <script src="../../bizmate/resources/core/js/star-rating-min.js"></script> -->
   <link rel="stylesheet"
	href="../../bizmate/resources/core/css/star-rating.css">

<link rel="stylesheet"
	href="../../bizmate/resources/core/css/star-rating.min.css">
  </head>
<body>
<div style="postion:relative">
	<form:form modelAttribute="serviceFeedPost" method="post" id="ServiceFeed" ng-controller="ServiceFeedController">
	<div class="col-md-6">
    <label for="reqID">Customer ID</label>
    <div id="reqID">${serviceFeedPost.serviceRequest.cust.custId}<br></div></div>
    <div class="col-md-6">
    <label for="reqID">Vehicle Number</label>
    <div id="reqID"><span class="glyphicon glyphicon-bed"></span> &nbsp;&nbsp;${serviceFeedPost.serviceRequest.vehicleId}<br></div></div>
	<div class="col-md-6">
    <label for="reqID">Customer Name</label>
  <div id="reqID">
  <span class="glyphicon glyphicon-user"></span>${serviceFeedPost.serviceRequest.cust.custName}
</div></div>
	<div class="col-md-6">
    <label for="reqID"> Phone Number</label>
  <div id="reqID">
  <span class="glyphicon glyphicon-phone-alt"></span>
  ${serviceFeedPost.serviceRequest.cust.custPhoneNumber}</div></div>
	<div class="col-md-6">
    <label for="reqID">ServiceRequest ID</label>
  <div id="reqID">${serviceFeedPost.serviceRequest.serviceId}</div></div>
&nbsp;&nbsp;<br><br><br>
 <div class="col-md-10">
    <label for="usr">Complaint Details:</label>&nbsp;&nbsp;<form:input path="complaint" type="text" ng-model="complaint" name="complaint"/></div><br><br>
     <div class="col-md-10">
<label for="reqID">Customer Feedback:</label>&nbsp;&nbsp;<form:input path="feed" type="text" ng-model="feed" name="feed" style="width:50%"/></div><br><br>
	<div class="col-md-10"><label for="reqID">Improvement Feedback:&nbsp;&nbsp;</label><form:input path="improveFeed" type="text" ng-model="improveFeed" name="improveFeed" style="width:50%"/></div>
	<div><br><br>	
<div class="rateTable" align="right">
    <div class="table-responsive"> 
        <table class="table table-bordered">
    <thead>
      <tr>
        <th>Rating</th>
        <th>Feedback</th>
       </tr>
    </thead>
    <tbody>
      <tr class="success">
        <td>4.5-5 stars</td>
        <td>Excellent</td>
        </tr>
      <tr class="success">
        <td>4-4.5 stars</td>
        <td>Very good</td>
        
      </tr>
      <tr class="info">
        <td>3-4 stars</td>
        <td>Good</td>
        </tr>
      <tr class="warning">
        <td>2-3 stars</td>
        <td>Bad</td>
        
      </tr>
      <tr class="danger">
        <td>2-3 stars</td>
        <td>Undesirable</td>
      </tr>
    </tbody>
  </table>	
  <table class="table table-bordered">
    
    <tbody>
      <tr >
       <td>Rating</td>
        <td>4</td>
       
        </tr>
      <tr class="success">
        <td>Satisfaction Level</td>
        <td>Very good</td>
        
      </tr>
      </tbody>
      </table>
  </div>
  </div>
  </div>
	<div class="col-md-10"><label for="reqID">Rate the feedback:&nbsp;&nbsp;</label>
		<form:input path="rating" name="rating" id="input-21a" value="0" type="number" class="rating"
			data-symbol="*" min="0" max="5" step="0.5" data-size="md" ng-model="rating"></form:input>
		</div><br>
<div class="col-md-6" style="margin-top:15px"><input type="button" value="Submit" class="btn btn-info" ng-click="submitFeed()"/>
<input type="button" value="Reset" class="btn btn-warning"  onclick="resetFunction()"></div>
	</form:form>
	</div>
</body>
</html>