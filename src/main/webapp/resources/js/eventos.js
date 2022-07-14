var btn_austone = document.getElementById('neu-austone'),
    neumaticos_austone= document.getElementById('neumaticos-austone');
    
function muestra_austone()
{
    contador=0;
    limpiar();
    if(contador==0)
    {
        neumaticos_austone.classList.add('opciones');
        contador=1;
    }
}
    

/*OPCIONES BRIDGESTONE*/
var btn_bridgestone = document.getElementById('neu-bridgestone'),
    neumaticos_bridgestone = document.getElementById('neumaticos-bridgestone');

function muestra_bridgestone()
{
    contador=0;
    limpiar();
    if(contador==0)
    {
        neumaticos_bridgestone.classList.add('opciones');
        contador=1;
    }
}


/*OPCIONES GOODYEAR*/
var btn_goodyear = document.getElementById('neu-goodyear'),
    neumaticos_goodyear = document.getElementById('neumaticos-goodyear');
    
function muestra_goodyear()
{
    contador=0;
    limpiar();
    if(contador==0)
    {
        neumaticos_goodyear.classList.add('opciones');
        contador=1;
    }

}


/*OPCIONES CONTINENTAL*/
var btn_continental = document.getElementById('neu-continental'),
    neumaticos_continental = document.getElementById('neumaticos-continental');
    
function muestra_continental()
{
    contador=0;
    limpiar();
    if(contador==0)
    {
        neumaticos_continental.classList.add('opciones');
        contador=1;
    }
}


/*ejecuciones neumaticos*/
btn_austone.addEventListener('click',muestra_austone,true)    
btn_bridgestone.addEventListener('click',muestra_bridgestone,true)
btn_goodyear.addEventListener('click',muestra_goodyear,true)
btn_continental.addEventListener('click',muestra_continental,true)



/*FUNCIONES BATERIAS*/
var btn_autobatt = document.getElementById('autobatt'),
    baterias_autobatt= document.getElementById('grid-autobatt');
    
function muestra_autobatt()
{
    contador=0;
    limpiar();
    if(contador==0)
    {
        baterias_autobatt.classList.add('opciones');
        contador=1;
    }
}


var btn_autostyle = document.getElementById('autostyle'),
    baterias_autostyle= document.getElementById('grid-autostyle');
    
function muestra_autostyle()
{
    contador=0;
    limpiar();
    if(contador==0)
    {
        baterias_autostyle.classList.add('opciones');
        contador=1;
    }
}


var btn_bosch = document.getElementById('bosch'),
    baterias_bosch= document.getElementById('grid-bosch');
    
function muestra_bosch()
{
    contador=0;
    limpiar();
    if(contador==0)
    {
        baterias_bosch.classList.add('opciones');
        contador=1;
    }
}


var btn_hankook = document.getElementById('hankook'),
    baterias_hankook= document.getElementById('grid-hankook');
    
function muestra_hankook()
{
    contador=0;
    limpiar();
    if(contador==0)
    {
        baterias_hankook.classList.add('opciones');
        contador=1;
    }
}


var btn_karson = document.getElementById('karson'),
    baterias_karson= document.getElementById('grid-karson');
    
function muestra_karson()
{
    contador=0;
    limpiar();
    if(contador==0)
    {
        baterias_karson.classList.add('opciones');
        contador=1;
    }
}

/*ejecuciones baterias*/
btn_autobatt.addEventListener('click',muestra_autobatt,true)    
btn_autostyle.addEventListener('click',muestra_autostyle,true)
btn_bosch.addEventListener('click',muestra_bosch,true)    
btn_hankook.addEventListener('click',muestra_hankook,true)    
btn_karson.addEventListener('click',muestra_karson,true)    



/*FUNCIONES LUBRICANTES*/
var btn_lubricantes = document.getElementById('lubricantes'),
    lubricantes= document.getElementById('grid-lubri');
    
function muestra_lubricantes()
{
    contador=0;
    limpiar();
    if(contador==0)
    {
        lubricantes.classList.add('opciones');
        contador=1;
    }
}

/*ejecuciones baterias*/
btn_lubricantes.addEventListener('click',muestra_lubricantes,true)    


function limpiar()
{
    neumaticos_austone.classList.remove('opciones');
    neumaticos_bridgestone.classList.remove('opciones');
    neumaticos_goodyear.classList.remove('opciones');
    neumaticos_continental.classList.remove('opciones');
    baterias_autostyle.classList.remove('opciones');
    baterias_autobatt.classList.remove('opciones');
    baterias_bosch.classList.remove('opciones');
    baterias_hankook.classList.remove('opciones');
    baterias_karson.classList.remove('opciones');  
    lubricantes.classList.remove('opciones');      
}



$('#aumenta').click(function() {
    var i = 1; //contador para asignar id al boton que borrara la fila
    var resultado = i+1;
    if(click==true){
    document.getElementById("res").innerHTML = resultado;
    }
});
