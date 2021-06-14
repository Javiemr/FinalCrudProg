-- MySQL Script generated by MySQL Workbench
-- Mon Jun 14 13:42:12 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema polla
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema polla
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `polla` DEFAULT CHARACTER SET utf8 ;
USE `polla` ;

-- -----------------------------------------------------
-- Table `polla`.`credencial`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `polla`.`credencial` (
  `CodUsu` INT NOT NULL AUTO_INCREMENT,
  `NomUsu` VARCHAR(45) NOT NULL,
  `PassUsu` VARCHAR(45) NOT NULL,
  `EmailUsu` VARCHAR(45) NOT NULL,
  `AdminUsu` TINYINT NULL,
  PRIMARY KEY (`CodUsu`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `polla`.`Zona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `polla`.`Zona` (
  `CodZona` INT NOT NULL,
  `NomZona` VARCHAR(45) NOT NULL,
  `Dificultad` SMALLINT(3) NOT NULL,
  PRIMARY KEY (`CodZona`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `polla`.`infodino`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `polla`.`infodino` (
  `CodDino` INT NOT NULL AUTO_INCREMENT,
  `NomDino` VARCHAR(45) NOT NULL,
  `Domesticable` TINYINT(1) NOT NULL,
  `Utilidad` VARCHAR(45) NULL,
  `Zona_CodZona` INT NOT NULL,
  PRIMARY KEY (`CodDino`),
  INDEX `fk_infodino_Zona_idx` (`Zona_CodZona` ASC) VISIBLE,
  CONSTRAINT `fk_infodino_Zona`
    FOREIGN KEY (`Zona_CodZona`)
    REFERENCES `polla`.`Zona` (`CodZona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
