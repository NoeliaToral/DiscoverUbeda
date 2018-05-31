<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insertar productos</title>
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
<script type="text/javascript" src="static/js/hover_pack.js"></script>

</head>
<body>
<div class="header">
	<div class="header_top">
		<div class="container">
			<div class="logo">
				<a href="index.html"><img src="static/images/logo.png" alt=""/></a>
			</div>
			<ul class="shopping_grid">
			      <a href="newuser"><li>Crear cuenta</li></a>
			      <a href="login"><li>Iniciar sesión</li></a>
			      <a href="#"><li><span class="m_1">Shopping Bag</span>&nbsp;&nbsp;(0) &nbsp;<img src="static/images/bag.png" alt=""/></li></a>
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
					<li><a href="contacto" data-hover="Contactanos">Contáctanos</a></li>
					<li><a href="construccion" data-hover="Leyendas">Leyendas</a></li>
					<li><a href="construccion" data-hover="Gastronomia">Gastronomía</a></li>
					<sec:authorize access="hasRole('ADMIN')">
						<li class="active"><a href="insertarProductos" data-hover="insertarProductos">Insertar productos</a></li>
					</sec:authorize>
				</ul>
				 <script type="text/javascript" src="static/js/nav.js"></script>
	      </div><!-- end h_menu4 -->
     </div>
</div>
<div class="container">
  <h2 class="tituloH2">Rellene los siguientes datos</h2>
<form:form method="POST" modelAttribute="productos" action="insertarProductos?${_csrf.parameterName}=${_csrf.token}" enctype="multipart/form-data" class="form-horizontal">
	<div class="form-group">
      <label class="control-label col-sm-4" for="nombreProducto">Nombre del producto:</label>
      <div class="col-sm-4">
		<form:input type="text" class="form-control" placeholder="Nombre del producto" path="nombreProducto" />
	  </div>		
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="descripcionCorta">Descripción corta:</label>
      <div class="col-sm-4">          
			<form:input type="text" class="form-control" placeholder="Descripción corta" path="descripcionCorta" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="descripcionLarga">Descripción larga:</label>
      <div class="col-sm-4">          
			<form:input type="text" class="form-control" placeholder="Descripción larga" path="descripcionLarga" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="precio">Precio:</label>
      <div class="col-sm-4">          
        	<form:input type="numeric" class="form-control" placeholder="Precio" path="precio" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="email">Material:</label>
      <div class="col-sm-4">     
      	<form:input type="text" class="form-control" placeholder="Material" path="material" />     
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-4" for="talla">Talla:</label>
      <div class="col-sm-4">          
		<form:input type="text" class="form-control" placeholder="Talla" path="talla" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" class="form-control">Imagen principal:</label>
      <div class="col-sm-4">          
			<input type="file" name="filePrincipal" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" class="form-control">Imagen 1:</label>
      <div class="col-sm-4">          
			<input type="file" name="fileUno" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" class="form-control">Imagen 2:</label>
      <div class="col-sm-4">          
			<input type="file" name="fileDos" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" class="form-control">Imagen 3:</label>
      <div class="col-sm-4">          
			<input type="file" name="fileTres" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" class="form-control">Imagen 4:</label>
      <div class="col-sm-4">          
			<input type="file" name="fileCuatro" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" class="form-control">Imagen 5:</label>
      <div class="col-sm-4">          
			<input type="file" name="fileCinco" />
      </div>
    </div>
  	<div class="form-group">        
      <div class="col-sm-offset-7 col-sm-10">
        <button type="submit" class="btn btn-default">Enviar</button>
        <button type="reset" class="btn btn-default">Limpiar</button>
        
      </div>
    </div>

	</form:form>
</div>
<div class="footer_bg">
</div>
<div class="footer">
	<div class="container">
		<div class="col-md-3 f_grid1">
			<h3>Sobre nosotros:</h3>
<!-- 			<a href="#"><img src="static/images/logo.png" alt=""/></a> -->
			<p>Una bonita tienda donde podrás llevarte recuerdos fabulosos de Úbeda y regalos para toda la familia.</p>
			<p>También ofrecemos visitas guiadas.</p>
		</div>
		<div class="col-md-3 f_grid1 f_grid2">
			<h3>Síguenos</h3>
			<ul class="social">
				<li><a href="https://b-m.facebook.com/DISCOVERUBEDA/"> <i class="fb"> </i><p class="m_3">Facebook</p><div class="clearfix"> </div></a></li>
			    <li><a href="https://twitter.com/discover_ubeda"><i class="tw"> </i><p class="m_3">Twittter</p><div class="clearfix"> </div></a></li>
				<li><a href="https://www.instagram.com/discoverubeda/"><i class="instagram"> </i><p class="m_3">Instagram</p><div class="clearfix"> </div></a></li>
			</ul>
		</div>
		<div class="col-md-3 f_grid1 f_grid3">
			<h3>Contáctanos</h3>
			<ul class="list">
				<li><p>+34 666666666</p></li>
				<li><p>C/Real nº40 Úbeda</p></li>
				<li><p><a href="mailto:ntj00003@red.ujaen.es">ntj00003@red.ujaen.es</a></p></li>
			</ul>
		</div>
		<div class="col-md-3 f_grid3">
			<h3>Encuéntranos:</h3>
				<iframe src="https://www.google.com/maps/embed?pb=!4v1526501579937!6m8!1m7!1s7L2qBH17IAgQCapOS69vLw!2m2!1d38.00957030656649!2d-3.369143237755362!3f241.76736424386468!4f-8.796376115979271!5f0.7820865974627469" width="200" height="150" frameborder="0" style="border:0" allowfullscreen></iframe>
			</div>
		<div class="clearfix"> </div>
		
	</div>
</div>
<div class="footer_bottom">
       	<div class="container">
       		<div class="cssmenu">
				<ul>
					<li><a href="construccion ">Política de privacidad</a></li> .
					<li><a href="construccion ">Términos del servicio</a></li> .
					<li><a href="construccion ">Política de Cookies</a></li> 
				</ul>
			</div>
			<div class="copy">
			    <p>&copy;  2018 Plantilla realizada por <a href="#" target="_blank">Discover Úbeda</a></p>
		    </div>
		    <div class="clearfix"> </div>
       	</div>
</div>
</body>
</html>