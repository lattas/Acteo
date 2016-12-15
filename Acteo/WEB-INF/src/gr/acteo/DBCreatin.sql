-- DatabaseCreation.sql
--
-- Initial creation of ACTEO database, following ACTEO
-- database diagram, created for the group assignment
-- of the Information Systems Implementation and
-- Architecture module of the Department of Management
-- Science and Technology of the Athens University of
-- Economics and Business. It creates three tables, one
-- for Individual users, one for corporate users and one
-- for the connection of "interest" between them.
--
-- @author Katsigiannis Fotis
-- @author Lattas Alexandros
-- @date 03/11/2016
--
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema of ismgroup39
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ismgroup39` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `ismgroup39` ;

-- -----------------------------------------------------
-- Table ismgroup39.individual
--
-- Holds the information related to the profile of
-- individual users of ACTEO.
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ismgroup39`.`individual` (
  `Email` VARCHAR(255) NOT NULL,
  `Name` VARCHAR(255) NOT NULL,
  `Surname` VARCHAR(255) NOT NULL,
  `Age` DATE NOT NULL,
  `Gender` VARCHAR(45) NULL,
  `Specialty` VARCHAR(45) NULL,
  `CV` VARCHAR(255) NULL,
  `SB` VARCHAR(255) NULL,
  `Photo` VARCHAR(255) NULL,
  PRIMARY KEY (`Email`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table ismgroup39.corporation
--
-- Hold the information related to the profiles of
-- corporate users of ACTEO.
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ismgroup39`.`corporation` (
  `email` VARCHAR(255) NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `logo` VARCHAR(255) NULL,
  `description` MEDIUMTEXT NULL,
  `website` MEDIUMTEXT NULL,
  PRIMARY KEY (`email`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table ismgroup39.Interest
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ismgroup39`.`Interest` (
  `indEmail` VARCHAR(255) NOT NULL,
  `corEmail` VARCHAR(255) NULL,
  PRIMARY KEY (`indEmail`,`corEmail`),
  INDEX `corEmail_idx` (`corEmail` ASC),
  CONSTRAINT `indEmail`
    FOREIGN KEY (`indEmail`)
    REFERENCES `ismgroup39`.`individual` (`email`)
    ON DELETE CASCADE,
 --   ON UPDATE NO ACTION,
  CONSTRAINT `corEmail`
    FOREIGN KEY (`corEmail`)
    REFERENCES `ismgroup39`.`corporation` (`email`)
    ON DELETE CASCADE)
--    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table ismgroup39.user
-- -----------------------------------------------------

CREATE TABLE user (
	`email` VARCHAR(255) NOT NULL,
	`password` VARCHAR(255) NOT NULL,
    PRIMARY KEY (email)
)

-- -----------------------------------------------------
-- Foreign keys on individuals and coprorations to user
-- -----------------------------------------------------

ALTER TABLE individual ADD FOREIGN KEY (email) REFERENCES user(email)
ALTER TABLE corporation ADD FOREIGN KEY (email) REFERENCES user(email)
