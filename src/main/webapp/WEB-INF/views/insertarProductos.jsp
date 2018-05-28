<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insertar productos</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Fashionpress Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="static/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="static/css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="static/js/jquery-1.11.1.min.js"></script>
<script src="static/js/responsiveslides.min.js"></script>
</head>
<body>
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
      <label class="control-label col-sm-4" for="descripcion">Descripción:</label>
      <div class="col-sm-4">          
			<form:input type="text" class="form-control" placeholder="Descripción" path="descripcion" />
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
<%-- <form:form method="POST" modelAttribute="productos" action="insertarProductos?${_csrf.parameterName}=${_csrf.token}" enctype="multipart/form-data"> --%>
<%-- 		<form:input type="text" path="nombreProducto" /> --%>
<%-- 		<form:input type="text" path="descripcion" /> --%>
<%-- 		<form:input type="numeric" path="precio" /> --%>
<%-- 		<form:input type="text" path="url" /> --%>
<%-- 		<form:input type="text" path="material" /> --%>
<%-- 		<form:input type="text" path="talla" />    --%>
<!-- 		<input type="file" name="file" /> -->
<!-- 	<input type="submit"> -->
<%-- 	</form:form> --%>
</body>
</html>