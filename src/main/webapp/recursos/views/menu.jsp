<%--
  Created by IntelliJ IDEA.
  User: blancapinot
  Date: 11-10-22
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
      integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <sec:authorize access="!isAuthenticated()">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/login">Ingresar</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
                aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    </sec:authorize>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="${pageContext.request.contextPath}/">Inicio <span
                        class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/producto/lista">Productos</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/proveedor/lista">Proveedores</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/suscriptor/lista">Suscriptores</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/suscriptor/agregar">"EcoClub
                    Newsletter"</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/contacto">Contacto</a>
            </li>
            <sec:authorize access="isAuthenticated()">
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/logout">Cerrar Sesión</a>
                </li>
            </sec:authorize>
        </ul>
    </div>
</nav>
</html>
