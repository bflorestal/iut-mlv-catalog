-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 29 Mai 2020 à 00:45
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `emballage`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `prix` int(11) NOT NULL,
  `image` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`titre`, `description`, `prix`, `image`) VALUES
('Mario', 'Amiibo Mario de Super Mario', 12, 'mario.jpg'),
('Luigi', 'Amiibo Luigi de Super Mario', 12, 'luigi.jpg'),
('Dr. Mario', 'Amiibo Dr. Mario ', 24, 'dr_mario.jpg'),
('Bowser', 'Amiibo Bowser de Super Mario', 12, 'bowser.jpg'),
('Peach', 'Amiibo Peach de Super Mario', 36, 'peach.jpg'),
('Yoshi', 'Amiibo Yoshi de Yoshi''s Island', 24, 'yoshi.jpg'),
('Samus', 'Amiibo Samus de Metroid', 12, 'samus.jpg'),
('Kirby', 'Amiibo Kirby de Kirby''s Dream Land', 12, 'kirby.jpg'),
('Link', 'Amiibo Link de The Legend of Zelda', 12, 'link.jpg'),
('Pikachu', 'Amiibo Pikachu de Pokemon', 12, 'pikachu.jpg'),
('Ness', 'Amiibo Ness d''Earthbound', 12, 'ness.jpg'),
('Captain Falcon', 'Amiibo Captain Falcon de F-ZERO', 12, 'falcon.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
