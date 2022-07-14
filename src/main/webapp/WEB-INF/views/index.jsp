<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="es" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>LUQREPUESTOS</title>

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


<%@include file="head.jsp"%>


  <!-- EFECTOS MENU -->
  <style>
  #op_neumaticos,
  #op_baterias,
  #op_lubricantes {
    display: none;
  }
  </style>

  <!-- OCULTAR LUBRICANTES -->
  <style>
  #lubricantes1,
  #lubricantes2,
  #lubricantes3,
  #lubricantes4,
  #lubricantes5 {
    display: none;
  }
  </style>


  <!-- OCULTAR BATERIAS -->
  <!-- OCULTAR AUTOBATT -->
  <style>
  #autobatt1,
  #autobatt2 {
    display: none;
  }
  </style>

<!-- OCULTAR AUTOSTYLE -->
 <style>
  #autostyle1,
  #autostyle2,
  #autostyle3 {
    display: none;
  }
  </style>

  <!-- OCULTAR BOSCH -->
  <style>
  #bosch1,
  #bosch2,
  #bosch3,
  #bosch4 {
    display: none;
  }
  </style>

	<!-- OCULTAR HANKOOK -->
  <style>
  #hankook1,
  #hankook2,
  #hankook3,
  #hankook4 {
    display: none;
  }
  </style>

  	<!-- OCULTAR KARSON -->
  <style>
  #karson1,
  #karson2 {
    display: none;
  }
  </style>


  <!-- OCULTAR NEUMATICOS -->
  <!-- OCULTAR AUSTONE -->
  <style>
  #austone1,
  #austone2,
  #austone3,
  #austone4,
  #austone5 {
    display: none;
  }
  </style>

  <!-- OCULTAR BRIDGESTONE -->
  <style>
  #bridgestone1,
  #bridgestone2,
  #bridgestone3,
  #bridgestone4,
  #bridgestone5 {
    display: none;
  }
</style>

  <!-- OCULTAR CONTINENTAL -->
  <style>
  #continental1,
  #continental2,
  #continental3,
  #continental4,
  #continental5 {
    display: none;
  }
</style>

  <!-- OCULTAR GOODYEAR -->
  <style>
  #goodyear1,
  #goodyear2,
  #goodyear3,
  #goodyear4,
  #goodyear5 {
    display: none;
  }
</style>

</head>


<body class="bg-light">


<!-- NUEVO INICIO -->
<div class="container">
		<div class="row" id="op_neumaticos">
			<div class="d-inline-block col-sm-6 col-sd-6 col-lg-6 col-xl-3">
				<div class="card" style="width: 13rem;">
 	               <button id="neu-austone" style="width: 13rem;"><img style="width: 11rem;" src="${pageContext.request.contextPath}/res/img_neumaticos/AUSTONE/logo_austone1.png"></button>
				</div>
			</div>
			<div class="d-inline-block col-sm-6 col-sd-6 col-lg-6 col-xl-3">
				<div class="card" style="width: 13rem;">
 	               <button id="neu-bridgestone" style="width: 13rem;"><img style="width: 11rem;" src="${pageContext.request.contextPath}/res/img_neumaticos/BRIDGESTONE/logo_bridgestone1.png"></button>
				</div>
			</div>
			<div class="d-inline-block col-sm-6 col-sd-6 col-lg-6 col-xl-3">
				<div class="card" style="width: 13rem;">
 	               <button id="neu-goodyear" style="width: 13rem;"><img style="width: 11rem;" id="imagen-goodyear" src="${pageContext.request.contextPath}/res/img_neumaticos/GOODYEAR/logo_goodyear1.png"></button>
				</div>
			</div>
			<div class="d-inline-block col-sm-6 col-sd-6 col-lg-6 col-xl-3">
				<div class="card" style="width: 13rem;">
 	               <button id="neu-continental" style="width: 13rem;"><img style="width: 11rem;" id="imagen-continental" src="${pageContext.request.contextPath}/res/img_neumaticos/CONTINENTAL/logo_continental1.png"></button>
				</div>
			</div>
		</div>

	<!-- BATERIAS -->
	<div class="row" id="op_baterias">
			<div class="d-inline-block col-sm-6 col-sd-6 col-lg-6 col-xl-3">
				<div class="card" style="width: 13rem;" display="none">
 	               <button id="autobatt" style="width: 13rem;"><img style="width: 11rem;" src="${pageContext.request.contextPath}/res/img_baterias/autobatt/logo-autobat.jpg"></button>
				</div>
			</div>
			<div class="d-inline-block col-sm-6 col-sd-6 col-lg-6 col-xl-3">
				<div class="card" style="width: 13rem;">
 	               <button id="autostyle" style="width: 13rem;"><img style="width: 11rem;" src="${pageContext.request.contextPath}/res/img_baterias/autostyle/logo-autostyle1.png"></button>
				</div>
			</div>
			<div class="d-inline-block col-sm-6 col-sd-6 col-lg-6 col-xl-3">
				<div class="card" style="width: 13rem;">
 	               <button id="bosch" style="width: 13rem;"><img style="width: 11rem;" src="${pageContext.request.contextPath}/res/img_baterias/bosch/logo-bosch.png"></button>
				</div>
			</div>
			<div class="d-inline-block col-sm-6 col-sd-6 col-lg-6 col-xl-3">
				<div class="card" style="width: 13rem;">
 	               <button id="hankook" style="width: 13rem;"><img style="width: 11rem;" src="${pageContext.request.contextPath}/res/img_baterias/hankook/logo-hankook.jpg"></button>
				</div>
			</div>
			<div class="d-inline-block col-sm-6 col-sd-6 col-lg-6 col-xl-3">
				<div class="card" style="width: 13rem;">
 	               <button id="karson" style="width: 13rem;"><img style="width: 11rem;" src="${pageContext.request.contextPath}/res/img_baterias/karson/logo-karson.jpg"></button>
				</div>
			</div>
		</div>

<!-- LUBRICANTES -->
	<div class="row" id="op_lubricantes">
			<div class="col-sm-6 col-sd-6 col-lg-6 col-xl-3">
				<div class="card" style="width: 13rem;">
 	               <button id="lubrica" style="width: 13rem;"><img style="width: 11rem;" src="${pageContext.request.contextPath}/res/img_lubricantes/logo_mobil.jpg"></button>
				</div>
			</div>

	</div>

</div>
		<hr>


<!-- VER PRODUCTOS -->
   <!-- PRODUCTOS LUBRICANTES -->
 <div class="container">
   	<div class="row">
        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="lubricantes1">
           <div class="card" style="width: 12rem;">
  				<img src="${pageContext.request.contextPath}/res/img_lubricantes/lubricantes1.jpg" class="card-img-top img-fluid img-thumbnail" alt="lubricantes1">
  			        <div class="card-body">
  					<h5 class="card-title">LUBRICANTE SINTETICO</h5>
    				<p class="card-text">5W-30 4 litros</p>
    				<p class="card-text">Codigo:3000101</p>
    				<p class="card-text">$45.190</p>
    				    <div class="card-footer">
    				    <a href="${pageContext.request.contextPath}/producto/qlub1/" class="btn btn-primary justify-content-center">VER DETALLE</a>
    				    </div>
    			    </div>
		    </div>
        </div>

	 <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="lubricantes2">
                    <div class="card" style="width: 12rem;">
  					<img src="${pageContext.request.contextPath}/res/img_lubricantes/lubricantes2.jpg" class="card-img-top img-fluid img-thumbnail" alt="lubricantes2">
  					<div class="card-body">
    				<h5 class="card-title">LUBRICANTE SINTETICO</h5>
    				<p class="card-text">10W-40 4 litros</p>
    				<p class="card-text">Codigo:3000102</p>
    				<p class="card-text">$29.990</p>
    			    <div class="card-footer">
                        <a href="${pageContext.request.contextPath}/producto/qlub2/" class="btn btn-primary justify-content-center">VER DETALLE</a>
                    </div>
    				</div>
	          </div>
	  </div>

       <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="lubricantes4">
                    <div class="card" style="width: 12rem;">
  					<img src="${pageContext.request.contextPath}/res/img_lubricantes/lubricantes4.jpg" class="card-img-top img-fluid img-thumbnail" alt="lubricantes4">
  					<div class="card-body">
    				<h5 class="card-title">LUBRICANTE SINTETICO</h5>
    				<p class="card-text">5W-30 1 litro</p>
    				<p class="card-text">Codigo:3000104</p>
    				<p class="card-text">$13.390</p>
    				<div class="card-footer">
                       <a href="${pageContext.request.contextPath}/producto/qlub4/" class="btn btn-primary justify-content-center">VER DETALLE</a>
                    </div>
    				 </div>
					</div>
	  		</div>

	  	<div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="lubricantes3">
           <div class="card" style="width: 12rem;">
  					<img src="${pageContext.request.contextPath}/res/img_lubricantes/lubricantes3.jpg" class="card-img-top img-fluid img-thumbnail" alt="lubricantes3">
  					<div class="card-body">
    				<h5 class="card-title">ACEITE MOTOR</h5>
    				<p class="card-text">4 litros</p>
    				<p class="card-text">Codigo:3000103</p>
    				<p class="card-text">$18.990</p>
    				<div class="card-footer">
                       <a href="${pageContext.request.contextPath}/producto/qlub3/" class="btn btn-primary justify-content-center">VER DETALLE</a>
                    </div>
    				 </div>
					</div>
	  		</div>

	 	<div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="lubricantes5">
                    <div class="card" style="width: 12rem;">
  					<img src="${pageContext.request.contextPath}/res/img_lubricantes/lubricantes5.jpg" class="card-img-top img-fluid img-thumbnail" alt="lubricantes5">
  					<div class="card-body">
    				<h5 class="card-title">ACEITE MOTOR</h5>
    				<p class="card-text">1 litro</p>
    				<p class="card-text">Codigo:3000105</p>
    				<p class="card-text">$5.290</p>
    				<div class="card-footer">
                       <a href="${pageContext.request.contextPath}/producto/qlub5/" class="btn btn-primary justify-content-center">VER DETALLE</a>
                    </div>
    				 </div>
					</div>
	  		</div>
</div>


<!-- BATERIAS -->
<!-- PRODUCTOS BATERIAS AUTOBATT -->
<div class="row">
    <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="autobatt1">
       <div class="card" style="width: 12rem;">
  			<img src="${pageContext.request.contextPath}/res/img_baterias/autobatt/autobatt1.jpg" class="card-img-top" alt="autobatt1">
  			<div class="card-body">
    			<h5 class="card-title">AUTOBATT</h5>
    			<p class="card-text">90A +izquierdo</p>
    			<p class="card-text">735 CC</p>
    			<p class="card-text">Codigo:2000101</p>
    			<p class="card-text">$114.990</p>
    				<div class="card-footer">
                       <a href="${pageContext.request.contextPath}/producto/qab1/" class="btn btn-primary justify-content-center">VER DETALLE</a>
                    </div>
    		</div>
	    </div>
	</div>

	<div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="autobatt2">
       <div class="card" style="width: 12rem;">
  		    <img src="${pageContext.request.contextPath}/res/img_baterias/autobatt/autobatt2.jpg" class="card-img-top" alt="autobatt2">
  			    <div class="card-body">
    		    <h5 class="card-title">AUTOBATT</h5>
    		    <p class="card-text">60A +derecho</p>
    		    <p class="card-text">530 CC</p>
    		    <p class="card-text">Codigo:2000102</p>
    		    <p class="card-text">$64.890</p>
    				<div class="card-footer">
                       <a href="${pageContext.request.contextPath}/producto/qab2/" class="btn btn-primary justify-content-center">VER DETALLE</a>
                    </div>
    			</div>
	    </div>
	</div>
</div>

<!-- PRODUCTOS BATERIAS AUTOSTYLE -->
<div class="row">
<div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="autostyle1">
                    <div class="card" style="width: 12rem;">
  					<img src="${pageContext.request.contextPath}/res/img_baterias/autostyle/autostyle1.jpg" class="card-img-top" alt="autostyle1">
  					<div class="card-body">
    				<h5 class="card-title">AUTOSTYLE</h5>
    				<p class="card-text">90A +izquierdo</p>
    				<p class="card-text">780 CCA</p>
    				<p class="card-text">Codigo:2000201</p>
    				<p class="card-text">$112.990</p>
    				<div class="card-footer">
                        <a href="${pageContext.request.contextPath}/producto/style1/" class="btn btn-primary justify-content-center">VER DETALLE</a>
                       </div>
    				</div>
					</div>
	  </div>

    <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="autostyle2">
       <div class="card" style="width: 12rem;">
  		<img src="${pageContext.request.contextPath}/res/img_baterias/autostyle/autostyle2.jpg" class="card-img-top" alt="autostyle2">
  			<div class="card-body">
    		<h5 class="card-title">AUTOSTYLE</h5>
    		<p class="card-text">60A +derecho</p>
    		<p class="card-text">470 CCA</p>
    		<p class="card-text">Codigo:2000202</p>
    		<p class="card-text">$63.790</p>
    		   <div class="card-footer">
               <a href="${pageContext.request.contextPath}/producto/style2/" class="btn btn-primary justify-content-center">VER DETALLE</a>
               </div>
    		</div>
		</div>
	</div>

    <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="autostyle3">
       <div class="card" style="width: 12rem;">
  	   <img src="${pageContext.request.contextPath}/res/img_baterias/autostyle/autostyle3.jpg" class="card-img-top" alt="autostyle3">
  		  <div class="card-body">
    	  <h5 class="card-title">AUTOSTYLE</h5>
    	  <p class="card-text">45A +derecho</p>
    	  <p class="card-text">400 CCA</p>
    	  <p class="card-text">Codigo:2000203</p>
    	  <p class="card-text">$56.090</p>
    		 <div class="card-footer">
             <a href="${pageContext.request.contextPath}/producto/style3/" class="btn btn-primary justify-content-center">VER DETALLE</a>
             </div>
    	  </div>
	   </div>
	</div>
</div>


<!-- PRODUCTOS BATERIAS BOSCH -->
<div class="row">
      <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="bosch1">
          <div class="card" style="width: 12rem;">
  		  <img src="${pageContext.request.contextPath}/res/img_baterias/bosch/bosch1.jpg" class="card-img-top" alt="bosch1">
  			  <div class="card-body">
    		  <h5 class="card-title">BOSCH</h5>
    		  <p class="card-text">55A +derecho</p>
    		  <p class="card-text">390 CCA</p>
    		  <p class="card-text">Codigo:2000301</p>
    		  <p class="card-text">$65.990</p>
    			<div class="card-footer">
                   <a href="${pageContext.request.contextPath}/producto/bosch1/" class="btn btn-primary justify-content-center">VER DETALLE</a>
                </div>
    		  </div>
		  </div>
	  </div>

	  <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="bosch2">
         <div class="card" style="width: 12rem;">
  		 <img src="${pageContext.request.contextPath}/res/img_baterias/bosch/bosch2.jpg" class="card-img-top" alt="bosch2">
  		    <div class="card-body">
    		<h5 class="card-title">BOSCH</h5>
    		<p class="card-text">62A +derecho</p>
    		<p class="card-text">560 CCA</p>
    		<p class="card-text">Codigo:2000302</p>
    		<p class="card-text">$120.990</p>
    			<div class="card-footer">
                   <a href="${pageContext.request.contextPath}/producto/bosch2/" class="btn btn-primary justify-content-center">VER DETALLE</a> </div>
				</div>
	        </div>
        </div>
      </div>

	  <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="bosch3">
         <div class="card" style="width: 12rem;">
  		 <img src="${pageContext.request.contextPath}/res/img_baterias/bosch/bosch3.jpg" class="card-img-top" alt="bosch3">
  		     <div class="card-body">
    		 <h5 class="card-title">BOSCH</h5>
    		 <p class="card-text">55A +izquierdo</p>
    		 <p class="card-text">460 CCA</p>
    		 <p class="card-text">Codigo:2000303</p>
    		 <p class="card-text">$93.990</p>
    			<div class="card-footer">
                  <a href="${pageContext.request.contextPath}/producto/bosch3/" class="btn btn-primary justify-content-center">VER DETALLE</a>
    			</div>
			 </div>
	     </div>
      </div>

	  <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="bosch4">
         <div class="card" style="width: 12rem;">
  		 <img src="${pageContext.request.contextPath}/res/img_baterias/bosch/bosch4.jpg" class="card-img-top" alt="bosch4">
  			 <div class="card-body">
    		 <h5 class="card-title">BOSCH</h5>
    		 <p class="card-text">55A +derecho</p>
    		 <p class="card-text">460 CCA</p>
    		 <p class="card-text">Codigo:2000304</p>
    		  <p class="card-text">$93.990</p>
    			 <div class="card-footer">
                 <a href="${pageContext.request.contextPath}/producto/bosch4/" class="btn btn-primary justify-content-center">VER DETALLE</a>
    			 </div>
			  </div>
	     </div>
      </div>
</div>

<!-- PRODUCTOS BATERIAS HANKOOK -->
<div class="row">
    <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="hankook1">
        <div class="card" style="width: 12rem;">
  		<img src="${pageContext.request.contextPath}/res/img_baterias/hankook/hankook1.jpg" class="card-img-top" alt="hankook1">
  			<div class="card-body">
    		<h5 class="card-title">HANKOOK</h5>
    		<p class="card-text">60A +derecho</p>
    		<p class="card-text">550 CCA</p>
    		<p class="card-text">Codigo:2000401</p>
    		<p class="card-text">$89.990</p>
    			<div class="card-footer">
                <a href="${pageContext.request.contextPath}/producto/hankook1/" class="btn btn-primary justify-content-center">VER DETALLE</a>
    			</div>
			</div>
	    </div>
	</div>

	<div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="hankook2">
       <div class="card" style="width: 12rem;">
  	   <img src="${pageContext.request.contextPath}/res/img_baterias/hankook/hankook2.jpg" class="card-img-top" alt="hankook2">
  		  <div class="card-body">
    	  <h5 class="card-title">HANKOOK</h5>
    	  <p class="card-text">70A +derecho</p>
    	  <p class="card-text">600 CCA</p>
    	  <p class="card-text">Codigo:2000402</p>
    	  <p class="card-text">$101.990</p>
    	     <div class="card-footer">
             <a href="${pageContext.request.contextPath}/producto/hankook2/" class="btn btn-primary justify-content-center">VER DETALLE</a>
             </div>
    	  </div>
       </div>
	</div>

	<div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="hankook3">
       <div class="card" style="width: 12rem;">
  	   <img src="${pageContext.request.contextPath}/res/img_baterias/hankook/hankook3.jpg" class="card-img-top" alt="hankook3">
  			<div class="card-body">
    		<h5 class="card-title">HANKOOK</h5>
    		<p class="card-text">45A +derecho</p>
    		<p class="card-text">450 CCA</p>
    		<p class="card-text">Codigo:2000403</p>
    		<p class="card-text">$72.990</p>
    			<div class="card-footer">
                <a href="${pageContext.request.contextPath}/producto/hankook3/" class="btn btn-primary justify-content-center">VER DETALLE</a>
                </div>
            </div>
	   </div>
	</div>

	<div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="hankook4">
        <div class="card" style="width: 12rem;">
  		<img src="${pageContext.request.contextPath}/res/img_baterias/hankook/hankook4.jpg" class="card-img-top" alt="hankook4">
  			<div class="card-body">
    		<h5 class="card-title">HANKOOK</h5>
    		<p class="card-text">90A +izquierdo</p>
    		<p class="card-text">750 CCA</p>
    		<p class="card-text">Codigo:2000404</p>
    		<p class="card-text">$114.990</p>
    			<div class="card-footer">
                <a href="${pageContext.request.contextPath}/producto/hankook4/" class="btn btn-primary justify-content-center">VER DETALLE</a>
                </div>
    		</div>
		</div>
	</div>
</div>

<!-- PRODUCTOS BATERIAS KARSON -->
<div class="row">
	<div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="karson1">
        <div class="card" style="width: 12rem;">
  		<img src="${pageContext.request.contextPath}/res/img_baterias/karson/karson1.jpg" class="card-img-top" alt="karson1">
  			<div class="card-body">
    		<h5 class="card-title">KARSON</h5>
    		<p class="card-text">55A +derecho</p>
    		<p class="card-text">360 CCA</p>
    		<p class="card-text">Codigo:2000501</p>
    		<p class="card-text">$48.990</p>
    			<div class="card-footer">
                <a href="${pageContext.request.contextPath}/producto/karson1/" class="btn btn-primary justify-content-center">VER DETALLE</a>
    			</div>
			</div>
	    </div>
	</div>

	<div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="karson2">
       <div class="card" style="width: 12rem;">
  	   <img src="${pageContext.request.contextPath}/res/img_baterias/karson/karson2.jpg" class="card-img-top" alt="karson2">
  			<div class="card-body">
    		<h5 class="card-title">KARSON</h5>
    		<p class="card-text">55A +derecho</p>
    		<p class="card-text">315 CCA</p>
    		<p class="card-text">Codigo:2000502</p>
    		<p class="card-text">$32.990</p>
    			<div class="card-footer">
                <a href="${pageContext.request.contextPath}/producto/karson2/" class="btn btn-primary justify-content-center">VER DETALLE</a>
                </div>
    		</div>
	   </div>
	</div>
</div>




<!-- PRODUCTOS NEUMATICOS -->
<!-- PRODUCTOS AUSTONE -->
<div class="row">
<div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="austone1">
    <div class="card" style="width: 12rem;">
  	<img src="${pageContext.request.contextPath}/res/img_neumaticos/AUSTONE/austone1.jpg" class="card-img-top" alt="austone1">
  		<div class="card-body">
    	<h5 class="card-title">AUSTONE</h5>
    	<p class="card-text">175/70</p>
    	<p class="card-text">R-13</p>
    	<p class="card-text">Codigo:1000101</p>
    	<p class="card-text">$29.990</p>
    		<div class="card-footer">
            <a href="${pageContext.request.contextPath}/producto/qaustone1/" class="btn btn-primary justify-content-center">VER DETALLE</a>
            </div>
    	</div>
	</div>
</div>

<div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="austone2">
     <div class="card" style="width: 12rem;">
  	 <img src="${pageContext.request.contextPath}/res/img_neumaticos/AUSTONE/austone2.jpg" class="card-img-top" alt="austone2">
  	 	<div class="card-body">
    	<h5 class="card-title">AUSTONE</h5>
    	<p class="card-text">175/65</p>
    	<p class="card-text">R14</p>
    	<p class="card-text">Codigo:1000102</p>
    	<p class="card-text">$43.990</p>
    		<div class="card-footer">
            <a href="${pageContext.request.contextPath}/producto/qaustone2/" class="btn btn-primary justify-content-center">VER DETALLE</a>
            </div>
    	</div>
	 </div>
</div>

<div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="austone3">
     <div class="card" style="width: 12rem;">
  	 <img src="${pageContext.request.contextPath}/res/img_neumaticos/AUSTONE/austone3.jpg" class="card-img-top" alt="austone3">
  		<div class="card-body">
    	<h5 class="card-title">AUSTONE</h5>
    	<p class="card-text">205/55</p>
    	<p class="card-text">R16</p>
    	<p class="card-text">Codigo:1000103</p>
    	<p class="card-text">$59.990</p>
    		<div class="card-footer">
            <a href="${pageContext.request.contextPath}/producto/qaustone3/" class="btn btn-primary justify-content-center">VER DETALLE</a>
            </div>
    	</div>
	 </div>
</div>

<div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="austone4">
    <div class="card" style="width: 12rem;">
  	<img src="${pageContext.request.contextPath}/res/img_neumaticos/AUSTONE/austone4.jpg" class="card-img-top" alt="austone4">
  		<div class="card-body">
    	<h5 class="card-title">AUSTONE</h5>
    	<p class="card-text">185/65</p>
    	<p class="card-text">R15</p>
    	<p class="card-text">Codigo:1000104</p>
    	<p class="card-text">$54.990</p>
            <div class="card-footer">
            <a href="${pageContext.request.contextPath}/producto/qaustone4/" class="btn btn-primary justify-content-center">VER DETALLE</a>
            </div>
        </div>
	</div>
</div>

<div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="austone5">
    <div class="card" style="width: 12rem;">
  	<img src="${pageContext.request.contextPath}/res/img_neumaticos/AUSTONE/austone5.jpg" class="card-img-top" alt="austone5">
  		<div class="card-body">
    	<h5 class="card-title">AUSTONE</h5>
    	<p class="card-text">145/70</p>
    	<p class="card-text">R12</p>
    	<p class="card-text">Codigo:1000105</p>
    	<p class="card-text">$31.390</p>
    		<div class="card-footer">
            <a href="${pageContext.request.contextPath}/producto/qaustone5/" class="btn btn-primary justify-content-center">VER DETALLE</a>
            </div>
    	</div>
	</div>
</div>
</div>


<!-- PRODUCTOS BRIDGESTONE -->
<div class="row">
<div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="bridgestone1">
     <div class="card" style="width: 12rem;">
  	 <img src="${pageContext.request.contextPath}/res/img_neumaticos/BRIDGESTONE/neumatico1.jpg" class="card-img-top" alt="bridgestone1">
  		<div class="card-body">
    	<h5 class="card-title">BRIDGESTONE</h5>
    	<p class="card-text">DUELER MT674</p>
    	<p class="card-text">265/65 R17 12</p>
    	<p class="card-text">Codigo:1000201</p>
    	<p class="card-text">$325.800</p>
    		<div class="card-footer">
            <a href="${pageContext.request.contextPath}/producto/qbridgestone1/" class="btn btn-primary justify-content-center">VER DETALLE</a>
            </div>
    	</div>
	 </div>
</div>

<div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="bridgestone2">
   <div class="card" style="width: 12rem;">
   <img src="${pageContext.request.contextPath}/res/img_neumaticos/BRIDGESTONE/neumatico2.jpg" class="card-img-top" alt="bridgestone2">
  		<div class="card-body">
    	<h5 class="card-title">BRIDGESTONE</h5>
    	<p class="card-text">POTENZA RE050A</p>
    	<p class="card-text">225/40 R18 9</p>
    	<p class="card-text">Codigo:1000202</p>
    	<p class="card-text">$293.200</p>
    		<div class="card-footer">
            <a href="${pageContext.request.contextPath}/producto/qbridgestone2/" class="btn btn-primary justify-content-center">VER DETALLE</a>
            </div>
    	</div>
   </div>
</div>

<div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="bridgestone3">
   <div class="card" style="width: 12rem;">
   <img src="${pageContext.request.contextPath}/res/img_neumaticos/BRIDGESTONE/neumatico3.jpg" class="card-img-top" alt="bridgestone3">
  		<div class="card-body">
    	<h5 class="card-title">BRIDGESTONE</h5>
    	<p class="card-text">DUELER HP</p>
    	<p class="card-text">255/55 R18</p>
    	<p class="card-text">Codigo:1000203</p>
    	<p class="card-text">$234.990</p>
    		<div class="card-footer">
            <a href="${pageContext.request.contextPath}/producto/qbridgestone3/" class="btn btn-primary justify-content-center">VER DETALLE</a>
            </div>
    	</div>
   </div>
</div>

<div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="bridgestone4">
   <div class="card" style="width: 12rem;">
   <img src="${pageContext.request.contextPath}/res/img_neumaticos/BRIDGESTONE/neumatico4.jpg" class="card-img-top" alt="bridgestone4">
  		<div class="card-body">
    	<h5 class="card-title">BRIDGESTONE</h5>
    	<p class="card-text">DUELER A/T</p>
    	<p class="card-text">245/75 R16</p>
    	<p class="card-text">Codigo:1000204</p>
    	<p class="card-text">$168.990</p>
    		<div class="card-footer">
            <a href="${pageContext.request.contextPath}/producto/qbridgestone4/" class="btn btn-primary justify-content-center">VER DETALLE</a>
            </div>
    	</div>
   </div>
</div>

<div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="bridgestone5">
   <div class="card" style="width: 12rem;">
   <img src="${pageContext.request.contextPath}/res/img_neumaticos/BRIDGESTONE/neumatico5.jpg" class="card-img-top" alt="bridgestone5">
  		<div class="card-body">
    	<h5 class="card-title">BRIDGESTONE</h5>
    	<p class="card-text">POTENZA GIII</p>
    	<p class="card-text">185/65 R14 86H</p>
    	<p class="card-text">Codigo:1000205</p>
    	<p class="card-text">$64.990</p>
    		<div class="card-footer">
            <a href="${pageContext.request.contextPath}/producto/qbridgestone5/" class="btn btn-primary justify-content-center">VER DETALLE</a>
            </div>
    	</div>
   </div>
</div>
</div>



<!-- PRODUCTOS CONTINENTAL -->
<div class="row">
<div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="continental1">
    <div class="card" style="width: 12rem;">
  	<img src="${pageContext.request.contextPath}/res/img_neumaticos/CONTINENTAL/continental1.jpg" class="card-img-top" alt="continental1">
  		<div class="card-body">
    	<h5 class="card-title">CONTINENTAL</h5>
    	<p class="card-text">POWERCONTACT 2</p>
    	<p class="card-text">205/60 R16</p>
    	<p class="card-text">Codigo:1000401</p>
    	<p class="card-text">$131.990</p>
    		<div class="card-footer">
            <a href="${pageContext.request.contextPath}/producto/qcontinental1/" class="btn btn-primary justify-content-center">VER DETALLE</a>
            </div>
    	</div>
	</div>
</div>

<div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="continental2">
    <div class="card" style="width: 12rem;">
  	<img src="${pageContext.request.contextPath}/res/img_neumaticos/CONTINENTAL/continental2.jpg" class="card-img-top" alt="continental2">
  		<div class="card-body">
    	<h5 class="card-title">CONTINENTAL</h5>
    	<p class="card-text">SP 5</p>
    	<p class="card-text">225/45 R17</p>
    	<p class="card-text">Codigo:1000402</p>
    	<p class="card-text">$224.990</p>
    		<div class="card-footer">
            <a href="${pageContext.request.contextPath}/producto/qcontinental2/" class="btn btn-primary justify-content-center">VER DETALLE</a>
            </div>
    	</div>
	</div>
</div>

<div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="continental3">
   <div class="card" style="width: 12rem;">
   <img src="${pageContext.request.contextPath}/res/img_neumaticos/CONTINENTAL/continental3.jpg" class="card-img-top" alt="continental3">
  		<div class="card-body">
    	<h5 class="card-title">CONTINENTAL</h5>
    	<p class="card-text">100YXI SP</p>
    	<p class="card-text">295/30 R19</p>
    	<p class="card-text">Codigo:1000403</p>
    	<p class="card-text">$334.990</p>
    		<div class="card-footer">
            <a href="${pageContext.request.contextPath}/producto/qcontinental3/" class="btn btn-primary justify-content-center">VER DETALLE</a>
            </div>
    	</div>
   </div>
</div>

<div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="continental4">
   <div class="card" style="width: 12rem;">
   <img src="${pageContext.request.contextPath}/res/img_neumaticos/CONTINENTAL/continental4.jpg" class="card-img-top" alt="continental4">
  	  <div class="card-body">
      <h5 class="card-title">CONTINENTAL</h5>
      <p class="card-text">SP 5PMO</p>
      <p class="card-text">295/30 R20</p>
      <p class="card-text">Codigo:1000404</p>
      <p class="card-text">$560.990</p>
      	 <div class="card-footer">
         <a href="${pageContext.request.contextPath}/producto/qcontinental4/" class="btn btn-primary justify-content-center">VER DETALLE</a>
         </div>
      </div>
   </div>
</div>

<div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="continental5">
    <div class="card" style="width: 12rem;">
  	<img src="${pageContext.request.contextPath}/res/img_neumaticos/CONTINENTAL/continental5.jpg" class="card-img-top" alt="continental5">
  		<div class="card-body">
    	<h5 class="card-title">CONTINENTAL</h5>
    	<p class="card-text">XI FR PRM 6</p>
    	<p class="card-text">205/40 R17</p>
    	<p class="card-text">Codigo:1000405</p>
    	<p class="card-text">$169.990</p>
    		<div class="card-footer">
            <a href="${pageContext.request.contextPath}/producto/qcontinental5/" class="btn btn-primary justify-content-center">VER DETALLE</a>
            </div>
    	</div>
	</div>
</div>
</div>


<!-- PRODUCTOS GOODYEAR -->
<div class="row">
<div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="goodyear1">
   <div class="card" style="width: 12rem;">
   <img src="${pageContext.request.contextPath}/res/img_neumaticos/GOODYEAR/goodyear1.jpg" class="card-img-top" alt="goodyear1">
  		<div class="card-body">
    	<h5 class="card-title">GOODYEAR</h5>
    	<p class="card-text">WRANGLER ARMATRAC</p>
    	<p class="card-text">235/70 R16</p>
    	<p class="card-text">Codigo:1000301</p>
    	<p class="card-text">$131.990</p>
    		<div class="card-footer">
            <a href="${pageContext.request.contextPath}/producto/qgood1/" class="btn btn-primary justify-content-center">VER DETALLE</a>
            </div>
    	</div>
   </div>
</div>

<div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="goodyear2">
   <div class="card" style="width: 12rem;">
   <img src="${pageContext.request.contextPath}/res/img_neumaticos/GOODYEAR/goodyear2.jpg" class="card-img-top" alt="goodyear2">
   		<div class="card-body">
    	<h5 class="card-title">GOODYEAR</h5>
    	<p class="card-text">WRANGLER DURATRAC</p>
    	<p class="card-text">225/75 R16</p>
    	<p class="card-text">Codigo:1000302</p>
    	<p class="card-text">$319.800</p>
            <div class="card-footer">
            <a href="${pageContext.request.contextPath}/producto/qgood2/" class="btn btn-primary justify-content-center">VER DETALLE</a>
            </div>
    	</div>
   </div>
</div>

<div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="goodyear3">
    <div class="card" style="width: 12rem;">
    <img src="${pageContext.request.contextPath}/res/img_neumaticos/GOODYEAR/goodyear3.jpg" class="card-img-top" alt="goodyear3">
   		<div class="card-body">
    	<h5 class="card-title">GOODYEAR</h5>
    	<p class="card-text">WRANGLER ADVENTURE</p>
    	<p class="card-text">245/75 R16</p>
    	<p class="card-text">Codigo:1000303</p>
    	<p class="card-text">$163.990</p>
            <div class="card-footer">
            <a href="${pageContext.request.contextPath}/producto/qgood3/" class="btn btn-primary justify-content-center">VER DETALLE</a>
            </div>
        </div>
	</div>
</div>

<div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="goodyear4">
   <div class="card" style="width: 12rem;">
   <img src="${pageContext.request.contextPath}/res/img_neumaticos/GOODYEAR/goodyear4.jpg" class="card-img-top" alt="goodyear4">
  		<div class="card-body">
    	<h5 class="card-title">GOODYEAR</h5>
    	<p class="card-text">EAGLE ASYNMETRIC</p>
    	<p class="card-text">235/40 R18</p>
    	<p class="card-text">Codigo:1000304</p>
    	<p class="card-text">$190.990</p>
    		<div class="card-footer">
            <a href="${pageContext.request.contextPath}/producto/qgood4/" class="btn btn-primary justify-content-center">VER DETALLE</a>
            </div>
    	</div>
   </div>
</div>

<div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-3 mt-3" id="goodyear5">
   <div class="card" style="width: 12rem;">
   <img src="${pageContext.request.contextPath}/res/img_neumaticos/GOODYEAR/goodyear5.jpg" class="card-img-top" alt="goodyear5">
  		<div class="card-body">
    	<h5 class="card-title">GOODYEAR</h5>
    	<p class="card-text">EFFICIENTGRIP</p>
    	<p class="card-text">175/65 R14</p>
    	<p class="card-text">Codigo:1000305</p>
    	<p class="card-text">$61.990</p>
            <div class="card-footer">
            <a href="${pageContext.request.contextPath}/producto/qgood5/" class="btn btn-primary justify-content-center">VER DETALLE</a>
            </div>
    	</div>
   </div>
</div>
</div>

</div><!-- cierre container -->



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