<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bizmate</title>
 
<spring:url value="/resources/core/css/hello.css" var="coreCss" />
<spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${coreCss}" rel="stylesheet" />
</head>
 <%
 String error=request.getParameter("error");
 %>
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
	<div class="navbar-header">
		<a class="navbar-brand" href="#">Bizmate</a>
	</div>
  </div>
</nav>
 <br><br><br><br><br><br><br><br>
<%-- <div class="jumbotron">
  <div class="container">
	<h1>${title}</h1>
	<p>
		<c:if test="${not empty name}">
			Hello ${name}
		</c:if>
 
		<c:if test="${empty name}">
			Welcome Welcome!
		</c:if>
    </p>
    <p>
		<a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
	</p>
	</div>
</div> --%>
<form name='loginForm'
		  action="/bizmate/<c:url value='j_spring_security_check' />" method='POST'>
 
<div class="container">
 <%=error %>
  <div class="row">
	<div class="col-md-2">
	User Name
	</div>
	<div class="col-md-4">
	<input type="text" name="username" value="1" />
	</div>
	 </div>
	 
	   <div class="row">
	<div class="col-md-2">
	Password
	</div>
	<div class="col-md-4">
	<input type="password" value="1"></input>
	</div>
	 </div>
	 
	   <div class="row">
	<div class="col-md-2">
	<input type="submit" value="Login"/>
	</div>
	<div class="col-md-4">
	<input type="button" value="Reset"></input>
	</div>
	 </div>
	 </div>
	 </form>
  <hr>
  <footer>
  est
	<spring:url value="/includes/footer.jsp" var="coreJfs" />
	<%@  include file="/includes/footer.jsp"%>
  </footer>

 
<spring:url value="/resources/core/css/hello.js" var="coreJs" />
<spring:url value="/resources/core/css/bootstrap.min.js" var="bootstrapJs" />
 
<script src="${coreJs}"></script>
<script src="${bootstrapJs}"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
 
</body>
</html>