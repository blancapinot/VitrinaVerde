<%--
  Created by IntelliJ IDEA.
  User: blancapinot
  Date: 17-11-22
  Time: 17:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div class="container">
    <%@include file="../menu.jsp" %>
    <spring:url value="/contacto/enviar" var="enviarURL" htmlEscape="true"/>
    <form:form modelAttribute="contactoForm" method="post" action="${enviarURL}" cssClass="form">
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Nombres</label>
            <div class="col-sm-9">
                <form:input path="nombres" class="form-control" id="nombres" placeholder="Nombre completo"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Apellidos</label>
            <div class="col-sm-9">
                <form:input path="apellidos" type="text" class="form-control" placeholder="Apellidos" id="apellidos"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Rut</label>
            <div class="col-sm-9">
                <form:input path="rut" type="text" class="form-control" placeholder="Rut" id="rut"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Telefono</label>
            <div class="col-sm-9">
                <form:input path="telefonos" id="telefonos" type="text" class="form-control" placeholder="Telefono"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Correo electronico</label>
            <div class="col-sm-9">
                <form:input path="email" id="email" type="text" class="form-control" placeholder="Correo electronico"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Comentarios</label>
            <div class="col-sm-9">
                <form:textarea path="comentarios" id="comentarios" class="form-control" placeholder="Comentarios"/>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Enviar</button>
    </form:form>
</div>
</body>
</html>
