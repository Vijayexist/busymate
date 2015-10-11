<!DOCTYPE html>
<html lang="en" ng-app="bizmate">
<%@page import = "java.util.*" session="true"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<head>
  <title>BizMate</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.25/angular.min.js"></script>
          <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.25/angular-route.js"></script>
          <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.25/angular-animate.js"></script>
          <script src="../../bizmate/resources/core/js/bizmateroutes.js"></script>
          <script src="../../bizmate/resources/core/js/bootstrap-datepicker.js"></script>
          <script src="../../bizmate/resources/core/js/star-rating.js"></script>
            <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../bizmate/resources/core/css/dashboard.css">
    <link rel="stylesheet" href="../../bizmate/resources/core/css/datepicker.css">
</head>
<style>
h2,h3,h1
{
color:brown;
}
</style>
<body style="background-image:url('../../bizmate/resources/core/images/dashboard.png')">
 <% 
        Integer counter = (Integer)session.getAttribute("counter");
        if (counter == null) {
            counter = new Integer(1);
        } else {
            counter = new Integer(counter.intValue() + 1);
        }

        session.setAttribute("counter", counter);
        %>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#loginHeader">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#" style=""><img src="../../bizmate/resources/core/images/bizmate.png" alt="Bizmate" style="vertical-align: middle;display: table-cell;" height="50" width="100"></a>
    </div>
    <div class="collapse navbar-collapse" id="loginHeader">
      <sec:authentication var="user" property="principal" />
      <ul class="nav navbar-nav navbar-right">
        <li class="none"><a href="#"><span> <%= new Date(session.getLastAccessedTime())%> </span></a></li>
        <li class="none"><a href="#"><span class="glyphicon glyphicon-user"></span> ${user}</a></li>
        <li class="none"><a href="<c:url value="j_spring_security_logout" />"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
      </ul>
    </div>
  </div>
</nav>
<nav class="navbar navbar-inverse" id="submenu">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li ><i class="fa fa-circle fa-stack-2x"></i><a href="#"><span class="glyphicon glyphicon-home"></span> &nbsp;Home</a></li>
       <sec:authorize access="hasRole('ROLE_ADMIN')">
        <li ><a href="#">CRM</a></li>
        <li><a href="#">Data Dump</a></li>
        <li><a href="#">Reports</a></li>
        </sec:authorize>
      </ul>
      
    </div>
  </div>
</nav>
   <div class="container" id="contentDiv">
<div class="page {{ pageClass }}" ng-view></div>
</div>
</body>
</html>
