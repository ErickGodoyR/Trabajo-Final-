/*para activar la bd a usar*/
use negocio;

select * from producto where idcategoria = 'lub';
 
 select * from categoria;
 
 
/*CATEGORIA*/
insert into categoria(idcategoria, categoria)
values ('bat', 'baterias'),
('lub', 'lubricantes'),
('neu', 'neumaticos');


/*LUBRICANTES*/
insert into producto(sku, marca, nombre, detalle, precio, stock, idcategoria)
values ('3000101', 'Mobil Super', 'lubricante sintetico', '5w-30 4 lts', '45190', '30', 'lub'),
('3000102', 'Mobil Super', 'lubricante sintetico', '10w-40 4 lts', '29990', '20', 'lub'),
('3000103', 'Mobil Special', 'aceite motor', '','4 lts', '18990', '18', 'lub'),
('3000104', 'Mobil Super', 'lubricante sintetico', '5w-30 1 lts', '13390', '40', 'lub'),
('3000105', 'Mobil Delvac', 'aceite motor', '1 lts', '5290', '50', 'lub');

/*BATERIAS*/
insert into producto(sku, marca, nombre, detalle, precio, stock, idcategoria)
values ('2000101', 'autobatt', 'autobatt 90A', '+ izquierdo 735cc', '114990', '10', 'bat'),
('2000102', 'autobatt', 'autobatt 60A', '+ derecho 530cc', '64890', '5', 'bat'),
('2000201', 'autostyle', 'autostyle 90A', '+ izquierdo 780cc', '112990', '8', 'bat'),
('2000202', 'autostyle', 'autostyle 60A', '+ derecho 470cc', '63790', '6', 'bat'),
('2000203', 'autostyle', 'autostyle 45A', '+ derecho 400cc', '56090', '10', 'bat'),
('2000301', 'bosch', 'bosch 55A', '+ derecho 390cc', '65990', '10', 'bat'),
('2000302', 'bosch', 'bosch 62A', '+ derecho 560cc', '120990', '5', 'bat'),
('2000303', 'bosch', 'bosch 55A', '+ izquierdo 460cc', '93990', '4', 'bat'),
('2000304', 'bosch', 'bosch 55A', '+ derecho 460cc', '93990', '9', 'bat'),
('2000401', 'hankook', 'hankook 60A', '+ derecho 550cc', '89990', '12', 'bat'),
('2000402', 'hankook', 'hankook 70A', '+ derecho 600cc', '101990', '7', 'bat'),
('2000403', 'hankook', 'hankook 45A', '+ derecho 450cc', '72990', '15', 'bat'),
('2000404', 'hankook', 'hankook 90A', '+ izquierdo 750cc', '114990', '4', 'bat'),
('2000501', 'karson', 'karson 55A', '+ derecho 360cc', '48990', '12', 'bat'),
('2000502', 'karson', 'karson 55A', '+ derecho 315cc', '32990', '16', 'bat');

/*neumaticos*/
insert into producto(sku, marca, nombre, detalle, precio, stock, idcategoria)
values ('1000101', 'austone', 'austone 175/70', 'R-13', '29990', '15', 'neu'),
('1000102', 'austone', 'austone 175/65', 'R-14', '43990', '8', 'neu'),
('1000103', 'austone', 'austone 205/55', 'R-16', '59990', '6', 'neu'),
('1000104', 'austone', 'austone 185/65', 'R-15', '54990', '12', 'neu'),
('1000105', 'austone', 'austone 145/70', 'R-12', '31390', '5', 'neu'),
('1000201', 'bridgestone', 'bridgestone dueler mt674', '265/65 R17 12', '325800', '4', 'neu'),
('1000202', 'bridgestone', 'bridgestone Potenza RE050A', '225/40 R18 9', '293200', '6', 'neu'),
('1000203', 'bridgestone', 'bridgestone Dueler HP', '255/55 R18', '234990', '8', 'neu'),
('1000204', 'bridgestone', 'bridgestone Dueler A/T', '245/75 R16', '168990', '3', 'neu'),
('1000205', 'bridgestone', 'bridgestone Potenza GIII', '185/65 R14 86H', '64990', '9', 'neu'),
('1000301', 'goodyear', 'goodyear wrangler armatrac', '235/70 R16', '131990', '8', 'neu'),
('1000302', 'goodyear', 'goodyear wrangler duratrac', '225/75 R16', '319800', '5', 'neu'),
('1000303', 'goodyear', 'goodyear wrangler adventure', '245/75 R16', '163990', '8', 'neu'),
('1000304', 'goodyear', 'goodyear Eagle Asynmetric', '235/40 R18', '190990', '4', 'neu'),
('1000305', 'goodyear', 'goodyear Efficientgrip', '175/65 R14', '61990', '12', 'neu'),
('1000401', 'continental', 'continental Powercontact 2', '205/60 R16', '131990', '4', 'neu'),
('1000402', 'continental', 'continental SP 5', '225/45 R17', '224990', '2', 'neu'),
('1000403', 'continental', 'continental 100YXI SP', '295/30 R19', '334990', '5', 'neu'),
('1000404', 'continental', 'continental SP 5PMO', '295/30 R20', '560990', '3'),
('1000405', 'continental', 'continental XI FR PRM 6', '205/40 R17', '169990', '7');



select * from productos where categoria = 'neumaticos';

select * from productos where categoria = 'lubricantes';

select stock from productos where categoria = 'lubricantes' and id = 'lubri_1';
