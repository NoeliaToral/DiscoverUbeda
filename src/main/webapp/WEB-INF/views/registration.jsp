<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<html>
<head>
<title>Login page</title>
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
</head>

<body>
 	<div class="generic-container">
		<%@include file="authheader.jsp" %>
<div class="container">
  <h2 class="tituloH2">Rellene los siguientes datos</h2>
  <form:form method="POST" modelAttribute="user" class="form-horizontal">
			<form:input type="hidden" path="id" id="id"/>
    <div class="form-group">
      <label class="control-label col-sm-4" for="firstName">Primer apellido:</label>
      <div class="col-sm-4">
			<form:input type="text" path="firstName" id="firstName" placeholder="Primer apellido" class="form-control input-sm"/>      
			<div class="has-error">
				<form:errors path="firstName" class="help-inline"/>
			</div>
		</div>		
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="lastName">Segundo apellido:</label>
      <div class="col-sm-4">          
			<form:input type="text" path="lastName" id="lastName" placeholder="Segundo apellido" class="form-control input-sm" />
      		<div class="has-error">
				<form:errors path="lastName" class="help-inline"/>
			</div>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="ssoId">SSO ID:</label>
      <div class="col-sm-4">          
        <c:choose>
				<c:when test="${edit}">
					<form:input type="text" path="ssoId" id="ssoId" placeholder="SSO ID" class="form-control input-sm" disabled="true"/>
				</c:when>
			<c:otherwise>
				<form:input type="text" path="ssoId" id="ssoId" placeholder="SSO ID" class="form-control input-sm" />
				<div class="has-error">
					<form:errors path="ssoId" class="help-inline"/>
				</div>
			</c:otherwise>
		</c:choose>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="password">Contraseña:</label>
     	 <div class="col-sm-4">          
			<form:input type="password" path="password" id="password" placeholder="Contraseña" class="form-control input-sm" />
			<div class="has-error">
				<form:errors path="password" class="help-inline"/>
			</div>
		</div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-4" for="email">Correo electrónico:</label>
      <div class="col-sm-4">     
      	<form:input type="text" path="email" id="email" placeholder="Correo electrónico" class="form-control input-sm" />
		<div class="has-error">
			<form:errors path="email" class="help-inline"/>
		</div>     
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-4" for="userProfiles">Roles:</label>
      <div class="col-sm-4">          
		<form:select path="userProfiles" items="${roles}" multiple="true" itemValue="id" itemLabel="type" class="form-control input-sm" />
			<div class="has-error">
				<form:errors path="userProfiles" class="help-inline"/>
			</div>
      </div>
    </div>
    
   
    <div class="form-group">        
      <div class="col-sm-offset-7 col-sm-10">
        <c:choose>
			<c:when test="${edit}">
				<input type="submit" value="Update" class="btn btn-default"/> or <a href="<c:url value='/list' />">Cancel</a>
			</c:when>
			<c:otherwise>
				<input type="submit" value="Register" class="btn btn-default"/> or <a href="<c:url value='/list' />">Cancel</a>
			</c:otherwise>
		</c:choose>
      </div>
    </div>
  </form:form>
</div>

<!-- 		<div class="well lead">User Registration Form</div> -->
<%-- 	 	<form:form method="POST" modelAttribute="user" class="form-horizontal"> --%>
<%-- 			<form:input type="hidden" path="id" id="id"/> --%>
			
<!-- 			<div class="row"> -->
<!-- 				<div class="form-group col-md-12"> -->
<!-- 					<label class="col-md-3 control-lable" for="firstName">First Name</label> -->
<!-- 					<div class="col-md-7"> -->
<%-- 						<form:input type="text" path="firstName" id="firstName" class="form-control input-sm"/> --%>
<!-- 						<div class="has-error"> -->
<%-- 							<form:errors path="firstName" class="help-inline"/> --%>
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
	
<!-- 			<div class="row"> -->
<!-- 				<div class="form-group col-md-12"> -->
<!-- 					<label class="col-md-3 control-lable" for="lastName">Last Name</label> -->
<!-- 					<div class="col-md-7"> -->
<%-- 						<form:input type="text" path="lastName" id="lastName" class="form-control input-sm" /> --%>
<!-- 						<div class="has-error"> -->
<%-- 							<form:errors path="lastName" class="help-inline"/> --%>
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
	
<!-- 			<div class="row"> -->
<!-- 				<div class="form-group col-md-12"> -->
<!-- 					<label class="col-md-3 control-lable" for="ssoId">SSO ID</label> -->
<!-- 					<div class="col-md-7"> -->
<%-- 						<c:choose> --%>
<%-- 							<c:when test="${edit}"> --%>
<%-- 								<form:input type="text" path="ssoId" id="ssoId" class="form-control input-sm" disabled="true"/> --%>
<%-- 							</c:when> --%>
<%-- 							<c:otherwise> --%>
<%-- 								<form:input type="text" path="ssoId" id="ssoId" class="form-control input-sm" /> --%>
<!-- 								<div class="has-error"> -->
<%-- 									<form:errors path="ssoId" class="help-inline"/> --%>
<!-- 								</div> -->
<%-- 							</c:otherwise> --%>
<%-- 						</c:choose> --%>
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
	
<!-- 			<div class="row"> -->
<!-- 				<div class="form-group col-md-12"> -->
<!-- 					<label class="col-md-3 control-lable" for="password">Password</label> -->
<!-- 					<div class="col-md-7"> -->
<%-- 						<form:input type="password" path="password" id="password" class="form-control input-sm" /> --%>
<!-- 						<div class="has-error"> -->
<%-- 							<form:errors path="password" class="help-inline"/> --%>
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
	
<!-- 			<div class="row"> -->
<!-- 				<div class="form-group col-md-12"> -->
<!-- 					<label class="col-md-3 control-lable" for="email">Email</label> -->
<!-- 					<div class="col-md-7"> -->
<%-- 						<form:input type="text" path="email" id="email" class="form-control input-sm" /> --%>
<!-- 						<div class="has-error"> -->
<%-- 							<form:errors path="email" class="help-inline"/> --%>
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
	
<!-- 			<div class="row"> -->
<!-- 				<div class="form-group col-md-12"> -->
<!-- 					<label class="col-md-3 control-lable" for="userProfiles">Roles</label> -->
<!-- 					<div class="col-md-7"> -->
<%-- 						<form:select path="userProfiles" items="${roles}" multiple="true" itemValue="id" itemLabel="type" class="form-control input-sm" /> --%>
<!-- 						<div class="has-error"> -->
<%-- 							<form:errors path="userProfiles" class="help-inline"/> --%>
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
	
<!-- 			<div class="row"> -->
<!-- 				<div class="form-actions floatRight"> -->
<%-- 					<c:choose> --%>
<%-- 						<c:when test="${edit}"> --%>
<%-- 							<input type="submit" value="Update" class="btn btn-primary btn-sm"/> or <a href="<c:url value='/list' />">Cancel</a> --%>
<%-- 						</c:when> --%>
<%-- 						<c:otherwise> --%>
<%-- 							<input type="submit" value="Register" class="btn btn-primary btn-sm"/> or <a href="<c:url value='/list' />">Cancel</a> --%>
<%-- 						</c:otherwise> --%>
<%-- 					</c:choose> --%>
<!-- 				</div> -->
<!-- 			</div> -->
<%-- 		</form:form> --%>
<!-- 	</div> -->
</body>
</html>