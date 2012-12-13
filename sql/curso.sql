CREATE DATABASE IF NOT EXISTS `curso`; 
USE `curso`;

CREATE TABLE `alumnos` (
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(150) NULL DEFAULT NULL,
  `email` VARCHAR(150) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
)
COMMENT='contiene la informacion de alumnos'
COLLATE='latin1_swedish_ci'
ENGINE=MyISAM;
