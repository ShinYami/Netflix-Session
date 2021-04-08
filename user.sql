-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 08 avr. 2021 à 13:47
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `netflix`
--

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `secret` text NOT NULL,
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `blocked` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `secret`, `creation_date`, `blocked`) VALUES
(1, 'test@gmail.com', 'pq3dc7507b638a22d503d814636b62d71479faaf51471', 'ef52f783ce3d70e8259b4aa09a1a4f1a33d403d51617872160', '2021-04-08 10:56:00', 0),
(2, 'test@live.com', 'pq3dc7507b638a22d503d814636b62d71479faaf51471', '4f0c20c88395b72ec631849ff792e73e2ed1c6861617872262', '2021-04-08 10:57:42', 0),
(3, 'jetest@live.com', 'pq3dc7507b638a22d503d814636b62d71479faaf51471', '7ef03ec9ef242f2562d4b53182d875da47fd2b231617875897', '2021-04-08 11:58:17', 0),
(4, 'test1@live.fr', 'pq3c644467a2cab079ee17d61b97fe86ff36720fc5171', '8eab8ce8db887b27280708bc946e4afdc6faad5a1617877837', '2021-04-08 12:30:37', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
