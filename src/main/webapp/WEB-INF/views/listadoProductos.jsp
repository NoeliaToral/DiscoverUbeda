<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<spring:url value="static/css/style.css" var="estilo" />
<link href="${estilo}" rel="stylesheet" />

<spring:url value="static/css/boostrap/bootstrap.css" var="estilo2" />
<link href="${estilo2}" rel="stylesheet" />

<link rel="stylesheet"
	href="https://bootswatch.com/united/bootstrap.min.css">
<script src="static/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado</title>
</head>
<body>



	
		<center>
			<table>
				<c:forEach items="${listado}" var="persona">
					
					<tr>

						<td>ID:<c:out value="${persona.idProductos}"></c:out></td>
						<td>Nombre:<c:out value="${persona.nombreProducto}"></c:out></td>
						<td>Descripción:<c:out value="${persona.descripcion}"></c:out></td>
						<td>Precio:<c:out value="${persona.precio}"></c:out></td>
						<td>imagen:<img src="${persona.url}"></img></td>
						<td>material:<c:out value="${persona.material}"></c:out></td>
						<td>talla:<c:out value="${persona.talla}"></c:out></td>				 
						<td><a href="<c:url value='/comprarProducto-${persona.idProductos}' />" class="btn btn-success custom-width">edit</a></td>
							
						
					</tr>

				</c:forEach>
			</table>
		</center>




</body>
</html>