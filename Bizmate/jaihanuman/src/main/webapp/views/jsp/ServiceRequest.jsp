    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
label
{
	margin-bottom:8px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Service Request</title>
<div class="jumbotron inverse">
	<h2>Service Feedback</h2>
</div>

<script>
$(document).ready(function() {
    $('#datepick').datepicker();
  });
/* function datePicker(){
	
	$('#dp2').datepicker('show');
} */
function resetFunction(){
	document.getElementById("ServiceForm").reset();
};
</script>


</head>
<body  >
<form:form  method="post" modelAttribute="servicebean" id="ServiceForm"  ng-controller="ServiceController">
<%-- <div>Customer Id:<form:input type="text" path="CustId"  />
</div><br>
<div>Customer Name:<form:input type="text" path="CustName"  />
</div><br>
<div>Customer Address:<form:input type="text" path="CustAdd" 	  />
</div><br>
<div>Customer PhoneNumber:<form:input type="text" path="CustPhNo"  />
</div><br> --%>
<div class="col-md-6">
    <label for="reqID">Customer ID</label>
  <div id="reqID">${servicebean.cust.custId} </div>
</div>
<div class="col-md-6">
    <label for="reqID"> Vehicle ID</label>
  <div id="reqID"><span class="glyphicon glyphicon-bed"></span> &nbsp;&nbsp;${servicebean.vehicleId }</div>
</div>

<div class="col-md-6">
    <label for="reqID">Customer Name</label>
  <div id="reqID">
  <span class="glyphicon glyphicon-user"></span>
  ${servicebean.cust.custName} </div>
</div>
<div class="col-md-6">
    <label for="reqID"> Address</label>
  <div id="reqID"><span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;${servicebean.cust.custAddress} </div>
</div>
<div class="col-md-6">
    <label for="reqID"> Phone Number</label>
  <div id="reqID">
  <span class="glyphicon glyphicon-phone-alt"></span>
  ${servicebean.cust.custPhoneNumber }</div>
</div>

<div class="col-md-6">
    <label for="reqID">ServiceRequest ID</label>
  <div id="reqID">${servicebean.serviceId} </div>
</div>

<br><br><br>
 <div class="col-md-10">
<label for="reqID"> ServiceDate  <span class="glyphicon glyphicon-calendar"></span>:</label>
 <div id="reqID">
 <form:input path="serviceDate" name="serviceDate" data-ng-model="serviceDate" type="text" data-date-format="mm/dd/yy" id="datepick" readonly="true"></form:input>
   <span class="add-on"><i class="icon-th"></i></span>
</div>
   </div>

<br><br>
<%--  <form:input type="text" path="serviceDate" name="serviceDate" data-ng-model="serviceDate" value="2012-05-15 21:05" id="datetimepicker" data-date-format="yyyy-mm-dd hh:ii" class="form-control" size="12"  style="width:20%"/> --%>


<br>
<!-- <div class="row" id="exDateTime">
      <div class="col-sm-3">
        <h4>Date &amp; Time Inputs</h4>
        <div class="form-group">
          <label class="control-label">Date picker</label>
          <div class="input-group date" id="datepicker">
            <input class="form-control" type="text" data-ng-model="serviceDate">
            <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
          </div>
        </div></div></div> -->
 

 <div class="col-md-10">
    <label for="usr">Comments:</label>
  <form:textarea   path="comments" name="comments" data-ng-model="comments" style="width:50%" id="usr" class="form-control" cols="100" rows="3"/>
</div>
<div class="col-md-6" style="margin-top:15px">
<input type="button" value="Submit" class="btn btn-info" ng-click="submitService()">
<input type="button" value="Reset" class="btn btn-warning"  onclick="resetFunction()">
</div>
</form:form>
</body>
</html>