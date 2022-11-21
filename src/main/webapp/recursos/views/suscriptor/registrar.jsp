<%--
  Created by IntelliJ IDEA.
  User: blancapinot
  Date: 17-11-22
  Time: 21:53
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
    <h1>Registro newsletter</h1>
    <p>Suscríbete para recibir todas nuestras novedades desde el 21 de noviembre del 2022 </p>
    <spring:url value="/suscriptor/guardar" var="enviarURL" htmlEscape="true"/>
    <form:form modelAttribute="suscriptorForm" method="post" action="${enviarURL}" cssClass="form">
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Nombre</label>
            <div class="col-sm-9">
                <form:input path="nombre" type="text" class="form-control" placeholder="Nombre completo" id="nombre"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Correo electronico</label>
            <div class="col-sm-9">
                <form:input path="email" class="form-control" id="email" placeholder="Correo electronico"/>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Suscribirme</button>
    </form:form>
</div>

</body>
</html>
