-- MySQL Script generated by MySQL Workbench
-- Sun Jul 10 23:35:10 2022
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
-- Table `negocio`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `negocio`.`usuario` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(80) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  `password` VARCHAR(80) NOT NULL,
  `habilitado` TINYINT NOT NULL,
  PRIMARY KEY (`username`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `negocio`.`rol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `negocio`.`rol` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `idrol` INT UNSIGNED NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idrol`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `negocio`.`usuario_rol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `negocio`.`usuario_rol` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(80) NOT NULL,
  `idrol` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_usuario_rol_usu1_idx` (`username` ASC),
  INDEX `fk_usuario_rol_idx` (`idrol` ASC),
  CONSTRAINT `fk_usuario_rol_usu1`
    FOREIGN KEY (`username`)
    REFERENCES `negocio`.`usuario` (`username`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_usuario_rol`
    FOREIGN KEY (`idrol`)
    REFERENCES `negocio`.`rol` (`idrol`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
