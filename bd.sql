-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema demo1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema demo1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `demo1` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `demo1` ;

-- -----------------------------------------------------
-- Table `demo1`.`person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `demo1`.`person` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `fio` VARCHAR(45) NOT NULL COMMENT '',
  `adres` VARCHAR(100) NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `demo1`.`phone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `demo1`.`phone` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `num` VARCHAR(15) NOT NULL COMMENT '',
  `comment` VARCHAR(10) NULL COMMENT '',
  `person_id` INT NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '',
  INDEX `fk_phone_person_idx` (`person_id` ASC)  COMMENT '',
  CONSTRAINT `fk_phone_person`
    FOREIGN KEY (`person_id`)
    REFERENCES `demo1`.`person` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
