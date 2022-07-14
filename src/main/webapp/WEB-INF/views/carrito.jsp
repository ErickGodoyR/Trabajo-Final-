<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
    <head>
        <meta charset="UTF-8">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>FINAL MOD5</title>

<script src="${pageContext.request.contextPath}/res/js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="//cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
<script src="//cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>

     <!--   <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/estilo.css">  -->


    <!-- BOOTSTRAP -->
                   <link
                   	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
                   	rel="stylesheet"
                   	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
                   	crossorigin="anonymous">


               <!--LLAMA FONTAWESOME-->
                       <script src="https://kit.fontawesome.com/81a2ed02b0.js" crossorigin="anonymous"></script>
                       <script src="https://kit.fontawesome.com/81a2ed02b0.js" crossorigin="anonymous"></script>

 <%@include file="head.jsp"%>

    </head>

    <body>

    <h2>CARRO DE COMPRAS</h2>


<div class="container-fluid">
    <div class="col-sm-4 col-md-6 col-lg-8 col-xl-12">
    <main>
        <table id="tblcarrito" class="table table-responsive">
            <thead class="table-dark">
            <tr>
				<tr class="text-center">
					<th>Id</th>
					<th>Sku</th>
					<th>Marca</th>
					<th>Nombre</th>
					<th>Detalle</th>
					<th>Precio</th>
					<th>Cantidad</th>
					<th>Editar</th>
					<th>Eliminar</th>
				</tr>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="c" items="${carrito}">
                <tr>
                    <th><c:out value="${c.getId()}"></c:out></th>
                    <td><c:out value="${c.getSku()}"></c:out></td>
                    <td><c:out value="${c.getMarca()}"></c:out></td>
                    <td><c:out value="${c.getNombre()}"></c:out></td>
                    <td><c:out value="${c.getDetalle()}"></c:out></td>
                    <td><c:out value="${c.getPrecio()}"></c:out></td>
                    <td><c:out value="${c.getCantidad()}"></c:out></td>
                    <td>
                        <a href="${pageContext.request.contextPath}/carrito/edit/${c.getId()}"><i
                                class="fa-solid fa-pen-to-square"></i></a>
                    </td>
                    <td>
                        <a href="${pageContext.request.contextPath}/carrito/del/${c.getId()}"><i
                                class="fa-solid fa-trash-can"></i></a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </main>
 </div>
 </div>

    <script>
        $(document).ready(function(){
            $("#tblcarrito").DataTable();
        })
    </script>
    </div>


    </body>
</html>
