<%--
  Created by IntelliJ IDEA.
  User: blancapinot
  Date: 17-11-22
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
          integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <title>Registro Proveedores</title>
</head>
<body>
<div class="container">
    <%@include file="../menu.jsp" %>
    <h1>Proveedores Vitrina Verde</h1>
    <sec:authorize access="hasAnyAuthority('ADMIN','PROVEEDOR')">
    <div class="row">
        <a class="nav-link" href="${pageContext.request.contextPath}/proveedor/agregar">Agregar</a>
    </div>
    </sec:authorize>
    <c:forEach items="${proveedores}" var="proveedores">
    <div class="row">
        <div class="col-sm-8">
            <h3>Email Proveedor: <c:out value="${proveedores.email}"/></h3>
            <h3>Nombre Empresa: <c:out value="${proveedores.nombre}"/></h3>
            <h3>WEBSite: <c:out value="${proveedores.website}"/></h3>
            <h3>RUT Proveedor: <c:out value="${proveedores.rut}"/></h3>
            <h3>ID de Registro: <c:out value="${proveedores.id}"/></h3>
            <sec:authorize access="isAuthenticated()">
            <div class="row">
                <a class="nav-link" href="${pageContext.request.contextPath}/proveedor/editar?id=${proveedores.id}">Editar</a>
                <a class="nav-link" href="${pageContext.request.contextPath}/proveedor/eliminar/${proveedores.id}">Eliminar</a>
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
</body>
</html>
