<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>



<html>
    <head>
        <meta charset="UTF-8">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>LUQ</title>


           <!-- BOOTSTRAP -->
           <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">

           <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js">


           <!--LLAMA FONTAWESOME-->
                   <script src="https://kit.fontawesome.com/81a2ed02b0.js" crossorigin="anonymous"></script>
                   <script src="https://kit.fontawesome.com/81a2ed02b0.js" crossorigin="anonymous"></script>

     <!--   <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/estilo.css">  -->

     <!--LLAMA CSS-->
          <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/style.css">
    </head>

    <body>



<!-- ADMINISTRADOR -->
<sec:authorize access="hasAnyAuthority('ADMIN')">
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">LUQ</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#" id="neumaticos">NEUMATICOS</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#" id="baterias">BATERIAS</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#" id="lubricantes">LUBRICANTES</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            STOCK
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/producto">VER PRODUCTOS</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/producto/nuevoProducto/">AGREGAR PRODUCTO</a></li>
           </ul>
        </li>
        <li>
        <li class="nav-item dropdown">
           <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown"
           role="button" data-bs-toggle="dropdown" aria-expanded="false">USUARIOS</a>
                <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/usuario">VER USUARIO</a></li>
                    <li><hr class="dropdown-divider"></li>
                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/rol_usuario">VER ROL_USUARIO</a></li>
                    <li><hr class="dropdown-divider"></li>
                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/rol">VER ROLES</a></li>
                </ul>
        </li>
           <a class="dropdown-item ps-3" href="${pageContext.request.contextPath}/carrito2"><i class="fas fa-cart-plus mb-3" (<label style="color: darkorange">${cont}</label></i>CARRO COMPRRA</a>
        </li>
          <li><a class="dropdown-item ps-4" href="${pageContext.request.contextPath}/logout/"><i class="fas fa-door-open"></i></a></li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success disabled" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
</sec:authorize>


<!-- USUARIO -->
<sec:authorize access="hasAnyAuthority('USER')">
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">LUQ</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#" id="neumaticos">NEUMATICOS</a>
        </li>
        <li class="nav-item">
                  <a class="nav-link" href="#" id="baterias">BATERIAS</a>
                </li>
                <li class="nav-item">
                          <a class="nav-link" href="#" id="lubricantes">LUBRICANTES</a>
                        </li>
        <li class="nav-item dropdown">
          <li><a class="dropdown-item ps-4 disabled" href="${pageContext.request.contextPath}/login/">VER MIS DATOS</a></li>
        </li>
        <li>
           <a class="dropdown-item ps-3" href="${pageContext.request.contextPath}/carrito2"><i class="fas fa-cart-plus mb-3" (<label style="color: darkorange">${cont}</label></i>CARRO COMPRRA</a>
        </li>
          <li><a class="dropdown-item ps-4" href="${pageContext.request.contextPath}/logout/"><i class="fas fa-door-open"></i></a></li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success disabled" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
</sec:authorize>


<!-- ANONIMO -->
<sec:authorize access="isAnonymous()">
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">LUQ</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#" id="neumaticos">NEUMATICOS</a>
        </li>
        <li class="nav-item">
                  <a class="nav-link" href="#" id="baterias">BATERIAS</a>
                </li>
                <li class="nav-item">
                          <a class="nav-link" href="#" id="lubricantes">LUBRICANTES</a>
                        </li>
        <li class="nav-item dropdown">
          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
          </ul>
        </li>
        <li>
           <a class="dropdown-item ps-3" href="${pageContext.request.contextPath}/carrito2"><i class="fas fa-cart-plus mb-3" (<label style="color: darkorange">${cont}</label></i>CARRO COMPRRA</a>
        </li>
          <li><a class="dropdown-item ps-4" href="${pageContext.request.contextPath}/login/"><i class="fas fa-user"></i></a></li>
        </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success disabled" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
</sec:authorize>






    <!-- PARA VER MENU NAVEGACION -->
      <!--
      <script
    		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
    		integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
    		crossorigin="anonymous"></script>
    	<script
    		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js"
    		integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy"
    		crossorigin="anonymous"></script>
-->

  </body>
</html>
