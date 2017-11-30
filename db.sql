SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
/* Crearea celor 2 tabele pt BAZA DE DATE: MANAGER DE CONTACTE */

CREATE DATABASE `contacte` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `contacte`;

/* 1. tabela PERSOANA */
CREATE TABLE IF NOT EXISTS `persoana` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `nume` varchar(50) DEFAULT NULL,
  `porecla` varchar(50) DEFAULT NULL,
  `domiciliu` varchar(200) DEFAULT NULL,
  `zi_nastere` date,
  `note` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_persoana` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


/* 2. tabela DATE_DE_CONTACT */

CREATE TABLE IF NOT EXISTS `date_de_contact` (
  `id` smallint(5)  NOT NULL AUTO_INCREMENT,
  `persoana_id` smallint(5) DEFAULT NULL,
  `e_mail` varchar(30) DEFAULT NULL,
  `site` varchar(100) DEFAULT NULL,
  `telefon` int(11) NOT NULL,
  `telefon_secundar` int(11) NOT NULL,
  
  PRIMARY KEY (`id`),
  KEY `id_date_de_contact` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
