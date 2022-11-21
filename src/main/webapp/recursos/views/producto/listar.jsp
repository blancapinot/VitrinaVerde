<%--
  Created by IntelliJ IDEA.
  User: blancapinot
  Date: 17-11-22
  Time: 07:48
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
          integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <title>Registro Productos</title>
</head>
<body>
<div class="container">
    <%@include file="../menu.jsp" %>
    <h1>Los mejores productos seleccionado para ti</h1>
    <sec:authorize access="hasAnyAuthority('ADMIN')">
    <div class="row">
        <a class="nav-link" href="${pageContext.request.contextPath}/producto/agregar">Agregar</a>
    </div>
    </sec:authorize>
    <c:forEach items="${productos}" var="productos">
    <div class="row">
        <div class="col-sm-4">
            <img src="${productos.linkImagen}"
                 class="img-fluid" alt="Responsive image">
        </div>
        <div class="col-sm-8">
            <h3><c:out value="${productos.nombre}"/></h3>
            <p><c:out value="${productos.descripcion}"/></p>
            <h4>$ <c:out value="${productos.precio}"/></h4>
            <sec:authorize access="isAuthenticated()">
            <div class="row">
                <a class="nav-link"
                   href="${pageContext.request.contextPath}/producto/editar?id=${productos.id}">Editar</a>
                <a class="nav-link"
                   href="${pageContext.request.contextPath}/producto/eliminar/${productos.id}">Eliminar</a>
            </div>
            </sec:authorize>
        </div>
    </div>
    <hr>
    </c:forEach>
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

