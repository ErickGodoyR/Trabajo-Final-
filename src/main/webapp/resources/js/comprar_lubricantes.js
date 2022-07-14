/*LUBRICANTES*/
if(btn_compra=document.getElementById('lubri-1')){  
    cnt_lubri=0;
    btn_compra.addEventListener('click', () => {
        if(cnt_lubri<1){
        alert("LUBRICANTE SINTETICO 5W-30 4 LTS");
        valor=45190;
        console.log("El producto seleccionado tiene un valor de: " +valor)
        cnt_lubri+=1;}
        else{
        alert("Producto ya fue comprado");}
    })} 
    
if(btn_compra=document.getElementById('lubri-2')){
    cnt_lubri1=0;
    btn_compra.addEventListener('click', () => {
        if(cnt_lubri1<1){
            alert("LUBRICANTE SINTETICO 10W-40 4 LTS");
            valor=29990;
            console.log("El producto seleccionado tiene un valor de: " +valor)
            cnt_lubri1+=1;}
        else{
            alert("Producto ya fue comprado");}
})}

if(btn_compra=document.getElementById('lubri-3')){  
    cnt_lubri2=0;
    btn_compra.addEventListener('click', () => {
        if(cnt_lubri2<1){
        alert("ACEITE MOTOR 4 LTS");
        valor=18990;
        console.log("El producto seleccionado tiene un valor de: " +valor)
        cnt_lubri2+=1;}
        else{
        alert("Producto ya fue comprado");}
})}

if(btn_compra=document.getElementById('lubri-4')){  
    cnt_lubri3=0;
btn_compra.addEventListener('click', () => {
if(cnt_lubri3<1){
    alert("LUBRICANTE SINTETICO 5W-30 1LTS");
    valor=13390;
    console.log("El producto seleccionado tiene un valor de: " +valor)
    cnt_lubri3+=1;}
    else{
        alert("Producto ya fue comprado");}
})}

if(btn_compra=document.getElementById('lubri-5')){  
    cnt_lubri4=0;
    btn_compra.addEventListener('click', () => {
    if(cnt_lubri4<1){
        alert("ACEITE MOTOR 1LTS");
        valor=5290;
        console.log("El producto seleccionado tiene un valor de: " +valor)
        cnt_lubri4+=1;}
        else{
            alert("Producto ya fue comprado");}
})}

