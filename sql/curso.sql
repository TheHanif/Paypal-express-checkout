SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

CREATE DATABASE IF NOT EXISTS `draftcourse` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `draftcourse`;

CREATE TABLE IF NOT EXISTS `Student` (
  `StudentId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DisplayName` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `FirstName` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `LastName1` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `LastName2` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `StudentEmail` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `GenderId` tinyint(4) NOT NULL,
  PRIMARY KEY (`StudentId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 COMMENT='contiene la informacion de alumnos';


CREATE TABLE IF NOT EXISTS `Gender` (
  `GenderId` tinyint(4) unsigned NOT NULL,
  `DisplayName` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`GenderId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `Category` (
  `CategoryId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ParentId` int(10) unsigned DEFAULT NULL COMMENT 'Para permitir sub-categorias infinitas si son necesarias a futuro',
  `DisplayName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`CategoryId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 COMMENT='contiene las categorias';


CREATE TABLE IF NOT EXISTS `course` (
  `CourseId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DisplayName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Description` text COLLATE utf8_unicode_ci,
  `StartDate` date DEFAULT NULL,
  `Issued` datetime DEFAULT NULL DEFAULT '1900-01-01 00:00:00',
  `Status` bit(1) DEFAULT NULL COMMENT '1 activo',
  PRIMARY KEY (`CourseId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 COMMENT='contiene la relacion de los cursos';


CREATE TABLE IF NOT EXISTS `CourseStudent` (
  `CourseStudentId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CourseId` int(10) unsigned NOT NULL,
  `StudentId` int(10) unsigned NOT NULL,
  `Approved` bit(1) DEFAULT NULL,
  `Score` float unsigned DEFAULT NULL,
  PRIMARY KEY (`CourseStudentId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 COMMENT='relacion Alumno con el curso que ha tomado';


CREATE TABLE IF NOT EXISTS `Post` (
  `PostId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DisplayName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Approved` datetime NOT NULL DEFAULT '1900-01-01 00:00:00',
  `Autor` tinyint(4) NOT NULL,
  `CategoryId` tinyint(4) NOT NULL,
  PRIMARY KEY (`PostId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 COMMENT='tabla que contiene las publicaciones\r\ncategoria hace join con tabla categorias';


CREATE TABLE IF NOT EXISTS `Message` (
  `MessageId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PostId` int(10) unsigned NOT NULL COMMENT 'hace join con id Post',
  `DisplayName` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`MessageId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 COMMENT='contiene el texto del post';

