let color = document.getElementById('color')

color.addEventListener('input', e=>{
  let background = document.getElementById('background')
  background.style.background = e.target.value
})

function validarFormulario(){
  var usuario = document.getElementById('nombre1').value;
  var usu_paterno = document.getElementById('apellido1').value;
  var usu_materno = document.getElementById('apellido2').value;
  var usu_rut = document.getElementById('rut').value;
  var usu_email = document.getElementById('email').value;
                
  if (usuario && usu_paterno && usu_materno && usu_rut && usu_email) {
      document.getElementById('correcto').disabled = false;
      document.getElementById('registrar').disabled = false;
  }else {
      document.getElementById('correcto').disabled = true;
      document.getElementById('registrar').disabled = true;
  }           
                
 }

   

function validarDatos(){

  var usuario = document.getElementById('nombre1').value;
  var usu_paterno = document.getElementById('apellido1').value;
  var usu_materno = document.getElementById('apellido2').value;
  var usu_rut = document.getElementById('rut').value;
  var usu_email = document.getElementById('email').value;
  

  alert("Nombre: " +usuario+ "\n" +"Apellido Paterno: " +usu_paterno
        + "\n" +"Apellido Materno: " +usu_materno+ "\n" +"Rut: " +usu_rut 
        + "\n" +"Email: " +usu_email)
  

}

