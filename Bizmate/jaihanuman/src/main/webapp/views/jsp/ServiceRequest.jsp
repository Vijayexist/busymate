  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" type="text/css"/>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css" type="text/css"/>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css" type="text/css"/>
 <spring:url value="/resources/core/js/angular.js" var="angularJS" /> 
<spring:url value="/resources/core/js/ServiceRequest.js" var="serviceJS" />
<spring:url value="/resources/core/js/jquery.js" var="jquery" />
<spring:url value="/resources/core/js/bootstrap.min.js" var="bootstrap" />
<spring:url value="/resources/core/js/bootstrap-datepicker.min.js" var="datepicker" />

 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.1.5/angular.js"></script>
 <script src="${jquery}"></script>
 
 <script src="${bootstrap}"></script>
  <script src="${datepicker}"></script>
<%-- <script src="${angularJS}"></script> --%>
<script src="${serviceJS}"></script>
<script>$(function() {
  
 
	$('#datepicker').datepicker({
      autoclose:true,
    }).on("changeDate", function(e){
     console.log(e.date);
    });
    
   
  
});
</script>
</head>
<body>
<div ng-app="myApp">
<form  method="post" role="form" ng-submit="submitService()" ng-controller="ServiceController">
<div>Customer Id:<input type="text" ngReadonly="checked" value=""/ >
</div><br>
<div>Customer Name:<input type="text" ngReadonly="checked" />
</div><br>
<div>Customer Address:<input type="text" ngReadonly="checked"  />
</div><br>
<div>Customer PhoneNumber:<input type="text" ngReadonly="checked"  />
</div><br>
<div>Service Request:<input type="text" ngReadonly="checked" />
</div><br>
<div class="row" id="exDateTime">
      <div class="col-sm-3">
        <h4>Date &amp; Time Inputs</h4>
        <div class="form-group">
          <label class="control-label">Date picker</label>
          <div class="input-group date" id="datepicker">
            <input class="form-control" type="text" data-ng-model="serviceDate">
            <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
          </div>
        </div></div></div>
<div>Comments:<input type="text" data-ng-model="comments" />
</div><br>
<input type="submit" value="Submit">
{{3+5}}


<h4>You submitted below data through post:</h4>
		 <pre>Form data ={{list}}</pre>
</form>
</div>
</body>
</html>