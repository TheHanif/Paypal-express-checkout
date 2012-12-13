CREATE DATABASE IF NOT EXISTS `curso` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `curso`;



CREATE TABLE IF NOT EXISTS `alumnos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='contiene la informacion de alumnos';

CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='contiene las categorias';


CREATE TABLE IF NOT EXISTS `cursos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `descripcion` text,
  `inicio` date DEFAULT NULL,
  `publicado` datetime DEFAULT NULL,
  `status` bit(1) DEFAULT NULL COMMENT '1 activo',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='contiene la relacion de los cursos';


CREATE TABLE IF NOT EXISTS `cursos_alumnos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `idcurso` int(10) DEFAULT NULL,
  `idalumno` int(10) DEFAULT NULL,
  `aprovado` bit(1) DEFAULT NULL,
  `calificacion` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='relacion Alumno con el curso que ha tomado';


CREATE TABLE IF NOT EXISTS `post` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `publicado` datetime NOT NULL,
  `autor` tinyint(4) NOT NULL,
  `categoria` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabla que contiene las publicaciones\r\ncategoria hace join con tabla categorias';


CREATE TABLE IF NOT EXISTS `texto` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `idpar` int(10) DEFAULT NULL COMMENT 'hace join con id post',
  `contenido` longtext COMMENT 'hace join con id post',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='contiene el texto del post';

