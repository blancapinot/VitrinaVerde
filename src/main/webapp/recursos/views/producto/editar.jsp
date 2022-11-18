<%--
  Created by IntelliJ IDEA.
  User: blancapinot
  Date: 17-11-22
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Producto</title>
</head>
<body>
<div class="container">
    <%@include file="../menu.jsp" %>
    <spring:url value="/producto/guardar" var="enviarURL" htmlEscape="true"/>
    <form:form modelAttribute="productoForm" method="post" action="${enviarURL}" cssClass="form">
        <form:hidden path="id"/>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Nombre</label>
            <div class="col-sm-9">
                <form:input path="nombre" class="form-control" id="nombre" placeholder="Nombre"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Descripcion</label>
            <div class="col-sm-9">
                <form:input path="descripcion" type="text" class="form-control" placeholder="descripcion"
                            id="descripcion"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Precio</label>
            <div class="col-sm-9">
                <form:input path="precio" type="number" class="form-control" placeholder="Precio" id="precio"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">ID Proveedor</label>
            <div class="col-sm-9">
                <form:input path="idProveedor" id="idProveedor" type="text" class="form-control"
                            placeholder="ID del proveedor"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Link imagen</label>
            <div class="col-sm-9">
                <form:input path="linkImagen" id="linkImagen" type="text" class="form-control"
                            placeholder="Url de la imagen"/>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Guardar</button>
    </form:form>
</div>
</body>
</html>
