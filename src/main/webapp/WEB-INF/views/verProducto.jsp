<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Ver producto</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Discover Úbeda, artesanía, regalos, heraldica, complementos, recuerdos, souvenirs." />

<spring:url value="static/css/bootstrap.css" var="bootstrap" />
<link href="${bootstrap}" rel="stylesheet" />
<spring:url value="static/css/style.css" var="estiloCss" />
<link href="${estiloCss}" rel="stylesheet" />
<spring:url value="static/css/etalage.css" var="etalage" />
<link href="${etalage}" rel="stylesheet" />
<link
	href='http://fonts.googleapis.com/css?family=Lato:100,200,300,400,500,600,700,800,900'
	rel='stylesheet' type='text/css'>

<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<script type="text/javascript" src="static/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="static/js/hover_pack.js"></script>
<script src="static/js/jquery.etalage.min.js"></script>
<script>
	jQuery(document)
			.ready(
					function($) {

						$('#etalage')
								.etalage(
										{
											thumb_image_width : 300,
											thumb_image_height : 400,
											source_image_width : 900,
											source_image_height : 1200,
											show_hint : true,
											click_callback : function(
													image_anchor, instance_id) {
												alert('Callback example:\nYou clicked on an image with the anchor: "'
														+ image_anchor
														+ '"\n(in Etalage instance: "'
														+ instance_id + '")');
											}
										});

					});
</script>

<script src="static/js/easyResponsiveTabs.js" type="text/javascript"></script>
		    <script type="text/javascript">
			    $(document).ready(function () {
			        $('#horizontalTab').easyResponsiveTabs({
			            type: 'default', //Types: default, vertical, accordion           
			            width: 'auto', //auto or any width like 600px
			            fit: true   // 100% fit in a container
			        });
			    });
            </script>	
<!--initiate accordion-->
	<script type="text/javascript">
		$(function() {
			var menu_ul = $('.menu > li > ul'), menu_a = $('.menu > li > a');
			menu_ul.hide();
			menu_a.click(function(e) {
				e.preventDefault();
				if (!$(this).hasClass('active')) {
					menu_a.removeClass('active');
					menu_ul.filter(':visible').slideUp('normal');
					$(this).addClass('active').next().stop(true, true)
							.slideDown('normal');
				} else {
					$(this).removeClass('active');
					$(this).next().stop(true, true).slideUp('normal');
				}
			});

		});
	</script>
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
					<li class="active"><a href="listarProductos" data-hover="Home">Inicio</a></li>
					<li><a href="https://discover-ubeda-visitas-guiadas9.webnode.es/" data-hover="Visitas guiadas">Visitas guiadas</a></li>
					<li><a href="contacto" data-hover="Contactanos">Contáctanos</a></li>
					<li><a href="construccion" data-hover="Leyendas">Leyendas</a></li>
					<li><a href="construccion" data-hover="Gastronomia">Gastronomía</a></li>
					<sec:authorize access="hasRole('ADMIN')">
						<li><a href="insertarProductos" data-hover="insertarProductos">Insertar productos</a></li>
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
	<div class="col-md-9 single_right">
		<div class="single_top">
			<div class="single_grid">
				<div class="grid images_3_of_2">
					<ul id="etalage">
						<li><a href="optionallink.html"> <img
								class="etalage_thumb_image" src="<c:out value="${listado.url1}"></c:out>"
								class="img-responsive" /> <img class="etalage_source_image"
								src="<c:out value="${listado.url1}"></c:out>" class="img-responsive" title="" />
						</a></li>
						<li><img class="etalage_thumb_image"
							src="<c:out value="${listado.url2}"></c:out>" class="img-responsive" /> <img
							class="etalage_source_image" src="<c:out value="${listado.url2}"></c:out>"
							class="img-responsive" title="" /></li>
						<li><img class="etalage_thumb_image"
							src="<c:out value="${listado.url3}"></c:out>" class="img-responsive" /> <img
							class="etalage_source_image" src="<c:out value="${listado.url3}"></c:out>"
							class="img-responsive" /></li>
						<li><img class="etalage_thumb_image"
							src="<c:out value="${listado.url4}"></c:out>" class="img-responsive" /> <img
							class="etalage_source_image" src="<c:out value="${listado.url4}"></c:out>"
							class="img-responsive" /></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="desc1 span_3_of_2">
					<h1><c:out value="${listado.nombreProducto}"></c:out></h1>
					<p class="availability">
						Disponible: <span class="color">En stock</span>
					</p>
					<div class="price_single">
						<span class="actual"><c:out value="${listado.precio}"></c:out></span>
					</div>
					<h2 class="quick">Descripción:</h2>
					<p class="quick_desc"><c:out value="${listado.descripcionCorta}"></c:out></p>
					<div class="wish-list">
						<ul>
							<li class="wish"><a href="#">Add to Wishlist</a></li>
							<li class="compare"><a href="#">Add to Compare</a></li>
						</ul>
					</div>
										
					
						
						<form target="paypal" action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post" >
								<input type="hidden" name="cmd" value="_cart">
								<input type="hidden" name="business" value="ntj00003-facilitator@red.ujaen.es">
								<input type="hidden" name="lc" value="ES">
								<input type="hidden" name="item_name" value="${listado.nombreProducto}">
								<input type="hidden" name="item_number" value="${listado.idProductos}">
								<input type="hidden" name="amount" value="${listado.precio}">
								<input type="hidden" name="currency_code" value="EUR">
								<input type="hidden" name="button_subtype" value="products">
								<input type="hidden" name="no_note" value="1">
								<input type="hidden" name="no_shipping" value="2">
								<input type="hidden" name="rm" value="1">
								<input type="hidden" name="return" value="http://localhost:8080/DiscoverUbeda/pagoCorrecto">
								<input type="hidden" name="cancel_return" value="http://localhost:8080/DiscoverUbeda/pagoNoCorrecto">
								<input type="hidden" name="tax_rate" value="21.000">
								<input type="hidden" name="shipping" value="0.50">
								<input type="hidden" name="add" value="1">
								<input type="hidden" name="bn" value="PP-ShopCartBF:btn_cart_LG.gif:NonHosted">
								<input type="image" src="https://www.sandbox.paypal.com/es_ES/ES/i/btn/btn_cart_LG.gif" width="30%" border="0" name="submit" alt="PayPal, la forma rápida y segura de pagar en Internet."> 								
							</form>	
						
						
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="sap_tabs">
			<div id="horizontalTab"
				style="display: block; width: 100%; margin: 0px;">
				<ul class="resp-tabs-list">
					<li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>Descripción del producto</span></li>
					<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Información adiccional</span></li>
					<li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>Comentarios</span></li>
					<div class="clear"></div>
				</ul>
				<div class="resp-tabs-container">
					<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
						<div class="facts">
							<ul class="tab_list">
								<li><c:out value="${listado.descripcionLarga}"></c:out></li>
							</ul>
						</div>
					</div>
					<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
						<div class="facts">
							<ul class="tab_list">
								<li>Material: <c:out value="${listado.material}"></c:out></li>
								<li>Talla: <c:out value="${listado.talla}"></c:out></li>
							</ul>
						</div>
					</div>
					<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
						<ul class="tab_list">
							
						</ul>
					</div>
				</div>
			</div>
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
