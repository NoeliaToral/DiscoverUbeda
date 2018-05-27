<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Carrito</title>
</head>
<body>
	<div class="authbar">
		<span>Dear <strong>${loggedinuser}</strong>, Welcome to
			CrazyUsers.
		</span> <span class="floatRight"><a href="<c:url value="/logout" />">Logout</a></span>
	</div>
	<div>
		<center>
			<table>
				<c:forEach items="${listadoCarrito}" var="carrito">
					<c:forEach items="${productosListar}" var="productos">
						<tr>
							<td><c:out value="${carrito.id_venta}"></c:out></td>
							<td><c:out value="${carrito.unidades}"></c:out></td>
							<td><c:out value="${productos.nombreProducto}"></c:out></td>
							<td><c:out value="${productos.descripcion}"></c:out></td>
							<td><c:out value="${productos.precio}"></c:out></td>
						</tr>
					</c:forEach>
				</c:forEach>
			</table>
			
		</center>
	</div>





</body>
</html>