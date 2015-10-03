    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function resetFunction(){
	document.getElementById("ServiceForm").reset();
}
</script>

</head>
<body>
<div>
<form:form  method="post" modelAttribute="servicebean" id="ServiceForm"  ng-controller="ServiceController">
<%-- <div>Customer Id:<form:input type="text" path="CustId"  />
</div><br>
<div>Customer Name:<form:input type="text" path="CustName"  />
</div><br>
<div>Customer Address:<form:input type="text" path="CustAdd" 	  />
</div><br>
<div>Customer PhoneNumber:<form:input type="text" path="CustPhNo"  />
</div><br> --%>
<div>Customer ID:${servicebean.cust.custId }</div><br>
<div>Customer ID:${servicebean.cust.custName}</div><br>
<div>Customer ID:${servicebean.cust.custAddress }</div><br>
<div>Customer ID:${servicebean.cust.custPhoneNumber }</div><br>
<div>Vehicle ID:${servicebean.vehicleId}
</div><br>
<div>ServiceRequest ID:${servicebean.serviceId}
</div><br>
<div>ServiceRequest ID:${servicebean.serviceId}
</div><br>

<div>ServiceDate:<form:input type="text" path="serviceDate" name="serviceDate" data-ng-model="serviceDate" />
</div><br>
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
<div>Comments:<form:input type="text" path="comments" name="comments" data-ng-model="comments" />
</div><br>
<input type="button" value="Submit" ng-click="submitService()">
<input type="button" value="Reset" onclick="resetFunction()">
</form:form>
</div>
</body>
</html>