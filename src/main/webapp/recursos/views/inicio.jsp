<%--
  Created by IntelliJ IDEA.
  User: valeria
  Date: 08-10-22
  Time: 11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <title>¡Bienvenidos!</title>
</head>
<body>
<div class="container">
    <%@include file="menu.jsp"%>
    <div class="card-deck">
        <div class="card">
            <img src="recursos/images/kids-having-their-hands-dirty-after-planting.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Quiénes Somos?</h5>
                <p class="card-text">Somos una empresa conformada por un equipo de espíritu joven, con convicciones relacionadas al cuidado del ecosistema, de mentalidad ecológica y de innovación consciente. Nos preocupamos de mantener una vida saludable, orientados en la búsqueda del uso eficiente de los recursos.Es por elo que promocinamos a través de esta vitrina, productos e ideas con Conciencia Ecológica. </p>
            </div>
            <div class="card-footer">
                <small class="text-muted">Last updated 3 mins ago</small>
            </div>
        </div>
        <div class="card">
            <img src="recursos/images/planeta verde.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Nuestra Visión</h5>
                <p class="card-text">La visión de Vitrina Verde es ser una empresa líder en ofrecer las alternativas de solución y satisfacción a nuestros clientes a través de brindarles la mejor propuesta de valor basada en el cuidado al medio ambiente, mejoramiento continuo e innovación.</p>
            </div>
            <div class="card-footer">
                <small class="text-muted">Last updated 3 mins ago</small>
            </div>
        </div>
        <div class="card">
            <img src="https://ecoinventos.com/wp-content/uploads/2016/02/Bike-Washing-Machine1.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Producto destacado</h5>
                <p class="card-text">Estudiantes chinos de la Dalian Nationalities University han desarrollado un prototipo de bicicleta estática que nos permitirá hacer dos cosas al mismo tiempo: Lavar nuestra ropa y ponernos en forma. La bicicleta incorpora un tambor de lavado dentro en su rueda delantera. Cuando pedaleas, el tambor gira al igual que lo hace en una lavadora convencional. El tiempo medio de un lavado es de 20 minutos.</p>
            </div>
            <div class="card-footer">
                <small class="text-muted">Last updated 3 mins ago</small>
            </div>
        </div>
    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
</body>
</html>
