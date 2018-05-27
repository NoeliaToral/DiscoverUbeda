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
				<a href="index.html"><img src="static/images/logo.png" alt=""/></a>
			</div>
			<ul class="shopping_grid">
			      <a href="#"><li>Join</li></a>
			      <a href="login.html"><li>Sign In</li></a>
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
					<li class="active"><a href="index.html" data-hover="Home">Home</a></li>
					<li><a href="about.html" data-hover="About Us">About Us</a></li>
					<li><a href="careers.html" data-hover="Careers">Careers</a></li>
					<li><a href="contact.html" data-hover="Contact Us">Contact Us</a></li>
					<li><a href="404.html" data-hover="Company Profile">Company Profile</a></li>
					<li><a href="register.html" data-hover="Company Registration">Company Registration</a></li>
					<li><a href="wishlist.html" data-hover="Wish List">Wish List</a></li>
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
	  <div class="stay">Search Product</div>
	  <div class="stay_right">
		  <input type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">
		  <input type="submit" value="">
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
		    <h3 class="menu_head">Products Menu</h3>
			  <ul class="menu">
				<li><a href="listarCategorias-1"><img class="arrow-img" src="static/images/f_menu.png" alt=""/> Man</a>
					<ul class="cute">
						<li class="subitem1"><a href="listarCategorias-Regalos"><img class="arrow-img" src="static/images/f_menu.png" alt=""/>Cute Kittens </a></li>
						<li class="subitem2"><a href="listarCategorias-Complementos">Strange Stuff </a></li>
						<li class="subitem3"><a href="#">Automatic Fails </a></li>
					</ul>
				</li>
				<li class="item2"><a href="#"><img class="arrow-img" src="static/images/f_menu.png" alt=""/>Women</a>
					<ul class="cute">
						<li class="subitem1"><a href="#">Cute Kittens </a></li>
						<li class="subitem2"><a href="#">Strange Stuff </a></li>
						<li class="subitem3"><a href="#">Automatic Fails </a></li>
					</ul>
				</li>
				<li class="item3"><a href="#"><img class="arrow-img" src="static/images/f_menu.png" alt=""/>Fashion 2015</a>
					<ul class="cute">
						<li class="subitem1"><a href="#">Cute Kittens </a></li>
						<li class="subitem2"><a href="#">Strange Stuff </a></li>
						<li class="subitem3"><a href="#">Automatic Fails</a></li>
					</ul>
				</li>
				<li class="item4"><a href="#"><img class="arrow-img" src="static/images/f_menu.png" alt=""/>Kids</a>
					<ul class="cute">
						<li class="subitem1"><a href="#">Cute Kittens </a></li>
						<li class="subitem2"><a href="#">Strange Stuff </a></li>
						<li class="subitem3"><a href="#">Automatic Fails </a></li>
					</ul>
				</li>
				<li class="item5"><a href="#"><img class="arrow-img" src="static/images/f_menu.png" alt=""/>Jeans</a>
					<ul class="cute">
						<li class="subitem1"><a href="#">Cute Kittens </a></li>
						<li class="subitem2"><a href="#">Strange Stuff </a></li>
						<li class="subitem3"><a href="#">Automatic Fails </a></li>
					</ul>
				</li>
				<li class="item6"><a href="#"><img class="arrow-img" src="static/images/f_menu.png" alt=""/>Tshirt</a>
					<ul class="cute">
						<li class="subitem1"><a href="#">Cute Kittens </a></li>
						<li class="subitem2"><a href="#">Strange Stuff </a></li>
						<li class="subitem3"><a href="#">Automatic Fails </a></li>
					</ul>
				</li>
				<li class="item7"><a href="#"><img class="arrow-img" src="static/images/f_menu.png" alt=""/>Top Fashion</a>
					<ul class="cute">
						<li class="subitem1"><a href="#">Cute Kittens </a></li>
						<li class="subitem2"><a href="#">Strange Stuff </a></li>
						<li class="subitem3"><a href="#">Automatic Fails </a></li>
					</ul>
				</li>
				<li class="item8"><a href="#"><img class="arrow-img" src="static/images/f_menu.png" alt=""/>Summer Collection</a>
					<ul class="cute">
						<li class="subitem1"><a href="#">Cute Kittens </a></li>
						<li class="subitem2"><a href="#">Strange Stuff </a></li>
						<li class="subitem3"><a href="#">Automatic Fails </a></li>
					</ul>
				</li>
				<li class="item9"><a href="#"><img class="arrow-img" src="static/images/f_menu.png" alt=""/>Special Offer</a>
					<ul class="cute">
						<li class="subitem1"><a href="#">Cute Kittens </a></li>
						<li class="subitem2"><a href="#">Strange Stuff </a></li>
						<li class="subitem3"><a href="#">Automatic Fails </a></li>
					</ul>
				</li>
			</ul>
		</div>
				<!--initiate accordion-->
		<script type="text/javascript">
			$(function() {
			    var menu_ul = $('.menu > li > ul'),
			           menu_a  = $('.menu > li > a');
			    menu_ul.hide();
			    menu_a.click(function(e) {
			        e.preventDefault();
			        if(!$(this).hasClass('active')) {
			            menu_a.removeClass('active');
			            menu_ul.filter(':visible').slideUp('normal');
			            $(this).addClass('active').next().stop(true,true).slideDown('normal');
			        } else {
			            $(this).removeClass('active');
			            $(this).next().stop(true,true).slideUp('normal');
			        }
			    });
			
			});
		</script>
       </div>
		    <div class="delivery">
				<iframe src="https://www.google.com/maps/embed?pb=!4v1526501579937!6m8!1m7!1s7L2qBH17IAgQCapOS69vLw!2m2!1d38.00957030656649!2d-3.369143237755362!3f241.76736424386468!4f-8.796376115979271!5f0.7820865974627469" width="200" height="150" frameborder="0" style="border:0" allowfullscreen></iframe>

			</div>
			
			
	   </div> 
	   <div class="col-md-9 content_right">	   
		<div class="top_grid1">
		   <c:forEach items="${listado}" var="producto">
<%-- 		   <c:forEach items="${listadoCategorias}" var="categorias"> --%>
		   <div class="col-md-4 top_grid1-box1">
		     	<div class="grid_1">
		     	  <div class="b-link-stroke b-animate-go  thickbox">
			        <img src="static/images/p3.jpg" class="img-responsive" alt=""/> </div>
		     	  <div class="grid_2">
		     	  	Nombre:<c:out value="${producto.nombreProducto}"></c:out>
		     	  	<ul class="grid_2-bottom">
		     	  		<li class="grid_2-left"><p><c:out value="${producto.precio}"></c:out></p></li>
		     	  		<li class="grid_2-left"><p><c:out value="${producto.categoria.descripcionCategoria}"></c:out></p></li>
		     	  		<li class="grid_2-right">
		     	  		
		     	  			<form target="paypal" action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post" >
								<input type="hidden" name="cmd" value="_cart">
								<input type="hidden" name="business" value="ntj00003-facilitator@red.ujaen.es">
								<input type="hidden" name="lc" value="ES">
								<input type="hidden" name="item_name" value="${producto.nombreProducto}">
								<input type="hidden" name="item_number" value="${producto.idProductos}">
								<input type="hidden" name="amount" value="${producto.precio}">
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
								<input type="image" src="https://www.sandbox.paypal.com/es_ES/ES/i/btn/btn_cart_LG.gif" width="70px" border="0" name="submit" alt="PayPal, la forma rápida y segura de pagar en Internet."> 								
							</form>		     	  		
		     	  		</li>
		     	  		<div class="clearfix"> </div>
		     	  	</ul>
		     	  </div>
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
			<h3>About</h3>
			<a href="#"><img src="static/images/logo.png" alt=""/></a>
			<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,</p>
		</div>
		<div class="col-md-3 f_grid1 f_grid2">
			<h3>Síguenos en</h3>
			<ul class="social">
				<li><a href="https://b-m.facebook.com/DISCOVERUBEDA/"> <i class="fb"> </i><p class="m_3">Facebook</p><div class="clearfix"> </div></a></li>
			    <li><a href="https://twitter.com/discover_ubeda"><i class="tw"> </i><p class="m_3">Twittter</p><div class="clearfix"> </div></a></li>
				<li><a href=""><i class="google"> </i><p class="m_3">Google</p><div class="clearfix"> </div></a></li>
				<li><a href="https://www.instagram.com/discoverubeda/"><i class="instagram"> </i><p class="m_3">Instagram</p><div class="clearfix"> </div></a></li>
			</ul>
		</div>
		<div class="col-md-6 f_grid3">
			<h3>Contactanos</h3>
			<ul class="list">
				<li><p>Teléfono : +34 699598026</p></li>
				<li><p>Fax : 1.800.254.2548</p></li>
				<li><p>Email : <a href="mailto:info(at)fashionpress.com"> info(at)fashionpress.com</a></p></li>
			</ul>
			<ul class="list1">
				<li><p>Aliquam augue a bibendum ipsum diam, semper porttitor libero elit egestas gravida, ut quam, nunc taciti</p></li>
			</ul>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<div class="footer_bottom">
       	<div class="container">
       		<div class="cssmenu">
				<ul>
					<li class="active"><a href="login.html">Privacy Policy</a></li> .
					<li><a href="checkout.html">Terms of Service</a></li> .
					<li><a href="checkout.html">Creative Rights Policy</a></li> .
					<li><a href="login.html">Contact Us</a></li> .
					<li><a href="register.html">Support & FAQ</a></li>
				</ul>
			</div>
			<div class="copy">
			    <p>&copy;  2015 Template by <a href="http://w3layouts.com" target="_blank">w3layouts</a></p>
		    </div>
		    <div class="clearfix"> </div>
       	</div>
</div>
</body>
</html>		
	
<%-- 		<center> --%>
<!-- 			<table> -->
<%-- 				<c:forEach items="${listado}" var="producto"> --%>
					
<!-- 					<tr> -->

<%-- 						<td>ID:<c:out value="${producto.idProductos}"></c:out></td> --%>
<%-- 						<td>Nombre:<c:out value="${producto.nombreProducto}"></c:out></td> --%>
<%-- 						<td>Descripción:<c:out value="${producto.descripcion}"></c:out></td> --%>
<%-- 						<td>Precio:<c:out value="${producto.precio}"></c:out></td> --%>
<%-- 						<td>imagen:<img src="${producto.url}"></img></td> --%>
<%-- 						<td>material:<c:out value="${producto.material}"></c:out></td> --%>
<%-- 						<td>talla:<c:out value="${producto.talla}"></c:out></td>				  --%>
<%-- 						<td><a href="<c:url value='/comprarProducto-${producto.idProductos}' />" class="btn btn-success custom-width">edit</a></td> --%>
<%-- 						<td><form target="paypal" action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post" > --%>
<!-- 							<input type="hidden" name="cmd" value="_cart"> -->
<!-- 							<input type="hidden" name="business" value="ntj00003-facilitator@red.ujaen.es"> -->
<!-- 							<input type="hidden" name="lc" value="ES"> -->
<%-- 							<input type="hidden" name="item_name" value="${producto.nombreProducto}"> --%>
<%-- 							<input type="hidden" name="item_number" value="${producto.idProductos}"> --%>
<%-- 							<input type="hidden" name="amount" value="${producto.precio}"> --%>
<!-- 							<input type="hidden" name="currency_code" value="EUR"> -->
<!-- 							<input type="hidden" name="button_subtype" value="products"> -->
<!-- 							<input type="hidden" name="no_note" value="1"> -->
<!-- 							<input type="hidden" name="no_shipping" value="2"> -->
<!-- 							<input type="hidden" name="rm" value="1"> -->
<!-- 							<input type="hidden" name="return" value="http://localhost:8080/DiscoverUbeda/pagoCorrecto"> -->
<!-- 							<input type="hidden" name="cancel_return" value="http://localhost:8080/DiscoverUbeda/pagoNoCorrecto"> -->
<!-- 							<input type="hidden" name="tax_rate" value="21.000"> -->
<!-- 							<input type="hidden" name="shipping" value="0.50"> -->
<!-- 							<input type="hidden" name="add" value="1"> -->
<!-- 							<input type="hidden" name="bn" value="PP-ShopCartBF:btn_cart_LG.gif:NonHosted"> -->
<!-- 							<input type="image" src="https://www.sandbox.paypal.com/es_ES/ES/i/btn/btn_cart_LG.gif" width="50px" border="0" name="submit" alt="PayPal, la forma rápida y segura de pagar en Internet."> -->
<!-- 							<img alt="" border="0" src="https://www.sandbox.paypal.com/es_ES/i/scr/pixel.gif" width="1" height="1"> -->
<%-- 							</form> --%>
<!-- 						</td> -->
													
						
<!-- 					</tr> -->

<%-- 				</c:forEach> --%>
<!-- 			</table> -->
<%-- 		</center> --%>
		
		
</body>
</html>