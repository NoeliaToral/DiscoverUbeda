<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<html>
<head>
<title>Login page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Discover �beda, artesan�a, regalos, heraldica, complementos, recuerdos, souvenirs." />

<spring:url value="static/css/bootstrap.css" var="bootstrap" />
<link href="${bootstrap}" rel="stylesheet" />
<spring:url value="static/css/style.css" var="estiloCss" />
<link href="${estiloCss}" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script type="text/javascript" src="static/js/jquery-1.11.1.min.js"></script>
<script src="static/js/responsiveslides.min.js"></script>
<script type="text/javascript" src="static/js/hover_pack.js"></script>
</head>

<body>
<body>
<div class="header">
	<div class="header_top">
		<div class="container">
			<div class="logo">
				<a href="listarProductos"><img class="logo" src="static/images/logo.png" alt=""/></a>
			</div>
			<ul class="shopping_grid">
			      <li><a href="newuser">Crear cuenta</a></li>
			      <li><a href="login">Iniciar sesi�n</a></li>
			      <li><a href="carrito"><span class="m_1">Carrito compra</span>&nbsp;&nbsp;&nbsp;<img src="static/images/bag.png" alt=""/></a></li>
			      <div class="clearfix"> </div>
			</ul>
		    <div class="clearfix"> </div>
		</div>
	</div>
	<div class="h_menu4"><!-- start h_menu4 -->
		<div class="container">
				<a class="toggleMenu" href="#">Menu</a>
				<ul class="nav">
					<li><a href="listarProductos" data-hover="Home">Inicio</a></li>
					<li><a href="https://discover-ubeda-visitas-guiadas9.webnode.es/" data-hover="Visitas guiadas">Visitas guiadas</a></li>
					<li><a href="contacto" data-hover="Contactanos">Cont�ctanos</a></li>
					<li><a href="construccion" data-hover="Leyendas">Leyendas</a></li>
					<li><a href="construccion" data-hover="Gastronomia">Gastronom�a</a></li>
					<sec:authorize access="hasRole('ADMIN') or hasRole('EMPLEADOS')">
						<li class="active"><a href="insertarProductos" data-hover="insertarProductos">Insertar productos</a></li>
					</sec:authorize>
					<sec:authorize access="hasRole('ADMIN') or hasRole('EMPLEADOS')">
						<li><a href="<c:url value="/logout" />">Cerrar sesi�n</a></li>
					</sec:authorize>
				</ul>
				 <script type="text/javascript" src="static/js/nav.js"></script>
	      </div><!-- end h_menu4 -->
     </div>
</div>
	<div class="about">
		<div class="container">
			<div class="register">
				<div class="col-md-6 login-right login-center">
					<h3>Iniciar sesi�n en Discover �beda</h3>
					
					<c:url var="loginUrl" value="/login" />
					<form action="${loginUrl}" method="post">
						<c:if test="${param.error != null}">
							<div class="alert alert-danger">
								<p>Nombre y contrase�a incorrectas.</p>
							</div>
						</c:if>
						<c:if test="${param.logout != null}">
							<div class="alert alert-success">
								<p>Se ha cerrado la sesi�n.</p>
							</div>
						</c:if>
						<div class="form-group">
						    <label for="exampleInputEmail1">Nombre de usuario</label>
						    <input type="text" class="form-control" id="username" name="ssoId" placeholder="Nombre de usuario" required>
						</div>
						<div class="form-group">
						    <label for="password">Contrase�a</label>
						    <input type="password" class="form-control" id="password" name="password" placeholder="Contrase�a" required>
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
<div class="footer_bg">
</div>
<div class="footer">
	<div class="container">
		<div class="col-md-3 f_grid1">
			<h3>Sobre nosotros:</h3>
<!-- 			<a href="#"><img src="static/images/logo.png" alt=""/></a> -->
			<p>Una bonita tienda donde podr�s llevarte recuerdos fabulosos de �beda y regalos para toda la familia.</p>
			<p>Tambi�n ofrecemos visitas guiadas.</p>
		</div>
		<div class="col-md-3 f_grid1 f_grid2">
			<h3>S�guenos</h3>
			<ul class="social">
				<li><a href="https://b-m.facebook.com/DISCOVERUBEDA/"> <i class="fb"> </i><p class="m_3">Facebook</p><div class="clearfix"> </div></a></li>
			    <li><a href="https://twitter.com/discover_ubeda"><i class="tw"> </i><p class="m_3">Twittter</p><div class="clearfix"> </div></a></li>
				<li><a href="https://www.instagram.com/discoverubeda/"><i class="instagram"> </i><p class="m_3">Instagram</p><div class="clearfix"> </div></a></li>
			</ul>
		</div>
		<div class="col-md-3 f_grid1 f_grid3">
			<h3>Cont�ctanos</h3>
			<ul class="list">
				<li><p>+34 666666666</p></li>
				<li><p>C/Real n�40 �beda</p></li>
				<li><p><a href="mailto:ntj00003@red.ujaen.es">ntj00003@red.ujaen.es</a></p></li>
			</ul>
		</div>
		<div class="col-md-3 f_grid3">
			<h3>Encu�ntranos:</h3>
				<iframe src="https://www.google.com/maps/embed?pb=!4v1526501579937!6m8!1m7!1s7L2qBH17IAgQCapOS69vLw!2m2!1d38.00957030656649!2d-3.369143237755362!3f241.76736424386468!4f-8.796376115979271!5f0.7820865974627469" width="200" height="150" frameborder="0" style="border:0" allowfullscreen></iframe>
			</div>
		<div class="clearfix"> </div>
		
	</div>
</div>
<div class="footer_bottom">
       	<div class="container">
       		<div class="cssmenu">
				<ul>
					<li><a href="construccion ">Pol�tica de privacidad</a></li> .
					<li><a href="construccion ">T�rminos del servicio</a></li> .
					<li><a href="construccion ">Pol�tica de Cookies</a></li> 
				</ul>
			</div>
			<div class="copy">
			    <p>&copy;  2018 Plantilla realizada por <a href="#" target="_blank">Discover �beda</a></p>
		    </div>
		    <div class="clearfix"> </div>
       	</div>
</div>
</body>
</html>