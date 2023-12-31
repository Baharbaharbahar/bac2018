-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 28 déc. 2023 à 14:56
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bdbac2018`
--

-- --------------------------------------------------------

--
-- Structure de la table `evaluation`
--

CREATE TABLE `evaluation` (
  `dateeval` date NOT NULL,
  `idhote` varchar(30) NOT NULL,
  `noteaccueil` int(11) NOT NULL,
  `noterest` int(11) NOT NULL,
  `noteextre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `evaluation`
--

INSERT INTO `evaluation` (`dateeval`, `idhote`, `noteaccueil`, `noterest`, `noteextre`) VALUES
('2017-05-22', '10', 3, 1, 0),
('2017-06-15', '20', 3, 2, 2),
('2017-06-15', '30', 2, 1, 2),
('2018-02-20', '10', 2, 1, 1),
('2018-04-13', '30', 2, 2, 7);

-- --------------------------------------------------------

--
-- Structure de la table `hote`
--

CREATE TABLE `hote` (
  `idhotel` int(11) NOT NULL,
  `nomhotel` varchar(50) NOT NULL,
  `telhotel` varchar(8) NOT NULL,
  `villehotel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `hote`
--

INSERT INTO `hote` (`idhotel`, `nomhotel`, `telhotel`, `villehotel`) VALUES
(10, '5 stars', '76333444', 'tozeur'),
(20, 'globe', '78111111', 'tabarka'),
(30, 'the sun', '73888888', 'monastir');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`dateeval`,`idhote`);

--
-- Index pour la table `hote`
--
ALTER TABLE `hote`
  ADD PRIMARY KEY (`idhotel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
