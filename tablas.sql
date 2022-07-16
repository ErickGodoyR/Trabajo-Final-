-- MySQL Script generated by MySQL Workbench
-- Fri Jul 15 18:53:44 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema negocio
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema negocio
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `negocio` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `negocio` ;

-- -----------------------------------------------------
-- Table `negocio`.`categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `negocio`.`categoria` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `idcategoria` VARCHAR(60) NOT NULL,
  `categoria` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`idcategoria`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `negocio`.`producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `negocio`.`producto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(60) NOT NULL,
  `marca` VARCHAR(60) NOT NULL,
  `nombre` VARCHAR(80) NOT NULL,
  `detalle` VARCHAR(80) NOT NULL,
  `precio` DOUBLE NOT NULL,
  `stock` INT UNSIGNED NOT NULL,
  `idcategoria` VARCHAR(60) NOT NULL,
  `ventas` INT UNSIGNED NOT NULL,
  `estado` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`sku`, `idcategoria`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  INDEX `fk_producto_categoria_idx` (`idcategoria` ASC),
  CONSTRAINT `fk_producto_categoria`
    FOREIGN KEY (`idcategoria`)
    REFERENCES `negocio`.`categoria` (`idcategoria`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 54
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `negocio`.`rol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `negocio`.`rol` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `idrol` INT NOT NULL,
  `nombre` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `negocio`.`rol_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `negocio`.`rol_usuario` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `idrol` INT NOT NULL,
  `username` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `negocio`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `negocio`.`usuario` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NOT NULL,
  `nombre` VARCHAR(50) NOT NULL,
  `email` VARCHAR(60) NOT NULL,
  `password` VARCHAR(80) NOT NULL,
  `habilitado` TINYINT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 26
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `negocio`.`ventas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `negocio`.`ventas` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(60) NOT NULL,
  `marca` VARCHAR(60) NULL DEFAULT NULL,
  `nombre` VARCHAR(80) NULL DEFAULT NULL,
  `detalle` VARCHAR(80) NULL DEFAULT NULL,
  `stock` INT NULL DEFAULT NULL,
  `idcategoria` VARCHAR(60) NULL DEFAULT NULL,
  `ventas` INT NULL DEFAULT NULL,
  `estado` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `sku`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
