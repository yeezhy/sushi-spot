-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 21 juin 2024 à 00:45
-- Version du serveur : 5.5.68-MariaDB
-- Version de PHP : 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `b2-gp93`
--

-- --------------------------------------------------------

--
-- Structure de la table `actualite`
--

CREATE TABLE `actualite` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `description` text CHARACTER SET utf8mb4 NOT NULL,
  `date_creation` date NOT NULL,
  `statut` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `actualite`
--

INSERT INTO `actualite` (`id`, `titre`, `description`, `date_creation`, `statut`) VALUES
(1, 'test', 'test', '2024-04-03', 1);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `nom`) VALUES
(1, 'Patisserie');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `date_creation` datetime NOT NULL,
  `statut` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `nom`, `prenom`, `email`, `telephone`, `date_creation`, `statut`) VALUES
(1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '2024-04-09 06:21:38', 1);

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `complement` varchar(255) NOT NULL,
  `code_postal` varchar(255) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `nom_livraison` varchar(255) NOT NULL,
  `prenom_livraison` varchar(255) NOT NULL,
  `email_livraison` varchar(255) NOT NULL,
  `telephone_livraison` varchar(255) NOT NULL,
  `adresse_livraison` varchar(255) NOT NULL,
  `complement_livraison` varchar(255) NOT NULL,
  `code_postal_livraison` varchar(255) NOT NULL,
  `ville_livraison` varchar(255) NOT NULL,
  `date_creation` datetime NOT NULL,
  `date_visibilite` datetime NOT NULL,
  `statut` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id`, `id_client`, `nom`, `prenom`, `email`, `telephone`, `adresse`, `complement`, `code_postal`, `ville`, `nom_livraison`, `prenom_livraison`, `email_livraison`, `telephone_livraison`, `adresse_livraison`, `complement_livraison`, `code_postal_livraison`, `ville_livraison`, `date_creation`, `date_visibilite`, `statut`) VALUES
(6, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-04-17 15:32:07', '2024-04-17 15:32:07', 'attente'),
(7, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '37 rue voiture', '', '80000', 'Amiens', '2024-04-17 15:41:06', '2024-04-17 15:41:06', 'attente'),
(8, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-14 13:39:46', '2024-05-14 13:39:46', 'attente'),
(9, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-14 13:41:27', '2024-05-14 13:41:27', 'attente'),
(10, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-15 17:41:58', '2024-05-15 17:41:58', 'attente'),
(11, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-15 17:50:17', '2024-05-15 17:50:17', 'attente'),
(12, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '37 rue voiture', '59780', 'Baisieux', 'Tom', 'Fleter', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-15 17:52:15', '2024-05-15 17:52:15', 'attente'),
(13, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', '2024-05-21 14:23:19', '2024-05-21 14:23:19', 'attente'),
(14, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-21 14:52:30', '2024-05-21 14:52:30', 'attente'),
(15, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-30 17:31:15', '2024-05-30 17:31:15', 'attente'),
(16, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '37 rue voiture', '59780', 'Baisieux', 'Tom', 'Fleter', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-30 17:59:07', '2024-05-30 17:59:07', 'attente'),
(17, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-30 18:01:13', '2024-05-30 18:01:13', 'attente'),
(18, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-30 19:17:44', '2024-05-30 19:17:44', 'attente'),
(19, 1, 'zqdqzd', 'qzdqz', 'qzdzqd@qzdqzd.qzddqz', 'dzqdzqd', 'dzqdqz', '', 'zqdqz', 'dzqdzq', 'qzdqzd', 'qzdqzdzq', 'qzdzqd@qzdqzd.qzddqz', 'qzdqzd', 'dzqdzqd', 'zqdqzd', 'zqdzqd', 'qzd', '2024-05-30 19:32:32', '2024-05-30 19:32:32', 'attente'),
(20, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-30 19:41:54', '2024-05-30 19:41:54', 'attente'),
(21, 1, 'Tom', 'Fleter', 'fletertom@gmail.com', '0672599278', '37 rue voiture', '4 rue des moissonneurs', '80000', 'Amiens', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-30 19:43:27', '2024-05-30 19:43:27', 'attente'),
(22, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-30 20:38:08', '2024-05-30 20:38:08', 'attente'),
(23, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-30 20:39:19', '2024-05-30 20:39:19', 'attente'),
(24, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '37 rue voiture', '59780', 'Baisieux', 'Tom', 'Fleter', 'fletertom@gmail.com', '0672599278', '37 rue voiture', '', '80000', 'Amiens', '2024-05-30 20:43:22', '2024-05-30 20:43:22', 'attente'),
(25, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-30 20:43:55', '2024-05-30 20:43:55', 'attente'),
(26, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-31 11:12:32', '2024-05-31 11:12:32', 'attente'),
(27, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-31 11:18:48', '2024-05-31 11:18:48', 'attente'),
(28, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-31 11:19:12', '2024-05-31 11:19:12', 'attente'),
(29, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-31 11:22:46', '2024-05-31 11:22:46', 'attente'),
(30, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '37 rue voiture', '', '80000', 'Amiens', '2024-05-31 11:26:20', '2024-05-31 11:26:20', 'attente'),
(31, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-31 11:29:11', '2024-05-31 11:29:11', 'attente'),
(32, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '37 rue voiture', '59780', 'Baisieux', 'Tom', 'Fleter', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-31 11:33:10', '2024-05-31 11:33:10', 'attente'),
(33, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-31 11:54:22', '2024-05-31 11:54:22', 'attente'),
(34, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-31 11:57:12', '2024-05-31 11:57:12', 'attente'),
(35, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-31 12:07:59', '2024-05-31 12:07:59', 'valide'),
(36, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-31 12:09:20', '2024-05-31 12:09:20', 'attente'),
(37, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-31 12:35:31', '2024-05-31 12:35:31', 'attente'),
(38, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-31 12:42:03', '2024-05-31 12:42:03', 'valide'),
(39, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-31 12:45:35', '2024-05-31 12:45:35', 'valide'),
(40, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '37 rue voiture', '', '80000', 'Amiens', '2024-05-31 13:17:21', '2024-05-31 13:17:21', 'valide'),
(41, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-31 13:18:47', '2024-05-31 13:18:47', 'valide'),
(42, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-31 16:26:02', '2024-05-31 16:26:02', 'valide'),
(43, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-31 16:59:01', '2024-05-31 16:59:01', 'valide'),
(44, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '37 rue voiture', '', '80000', 'Amiens', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '37 rue voiture', '', '80000', 'Amiens', '2024-05-31 17:02:21', '2024-05-31 17:02:21', 'valide'),
(45, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '37 rue voiture', '', '80000', 'Amiens', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '37 rue voiture', '', '80000', 'Amiens', '2024-05-31 17:03:49', '2024-05-31 17:03:49', 'valide'),
(46, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-05-31 17:36:49', '2024-05-31 17:36:49', 'valide'),
(47, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-06-03 13:54:55', '2024-06-03 13:54:55', 'valide'),
(48, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-06-12 18:08:52', '2024-06-12 18:08:52', 'valide'),
(49, 1, 'Fleter', 'Tom', 'dernier@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-06-12 23:10:31', '2024-06-12 23:10:31', 'valide'),
(50, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', 'APT 22', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '37 rue voiture', 'APT 2', '80000', 'Amiens', '2024-06-14 14:54:12', '2024-06-14 14:54:12', 'valide'),
(51, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '37 rue voiture', '', '80000', 'Amiens', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '37 rue voiture', '', '80000', 'Amiens', '2024-06-14 16:09:54', '2024-06-14 16:09:54', 'valide'),
(52, 1, 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '4 rue des moissonneurs', '59780', 'Baisieux', 'Fleter', 'Tom', 'fletertom@gmail.com', '0672599278', '4 rue des moissonneurs', '', '59780', 'Baisieux', '2024-06-14 16:53:26', '2024-06-14 16:53:26', 'valide');

-- --------------------------------------------------------

--
-- Structure de la table `commande_paiement`
--

CREATE TABLE `commande_paiement` (
  `id` int(11) NOT NULL,
  `commande_id` int(11) NOT NULL,
  `montant` float NOT NULL,
  `type_cb` varchar(50) NOT NULL,
  `numero_cb` int(11) NOT NULL,
  `date_paiement` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commande_paiement`
--

INSERT INTO `commande_paiement` (`id`, `commande_id`, `montant`, `type_cb`, `numero_cb`, `date_paiement`) VALUES
(1, 6659, 4.05, 'CB', 4444, '2024-05-31'),
(2, 6659, 1.6, 'CB', 4444, '2024-05-31'),
(3, 38, 4.05, 'MasterCard', 4444, '2024-05-31'),
(4, 39, 4.05, 'CB', 4444, '2024-05-31'),
(5, 40, 15.06, 'CB', 4444, '2024-05-31'),
(6, 41, 2, 'CB', 4444, '2024-05-31'),
(7, 42, 3.24, 'CB', 4444, '2024-05-31'),
(8, 43, 10.14, 'CB', 4444, '2024-05-31'),
(9, 44, 15.26, 'CB', 4444, '2024-05-31'),
(10, 45, 8.92, 'CB', 4444, '2024-05-31'),
(11, 46, 1.9, 'CB', 4444, '2024-05-31'),
(12, 47, 2, 'CB', 4444, '2024-06-03'),
(13, 48, 15.4, 'CB', 4444, '2024-06-12'),
(14, 49, 9.9, 'CB', 4444, '2024-06-12'),
(15, 50, 104.78, 'CB', 4444, '2024-06-14'),
(16, 51, 8.92, 'CB', 4444, '2024-06-14'),
(17, 52, 8, 'MasterCard', 4444, '2024-06-14');

-- --------------------------------------------------------

--
-- Structure de la table `commande_produit`
--

CREATE TABLE `commande_produit` (
  `id` int(11) NOT NULL,
  `id_commande` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  `prix_unitaire` float NOT NULL,
  `id_tva` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commande_produit`
--

INSERT INTO `commande_produit` (`id`, `id_commande`, `id_produit`, `quantite`, `prix_unitaire`, `id_tva`) VALUES
(10, 6, 2, 1, 4, 0),
(11, 7, 1, 3, 20.25, 0),
(12, 7, 2, 3, 4, 0),
(13, 8, 1, 1, 20.25, 0),
(14, 8, 2, 4, 4, 0),
(15, 9, 2, 1, 4, 0),
(16, 10, 2, 1, 4, 0),
(17, 11, 2, 1, 4, 0),
(18, 12, 2, 5, 4, 0),
(19, 13, 1, 1, 20.25, 0),
(20, 13, 2, 5, 4, 0),
(21, 14, 1, 1, 20.25, 0),
(22, 14, 2, 1, 4, 0),
(23, 15, 1, 2, 20.25, 0),
(24, 16, 2, 4, 4, 0),
(25, 17, 2, 1, 4, 0),
(26, 18, 2, 3, 4, 0),
(27, 19, 1, 1, 20.25, 0),
(28, 20, 1, 9, 20.25, 0),
(29, 21, 2, 4, 4, 0),
(30, 22, 2, 1, 4, 0),
(31, 23, 2, 4, 4, 0),
(32, 24, 2, 1, 4, 0),
(33, 25, 2, 6, 4, 0),
(34, 26, 2, 2, 4, 0),
(35, 27, 2, 1, 4, 0),
(36, 28, 1, 1, 20.25, 0),
(37, 29, 1, 1, 20.25, 0),
(38, 30, 1, 1, 20.25, 0),
(39, 31, 1, 2, 20.25, 0),
(40, 32, 2, 2, 4, 0),
(41, 33, 2, 2, 4, 0),
(42, 34, 1, 1, 20.25, 0),
(43, 35, 1, 1, 20.25, 0),
(44, 36, 1, 1, 20.25, 0),
(45, 37, 2, 2, 4, 0),
(46, 38, 1, 1, 20.25, 0),
(47, 39, 1, 1, 20.25, 0),
(48, 40, 5, 3, 25.1, 0),
(49, 41, 1, 1, 10, 0),
(50, 42, 3, 1, 16.2, 0),
(51, 43, 1, 1, 10, 0),
(52, 43, 2, 2, 9.5, 0),
(53, 43, 4, 1, 21.7, 0),
(54, 44, 1, 2, 10, 0),
(55, 44, 2, 1, 9.5, 0),
(56, 44, 4, 1, 21.7, 0),
(57, 44, 5, 1, 25.1, 0),
(58, 45, 1, 1, 10, 0),
(59, 45, 2, 1, 9.5, 0),
(60, 45, 5, 1, 25.1, 0),
(61, 46, 2, 1, 9.5, 0),
(62, 47, 1, 1, 10, 0),
(63, 48, 2, 6, 9.5, 0),
(64, 48, 1, 2, 10, 0),
(65, 49, 1, 4, 10, 0),
(66, 49, 2, 1, 9.5, 0),
(67, 50, 1, 6, 10, 0),
(68, 50, 2, 8, 9.5, 0),
(69, 50, 3, 9, 16.2, 0),
(70, 50, 4, 10, 21.7, 0),
(71, 50, 5, 1, 25.1, 0),
(72, 51, 1, 1, 10, 0),
(73, 51, 2, 1, 9.5, 0),
(74, 51, 5, 1, 25.1, 0),
(75, 52, 1, 4, 10, 0);

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

CREATE TABLE `panier` (
  `id` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `date_creation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `panier`
--

INSERT INTO `panier` (`id`, `id_client`, `date_creation`) VALUES
(6, 1, '2024-06-15 04:00:04');

-- --------------------------------------------------------

--
-- Structure de la table `panier_produit`
--

CREATE TABLE `panier_produit` (
  `id` int(11) NOT NULL,
  `id_panier` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `quantite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `panier_produit`
--

INSERT INTO `panier_produit` (`id`, `id_panier`, `id_produit`, `quantite`) VALUES
(52, 6, 1, 4),
(53, 6, 2, 3),
(54, 6, 3, 1),
(55, 6, 4, 1),
(56, 6, 5, 8);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `identifiant` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `categorie` varchar(255) NOT NULL,
  `prix` float NOT NULL,
  `id_tva` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `poids` int(11) NOT NULL,
  `date_visibilite` datetime NOT NULL,
  `statut` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `identifiant`, `nom`, `description`, `categorie`, `prix`, `id_tva`, `stock`, `image`, `poids`, `date_visibilite`, `statut`) VALUES
(1, 'sushi-saumon', 'Plateau de sushi saumon', 'Un sushi saumon exquis : une tranche de saumon frais sur un lit de riz vinaigré, équilibré avec perfection entre la tendreté du poisson, la douceur du riz et une touche de wasabi pour réveiller les papilles. Un véritable festin pour les sens.', ';1;', 10, 0, 50, 'sushiSaumon.jpg', 20, '2024-04-09 08:16:46', 1),
(2, 'soupe-miso', 'Soupe miso', 'Une soupe miso réconfortante : un bouillon chaud et savoureux à base de pâte de miso fermentée, enrichi de cubes de tofu soyeux, d\'algues wakame délicates et de ciboulette fraîchement ciselée. Chaque cuillerée offre une fusion de saveurs umami, à la fois riche et subtile, qui réchauffe le corps et l\'esprit. Un véritable classique japonais, simple et délicieux.', ';1;', 9.5, 0, 100, 'soupeMiso.jpg', 9, '2024-04-12 08:46:25', 1),
(3, 'maki-saumon', 'Plateau de makis saumon', 'Un maki saumon délicieux : des morceaux de saumon frais enroulés dans du riz vinaigré et une feuille de nori croquante. Chaque bouchée offre un mariage parfait de saveurs marines et de textures fondantes, agrémenté d\'une touche subtile de wasabi. Une expérience gourmande et rafraîchissante.', ';1;', 16.2, 0, 75, 'makiSaumon.jpg', 9, '2024-04-12 08:46:25', 1),
(4, 'tempura', 'Plateau de tempura', 'Un plateau de tempura croustillant : une sélection variée de crevettes juteuses, de légumes frais comme des patates douces, des aubergines et des poivrons, enrobés d’une pâte légère et aérienne. Frits à la perfection, ils dévoilent une texture dorée et croquante qui cède sous la dent pour révéler un cœur tendre et savoureux. Accompagnés d\'une sauce tentsuyu légèrement sucrée et d\'un radis daikon râpé, chaque bouchée est une symphonie de textures et de saveurs, idéale pour une expérience culinaire raffinée et gourmande.', ';1;', 21.7, 0, 32, 'tempura.jpg', 9, '2024-04-12 08:46:25', 1),
(5, 'nouilles', 'Assiette de nouilles sautées (poulet)', 'Des nouilles sautées savoureuses : des nouilles dorées à la poêle, mêlées à des légumes croquants comme des poivrons, des carottes et des brocolis, ainsi qu\'à des morceaux de poulet tendre ou de crevettes juteuses. Parfumées d\'une sauce soja légèrement sucrée et relevée d\'une pointe de gingembre et d\'ail, chaque bouchée offre une explosion de saveurs umami, équilibrée par la fraîcheur des légumes et la richesse des protéines. Un plat réconfortant et irrésistible, parfait pour une évasion culinaire.', ';1;', 25.1, 0, 8, 'nouilles.jpg', 9, '2024-04-12 08:46:25', 1);

-- --------------------------------------------------------

--
-- Structure de la table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `datetest` date NOT NULL,
  `contenu` longtext NOT NULL,
  `page` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `test`
--

INSERT INTO `test` (`id`, `datetest`, `contenu`, `page`) VALUES
(29, '2024-06-12', '[{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":10,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":2,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":5,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":8,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":7,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null}]', 'cTestProduit'),
(30, '2024-06-12', '[{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":4,\"retour\":1},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":3,\"retour\":1},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":10,\"retour\":1},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":3,\"retour\":1},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":10,\"retour\":1},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null}]', 'cTestProduit'),
(31, '2024-06-12', '[{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":4,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":4,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":9,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":5,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null}]', 'cTestProduit'),
(32, '2024-06-12', '[{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":6,\"retour\":1},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":9,\"retour\":1},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":1},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":10,\"retour\":1},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":2,\"retour\":1},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null}]', 'cTestProduit'),
(33, '2024-06-12', '[{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":3,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":4,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":4,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":7,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":5,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null}]', 'cTestProduit'),
(34, '2024-06-12', '[{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":10,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":6,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":7,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":3,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":8,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null}]', 'cTestProduit'),
(35, '2024-06-12', '[{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":6,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":3,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":3,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":2,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null}]', 'cTestProduit'),
(36, '2024-06-12', '[{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":7,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":4,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":6,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":2,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null}]', 'cTestProduit'),
(37, '2024-06-12', '[{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":9,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":10,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":4,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":5,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":6,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null}]', 'cTestProduit'),
(38, '2024-06-12', '[{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":2,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":4,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":9,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":3,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null}]', 'cTestProduit'),
(39, '2024-06-12', '[{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":10,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":8,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":4,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":3,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":6,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null}]', 'cTestProduit'),
(40, '2024-06-12', '[{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":9,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":9,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":5,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":8,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null}]', 'cTestProduit'),
(41, '2024-06-12', '[{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":2,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":2,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":9,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":8,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":4,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null}]', 'cTestProduit'),
(42, '2024-06-12', '[{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":5,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":9,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":5,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":5,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":8,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null}]', 'cTestProduit'),
(43, '2024-06-12', '[{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":4,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":3,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":10,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":4,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":10,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null}]', 'cTestProduit'),
(44, '2024-06-12', '[{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":9,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":8,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":10,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":6,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null}]', 'cTestProduit'),
(45, '2024-06-12', '[{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":2,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":3,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":10,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":9,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":7,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null}]', 'cTestProduit'),
(46, '2024-06-12', '[{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":7,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":3,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":6,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":4,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null}]', 'cTestProduit'),
(47, '2024-06-12', '[{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":8,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":2,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":7,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":9,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":2,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null}]', 'cTestProduit'),
(48, '2024-06-12', '[{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":10,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":6,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":10,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":8,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":2,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null}]', 'cTestProduit'),
(49, '2024-06-12', '[{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":8,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":7,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":8,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":3,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null}]', 'cTestProduit'),
(50, '2024-06-12', '[{\"url\":\"commande\",\"result\":null,\"expected\":\"success\"},{\"url\":\"commande\\/1\",\"result\":null,\"expected\":\"success\"},{\"url\":\"commande\\/9999\",\"result\":null,\"expected\":\"error\"}]', 'testApiCommande'),
(51, '2024-06-12', '[{\"url\":\"commande\",\"result\":null,\"expected\":\"success\"},{\"url\":\"commande\\/1\",\"result\":null,\"expected\":\"success\"},{\"url\":\"commande\\/9999\",\"result\":null,\"expected\":\"error\"}]', 'testApiCommande'),
(52, '2024-06-12', '[{\"url\":\"commande\",\"result\":null,\"expected\":\"success\"},{\"url\":\"commande\\/1\",\"result\":null,\"expected\":\"success\"},{\"url\":\"commande\\/9999\",\"result\":null,\"expected\":\"error\"}]', 'testApiCommande'),
(53, '2024-06-13', '[{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":6,\"retour\":1},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":8,\"retour\":1},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":9,\"retour\":1},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":10,\"retour\":1},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":1},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null}]', 'cTestProduit'),
(54, '2024-06-14', '[{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":7,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":10,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":2,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":2,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null}]', 'cTestProduit'),
(55, '2024-06-14', '[{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":5,\"retour\":1},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":4,\"retour\":1},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":6,\"retour\":1},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":10,\"retour\":1},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":8,\"retour\":1},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null}]', 'cTestProduit'),
(56, '2024-06-15', '[{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":4,\"retour\":1},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":3,\"retour\":1},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":1},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":1},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":8,\"retour\":1},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null}]', 'cTestProduit'),
(57, '2024-06-16', '[{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":9,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":6,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":9,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":6,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":8,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null}]', 'cTestProduit'),
(58, '2024-06-17', '[{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":2,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":7,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":10,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":7,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":9,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null}]', 'cTestProduit'),
(59, '2024-06-18', '[{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":9,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":2,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":3,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":2,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null}]', 'cTestProduit'),
(60, '2024-06-19', '[{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":5,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":10,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":2,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":9,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":6,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null}]', 'cTestProduit'),
(61, '2024-06-20', '[{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":9,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":5,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":8,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":5,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":9,\"retour\":0},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":1,\"retour\":null},{\"produit_id\":0,\"nom\":\"Test produit invalide\",\"quantite\":0,\"retour\":null}]', 'cTestProduit');

-- --------------------------------------------------------

--
-- Structure de la table `tva`
--

CREATE TABLE `tva` (
  `id` int(11) NOT NULL,
  `taux` float NOT NULL,
  `nom` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tva`
--

INSERT INTO `tva` (`id`, `taux`, `nom`, `description`) VALUES
(0, 0.2, 'TVA', 'tva');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actualite`
--
ALTER TABLE `actualite`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `C4` (`id_client`);

--
-- Index pour la table `commande_paiement`
--
ALTER TABLE `commande_paiement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commande_produit`
--
ALTER TABLE `commande_produit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `C2` (`id_produit`),
  ADD KEY `C3` (`id_tva`),
  ADD KEY `C10` (`id_commande`);

--
-- Index pour la table `panier`
--
ALTER TABLE `panier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `C1` (`id_client`);

--
-- Index pour la table `panier_produit`
--
ALTER TABLE `panier_produit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `C9` (`id_panier`),
  ADD KEY `C5` (`id_produit`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `C8` (`id_tva`);

--
-- Index pour la table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tva`
--
ALTER TABLE `tva`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actualite`
--
ALTER TABLE `actualite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `commande_paiement`
--
ALTER TABLE `commande_paiement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `commande_produit`
--
ALTER TABLE `commande_produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT pour la table `panier`
--
ALTER TABLE `panier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `panier_produit`
--
ALTER TABLE `panier_produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `C4` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`);

--
-- Contraintes pour la table `commande_produit`
--
ALTER TABLE `commande_produit`
  ADD CONSTRAINT `C10` FOREIGN KEY (`id_commande`) REFERENCES `commande` (`id`),
  ADD CONSTRAINT `C2` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id`),
  ADD CONSTRAINT `C3` FOREIGN KEY (`id_tva`) REFERENCES `tva` (`id`);

--
-- Contraintes pour la table `panier`
--
ALTER TABLE `panier`
  ADD CONSTRAINT `C1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`);

--
-- Contraintes pour la table `panier_produit`
--
ALTER TABLE `panier_produit`
  ADD CONSTRAINT `C5` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id`),
  ADD CONSTRAINT `C9` FOREIGN KEY (`id_panier`) REFERENCES `panier` (`id`);

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `C8` FOREIGN KEY (`id_tva`) REFERENCES `tva` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
