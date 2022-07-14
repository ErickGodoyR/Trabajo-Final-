<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <!-- Cabecera -->
    <head>
        <!-- Cofigicación de caracteres -->
          <meta charset="UTF-8">

        <!-- Configuración de ancho y escala inicial para los dispositivos -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Título de la página -->
        <title>EDITAR PRODUCTO 2</title>

        <!-- Hojas de Estilo -->
        <!--<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/estilo.css">-->

<!--LLAMAR A BOOTSTRAP-->
   <!--  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"-->
   <!--  rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
     -->

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



          <%@include file="index.jsp"%>



    </head>

    <body>

    <h2>CONFIRMAR PRODUCTO</h2>


<div class="container-fluid">
      <main>
      <form class="form" name="producto" action="${pageContext.request.contextPath}/producto/edit2/" method="post">
        <input type="hidden" name="id" id="id" value="${producto.getId()}">

			<div class="row mt-4">
    			<div class="col align-self-start col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">
                    <label for="idcategoria" class="form-label">ID CATEGORIA</label>
                    <select id="idcategoria" class="form-select" name="idcategoria">
                       <option value="neu" ${producto.getIdcategoria() == "neu" ? 'selected': ''}>neumaticos</option>
                       <option value="bat" ${producto.getIdcategoria() == "bat" ? 'selected': ''}>baterias</option>
                       <option value="lub" ${producto.getIdcategoria() == "lub" ? 'selected': ''}>lubricantes</option>
                    </select>
    			</div>
    			<div class="col align-self-center col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">
                <div class="col align-self-start col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">
                    <label for="sku" class="form-label">SKU</label>
                    <input type="text" class="form-control" id="sku" name="sku" placeholder="Ingresar sku" value="${producto.getSku()}" required>
                </div>
    			</div>
   			 	<div class="col align-self-end col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">
                    <label for="marca" class="form-label">MARCA</label>
                    <input type="text" class="form-control" id="marca" name="marca" placeholder="Ingresa Marca" value="${producto.getMarca()}" required>
    			</div>
  			</div>

  		    <div class="row mt-4">
  				<div class="col align-self-start col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">
                   <label for="nombre" class="form-label">NOMBRE</label>
                   <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Ingresa Nombre" value="${producto.getNombre()}" required>
    			</div>
    			<div class="col align-self-center col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4"">
                   <label for="detalle" class="form-label">DETALLE</label>
                   <input type="text" class="form-control" id="detalle" name="detalle" placeholder="Ingresa breve detalle" value="${producto.getDetalle()}" required>
       			</div>
    			<div class="col align-self-end col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4"">
                    <label for="precio" class="form-label">PRECIO</label>
                    <input type="number" step="0.01" class="form-control" id="precio" name="precio" placeholder="Precio" value="${producto.getPrecio()}" required>
    			</div>
			</div>

			<div class="row mt-4">
  				<div class="col align-self-start col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4"">
                     <label for="stock" class="form-label">UND</label>
                     <input type="number"  min="0" class="form-control" id="cantidad" name="cantidad" placeholder="Ingrese cantidad" value="" required>
    			</div>
    			<div class="col align-self-center">

    			</div>
    			<div class="col align-self-end">

    			</div>
			</div>

			<div class="row mt-4">
              	<div class="col align-self-start col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4"">

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


