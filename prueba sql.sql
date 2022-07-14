use negocio;

select * from carrito;


select * from producto where sku='3000101';



update producto  as p inner join carrito as c on p.sku=c.sku 
set p.stock = p.stock-c.cantidad;