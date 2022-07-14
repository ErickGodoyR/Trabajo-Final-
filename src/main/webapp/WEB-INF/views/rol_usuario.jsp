<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="head.jsp"%>

<!DOCTYPE html>
<html>
    <!-- Cabecera -->
    <head>
        <!-- Cofigicación de caracteres -->
        <meta charset="UTF-8">

        <!-- Configuración de ancho y escala inicial para los dispositivos -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">


        <!-- Título de la página -->
        <title>ROL-USUARIO</title>

        <!-- Hojas de Estilo -->
        <!--<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/estilo.css">-->

        <script src="${pageContext.request.contextPath}/res/js/jquery-3.6.0.min.js"></script>
        <link rel="stylesheet" href="//cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
        <script src="//cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>

        <!-- BOOTSTRAP -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

        <!--LLAMA FONTAWESOME-->
        <script src="https://kit.fontawesome.com/81a2ed02b0.js" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/81a2ed02b0.js" crossorigin="anonymous"></script>

    </head>

    <body>

        <h1>Rol-Usuarios</h1>


<div class="container-fluid">
        <main>
            <table id="rolUsuarios" class="table col align-self-start col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">
                <thead class="table-dark">
                    <tr>
                        <th>Id</th>
                        <th>Idrol</th>
                        <th>Username</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="ru" items="${rol_usuario}">
                    <tr>
                        <th><c:out value="${ru.getId()}"></c:out></th>
                        <th><c:out value="${ru.getIdrol()}"></c:out></th>
                        <td><c:out value="${ru.getUsername()}"></c:out></td>
                        <td>
                            <a href="${pageContext.request.contextPath}/rol_usuario/edit/${ru.getId()}"><i class="fa-solid fa-pen-to-square"></i></a>
                            <a href="${pageContext.request.contextPath}/rol_usuario/del/${ru.getId()}"><i class="fa-solid fa-trash-can"></i></a>
                        </td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        </main>
    </div>

    <script>
        $(document).ready(function(){
            $("#rolUsuarios").DataTable();
        })
    </script>


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
