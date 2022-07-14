<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
    <head>
        <meta charset="UTF-8">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>FINAL CURSO</title>

<script src="${pageContext.request.contextPath}/res/js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="//cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
<script src="//cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>

<!--   <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/estilo.css">  -->


     <!--LLAMAR A BOOTSTRAP-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
  rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


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
     <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/style.css">


 <%@include file="index.jsp"%>
    </head>

    <body>

    <h2>DETALLE PRODUCTO</h2>


<div class="container-fluid">
    <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
    <main>
    <form class="form" name="producto" action="${pageContext.request.contextPath}/carrito/edit2/" method="post">
    <div class="table-responsive table-responsive-sm table-responsive-md table-responsive-lg table-responsive-xl table-responsive-xxl">
        <table id="tblproducto"class="table table-cell-padding-x-sm: .18rem table-cell-padding-y-sm: .18rem">
            <thead class="table table-striped">

            </thead>

            <tbody>
            <c:forEach var="p" items="${producto}">
                <tr>
                <div class="card" style="width: 18rem;">
                  <div class="card-header" name="id">
                    <c:out value="${p.getId()}"></c:out>
                 </div>
                    <div class="card-header" name="marca">
                    <c:out value="${p.getMarca()}"></c:out>
                 </div>
                  <ul class="list-group list-group-flush">
                  <li class="list-group-item" name="sku">SKU: <c:out value="${p.getSku()}"></c:out></li>
                  <li class="list-group-item" name="nombre">Nombre:<c:out value="${p.getNombre()}"></c:out></li>
                    <li class="list-group-item" name="detalle">Detalle: <c:out value="${p.getDetalle()}"></c:out></li>
                    <li class="list-group-item" name="precio">Precio:  <c:out value="${p.getPrecio()}"></c:out></li>
                    <li class="list-group-item">Stock: <c:out value="${p.getStock()}"></c:out></li>
                    <li class="list-group-item">
                        <label for="stock" class="form-label">UND</label>
                        <input type="number"  min="0" class="form-control" id="cantidad" name="cantidad" placeholder="Ingrese cantidad" value="" required>
                    </li>
                  <!--  <li class="list-group-item"><a href="${pageContext.request.contextPath}/producto/edit/${p.getId()}" class="btn btn-primary justify-content-center">CONFIRMAR</a></li> -->
                    <li class="list-group-item"><a href="" id="guardar" class="btn btn2 btn-outline-primary" type="submit" >Agregar a Carrito<i class="fas fa-cart-plus"></i></a></li>
                      <!-- <li class="list-group-item"><button class="btn btn-primary" type="submit" id="guardar">Guardar</button></li> -->
                  </ul>
                </div>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    </main>
 </div>
 </div>




    <script>
        $(document).ready(function(){
            $("#tblproductos").DataTable();
        })
    </script>
    </div>


<!-- MENU NAVEGACION -->


<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
		integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js"
		integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy"
		crossorigin="anonymous"></script>

<script src="${pageContext.request.contextPath}/res/js/eventos.js"></script>
<script src="${pageContext.request.contextPath}/res/js/comprar_neumaticos.js"></script>
<script src="${pageContext.request.contextPath}/res/js/comprar_baterias.js"></script>
<script src="${pageContext.request.contextPath}/res/js/comprar_lubricantes.js"></script>
<script src="${pageContext.request.contextPath}/res/js/efecto.js"></script>
<script src="${pageContext.request.contextPath}/res/js/op_nav.js"></script>


    </body>
</html>


