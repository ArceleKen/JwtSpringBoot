-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 04 sep. 2021 à 13:19
-- Version du serveur :  10.4.19-MariaDB
-- Version de PHP : 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `springlearn`
--

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) NOT NULL,
  `date_creation` datetime DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `date_creation`, `description`, `name`) VALUES
(7, '2021-08-26 13:25:00', 'autorisation du superadmin, pour celui qui a tous les droit dans le système', 'superadmin'),
(8, '2021-08-26 13:25:00', 'autorisation de lister les utilisateurs', 'listing_user'),
(9, '2021-08-26 13:25:00', 'pour créer des utilisateurs', 'create_user'),
(10, '2021-08-26 13:25:00', 'pour activer ou désactiver des utilisateurs', 'enable_or_disable_user'),
(11, '2021-08-26 13:25:00', 'Pour voir les details sur les informations des utilisateurs', 'details_user'),
(12, '2021-08-26 13:25:00', 'Pour modifier un utilisateur', 'edit_user'),
(13, '2021-08-26 13:25:00', 'Pour lister les roles ', 'listing_roles'),
(14, '2021-08-26 13:25:00', 'Pour créer des roles', 'create_role'),
(15, '2021-08-26 13:25:00', 'Pour modifier des roles ', 'edit_role'),
(16, '2021-08-26 13:25:00', 'afficher les details d\'un role', 'details_role'),
(17, '2021-08-26 13:25:00', 'Pour supprimer des roles', 'delete_role'),
(18, '2021-08-26 13:25:00', 'Pour lister tous les autorisations (ou permissions) du système', 'listing_permissions'),
(19, '2021-08-26 14:11:47', 'Autorisation de voir les activités (les logs) des utilisateurs dans le système', 'search_activities_users'),
(20, '2021-08-28 20:02:47', 'Pour envoyer des mails', 'send_mail');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL,
  `date_creation` datetime DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `date_creation`, `name`, `description`) VALUES
(9, '2021-08-25 10:41:38', 'superadmin', 'Role du superadmin'),
(11, '2021-08-25 10:42:22', 'role_test3', 'role test 3	                        '),
(14, '2021-08-29 00:34:48', 'Manage_sending_mail', '	                        		                        		              Role pour Gérer l\'envoi des mails          \r\n	                        \r\n	                        ');

-- --------------------------------------------------------

--
-- Structure de la table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `roles_permissions`
--

INSERT INTO `roles_permissions` (`role_id`, `permission_id`) VALUES
(9, 7),
(11, 11),
(14, 20);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `date_creation` datetime DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `date_creation`, `enabled`, `password`, `username`, `name`) VALUES
(4, NULL, b'0', '$2a$10$pLJHRRipTOsQYOCAunWZi.L/2sKJIbaTlHeR2xhwaacZlSsFTiwSq', 'admin1', 'admin 1'),
(12, '2021-08-25 10:49:55', b'1', '$2a$10$KxvM/SpZ1X/cB8WNei8Nl.m545LQI/KFEPAiLUqgkzq5asIqNlXf2', 'bigadmin', 'super admin '),
(13, '2021-08-30 01:15:59', b'0', '$2a$10$FPai/bs81P5wXLEYjE3EK.LciSUXGMbH5DFVqAj4ZdKunEJj91It.', 'usertest', 'user Test'),
(16, '2021-08-31 18:24:44', b'0', '$2a$10$ja0FpcxJMrg5lvNzfQHnk.OXhJFScM/hvGz/0naVDkvJ8fpljApCS', 'mytest0', 'mytest0'),
(17, '2021-09-01 14:42:45', b'0', '$2a$10$WLLXYmqpE.mFpPTKgYH2T..0J/LyU/4BV.33YjuFrFK5g520MwA2C', 'usertestapi', 'User create test API'),
(18, '2021-09-01 14:46:45', b'0', '$2a$10$6.VcVHDDWd/BiDsceXAireM31xofrC8xxY.Yqznmpg4c/KvlHh6NS', 'usertestapi1', 'User create test 1 API '),
(19, '2021-09-01 14:50:36', b'0', '$2a$10$quIhb4CxlQVvB0D0mwFrQOEEiF.Y78jAzvzcvYvjrk/YuOHXZmXui', 'usertestapi2', 'User create test 2 API '),
(20, '2021-09-01 14:55:55', b'0', '$2a$10$Xq/2nMA2DMOh3P7s3gn0neqQQVP4K0ZwdBWrorBA634XmNVzUL8hi', 'usertestapi3', 'User create test 3 API '),
(21, '2021-09-01 15:03:37', b'0', '$2a$10$Uw8tNr4TmyGcxFI7oyU2ou4sdGfuxM9KgU9TXO7XAeYgcaiRnzb7m', 'usertestapi4', 'User create test 4 API '),
(22, '2021-09-01 15:09:54', b'0', '$2a$10$5ds5iNIGHwlLd8nVeGuRf.kwkT8LJFIAK72r4i0EQSQQFiSaiMbGa', 'usertestapi5', 'User create test 5 API '),
(23, '2021-09-01 15:18:42', b'0', '$2a$10$GN6o9EGVyjQ1KMXLCRvd9uED6.3lRqexuR/1Y/yl9.yTc.4tpzgMW', 'usertestapi6', 'User create test 6 API '),
(24, '2021-09-01 15:40:34', b'0', '$2a$10$4kVpkGL4/cv2.piwrgKhU.EginwDbM/rsl1.GP6p8N.zeg5hVvrca', 'usertestapi7', 'User create test 7 API '),
(25, '2021-09-01 15:41:00', b'0', '$2a$10$GtitMIR7jxALeZWfisBWF.5RZ0adVTQKozMfV.5RAQZKxPOEoD0QW', 'usertestapi8', 'User create test 8 API '),
(26, '2021-09-01 15:43:36', b'0', '$2a$10$y8yqbQFlczpsdNkkp7euE.qEBRwJxebYaCfiu//LqnrJeAdO8B0XS', 'usertestapi9', 'User create test 9 API '),
(27, '2021-09-01 15:44:11', b'1', '$2a$10$3owrHzosZI3dpeZb.imid.RoG2lhUpKi/vErwWt.lHI0ijOJp9qfW', 'usertestapi10', 'User create test 10 ... API ');

-- --------------------------------------------------------

--
-- Structure de la table `users_roles`
--

CREATE TABLE `users_roles` (
  `id` bigint(20) NOT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users_roles`
--

INSERT INTO `users_roles` (`id`, `role_id`, `user_id`) VALUES
(19, 14, 13),
(20, 9, 12),
(21, 11, 16),
(22, 11, 22),
(23, 11, 23),
(24, 14, 23),
(25, 11, 26),
(26, 14, 26),
(35, 11, 27),
(36, 14, 27);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_pnvtwliis6p05pn6i3ndjrqt2` (`name`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_ofx66keruapi6vyqpv6f2or37` (`name`);

--
-- Index pour la table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `FKbx9r9uw77p58gsq4mus0mec0o` (`permission_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKj6m8fwv7oqv74fcehir1a9ffy` (`role_id`),
  ADD KEY `FK2o0jvgh89lemvvo17cbqvdxaa` (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `users_roles`
--
ALTER TABLE `users_roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD CONSTRAINT `FKbx9r9uw77p58gsq4mus0mec0o` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `FKqi9odri6c1o81vjox54eedwyh` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `FK2o0jvgh89lemvvo17cbqvdxaa` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKj6m8fwv7oqv74fcehir1a9ffy` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
