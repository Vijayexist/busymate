<!DOCTYPE html>
<html ng-app="bizmate">
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<head>
<meta charset="utf-8" />
<title>BizMate</title>

<spring:url value="/resources/core/js/dashboard.js" var="dashoardjs" />


<link data-require="bootstrap-css@*" data-semver="3.0.0"
	rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" />

<script>
	document.write('<base href="' + document.location + '" />');
</script>
<script data-require="angular.js@1.1.x"
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.1.5/angular.js"
	data-semver="1.1.5"></script>
<script data-require="ui-bootstrap@0.5.0" data-semver="0.5.0"
	src="http://angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.6.0.js"></script>
<script data-require="ui-bootstrap@0.5.0" data-semver="0.5.0"
	src="http://angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.6.0.js"></script>
<script
	src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.25/angular-route.js"></script>
<script src="${dashoardjs}"></script>
<script>
	
</script>
<style>
 
</style>
</head>

<body>
 
<nav class="navbar navbar-inverse sidebar" role="navigation">
    <div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-sidebar-navbar-collapse-12">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-sidebar-navbar-collapse-12">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-home"></span></a></li>
				<li ><a href="#">Profile<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-user"></span></a></li>
				<li ><a href="#">Messages<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-envelope"></span></a></li>
				
				<li><a href="#">Home<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-home"></span></a></li>
				<li ><a href="#">Profile<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-user"></span></a></li>
				<li ><a href="#">Messages<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-envelope"></span></a></li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Settings <span class="caret"></span><span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-cog"></span></a>
					<ul class="dropdown-menu forAnimate" role="menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li class="divider"></li>
						<li><a href="#">Separated link</a></li>
						<li class="divider"></li>
						<li><a href="#">One more separated link</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</nav>
	<div class="col-md-9">
		<div ng-view></div>
	</div>

</body>
</html>