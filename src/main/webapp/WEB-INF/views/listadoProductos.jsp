<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Discover Úbeda</title>
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
<div class="header">
	<div class="header_top">
		<div class="container">
			<div class="logo">
				<a href="index.html"><img class="logo" src="static/images/logo.png" alt=""/></a>
			</div>
			<ul class="shopping_grid">
			      <li><a href="newuser">Crear cuenta</a></li>
			      <li><a href="login">Iniciar sesión</a></li>
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
					<li class="active"><a href="listarProductos" data-hover="Home">Inicio</a></li>
					<li><a href="https://discover-ubeda-visitas-guiadas9.webnode.es/" data-hover="Visitas guiadas">Visitas guiadas</a></li>
					<li><a href="contacto" data-hover="Contactanos">Contáctanos</a></li>
					<li><a href="construccion" data-hover="Leyendas">Leyendas</a></li>
					<li><a href="construccion" data-hover="Gastronomia">Gastronomía</a></li>
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
<div class="slider">
	  <div class="callbacks_container">
	      <ul class="rslides" id="slider">
	        <li><img src="static/images/banner1.jpg" class="img-responsive" alt=""/>
	        <div class="banner_desc">
				<h1>We Provide Worlds top fashion for less fashionpress.</h1>
				<h2>FashionPress the name of the of hi class fashion Web FreePsd.</h2>
			</div>
	        </li>
	        <li><img src="static/images/banner2.jpg" class="img-responsive" alt=""/>
	         <div class="banner_desc">
				<h1>Duis autem vel eum iriure dolor in hendrerit.</h1>
				<h2>Claritas est etiam processus dynamicus, qui sequitur .</h2>
			 </div>
	        </li>
	        <li><img src="static/images/banner3.jpg" class="img-responsive" alt=""/>
	          <div class="banner_desc">
				<h1>Ut wisi enim ad minim veniam, quis nostrud.</h1>
				<h2>Mirum est notare quam littera gothica, quam nunc putamus.</h2>
			  </div>
	        </li>
	      </ul>
	  </div>
</div>
<div class="column_center">
  <div class="container">
	<div class="search">
	  <div class="stay">Buscar productos por nombre</div>
	  <div class="stay_right">
	  	<form action="buscarProductos?${_csrf.parameterName}=${_csrf.token}" method="post" >
		  <input type="text" name="nombreProducto" >
		  <input type="submit" value="">
		 </form>
	  </div>
	  <div class="clearfix"> </div>
	</div>
    <div class="clearfix"> </div>
  </div>
</div>
<div class="main">
  <div class="content_top">
  	<div class="container">
	   <div class="col-md-3 sidebar_box">
	   	 <div class="sidebar">
			<div class="menu_box">
		    <h3 class="menu_head">Categorías</h3>
			  <ul class="menu">
				<ul class="cute">
					<li class="subitem1"><a href="listarCategorias-Artesania"><img class="arrow-img" src="static/images/f_menu.png" alt=""/>Artesanía</a></li>
					<li class="subitem1"><a href="listarCategorias-Complementos"><img class="arrow-img" src="static/images/f_menu.png" alt=""/>Complementos</a></li>
					<li class="subitem1"><a href="listarCategorias-Heraldica"><img class="arrow-img" src="static/images/f_menu.png" alt=""/>Heráldica</a></li>
					<li class="subitem1"><a href="listarCategorias-Recuerdos"><img class="arrow-img" src="static/images/f_menu.png" alt=""/>Recuerdos</a></li>
					<li class="subitem1"><a href="listarCategorias-Regalos"><img class="arrow-img" src="static/images/f_menu.png" alt=""/>Regalos</a></li>							
				</ul>				
			</ul>
		</div>			
</div>			
	   </div> 
	   <div class="col-md-9 content_right">	   
		<div class="top_grid1">
		   <c:forEach items="${listado}" var="producto">   
		   <div class="col-md-4 top_grid1-box1">
		     	<div class="grid_1"><a href="<c:url value='/verProducto-${producto.idProductos}' />">
		     	  <div class="b-link-stroke b-animate-go  thickbox">
			        <img src="${producto.url}" class="img-responsive" alt=""/> </div>
		     	  <div class="grid_2">
		     	  	Nombre:<c:out value="${producto.nombreProducto}"></c:out>
		     	  	<ul class="grid_2-bottom">
		     	  		<li class="grid_2-left"><p><c:out value="${producto.precio}"></c:out></p></li>
		     	  		<li class="grid_2-right">
		     	  			<div><a href="<c:url value='/comprarProducto-${producto.idProductos}' />">Añadir al carrito</a></div>		     	  		
		     	  		</li>
		     	  		<div class="clearfix"> </div>
		     	  	</ul>
		     	  </div>
		     	  </a>
		     	</div>
		     </div>
		     </c:forEach>
	     </div>
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
					<li><a href="politicaPrivacidad ">Política de privacidad</a></li> .
					<li><a href="terminosServicios ">Términos del servicio</a></li> .
					<li><a href="cookies ">Política de Cookies</a></li>
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