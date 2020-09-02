-- --------------------------------------------------------
-- Host:                         remotemysql.com
-- Server Version:               8.0.13-4 - Percona Server (GPL), Release '4', Revision 'f0a32b8'
-- Server Betriebssystem:        debian-linux-gnu
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Exportiere Struktur von Tabelle Jlhnvn2I4S.ActiveLieferant
CREATE TABLE IF NOT EXISTS `ActiveLieferant` (
  `LieferantID` int(11) NOT NULL,
  `Active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Exportiere Daten aus Tabelle Jlhnvn2I4S.ActiveLieferant: ~0 rows (ungefähr)
DELETE FROM `ActiveLieferant`;
/*!40000 ALTER TABLE `ActiveLieferant` DISABLE KEYS */;
INSERT INTO `ActiveLieferant` (`LieferantID`, `Active`) VALUES
	(1, 1);
/*!40000 ALTER TABLE `ActiveLieferant` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle Jlhnvn2I4S.Bestellungen
CREATE TABLE IF NOT EXISTS `Bestellungen` (
  `BestellNummer` int(11) NOT NULL AUTO_INCREMENT,
  `Besteller` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PizzaNummer` int(11) NOT NULL,
  `ZusatzWunsch` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Menge` int(11) NOT NULL,
  `Bestellzeitpunkt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `BestellNummer` (`BestellNummer`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Exportiere Daten aus Tabelle Jlhnvn2I4S.Bestellungen: ~0 rows (ungefähr)
DELETE FROM `Bestellungen`;
/*!40000 ALTER TABLE `Bestellungen` DISABLE KEYS */;
INSERT INTO `Bestellungen` (`BestellNummer`, `Besteller`, `PizzaNummer`, `ZusatzWunsch`, `Menge`, `Bestellzeitpunkt`) VALUES
	(1, 'dani', 8, '', 12, '2020-08-19 16:29:38'),
/*!40000 ALTER TABLE `Bestellungen` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle Jlhnvn2I4S.Lieferant
CREATE TABLE IF NOT EXISTS `Lieferant` (
  `LieferantID` int(11) NOT NULL AUTO_INCREMENT,
  `LieferantName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  KEY `LieferantID` (`LieferantID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Exportiere Daten aus Tabelle Jlhnvn2I4S.Lieferant: ~0 rows (ungefähr)
DELETE FROM `Lieferant`;
/*!40000 ALTER TABLE `Lieferant` DISABLE KEYS */;
INSERT INTO `Lieferant` (`LieferantID`, `LieferantName`) VALUES
	(1, 'TestHey');
/*!40000 ALTER TABLE `Lieferant` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle Jlhnvn2I4S.Pizzas
CREATE TABLE IF NOT EXISTS `Pizzas` (
  `PizzaNummer` int(11) NOT NULL AUTO_INCREMENT,
  `ExterneArtikelNummer` int(11) NOT NULL,
  `PizzaLieferant` int(11) NOT NULL,
  `PizzaName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Zutaten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Preis` decimal(5,2) NOT NULL,
  KEY `PizzaNummer` (`PizzaNummer`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Exportiere Daten aus Tabelle Jlhnvn2I4S.Pizzas: ~25 rows (ungefähr)
DELETE FROM `Pizzas`;
/*!40000 ALTER TABLE `Pizzas` DISABLE KEYS */;
INSERT INTO `Pizzas` (`PizzaNummer`, `ExterneArtikelNummer`, `PizzaLieferant`, `PizzaName`, `Zutaten`, `Preis`) VALUES
	(1, 10, 1, 'Käse', 'Tomatensoße', 6.50),
	(2, 11, 1, 'Salami', 'Tomatensoße, Käse', 6.50),
	(3, 13, 1, 'Schinken', 'Tomatensoße, Käse', 6.50),
	(4, 14, 1, 'Champignons', 'Tomatensoße, Käse', 6.50),
	(5, 15, 1, 'Thunfisch', 'Tomatensoße, Käse', 6.50),
	(6, 16, 1, 'Hackfleisch', 'Tomatensoße, Käse', 6.50),
	(7, 17, 1, 'Sardellen', 'Tomatensoße, Käse', 6.50),
	(8, 18, 1, 'Artischoken', 'Tomatensoße, Käse', 6.50),
	(9, 19, 1, 'Zwiebeln, Knoblauch', 'Tomatensoße, Käse', 6.50),
	(10, 21, 1, 'Schinken, Salami', 'Tomatensoße, Käse', 6.50),
	(11, 22, 1, 'Champignongs, Salami', 'Tomatensoße, Käse', 6.50),
	(12, 23, 1, 'Schinken, Champignongs', 'Tomatensoße, Käse', 6.50),
	(13, 24, 1, 'Thunfisch, Zwiebeln', 'Tomatensoße, Käse', 6.50),
	(14, 25, 1, 'Hawaii', 'Schinken, Ananas, Curry, Tomatensoße, Käse', 6.50),
	(15, 26, 1, 'Mozarella', 'Tomaten, Mozarella, Tomatensoße, Käse', 6.50),
	(16, 29, 1, 'Türkische Salami (Sucuk)', 'Tomatensoße, Käse', 6.50),
	(17, 30, 1, 'Salami, Schinken, Champignons', 'Tomatensoße, Käse', 6.50),
	(18, 31, 1, 'Salami, Schinken, Hackfleisch', 'Tomatensoße, Käse', 6.50),
	(19, 32, 1, 'Salami, Champignongs, Hackfleisch', 'Tomatensoße, Käse', 6.50),
	(20, 33, 1, 'Schinken, Champignongs, Hackfleisch', 'Tomatensoße, Käse', 6.50),
	(21, 34, 1, 'Schinken, Spargel, Ei', 'Tomatensoße, Käse', 6.50),
	(22, 35, 1, 'Schinken, Zwiebeln, Ei', 'Tomatensoße, Käse', 6.50),
	(23, 36, 1, 'Schinken, Champignons, Artischoken', 'Tomatensoße, Käse', 6.50),
	(24, 37, 1, 'Mais, Ananas, Paprika', 'Tomatensoße, Käse', 6.50),
	(25, 38, 1, 'Champignons, Zwiebeln, Paprika', 'Tomatensoße, Käse', 6.50),
	(26, 39, 1, 'Schinken, Zwiebeln, Paprika', 'Tomatensoße, Käse', 6.50);
/*!40000 ALTER TABLE `Pizzas` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
