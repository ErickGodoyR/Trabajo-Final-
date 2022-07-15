CREATE TABLE `negocio`.`ventas` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(60) NOT NULL,
  `marca` VARCHAR(60) NULL,
  `nombre` VARCHAR(80) NULL,
  `detalle` VARCHAR(80) NULL,
  `precio` DOUBLE NULL,
  `stock` INT NULL,
  `idcategoria` VARCHAR(60) NULL,
  `ventas` INT NULL,
  `estado` VARCHAR(45) NULL,
  PRIMARY KEY (`id`, `sku`));
