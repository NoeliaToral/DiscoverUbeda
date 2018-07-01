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
						<li><a href="insertarProductos" data-hover="insertarProductos">Insertar productos</a></li>
					</sec:authorize>
					<sec:authorize access="hasRole('ADMIN') or hasRole('EMPLEADOS') or hasRole('USUARIOS')">
						<li><a href="<c:url value="/logout" />">Cerrar sesi�n</a></li>
					</sec:authorize>
					
				 </ul>
				 <script type="text/javascript" src="static/js/nav.js"></script>
	      </div><!-- end h_menu4 -->
     </div>
</div>

<div class="container">
	<h2 class="tituloH2">�Qu� Informaci�n Personal de Clientes Recaba Discover �beda?</h2>
    <p>Recabamos tu informaci�n personal para prestar y mejorar de forma continua nuestros productos y servicios.</p>
	<p>Estos son los tipos de informaci�n que recabamos:</p>
	<p>- Informaci�n que nos Facilitas: recibimos y almacenamos toda la informaci�n que nos facilitas en relaci�n con los Servicios de Discover �beda. Puedes elegir no facilitar cierta informaci�n, pero si as� lo haces, no podr�s disfrutar de muchos de los Servicios de Discover �beda.</p>
	<p>- Informaci�n Autom�tica: cada vez que utilizas los Servicios de Discover �beda recibimos y almacenamos de forma autom�tica ciertos tipos de informaci�n, tales como informaci�n sobre el uso, incluyendo tu interacci�n con el contenido y los servicios disponibles a trav�s de los Servicios de Discover �beda. Por ejemplo, al igual que hacen muchas otras p�ginas web, utilizamos "cookies" y otros identificadores �nicos para recabar cierta informaci�n cuando tu navegador de Internet o tu dispositivo acceden a los Servicios de Discover �beda y a otros tipos de contenidos que te son ofrecidos por parte de o en nombre de Discover �beda en otras p�ginas web.</p>
	<p>- Informaci�n Procedente de Otras Fuentes: Es posible que recibamos informaci�n sobre ti de otras fuentes.</p>
  
  	<h2 class="tituloH2">�Con qu� Finalidades Trata Tu Informaci�n Personal Discover �beda?</h2>
	<p>Tratamos tu informaci�n personal para operar, prestar y mejorar los Servicios de Discover �beda que ofrecemos a nuestros clientes. Entre estas finalidades se incluyen:</p>
	<p>- Compra y entrega de productos y servicios. Utilizamos tu informaci�n personal para aceptar y gestionar pedidos, entregar productos y servicios, procesar pagos y comunicarnos contigo en relaci�n con pedidos, productos, servicios y ofertas promocionales. </p>
	<p>- Prestaci�n, resoluci�n de problemas y mejora de los Servicios de Discover �beda. Utilizamos tu informaci�n personal para aportar funcionalidad, analizar el rendimiento, resolver errores y mejorar la usabilidad y efectividad de los Servicios de Discover �beda. </p>
	<p>- Recomendaciones y personalizaci�n. Utilizamos tu informaci�n personal para recomendar funcionalidades, productos y servicios que puedan interesarte, identificar tus preferencias y personalizar tu experiencia con los Servicios de Discover �beda.
	<p>- Prestaci�n de servicios de voz. Cuando utilizas los servicios de voz, tratamos la entrada de voz y otra informaci�n personal para dar respuesta a tus peticiones, prestarte el servicio solicitado y mejorar los Servicios de Discover �beda</p>
	<p>- Cumplimiento de obligaciones legales. En algunos casos, tenemos la obligaci�n legal de recabar y tratar tu informaci�n personal. Por ejemplo, recabamos informaci�n de terceros vendedores sobre el lugar de establecimiento y la cuenta bancaria para verificaci�n de identidad, entre otras finalidades. </p>
	<p>- Comunicarnos contigo.Utilizamos tu informaci�n personal para comunicarnos contigo en relaci�n con los Servicios de Discover �beda a trav�s de diferentes canales (por ejemplo, por tel�fono, correo electr�nico, chat). </p>
	<p>- Publicidad. Utilizamos tu informaci�n personal para mostrar anuncios basados en tus intereses relacionados con funcionalidades, productos y servicios que puedan interesarte. Para m�s informaci�n, puedes consultar nuestro. </p>
	<p>- Prevenci�n del Fraude y Riesgos Crediticios. Tratamos informaci�n personal para prevenir y detectar el fraude y el abuso con el fin de proteger la seguridad de nuestros clientes, Discover �beda y otros. Tambi�n podemos utilizar m�todos de calificaci�n para evaluar y gestionar los riesgos crediticios. </p>
	<p>- Finalidades para las que recabamos tu consentimiento. Tambi�n podemos solicitar tu consentimiento para tratar tu informaci�n personal con una finalidad concreta que te comunicaremos. Cuando prestes tu consentimiento para que tratemos tu informaci�n personal para una finalidad determinada, podr�s revocarlo en cualquier momento y dejaremos de tratar tu informaci�n con esa finalidad. </p>
	
	<h2 class="tituloH2">�Est� a Salvo mi Informaci�n Personal?</h2>
	<p>- Trabajamos para proteger la seguridad de tu informaci�n personal durante la transmisi�n utilizando Secure Sockets Layer software (SSL), que codifica la informaci�n que introduces. </p>
	<p>- Al gestionar datos de tarjetas de cr�dito, cumplimos los Est�ndares de Seguridad de los Datos de la Industria de las Tarjetas de Pago (PCI DSS). </p>
	<p>- Contamos con sistemas de seguridad f�sicos, electr�nicos y procedimentales en relaci�n con la recogida, almacenamiento, y divulgaci�n de informaci�n personal del cliente. </p> Nuestros procedimientos de seguridad implican que en ocasiones podamos solicitarte pruebas de identidad antes de facilitarte informaci�n confidencial. </p>
	<p>- Nuestros dispositivos ofrecen funcionalidades de seguridad que los protegen frente a accesos no autorizados y p�rdidas de datos. Puedes controlar esas funcionalidades y configurarlas en funci�n de tus necesidades. </p>
	<p>- Es importante que te protejas contra el acceso no autorizado de terceros a tu contrase�a y a tus ordenadores, dispositivos y aplicaciones. Comprueba que cierras tu sesi�n al acabar siempre que est�s utilizando un ordenador compartid</p>
	
	<h2 class="tituloH2">Informaci�n Sobre Terceras Partes Anunciantes y Enlaces a Otras P�ginas Web</h2>
	<p>Los Servicios de Discover �beda pueden incluir publicidad de terceros y accesos a otras p�ginas web y aplicaciones. Las terceras partes anunciantes podr�n recabar informaci�n tuya cuando interact�es con sus contenidos, anuncios, y servicios. </p>
	
	<h2 class="tituloH2">�Est� Permitido el Uso de los Servicios de Discover �beda a los Menores de Edad?</h2>
	<p>Los menores de edad no est�n autorizados a comprar productos de Discover �beda. Los productos para menores que vendemos deben ser adquiridos por adultos. Los menores de 18 a�os s�lo podr�n utilizar los Servicios de Discover �beda bajo la supervisi�n de un padre o un tutor. </p>
	
	<h2 class="tituloH2">�Cu�nto tiempo conservamos tu informaci�n personal?</h2>
	<p>Conservamos tu informaci�n personal a fin de que puedas utilizar los Servicios de Discover �beda de forma continuada y durante el tiempo necesario para cumplir los fines descritos en este Aviso de Privacidad, seg�n resulte exigible conforme a la legislaci�n (por ejemplo, con fines fiscales y contables), o de cualquier otro modo que te hayamos comunicado. Por ejemplo, conservamos tu historial de operaciones para que puedas revisar compras pasadas (y repetir pedidos, si as� lo deseas) y las direcciones a las que has enviado pedidos, y para mejorar la relevancia de los productos y contenido que recomendamos. </p>



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

