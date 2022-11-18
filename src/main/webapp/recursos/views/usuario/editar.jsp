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
    <title>Usuario</title>
</head>
<body>
<div class="container">
    <%@include file="../menu.jsp" %>
    <spring:url value="/usuario/guardar" var="enviarURL" htmlEscape="true"/>
    <form:form modelAttribute="usuarioForm" method="post" action="${enviarURL}" cssClass="form">
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Email</label>
            <div class="col-sm-9">
                <form:input path="username" class="form-control" id="email" placeholder="Email"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Contraseña</label>
            <div class="col-sm-9">
                <form:input path="password" type="password" class="form-control" placeholder="Contraseña"
                            id="password"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Nombre completo</label>
            <div class="col-sm-9">
                <form:input path="nombreCompleto" type="text" class="form-control" placeholder="Nombre"
                            id="nombreCompleto"/>
            </div>
        </div>
        <form:hidden path="rol"/>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Rut</label>
            <div class="col-sm-9">
                <form:input path="rut" id="rut" type="text" class="form-control"
                            placeholder="Rut"/>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Guardar</button>
    </form:form>
</div>
</body>
</html>
