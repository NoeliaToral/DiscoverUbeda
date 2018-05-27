<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<title>Login page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Discover Úbeda, artesanía, regalos, heraldica, complementos, recuerdos, souvenirs." />

<spring:url value="static/css/bootstrap.css" var="bootstrap" />
<link href="${bootstrap}" rel="stylesheet" />
<spring:url value="static/css/style.css" var="estiloCss" />
<link href="${estiloCss}" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script type="text/javascript" src="static/js/jquery-1.11.1.min.js"></script>
<script src="static/js/responsiveslides.min.js"></script>
<script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
</script>
<script type="text/javascript" src="static/js/hover_pack.js"></script>
</head>

<body>
	<div class="about">
		<div class="container">
			<div class="register">
				<div class="col-md-6 login-left">
					<h3>NEW CUSTOMERS</h3>
					<p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.</p>
					<a class="acount-btn" href="newuser">Crear una cuenta</a>
				</div>
				<div class="col-md-6 login-right">
					<h3>REGISTERED CUSTOMERS</h3>
					<p>If you have an account with us, please log in.</p>

					<c:url var="loginUrl" value="/login" />
					<form action="${loginUrl}" method="post">
						<c:if test="${param.error != null}">
							<div class="alert alert-danger">
								<p>Invalid username and password.</p>
							</div>
						</c:if>
						<c:if test="${param.logout != null}">
							<div class="alert alert-success">
								<p>You have been logged out successfully.</p>
							</div>
						</c:if>
						<div class="form-group">
						    <label for="exampleInputEmail1">Dirección de correo</label>
						    <input type="text" class="form-control" id="username" name="ssoId" placeholder="Enter Username" required>
						</div>
						<div class="form-group">
						    <label for="password">Dirección de correo</label>
						    <input type="password" class="form-control" id="password" name="password" placeholder="Enter contraseña" required>
						</div>
 						
						<div class="input-group input-sm">
	 						<div class="form-check">
							    <input type="checkbox" class="form-check-input" id="rememberme" name="remember-me">
							    <label class="form-check-label" for="rememberme">Recordar mis datos</label>
							  </div>
						</div>
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />

						<div class="form-actions">
							<input type="submit"
								class="btn btn-block btn-primary btn-default" value="Acceder">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>