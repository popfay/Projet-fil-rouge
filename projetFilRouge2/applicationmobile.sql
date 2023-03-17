-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 10 mars 2023 à 10:19
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `applicationmobile`
--

-- --------------------------------------------------------

--
-- Structure de la table `appartenir`
--

CREATE TABLE `appartenir` (
  `id` int NOT NULL,
  `id_Jeux` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categories_jeux`
--

CREATE TABLE `categories_jeux` (
  `id` int NOT NULL,
  `Nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `discussions`
--

CREATE TABLE `discussions` (
  `id` int NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Connexion` varchar(255) NOT NULL,
  `Conversation` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `discuter`
--

CREATE TABLE `discuter` (
  `id` int NOT NULL,
  `id_Users` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `identifier`
--

CREATE TABLE `identifier` (
  `id` int NOT NULL,
  `id_Jeux` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jeux`
--

CREATE TABLE `jeux` (
  `id` int NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jouer`
--

CREATE TABLE `jouer` (
  `id` int NOT NULL,
  `id_Users` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `Pseudo` varchar(50) NOT NULL COMMENT 'UNIQUE',
  `nom` varchar(50) NOT NULL,
  `Genre` varchar(50) NOT NULL,
  `Age` varchar(50) NOT NULL,
  `Ville` varchar(50) NOT NULL,
  `Mot_de_passe` varchar(50) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Telephone` varchar(50) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Connexion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `Pseudo`, `nom`, `Genre`, `Age`, `Ville`, `Mot_de_passe`, `Email`, `Telephone`, `Image`, `Connexion`) VALUES
(11, 'pseudo:', 'nom:', 'Genre:', 'Age:', 'Ville:', 'Mot_de_passe:', 'email:', 'Telephone:', NULL, 'Connexion:'),
(12, 'pseudo:', 'nom:', 'Genre:', 'Age:', 'Ville:', 'Mot_de_passe:', 'email:', 'Telephone:', NULL, 'Connexion:'),
(13, 'pseudo:', 'nom:', 'Genre:', 'Age:', 'Ville:', 'Mot_de_passe:', 'email:', 'Telephone:', NULL, 'Connexion:'),
(14, 'test', 'poppy', 'test', '1', 'pop', '231', 'poppy-74@hotmail.fr', '6', NULL, '1'),
(15, 'test', 'poppy', 'Femme', '12', 'pop', '123', 'poppy-74@hotmail.fr', '6', NULL, '1'),
(16, 'test', 'poppy', 'Femme', '12', 'pop', '123', 'poppy-74@hotmail.fr', '6', NULL, '1'),
(17, 'test', 'poppy', 'Femme', '12', 'pop', '7', 'poppy-74@hotmail.fr', '6', NULL, '1'),
(18, 'test', 'poppy', 'Femme', '12', 'pop', '7', 'poppy-74@hotmail.fr', '6', NULL, '1'),
(19, 'test', 'poppy', 'Femme', '12', 'pop', '7', 'poppy-74@hotmail.fr', '6', NULL, '1'),
(20, 'poppy', 'pop', 'f', '23', 'p', '231', 'poppy-74@hotmail.fr', 'p', NULL, '1'),
(21, 'poppy', '21', 'f', '23', 'P', '2', 'poppy-74@hotmail.fr', '2', NULL, '1'),
(22, 'poppy', 'pop', 'f', '23', 'p', '231', 'poppy-74@hotmail.fr', 'p', NULL, '1');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `appartenir`
--
ALTER TABLE `appartenir`
  ADD PRIMARY KEY (`id`,`id_Jeux`),
  ADD KEY `Appartenir_Jeux0_FK` (`id_Jeux`);

--
-- Index pour la table `categories_jeux`
--
ALTER TABLE `categories_jeux`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `discussions`
--
ALTER TABLE `discussions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `discuter`
--
ALTER TABLE `discuter`
  ADD PRIMARY KEY (`id`,`id_Users`),
  ADD KEY `Discuter_Users0_FK` (`id_Users`);

--
-- Index pour la table `identifier`
--
ALTER TABLE `identifier`
  ADD PRIMARY KEY (`id`,`id_Jeux`),
  ADD KEY `Identifier_Jeux0_FK` (`id_Jeux`);

--
-- Index pour la table `jeux`
--
ALTER TABLE `jeux`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jouer`
--
ALTER TABLE `jouer`
  ADD PRIMARY KEY (`id`,`id_Users`),
  ADD KEY `Jouer_Users0_FK` (`id_Users`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories_jeux`
--
ALTER TABLE `categories_jeux`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `discussions`
--
ALTER TABLE `discussions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jeux`
--
ALTER TABLE `jeux`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `appartenir`
--
ALTER TABLE `appartenir`
  ADD CONSTRAINT `Appartenir_categories_Jeux_FK` FOREIGN KEY (`id`) REFERENCES `categories_jeux` (`id`),
  ADD CONSTRAINT `Appartenir_Jeux0_FK` FOREIGN KEY (`id_Jeux`) REFERENCES `jeux` (`id`);

--
-- Contraintes pour la table `discuter`
--
ALTER TABLE `discuter`
  ADD CONSTRAINT `Discuter_Discussions_FK` FOREIGN KEY (`id`) REFERENCES `discussions` (`id`),
  ADD CONSTRAINT `Discuter_Users0_FK` FOREIGN KEY (`id_Users`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `identifier`
--
ALTER TABLE `identifier`
  ADD CONSTRAINT `Identifier_Discussions_FK` FOREIGN KEY (`id`) REFERENCES `discussions` (`id`),
  ADD CONSTRAINT `Identifier_Jeux0_FK` FOREIGN KEY (`id_Jeux`) REFERENCES `jeux` (`id`);

--
-- Contraintes pour la table `jouer`
--
ALTER TABLE `jouer`
  ADD CONSTRAINT `Jouer_Jeux_FK` FOREIGN KEY (`id`) REFERENCES `jeux` (`id`),
  ADD CONSTRAINT `Jouer_Users0_FK` FOREIGN KEY (`id_Users`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
