<%--
  Created by IntelliJ IDEA.
  User: blancapinot
  Date: 18-11-22
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
          integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <title>Usuarios</title>
</head>
<body>
<div class="container">
    <%@include file="../menu.jsp" %>
    <table class="table">
        <thead class="table-info">
        <tr>
            <th>ID</th>
            <th>Email</th>
            <th>newsletterStatus</th>
            <th>Nombre</th>
            <th colspan="2">Opciones</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="suscriptores" items="${suscriptores}">
            <tr>
                <td>${suscriptores.id}</td>
                <td>${suscriptores.email}</td>
                <td>${suscriptores.newsletterStatus}</td>
                <td>${suscriptores.nombre}</td>
                <td>
                    <spring:url value="/suscriptor/editar?id=${suscriptores.id}" var="editarURL"/>
                    <a class="btn btn-info" href="${editarURL}" role="button">Editar</a>
                </td>
                <td>
                    <spring:url value="/suscriptor/eliminar/${suscriptores.id}" var="eliminarURL"/>
                    <a class="btn btn-info" href="${eliminarURL}" role="button">Eliminar</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <spring:url value="/suscriptor/agregar" var="agregarURL"/>
    <a class="btn btn-info" href="${agregarURL}" role="button">Agregar Suscriptor</a>
</div>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"
        integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+"
        crossorigin="anonymous"></script>
</body>
</html>
