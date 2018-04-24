<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insertar productos</title>
</head>
<body>
<form:form method="POST" modelAttribute="productos" action="insertarProductos?${_csrf.parameterName}=${_csrf.token}" enctype="multipart/form-data">
	

		<form:input type="text" path="nombreProducto" />
		<form:input type="text" path="descripcion" />
		<form:input type="numeric" path="precio" />
		<form:input type="text" path="url" />
		<form:input type="text" path="material" />
		<form:input type="text" path="talla" />
			
   
		<input type="file" name="file" />
		
	
	
	<input type="submit">
	</form:form>
</body>
</html>