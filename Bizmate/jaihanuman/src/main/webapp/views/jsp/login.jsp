<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<title>BizMate</title>
		<meta charset="utf-8">
		 <link rel="stylesheet" href="../../resources/core/css/style.css">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!--webfonts-->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:600italic,400,300,600,700' rel='stylesheet' type='text/css'>
		<!--//webfonts-->
</head>
<body style="background-image:url('../../resources/core/images/login-cars.png')">
	 <!-----start-main---->
	
	 <div class="main">
		<div class="login-form">
			<h1>BizMate Login</h1>
					<div class="head">
						<img src="../../resources/core/images/user.png" alt=""/>
					</div>
				 <form name='loginForm'
		  action="/bizmate/<c:url value='j_spring_security_check' />" onsubmit="" method='POST'>
						<input type="text" class="text" value="USERNAME" name="username"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'USERNAME';}" >
						<input type="password" name="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
						<div class="submit">
							<input type="submit" onclick="myFunction()" value="LOGIN" >
					</div>	
					<p><a href="#">Forgot Password ?</a></p>
				</form>
			</div>
			
		</div>
		 		
</body>
</html>