-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versione server:              10.4.24-MariaDB - mariadb.org binary distribution
-- S.O. server:                  Win64
-- HeidiSQL Versione:            11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dump della struttura del database anagrafe
CREATE DATABASE IF NOT EXISTS `anagrafe` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `anagrafe`;

-- Dump della struttura di tabella anagrafe.indirizzi
CREATE TABLE IF NOT EXISTS `indirizzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `persona_id` int(11) NOT NULL,
  `indirizzo` varchar(200) DEFAULT NULL,
  `citta` varchar(50) DEFAULT NULL,
  `CAP` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `persona_id` (`persona_id`),
  CONSTRAINT `indirizzi_ibfk_1` FOREIGN KEY (`persona_id`) REFERENCES `persone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Dump dei dati della tabella anagrafe.indirizzi: ~2 rows (circa)
/*!40000 ALTER TABLE `indirizzi` DISABLE KEYS */;
INSERT INTO `indirizzi` (`id`, `persona_id`, `indirizzo`, `citta`, `CAP`) VALUES
	(5, 1, 'Via Roma 1', 'Milano', '20121'),
	(6, 2, 'Piazza del Popolo 5', 'Roma', '00187');
/*!40000 ALTER TABLE `indirizzi` ENABLE KEYS */;

-- Dump della struttura di tabella anagrafe.persone
CREATE TABLE IF NOT EXISTS `persone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `cognome` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `data_di_nascita` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dump dei dati della tabella anagrafe.persone: ~2 rows (circa)
/*!40000 ALTER TABLE `persone` DISABLE KEYS */;
INSERT INTO `persone` (`id`, `nome`, `cognome`, `email`, `data_di_nascita`, `telefono`) VALUES
	(1, 'Mario', 'Rossi', 'mario.rossi@email.com', NULL, '+39 1234567890'),
	(2, 'Laura', 'Bianchi', 'laura.bianchi@email.com', NULL, '+39 9876543210');
/*!40000 ALTER TABLE `persone` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
persone