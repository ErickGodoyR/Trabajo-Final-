<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>ROL-USUARIO</title>

<!-- BOOTSTRAP -->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js">

    <!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

    <!--FONT AWESOME-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

    <!--FONT OSWALD-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;500&display=swap" rel="stylesheet">

    <!--JQUERY-->
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>

    <!--JQUERY (usar toggle)-->
    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

    <!--LLAMAR CSS-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/css/estilos.css">

<%@include file="head.jsp"%>

</head>

<body>

<h2>Editar ${usuario.getUsername()}</h2>

    <!--
    <a href="${pageContext.request.contextPath}/rol_usuario/editRol_usuario/"
                			class="btn btn-primary mb-3">Agregar Rol Usuario</a>
    -->


<div class="container-fluid">
    <main>
      <form class="form" name="usuario" action="${pageContext.request.contextPath}/usuario/edit/" method="post">
        <input type="hidden" name="id" id="id" value="${usuario.getId()}">

			<div class="row mt-4">
    			<div class="col align-self-start col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">
                   <label for="username" class="form-label">Username</label>
                   <input type="text" class="form-control" id="username" name="username" placeholder="nombre de usuario" value="${usuario.getUsername()}">
    			</div>
    			<div class="col align-self-center col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">
                  <label for="nombre" class="form-label">Nombre</label>
                  <input type="text" class="form-control" id="nombre" name="nombre" placeholder="nombre" value="${usuario.getNombre()}">
    			</div>
   			 	<div class="col align-self-end col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">
                   <label for="email" class="form-label">Email</label>
                   <input type="email" class="form-control" id="email" name="email" placeholder="email" value="${usuario.getEmail()}">
    			</div>
  			</div>

  		    <div class="row mt-4">
  				<div class="col align-self-start col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">
                     <label for="password" class="form-label">Password</label>
                     <input type="text" class="form-control" id="password" name="password" placeholder="password" value="${usuario.getPassword()}">
    			</div>
    			<div class="col align-self-center">

    			</div>
    			<div class="col align-self-end">

    			</div>
			</div>

			<div class="row mt-4">
  				<div class="col align-self-start">

    			</div>
    			<div class="col align-self-center">
                    <button class="btn btn-primary" type="submit" id="guardar">Guardar</button>
                    <button type="reset" class="btn btn-secondary" id="limpiar">Limpiar</button>
    			</div>
    			<div class="col align-self-end">

    			</div>
			</div>

		</form>
      </main>
</div>

<!-- MENU NAVEGACION -->
<script
src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
crossorigin="anonymous">
</script>

<script
src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js"
integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy"
crossorigin="anonymous">
</script>


<script src="${pageContext.request.contextPath}/res/js/eventos.js"></script>
<script src="${pageContext.request.contextPath}/res/js/comprar_neumaticos.js"></script>
<script src="${pageContext.request.contextPath}/res/js/comprar_baterias.js"></script>
<script src="${pageContext.request.contextPath}/res/js/comprar_lubricantes.js"></script>
<script src="${pageContext.request.contextPath}/res/js/efecto.js"></script>
<script src="${pageContext.request.contextPath}/res/js/op_nav.js"></script>

    </body>
</html>


