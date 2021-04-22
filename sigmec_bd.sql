-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.14 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para sigmec
CREATE DATABASE IF NOT EXISTS `sigmec` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sigmec`;

-- Volcando estructura para tabla sigmec.armado
CREATE TABLE IF NOT EXISTS `armado` (
  `id_armado` int(11) NOT NULL AUTO_INCREMENT,
  `ns_gabinete` varchar(100) DEFAULT NULL,
  `ns_monitor` varchar(100) DEFAULT NULL,
  `ns_teclado` varchar(100) DEFAULT NULL,
  `ns_mouse` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_armado`),
  KEY `ns_gabinete` (`ns_gabinete`),
  KEY `ns_monitor` (`ns_monitor`),
  KEY `ns_teclado` (`ns_teclado`),
  KEY `ns_mouse` (`ns_mouse`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla sigmec.armado: 0 rows
/*!40000 ALTER TABLE `armado` DISABLE KEYS */;
/*!40000 ALTER TABLE `armado` ENABLE KEYS */;

-- Volcando estructura para tabla sigmec.encargado
CREATE TABLE IF NOT EXISTS `encargado` (
  `id_encargado` int(11) NOT NULL AUTO_INCREMENT,
  `id_armado` int(11) DEFAULT NULL,
  `id_empleado` int(11) DEFAULT NULL,
  `mobiepass` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id_encargado`),
  KEY `id_armado` (`id_armado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla sigmec.encargado: 0 rows
/*!40000 ALTER TABLE `encargado` DISABLE KEYS */;
/*!40000 ALTER TABLE `encargado` ENABLE KEYS */;

-- Volcando estructura para tabla sigmec.gabinete
CREATE TABLE IF NOT EXISTS `gabinete` (
  `ns_gabinete` varchar(100) NOT NULL,
  `n_propio` varchar(3) DEFAULT NULL,
  `estatus` enum('ACTIVO','LIBRE','MANTENIMIENTO','BAJA') DEFAULT NULL,
  `observaciones` text,
  PRIMARY KEY (`ns_gabinete`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla sigmec.gabinete: 0 rows
/*!40000 ALTER TABLE `gabinete` DISABLE KEYS */;
/*!40000 ALTER TABLE `gabinete` ENABLE KEYS */;

-- Volcando estructura para tabla sigmec.monitor
CREATE TABLE IF NOT EXISTS `monitor` (
  `ns_monitor` varchar(100) NOT NULL,
  `n_propio` varchar(3) DEFAULT NULL,
  `estatus` enum('ACTIVO','LIBRE','MANTENIMIENTO','BAJA') DEFAULT NULL,
  `observaciones` text,
  PRIMARY KEY (`ns_monitor`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla sigmec.monitor: 0 rows
/*!40000 ALTER TABLE `monitor` DISABLE KEYS */;
/*!40000 ALTER TABLE `monitor` ENABLE KEYS */;

-- Volcando estructura para tabla sigmec.mouse
CREATE TABLE IF NOT EXISTS `mouse` (
  `ns_mouse` varchar(100) NOT NULL,
  `n_propio` varchar(3) DEFAULT NULL,
  `estatus` enum('ACTIVO','LIBRE','MANTENIMIENTO','BAJA') DEFAULT NULL,
  `observaciones` text,
  PRIMARY KEY (`ns_mouse`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla sigmec.mouse: 0 rows
/*!40000 ALTER TABLE `mouse` DISABLE KEYS */;
/*!40000 ALTER TABLE `mouse` ENABLE KEYS */;

-- Volcando estructura para tabla sigmec.reporte
CREATE TABLE IF NOT EXISTS `reporte` (
  `id_reporte` int(11) NOT NULL AUTO_INCREMENT,
  `id_encargado` int(11) DEFAULT NULL,
  `id_responsable` int(11) DEFAULT NULL,
  `observaciones` text,
  `estatus` enum('PENDIENTE','EN PROCESO','FINALIZADO') DEFAULT NULL,
  `fec_hora_P` datetime DEFAULT NULL,
  `fec_hora_EP` datetime DEFAULT NULL,
  `fec_hora_T` datetime DEFAULT NULL,
  PRIMARY KEY (`id_reporte`),
  KEY `id_encargado` (`id_encargado`),
  KEY `id_responsable` (`id_responsable`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla sigmec.reporte: 0 rows
/*!40000 ALTER TABLE `reporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `reporte` ENABLE KEYS */;

-- Volcando estructura para tabla sigmec.responsable
CREATE TABLE IF NOT EXISTS `responsable` (
  `id_responsable` int(11) NOT NULL AUTO_INCREMENT,
  `id_empleado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_responsable`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla sigmec.responsable: 0 rows
/*!40000 ALTER TABLE `responsable` DISABLE KEYS */;
/*!40000 ALTER TABLE `responsable` ENABLE KEYS */;

-- Volcando estructura para tabla sigmec.teclado
CREATE TABLE IF NOT EXISTS `teclado` (
  `ns_teclado` varchar(100) NOT NULL,
  `n_propio` varchar(3) DEFAULT NULL,
  `estatus` enum('ACTIVO','LIBRE','MANTENIMIENTO','BAJA') DEFAULT NULL,
  `observaciones` text,
  PRIMARY KEY (`ns_teclado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla sigmec.teclado: 0 rows
/*!40000 ALTER TABLE `teclado` DISABLE KEYS */;
/*!40000 ALTER TABLE `teclado` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
