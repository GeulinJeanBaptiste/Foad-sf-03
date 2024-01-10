-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le : mer. 10 jan. 2024 à 19:05
-- Version du serveur : 11.2.2-MariaDB
-- Version de PHP : 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `foadsf03`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20240110161800', '2024-01-10 17:18:54', 22);

-- --------------------------------------------------------

--
-- Structure de la table `formations`
--

DROP TABLE IF EXISTS `formations`;
CREATE TABLE IF NOT EXISTS `formations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `resume` varchar(255) NOT NULL,
  `textexplicatif` varchar(255) NOT NULL,
  `duree` varchar(255) NOT NULL,
  `niveau` varchar(255) NOT NULL,
  `lieu` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `formations`
--

INSERT INTO `formations` (`id`, `titre`, `resume`, `textexplicatif`, `duree`, `niveau`, `lieu`) VALUES
(1, 'Master en Intelligence Artificielle', 'Approfondissez vos connaissances en IA avec des experts du domaine.', 'Cette formation offre une compréhension approfondie des concepts clés de l\'IA, y compris l\'apprentissage automatique, le traitement du langage naturel et la robotique.', '6 mois', 'Intermédiaire', 'Présentiel'),
(2, 'Développement Web Front-End', 'Créez des sites web attrayants et réactifs.', 'Apprenez à utiliser HTML, CSS et JavaScript pour construire des interfaces utilisateur modernes et interactives.', '3 mois', 'Débutant', 'Distanciel'),
(3, 'Cybersécurité Avancée', 'Protégez les données et infrastructures critiques.', 'Découvrez les dernières techniques de sécurité informatique pour défendre contre les cyberattaques.', '4 mois', 'Expert', 'Présentiel'),
(4, 'Analyse de Données pour le Business', 'ransformez les données en décisions stratégiques.', 'Utilisez des outils comme SQL, Python et Tableau pour analyser et interpréter les données.', '2 mois', 'Intermédiaire', 'Présentiel'),
(5, 'Conception Graphique pour le Web', 'Apprenez à créer des designs visuellement captivants.', 'Maîtrisez les logiciels de conception graphique et les principes de design pour améliorer l\'esthétique des sites web.', '1 mois', 'Débutant', 'Distanciel'),
(6, 'Développement d\'Applications Mobiles', 'Devenez un développeur d\'applications mobiles compétent.', 'Apprenez à créer des applications pour iOS et Android en utilisant Swift et Kotlin.', '5 mois', 'Intermédiaire', 'Distanciel'),
(7, 'Leadership en Technologie', 'Guidez les équipes tech vers le succès.', 'Développez des compétences en gestion de projet et en leadership adaptées au secteur technologique.', '3 mois', 'Expert', 'Présentiel'),
(8, 'Marketing Digital et Réseaux Sociaux', 'Maîtrisez les outils du marketing numérique.', 'Explorez les stratégies de marketing sur les réseaux sociaux, le SEO et le marketing par e-mail.', '2 mois', 'Débutant', 'Distanciel'),
(9, 'Ingénierie du Logiciel', 'Construisez des logiciels robustes et efficaces.', 'Apprenez les principes de l\'ingénierie logicielle, y compris le développement agile, la gestion de base de données et le testing.', '4 mois', 'Intermédiaire', 'Présentiel'),
(10, 'Réalité Virtuelle et Augmentée', 'Plongez dans le monde de la VR et de la AR.', 'Découvrez comment créer des expériences immersives en utilisant les dernières technologies de réalité virtuelle et augmentée.', '6 mois', 'Expert', 'Présentiel');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
