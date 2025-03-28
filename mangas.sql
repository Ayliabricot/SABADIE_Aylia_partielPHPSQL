-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 27 mars 2025 à 12:55
-- Version du serveur : 5.7.24
-- Version de PHP : 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mangas`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteurs`
--

CREATE TABLE `auteurs` (
  `id` int(10) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `naissance` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `auteurs`
--

INSERT INTO `auteurs` (`id`, `nom`, `naissance`) VALUES
(1, 'Kentarou Miura', 1966),
(2, 'Hirohiko Araki', 1960),
(3, 'Takehiko Inoue', 1967),
(4, 'Eiichiro Oda', 1975),
(5, 'Naoki Urasawa', 1960);

-- --------------------------------------------------------

--
-- Structure de la table `mangas`
--

CREATE TABLE `mangas` (
  `id` int(10) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `année` int(10) NOT NULL,
  `note` float NOT NULL,
  `description` varchar(50) NOT NULL,
  `auteur_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mangas`
--

INSERT INTO `mangas` (`id`, `titre`, `année`, `note`, `description`, `auteur_id`) VALUES
(1, 'Berserk', 1989, 9.47, 'Gore, Military, Psychological', '1'),
(2, 'JoJo no Kimyou na Bouken Part 7: Steel Ball Run', 2004, 9.32, 'Historical', '2'),
(3, 'Vagabond', 1998, 9.27, 'Historical, Samurai', '3'),
(4, 'One Piece', 1997, 9.22, 'Action, Adventure, Fantasy', '4'),
(5, 'Monster', 1994, 9.14, 'Adult Cast, Psychological', '5');

-- --------------------------------------------------------

--
-- Structure de la table `personnages`
--

CREATE TABLE `personnages` (
  `id` int(10) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `manga_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personnages`
--

INSERT INTO `personnages` (`id`, `nom`, `description`, `manga_id`) VALUES
(1, 'Casca', 'Main', 1),
(2, 'Griffith', 'Main', 1),
(3, 'Brando Diego', 'Main', 2),
(4, 'Joestar Johnny', 'Main', 2),
(5, 'Honiden Matahachi', 'Main', 3),
(6, 'Miyamoto Musashi', 'Main', 3),
(7, 'Luffy', 'Main', 4),
(8, 'Zoro', 'Main', 4),
(9, 'Anna Liebert', 'Main', 5),
(10, 'JohanLiebert', 'Main', 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auteurs`
--
ALTER TABLE `auteurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mangas`
--
ALTER TABLE `mangas`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personnages`
--
ALTER TABLE `personnages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auteurs`
--
ALTER TABLE `auteurs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `mangas`
--
ALTER TABLE `mangas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `personnages`
--
ALTER TABLE `personnages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
