<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Discover �beda, artesan�a, regalos, heraldica, complementos, recuerdos, souvenirs." />

<spring:url value="static/css/bootstrap.css" var="bootstrap" />
<link href="${bootstrap}" rel="stylesheet" />
<spring:url value="static/css/style.css" var="estiloCss" />
<link href="${estiloCss}" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>

<script type="text/javascript" src="static/js/hover_pack.js"></script>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<style type="text/css">
p{
	text-align: justify;
	line-height: -5px;
}
</style>
</head>
<body>
<div class="header">
	<div class="header_top">
		<div class="container">
			<div class="logo">
				<a href="index.html"><img class="logo" src="static/images/logo.png" alt=""/></a>
			</div>
			<ul class="shopping_grid">
			      <li><a href="newuser">Crear cuenta</a></li>
			      <li><a href="login">Iniciar sesi�n</a></li>
			      <li><a href="carrito"><span class="m_1">Shopping Bag</span>&nbsp;&nbsp;&nbsp;<img src="static/images/bag.png" alt=""/></a></li>
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
					<sec:authorize access="hasRole('ADMIN')">
						<li><a href="insertarProductos" data-hover="insertarProductos">Insertar productos</a></li>
					</sec:authorize>
					<sec:authorize access="hasRole('ADMIN') or hasRole('EMPLEADOS')">
						<li><a href="<c:url value="/logout" />">Logout</a></li>
					</sec:authorize>
					
				 </ul>
				 <script type="text/javascript" src="static/js/nav.js"></script>
	      </div><!-- end h_menu4 -->
     </div>
</div>

<div class="container">
  <h2 class="tituloH2">Aviso de cookies</h2>
  <p>Utilizamos cookies, p�xels y otras tecnolog�as (en conjunto, "cookies") para reconocer tu navegador, tu dispositivo, para saber m�s sobre tus intereses y para proporcionarte herramientas esenciales y servicios y para otros fines, por ejemplo:</p>
  <ul>
  	<li>- Reconocer cuando te registras para usar nuestros servicios, lo que nos permite ofrecerte recomendaciones de productos, mostrarte contenido personalizado y ofrecerte otras funcionalidades y servicios personalizados.</li>
  	<li>- Mantener un registro de las preferencias seleccionadas por ti, lo que nos permite actuar en funci�n de las mismas, como por ejemplo si deseas ver o no publicidad personalizada.</li>
  	<li>- Mantener un registro de los productos guardados en tu cesta</li>
  	<li>- Llevar a cabo investigaciones y diagn�sticos para mejorar el contenido, los productos y los servicios de Discover �beda</li>
  	<li>- Prevenir actividades fraudulentas.</li>
  	<li>- Mejorar la seguridad.</li>
  	<li>- Informar. Esto nos permite considerar y analizar el rendimiento de nuestros servicios.</li>
  </ul>
  
  <p>Las cookies de Discover �beda te ofrecen la posibilidad de aprovechar muchas de las funcionalidades esenciales de Discover �beda. Por ejemplo, si rechazas o bloqueas nuestras cookies, no podr�s a�adir productos a la Cesta, acceder a la p�gina de finalizaci�n del pedido ni usar ninguno de los productos o servicios de Discover �beda que requieren que inicies una sesi�n</p>
  <p>Los terceros autorizados tambi�n pueden utilizar cookies cuando interact�as con los servicios de Discover �beda. Entre los que se incluyen motores de b�squeda, proveedores de servicios de medici�n y anal�ticos, redes sociales y compa��as de publicidad. Los terceros utilizan cookies en el proceso para proporcionar contenidos, incluyendo anuncios relevantes para tus intereses, para medir la efectividad de sus anuncios y para prestar servicios en nombre de Discover �beda.</p>
  <p>Puedes gestionar las cookies de tu navegador a trav�s de la configuraci�n de tu navegador. En la funci�n "Ayuda" de la mayor�a de los navegadores se indica c�mo configurar tu navegador para que no acepte cookies nuevas, para que te notifique cada vez que recibes una nueva cookie, como desactivar cookies y cuando caducar�n las cookies. Si desactivas todas las cookies en tu navegador, ni nosotros ni terceros transferiremos cookies a tu navegador. Sin embargo, es probable que tengas que ajustar algunas de tus preferencias manualmente siempre que visites una p�gina y que algunas de las herramientas y servicios no funcionen.</p>
  </br>
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
					<li><a href="politicaPrivacidad ">Pol�tica de privacidad</a></li> .
					<li><a href="terminosServicios ">T�rminos del servicio</a></li> .
					<li><a href="cookies ">Pol�tica de Cookies</a></li>
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

