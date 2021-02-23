-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  sam. 08 août 2020 à 20:28
-- Version du serveur :  10.1.37-MariaDB
-- Version de PHP :  7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `covoiturage`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE `administrateur` (
  `id_administrateur` int(4) NOT NULL,
  `email_administrateur` varchar(100) NOT NULL,
  `prenom_administrateur` varchar(50) NOT NULL,
  `nom_administrateur` varchar(50) NOT NULL,
  `password_administrateur` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `administrateur`
--

INSERT INTO `administrateur` (`id_administrateur`, `email_administrateur`, `prenom_administrateur`, `nom_administrateur`, `password_administrateur`) VALUES
(1, 'oussamatrachli@gmail.com', 'Oussama', 'Trachli', 'oussamatrachli@gmail.com'),
(2, 'anasssaghir@gmail.com', 'Anass', 'SAGHIR', 'anasssaghir@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `carcteristiquestrajet`
--

CREATE TABLE `carcteristiquestrajet` (
  `id_trajet` int(10) NOT NULL,
  `id_utilisateur` int(10) NOT NULL,
  `departure` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `prix` float NOT NULL,
  `places_disponibles` int(2) NOT NULL,
  `date` date NOT NULL,
  `temps` time(6) NOT NULL,
  `commentaires` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `feedback`
--

CREATE TABLE `feedback` (
  `id_commentaire` int(10) NOT NULL,
  `nom_utilisateur` varchar(100) NOT NULL,
  `email_utilisateur` varchar(100) NOT NULL,
  `telephone_utilisateur` bigint(20) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `report`
--

CREATE TABLE `report` (
  `id_report` int(11) NOT NULL,
  `name_user` varchar(100) NOT NULL,
  `mail_user` varchar(500) NOT NULL,
  `phone_user` int(20) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `slider`
--

CREATE TABLE `slider` (
  `id` int(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `caption` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `slider`
--

INSERT INTO `slider` (`id`, `image`, `caption`) VALUES
(4, 'img1.jpg', ''),
(5, 'img2.jpg', ''),
(7, 'img3.jpg', '');

-- --------------------------------------------------------

--
-- Structure de la table `trajetsreserver`
--

CREATE TABLE `trajetsreserver` (
  `id_trajetsreserver` int(4) NOT NULL,
  `id_trajet` int(4) NOT NULL,
  `id_utilisateur` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `trajet_deleted`
--

CREATE TABLE `trajet_deleted` (
  `id_trajet_deleted` int(11) NOT NULL,
  `id_utilisateur` int(4) NOT NULL,
  `departure` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `prix` double NOT NULL,
  `date` date NOT NULL,
  `temps` time(6) NOT NULL,
  `places_disponibles` int(2) NOT NULL,
  `commentaires` varchar(255) NOT NULL,
  `deleted_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_utilisateur` int(4) NOT NULL,
  `email_utilisateur` varchar(100) NOT NULL,
  `nom_utilisateur` varchar(30) NOT NULL,
  `prenom_utilisateur` varchar(30) NOT NULL,
  `telephone_utilisateur` int(50) NOT NULL,
  `genre_utilisateur` varchar(15) NOT NULL,
  `passsword_utilisateur` varchar(40) NOT NULL,
  `photo_utilisateur` varchar(255) NOT NULL,
  `activation_compte` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD PRIMARY KEY (`id_administrateur`);

--
-- Index pour la table `carcteristiquestrajet`
--
ALTER TABLE `carcteristiquestrajet`
  ADD PRIMARY KEY (`id_trajet`),
  ADD KEY `id_utilisateur` (`id_utilisateur`);

--
-- Index pour la table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id_commentaire`);

--
-- Index pour la table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id_report`);

--
-- Index pour la table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `trajetsreserver`
--
ALTER TABLE `trajetsreserver`
  ADD PRIMARY KEY (`id_trajetsreserver`),
  ADD KEY `id_trajet` (`id_trajet`),
  ADD KEY `id_utilisateur` (`id_utilisateur`);

--
-- Index pour la table `trajet_deleted`
--
ALTER TABLE `trajet_deleted`
  ADD PRIMARY KEY (`id_trajet_deleted`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_utilisateur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `administrateur`
--
ALTER TABLE `administrateur`
  MODIFY `id_administrateur` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `carcteristiquestrajet`
--
ALTER TABLE `carcteristiquestrajet`
  MODIFY `id_trajet` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id_commentaire` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `report`
--
ALTER TABLE `report`
  MODIFY `id_report` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `trajetsreserver`
--
ALTER TABLE `trajetsreserver`
  MODIFY `id_trajetsreserver` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT pour la table `trajet_deleted`
--
ALTER TABLE `trajet_deleted`
  MODIFY `id_trajet_deleted` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_utilisateur` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `carcteristiquestrajet`
--
ALTER TABLE `carcteristiquestrajet`
  ADD CONSTRAINT `carcteristiquestrajet_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `trajetsreserver`
--
ALTER TABLE `trajetsreserver`
  ADD CONSTRAINT `trajetsreserver_ibfk_1` FOREIGN KEY (`id_trajet`) REFERENCES `carcteristiquestrajet` (`id_trajet`),
  ADD CONSTRAINT `trajetsreserver_ibfk_2` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
