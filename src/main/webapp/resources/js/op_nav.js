// OCULTAR/MOSTRAR OPCIONES PRODUCTOS -->   
//pueden ser .toogle()=muestra/oculta
//.show()=mostrar
//.hide()=ocultar

        // jQuery
$(document).ready(function(){ 
   $('#neumaticos').on('click',function(){
      $('#op_neumaticos').toggle('fast');
      $('#op_lubricantes').hide();
      $('#op_baterias').hide();
   });
});
        
$(document).ready(function(){ 
	   $('#baterias').on('click',function(){
	      $('#op_baterias').toggle('fast');
	      $('#op_neumaticos').hide();
	      $('#op_lubricantes').hide();
	   });
	});
	
$(document).ready(function(){ 
	   $('#lubricantes').on('click',function(){
	      $('#op_lubricantes').toggle('fast');
	      $('#op_neumaticos').hide();
	      $('#op_baterias').hide();
	   });
	});




// OCULTAR/MOSTRAR PRODUCTOS -->   
// OCULTAR/MOSTRAR LUBRICANTES -->       
        // jQuery
$(document).ready(function(){ 
   $('#op_lubricantes').on('click',function(){
      $('#lubricantes1').toggle('slow');
      $('#lubricantes2').toggle('slow');
      $('#lubricantes3').toggle('slow');
      $('#lubricantes4').toggle('slow');
      $('#lubricantes5').toggle('slow');
      
      $('#autobatt1').hide();
      $('#autobatt2').hide();
      $('#autostyle1').hide();
      $('#autostyle2').hide();
      $('#autostyle3').hide();
      $('#bosch1').hide();
      $('#bosch2').hide();
      $('#bosch3').hide();
      $('#bosch4').hide();
      $('#hankook1').hide();
      $('#hankook2').hide();
      $('#hankook3').hide();
      $('#hankook4').hide();
      $('#karson1').hide();
      $('#karson2').hide();
      $('#austone1').hide();
      $('#austone2').hide();
      $('#austone3').hide();
      $('#austone4').hide();
      $('#austone5').hide();
      $('#bridgestone1').hide();
      $('#bridgestone2').hide();
      $('#bridgestone3').hide();
      $('#bridgestone4').hide();
      $('#bridgestone5').hide();
      $('#continental1').hide();
      $('#continental2').hide();
      $('#continental3').hide();
      $('#continental4').hide();
      $('#continental5').hide();
      $('#goodyear1').hide();
      $('#goodyear2').hide();
      $('#goodyear3').hide();
      $('#goodyear4').hide();
      $('#goodyear5').hide();
   });
});
        


// OCULTAR/MOSTRAR BATERIAS AUTOBATT -->   
        // jQuery
$(document).ready(function(){ 
   $('#autobatt').on('click',function(){
      $('#autobatt1').toggle('slow');
      $('#autobatt2').toggle('slow');
      
      $('#lubricantes1').hide();
      $('#lubricantes2').hide();
      $('#lubricantes3').hide();
      $('#lubricantes4').hide();
      $('#lubricantes5').hide();
      $('#autostyle1').hide();
      $('#autostyle2').hide();
      $('#autostyle3').hide();
      $('#bosch1').hide();
      $('#bosch2').hide();
      $('#bosch3').hide();
      $('#bosch4').hide();
      $('#hankook1').hide();
      $('#hankook2').hide();
      $('#hankook3').hide();
      $('#hankook4').hide();
      $('#karson1').hide();
      $('#karson2').hide();
      $('#austone1').hide();
      $('#austone2').hide();
      $('#austone3').hide();
      $('#austone4').hide();
      $('#austone5').hide();
      $('#bridgestone1').hide();
      $('#bridgestone2').hide();
      $('#bridgestone3').hide();
      $('#bridgestone4').hide();
      $('#bridgestone5').hide();
      $('#continental1').hide();
      $('#continental2').hide();
      $('#continental3').hide();
      $('#continental4').hide();
      $('#continental5').hide();
      $('#goodyear1').hide();
      $('#goodyear2').hide();
      $('#goodyear3').hide();
      $('#goodyear4').hide();
      $('#goodyear5').hide();
   });
});



// OCULTAR/MOSTRAR BATERIAS AUTOSTYLE   
        // jQuery
$(document).ready(function(){ 
   $('#autostyle').on('click',function(){
      $('#autostyle1').toggle('slow');
      $('#autostyle2').toggle('slow');
      $('#autostyle3').toggle('slow');
      
      $('#autobatt1').hide();
      $('#autobatt2').hide();
      $('#lubricantes1').hide();
      $('#lubricantes2').hide();
      $('#lubricantes3').hide();
      $('#lubricantes4').hide();
      $('#lubricantes5').hide();
      $('#bosch1').hide();
      $('#bosch2').hide();
      $('#bosch3').hide();
      $('#bosch4').hide();
      $('#hankook1').hide();
      $('#hankook2').hide();
      $('#hankook3').hide();
      $('#hankook4').hide();
      $('#karson1').hide();
      $('#karson2').hide();
      $('#austone1').hide();
      $('#austone2').hide();
      $('#austone3').hide();
      $('#austone4').hide();
      $('#austone5').hide();
      $('#bridgestone1').hide();
      $('#bridgestone2').hide();
      $('#bridgestone3').hide();
      $('#bridgestone4').hide();
      $('#bridgestone5').hide();
      $('#continental1').hide();
      $('#continental2').hide();
      $('#continental3').hide();
      $('#continental4').hide();
      $('#continental5').hide();
      $('#goodyear1').hide();
      $('#goodyear2').hide();
      $('#goodyear3').hide();
      $('#goodyear4').hide();
      $('#goodyear5').hide();
   });
});



// OCULTAR/MOSTRAR BATERIAS BOSCH   
        // jQuery
$(document).ready(function(){ 
   $('#bosch').on('click',function(){
	  $('#bosch1').toggle('slow');
	  $('#bosch2').toggle('slow');
	  $('#bosch3').toggle('slow');
	  $('#bosch4').toggle('slow');

	  $('#autostyle1').hide();
      $('#autostyle2').hide();
      $('#autostyle3').hide();      
      $('#autobatt1').hide();
      $('#autobatt2').hide();
      $('#lubricantes1').hide();
      $('#lubricantes2').hide();
      $('#lubricantes3').hide();
      $('#lubricantes4').hide();
      $('#lubricantes5').hide();
      $('#hankook1').hide();
      $('#hankook2').hide();
      $('#hankook3').hide();
      $('#hankook4').hide();
      $('#karson1').hide();
      $('#karson2').hide();
      $('#austone1').hide();
      $('#austone2').hide();
      $('#austone3').hide();
      $('#austone4').hide();
      $('#austone5').hide();
      $('#bridgestone1').hide();
      $('#bridgestone2').hide();
      $('#bridgestone3').hide();
      $('#bridgestone4').hide();
      $('#bridgestone5').hide();
      $('#continental1').hide();
      $('#continental2').hide();
      $('#continental3').hide();
      $('#continental4').hide();
      $('#continental5').hide();
      $('#goodyear1').hide();
      $('#goodyear2').hide();
      $('#goodyear3').hide();
      $('#goodyear4').hide();
      $('#goodyear5').hide();
   });
});


// OCULTAR/MOSTRAR BATERIAS HANKOOK    
        // jQuery
$(document).ready(function(){ 
   $('#hankook').on('click',function(){
	  $('#hankook1').toggle('slow');
	  $('#hankook2').toggle('slow');
	  $('#hankook3').toggle('slow');
	  $('#hankook4').toggle('slow');
	 
	  $('#bosch1').hide();
	  $('#bosch2').hide();
	  $('#bosch3').hide();
	  $('#bosch4').hide();
	  $('#autostyle1').hide();
      $('#autostyle2').hide();
      $('#autostyle3').hide();      
      $('#autobatt1').hide();
      $('#autobatt2').hide();
      $('#lubricantes1').hide();
      $('#lubricantes2').hide();
      $('#lubricantes3').hide();
      $('#lubricantes4').hide();
      $('#lubricantes5').hide();
      $('#karson1').hide();
      $('#karson2').hide();
      $('#austone1').hide();
      $('#austone2').hide();
      $('#austone3').hide();
      $('#austone4').hide();
      $('#austone5').hide();
      $('#bridgestone1').hide();
      $('#bridgestone2').hide();
      $('#bridgestone3').hide();
      $('#bridgestone4').hide();
      $('#bridgestone5').hide();
      $('#continental1').hide();
      $('#continental2').hide();
      $('#continental3').hide();
      $('#continental4').hide();
      $('#continental5').hide();
      $('#goodyear1').hide();
      $('#goodyear2').hide();
      $('#goodyear3').hide();
      $('#goodyear4').hide();
      $('#goodyear5').hide();
   });
});



// OCULTAR/MOSTRAR BATERIAS KARSON    
        // jQuery
$(document).ready(function(){ 
   $('#karson').on('click',function(){
	  $('#karson1').toggle('slow');
	  $('#karson2').toggle('slow');

	  $('#hankook1').hide();
	  $('#hankook2').hide();
	  $('#hankook3').hide();
	  $('#hankook4').hide();
	  $('#bosch1').hide();
	  $('#bosch2').hide();
	  $('#bosch3').hide();
	  $('#bosch4').hide();
	  $('#autostyle1').hide();
      $('#autostyle2').hide();
      $('#autostyle3').hide();      
      $('#autobatt1').hide();
      $('#autobatt2').hide();
      $('#lubricantes1').hide();
      $('#lubricantes2').hide();
      $('#lubricantes3').hide();
      $('#lubricantes4').hide();
      $('#lubricantes5').hide();
      $('#austone1').hide();
      $('#austone2').hide();
      $('#austone3').hide();
      $('#austone4').hide();
      $('#austone5').hide();
      $('#bridgestone1').hide();
      $('#bridgestone2').hide();
      $('#bridgestone3').hide();
      $('#bridgestone4').hide();
      $('#bridgestone5').hide();
      $('#continental1').hide();
      $('#continental2').hide();
      $('#continental3').hide();
      $('#continental4').hide();
      $('#continental5').hide();
      $('#goodyear1').hide();
      $('#goodyear2').hide();
      $('#goodyear3').hide();
      $('#goodyear4').hide();
      $('#goodyear5').hide();
   });
});


// OCULTAR/MOSTRAR NEUMATICOS  
// OCULTAR/MOSTRAR AUSTONE    
        // jQuery
$(document).ready(function(){ 
   $('#neu-austone').on('click',function(){
	  $('#austone1').toggle('slow');
	  $('#austone2').toggle('slow');
	  $('#austone3').toggle('slow');
	  $('#austone4').toggle('slow');
	  $('#austone5').toggle('slow');
	  
	  $('#karson1').hide();
	  $('#karson2').hide();
	  $('#hankook1').hide();
	  $('#hankook2').hide();
	  $('#hankook3').hide();
	  $('#hankook4').hide();
	  $('#bosch1').hide();
	  $('#bosch2').hide();
	  $('#bosch3').hide();
	  $('#bosch4').hide();
	  $('#autostyle1').hide();
      $('#autostyle2').hide();
      $('#autostyle3').hide();      
      $('#autobatt1').hide();
      $('#autobatt2').hide();
      $('#lubricantes1').hide();
      $('#lubricantes2').hide();
      $('#lubricantes3').hide();
      $('#lubricantes4').hide();
      $('#lubricantes5').hide();
      $('#bridgestone1').hide();
      $('#bridgestone2').hide();
      $('#bridgestone3').hide();
      $('#bridgestone4').hide();
      $('#bridgestone5').hide();
      $('#continental1').hide();
      $('#continental2').hide();
      $('#continental3').hide();
      $('#continental4').hide();
      $('#continental5').hide();
      $('#goodyear1').hide();
      $('#goodyear2').hide();
      $('#goodyear3').hide();
      $('#goodyear4').hide();
      $('#goodyear5').hide();
   });
});



// OCULTAR/MOSTRAR BRIDGESTONE   
        // jQuery
$(document).ready(function(){ 
   $('#neu-bridgestone').on('click',function(){
	  $('#bridgestone1').toggle('slow');
	  $('#bridgestone2').toggle('slow');
	  $('#bridgestone3').toggle('slow');
	  $('#bridgestone4').toggle('slow');
	  $('#bridgestone5').toggle('slow');
	      
	  $('#karson1').hide();
	  $('#karson2').hide();
	  $('#hankook1').hide();
	  $('#hankook2').hide();
	  $('#hankook3').hide();
	  $('#hankook4').hide();
	  $('#bosch1').hide();
	  $('#bosch2').hide();
	  $('#bosch3').hide();
	  $('#bosch4').hide();
	  $('#autostyle1').hide();
      $('#autostyle2').hide();
      $('#autostyle3').hide();      
      $('#autobatt1').hide();
      $('#autobatt2').hide();
      $('#lubricantes1').hide();
      $('#lubricantes2').hide();
      $('#lubricantes3').hide();
      $('#lubricantes4').hide();
      $('#lubricantes5').hide();
      $('#austone1').hide();
      $('#austone2').hide();
      $('#austone3').hide();
      $('#austone4').hide();
      $('#austone5').hide();
      $('#continental1').hide();
      $('#continental2').hide();
      $('#continental3').hide();
      $('#continental4').hide();
      $('#continental5').hide();
      $('#goodyear1').hide();
      $('#goodyear2').hide();
      $('#goodyear3').hide();
      $('#goodyear4').hide();
      $('#goodyear5').hide();
   });
});


//OCULTAR/MOSTRAR CONTINENTAL    
        // jQuery
$(document).ready(function(){ 
   $('#neu-continental').on('click',function(){
	  $('#continental1').toggle('slow');
	  $('#continental2').toggle('slow');
	  $('#continental3').toggle('slow');
	  $('#continental4').toggle('slow');
	  $('#continental5').toggle('slow');
	   
	  $('#karson1').hide();
	  $('#karson2').hide();
	  $('#hankook1').hide();
	  $('#hankook2').hide();
	  $('#hankook3').hide();
	  $('#hankook4').hide();
	  $('#bosch1').hide();
	  $('#bosch2').hide();
	  $('#bosch3').hide();
	  $('#bosch4').hide();
	  $('#autostyle1').hide();
      $('#autostyle2').hide();
      $('#autostyle3').hide();      
      $('#autobatt1').hide();
      $('#autobatt2').hide();
      $('#lubricantes1').hide();
      $('#lubricantes2').hide();
      $('#lubricantes3').hide();
      $('#lubricantes4').hide();
      $('#lubricantes5').hide();
      $('#austone1').hide();
      $('#austone2').hide();
      $('#austone3').hide();
      $('#austone4').hide();
      $('#austone5').hide();
      $('#bridgestone1').hide();
      $('#bridgestone2').hide();
      $('#bridgestone3').hide();
      $('#bridgestone4').hide();
      $('#bridgestone5').hide();
      $('#goodyear1').hide();
      $('#goodyear2').hide();
      $('#goodyear3').hide();
      $('#goodyear4').hide();
      $('#goodyear5').hide();
   });
});


// OCULTAR/MOSTRAR GOODYEAR   
        // jQuery
$(document).ready(function(){ 
	$('#neu-goodyear').on('click',function(){
	  $('#goodyear1').toggle('slow');
	  $('#goodyear2').toggle('slow');
	  $('#goodyear3').toggle('slow');
	  $('#goodyear4').toggle('slow');
	  $('#goodyear5').toggle('slow');
	  
	  $('#karson1').hide();
	  $('#karson2').hide();
	  $('#hankook1').hide();
	  $('#hankook2').hide();
	  $('#hankook3').hide();
	  $('#hankook4').hide();
	  $('#bosch1').hide();
	  $('#bosch2').hide();
	  $('#bosch3').hide();
	  $('#bosch4').hide();
	  $('#autostyle1').hide();
      $('#autostyle2').hide();
      $('#autostyle3').hide();      
      $('#autobatt1').hide();
      $('#autobatt2').hide();
      $('#lubricantes1').hide();
      $('#lubricantes2').hide();
      $('#lubricantes3').hide();
      $('#lubricantes4').hide();
      $('#lubricantes5').hide();
      $('#austone1').hide();
      $('#austone2').hide();
      $('#austone3').hide();
      $('#austone4').hide();
      $('#austone5').hide();
      $('#bridgestone1').hide();
      $('#bridgestone2').hide();
      $('#bridgestone3').hide();
      $('#bridgestone4').hide();
      $('#bridgestone5').hide();
      $('#continental1').hide();
      $('#continental2').hide();
      $('#continental3').hide();
      $('#continental4').hide();
      $('#continental5').hide();      
   });
});
