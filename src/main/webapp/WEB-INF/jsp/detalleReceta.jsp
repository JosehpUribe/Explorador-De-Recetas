<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html>
	<head>
	    <title>Detalles de la Receta</title>
	    <link rel="stylesheet" type="text/css" href="<c:url value='/css/estilo.css'/>">
	</head>
	<body>
	    <h1>Detalles de la Receta</h1>
	    <c:if test="${not empty nombreReceta}">
	        <h2>${nombreReceta}</h2>
	        <h3>Ingredientes:</h3>
	        <ul>
	            <c:forEach var="ingrediente" items="${ingredientes}">
	                <li>${ingrediente}</li>
	            </c:forEach>
	        </ul>
	    </c:if>
	    <c:if test="${not empty mensaje}">
	        <p>${mensaje}</p>
	    </c:if>
	    <a href="/recetas">Volver a la lista de recetas</a>
	</body>
	</html>
