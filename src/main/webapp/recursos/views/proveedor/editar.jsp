<%--
  Created by IntelliJ IDEA.
  User: blancapinot
  Date: 17-11-22
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Proveedores</title>
</head>
<body>
<div class="container">
    <%@include file="../menu.jsp" %>
    <spring:url value="/proveedor/guardar" var="enviarURL" htmlEscape="true"/>
    <form:form modelAttribute="proveedorForm" method="post" action="${enviarURL}" cssClass="form">
        <form:hidden path="id"/>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Email</label>
            <div class="col-sm-9">
                <form:input path="email" class="form-control" id="email" placeholder="Email"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Nombre</label>
            <div class="col-sm-9">
                <form:input path="nombre" type="text" class="form-control" placeholder="Nombre"
                            id="nombre"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Rut</label>
            <div class="col-sm-9">
                <form:input path="rut" type="number" class="form-control" placeholder="Rut" id="rut"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Website</label>
            <div class="col-sm-9">
                <form:input path="website" id="website" type="text" class="form-control"
                            placeholder="Website"/>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Guardar</button>
    </form:form>
</div>
</body>
</html>
