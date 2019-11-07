-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Jeu 07 Novembre 2019 à 16:28
-- Version du serveur :  5.7.27-0ubuntu0.18.04.1
-- Version de PHP :  7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mediatheque`
--

-- --------------------------------------------------------

--
-- Structure de la table `document`
--

CREATE TABLE `document` (
  `id` int(10) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `disponible` tinyint(1) DEFAULT NULL,
  `indisponible` varchar(20) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `genre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `document`
--

INSERT INTO `document` (`id`, `ref`, `nom`, `description`, `disponible`, `indisponible`, `image`, `genre`) VALUES
(1, 'C-001', 'Hit de l\'été 2019', 'Tous les plus grands hit de l\'été.', 1, NULL, 'images/hitdelete.jpg', 1),
(2, 'C-002', 'On m\'appelle l\'ovni', 'Un des plus grands bruits de ce monde, le nouveau single de Jul.', 1, NULL, 'images/julovni.jpg', 1),
(3, 'C-003', 'Mon pays c\'est l\'amour', 'Dernier album de Johnny Hallyday', 1, NULL, 'images/johnnyhallyday.jpg', 1),
(4, 'C-004', 'J\'suis pas rassuré', 'Album 2003 de Zambla', 1, NULL, 'images/zambla.jpg', 1),
(5, 'C-005', 'Hit dance 2018', 'Tous les plus grands hit dance de 2018', 1, NULL, 'images/hitdance2018.jpg', 1),
(6, 'D-001', 'Les Bronzés 3', 'Film drôle français.', 1, NULL, 'images/bronzé3.jpg', 3),
(7, 'D-002', 'Les Tuches 2', 'C\'est des belges qui mangent des frites.', 1, NULL, 'images/tuches2.jpg', 3),
(8, 'D-003', '50 Nuances de Grey', 'Anastasia Steele accepte de remplacer sa colocataire malade, Katherine, pour interviewer l\'homme d\'affaires et milliardaire Christian Grey. Jeune P.D-G séduisant et mystérieux, ce dernier l\'intimide. À sa grande surprise, il vient la voir au magasin où elle travaille, prétextant des achats. Très attirée par lui, elle se verra rapidement devenir sa soumise. Pour cela un contrat va être rédigé pour permettre de définir les règles de ce jeu dangereux. Cependant, ce contrat devient souvent un sujet tabou et sera changé sans cesse. ', 1, NULL, 'images/50nuancesdegrey.jpg', 3),
(9, 'D-004', 'Sharknado', 'Une tornade formée au large du Mexique entraîne l\'invasion de Los Angeles par des requins. Le propriétaire d\'une buvette de bord de mer, accompagné de deux amis et d\'une de ses serveuses, part dans l\'intérieur des terres à la recherche de son ex-femme, de sa fille et de son fils. Malgré les requins qui tombent du ciel, ils réussiront à sauver la ville et à reformer une famille unie. ', 1, NULL, 'images/sharknado.jpg', 3),
(10, 'D-005', 'Dragon ball evolution', 'Dans les temps anciens, la Terre faillit être détruite par des forces maléfiques. Pour s\'en prémunir, sept sages créèrent les boules de cristal : les Dragonballs. Décidées à prendre leur revanche, les forces du Mal sont désormais de retour, et un seul guerrier d\'exception est capable d\'empêcher le pire. Le jeune Sangoku va alors découvrir le jour de ses 18 ans que son destin est trés loin de ce qu\'il avait imaginé.\nAprès la mort accidentelle de son grand-père, il rencontre Maître Roshi, un expert en arts martiaux qui lui révèlera le secret et le pouvoir des Dragonballs. Sangoku se retrouve alors investi d¹une mission cruciale : retrouver toutes les boules de cristal avant son ennemi le plus cruel, Piccolo. Il se lancera dans une course effrénée aux côtés de Bulma, une scientifique brillante, Yamcha, un bandit du désert, et Chi Chi pour qui son coeur bat.\nPour Sangoku, cette quête des Dragonballs pourrait bien aussi être celle de son identité. ', 1, NULL, 'images/dragonballevolution.jpg', 3),
(11, 'L-001', 'Alien chantilly', 'Une poignée de perce-oreilles, deux doigts de cornichons martiens, une pincée de Pustulator, cinq ou six bouts de Sergent Déguelis Sulfurix, un anneau de Téniax, un morceau de \"Frankenstein et la betterave tueuse\", remuez, agitez, secouez, et laissez agir... vous êtes déjà en train de rire aux meilleurs gags du cinquième album de \"Kid Paddle\" : Alien Chantilly ! Servez bien frais !', 1, NULL, 'images/kidpaddle.jpg', 2),
(12, 'L-002', 'Le Schtroumpfissime', 'Qui ne connaît les Schtroumpfs ? Ces gentils lutins bleus à gros bonnet blanc se ressemblent tous, même s\'ils ont chacun leur caractère, et parlent une curieuse langue dans laquelle la plupart des mots sont remplacés par \"schtroumpf\" ou \"schtroumpfer\". Sous l\'autorité débonnaire du grand Schtroumpf, ce sympathique petit peuple organise sa vie et lutte contre l\'abominable sorcier Gargamel, qui ne rêve que de les détruire.\nUne adorable fantaisie qui séduira les plus petits et distraira leurs aînés.', 1, NULL, 'images/schtroumpf.jpg', 2),
(13, 'L-003', 'Guide de fornite', 'Avec ce livre vous pourrez faire des TOP 1 très facilement !', 1, NULL, 'images/guidefortnite.jpg', 2),
(14, 'L-004', 'Guide minecraft redstone', 'Avec ce livre vous pourrez créer des machines extraordinaire !', 1, NULL, 'images/guideminecraft.jpg', 2),
(15, 'L-005', 'Apprendre à coder pour les nuls', 'Comprends divers cours pour apprendre à coder efficacement.', 1, NULL, 'images/programmerpourlesnuls.jpg', 2);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `genre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `genre`
--

INSERT INTO `genre` (`id`, `genre`) VALUES
(1, 'CD'),
(2, 'Livre'),
(3, 'DVD');

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `reference` int(11) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `media`
--

INSERT INTO `media` (`id`, `reference`, `type`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 6, 1),
(4, 7, 1),
(5, 11, 5),
(6, 12, 5),
(7, 11, 4),
(8, 12, 4);

-- --------------------------------------------------------

--
-- Structure de la table `motscles`
--

CREATE TABLE `motscles` (
  `id` int(11) NOT NULL,
  `motscles` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `motscles`
--

INSERT INTO `motscles` (`id`, `motscles`) VALUES
(1, 'musique'),
(2, 'cd'),
(3, 'dvd'),
(6, 'livre'),
(7, 'comédie'),
(8, 'aventure'),
(9, 'amour'),
(10, 'romance'),
(11, 'action'),
(12, 'guide'),
(13, 'hit de l\'été'),
(14, 'hit dance'),
(15, 'hit'),
(16, 'on m\'appelle l\'ovni'),
(18, 'jul'),
(19, 'mon pays c\'est l\'amour'),
(20, 'johnny hallyday'),
(21, 'j\'suis pas rassuré'),
(22, 'zambla'),
(23, 'les bronzés 3'),
(24, 'humour'),
(25, 'les tuches 2'),
(26, 'belge'),
(27, '50 nuances de Grey'),
(28, 'anastasia steele'),
(29, 'christian grey'),
(30, 'sharknado'),
(31, 'requin'),
(32, 'dragon ball evolution'),
(33, 'sangoku'),
(34, 'alien chantilly'),
(35, 'kid paddle'),
(36, 'le schtroumpfissime'),
(37, 'schtroumpfs'),
(38, 'guide de fornite'),
(39, 'fortnite'),
(40, 'guide de minecraft'),
(41, 'minecraft'),
(42, 'apprendre à coder pour les nuls'),
(43, 'coder');

-- --------------------------------------------------------

--
-- Structure de la table `recherche`
--

CREATE TABLE `recherche` (
  `id` int(10) NOT NULL,
  `reference` int(10) NOT NULL,
  `motcle` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `recherche`
--

INSERT INTO `recherche` (`id`, `reference`, `motcle`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 6, 3),
(6, 6, 7),
(7, 7, 3),
(8, 7, 7);

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `type`
--

INSERT INTO `type` (`id`, `type`) VALUES
(1, 'Musique'),
(4, 'Humour'),
(5, 'Aventure'),
(6, 'Romance'),
(7, 'Horreur'),
(9, 'Action'),
(10, 'Guide');

-- --------------------------------------------------------

--
-- Structure de la table `usagers`
--

CREATE TABLE `usagers` (
  `id` int(11) NOT NULL,
  `nom` varchar(20) DEFAULT NULL,
  `prenom` varchar(20) DEFAULT NULL,
  `motdepasse` varchar(15) DEFAULT NULL,
  `datenaissance` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `adresse` varchar(100) DEFAULT NULL,
  `telephone` varchar(10) DEFAULT NULL,
  `etat` tinyint(4) NOT NULL,
  `numadherent` varchar(20) DEFAULT NULL,
  `dateadhesion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `usagers`
--

INSERT INTO `usagers` (`id`, `nom`, `prenom`, `motdepasse`, `datenaissance`, `email`, `age`, `adresse`, `telephone`, `etat`, `numadherent`, `dateadhesion`) VALUES
(1, 'Zinni', 'Arthur', '', '1998-02-15', 'arthurzinni@yahoo.fr', 21, '21, rue des tulipes 54000 Nancy', '0612457898', 0, NULL, NULL),
(2, 'Pallara', 'Hugo', '', '1998-12-05', 'pallarahugo@yahoo.fr', 21, '19, rue des roses 54000 Nancy', '0623568912', 0, NULL, NULL),
(3, 'Meligner', 'Ludovic', '', '1998-06-25', 'melignerludovic@yahoo.fr', 21, '56, rue des lilas 54000 Nancy', '0715936248', 0, NULL, NULL),
(4, 'Day', 'romain', '', '1998-03-18', 'dayromain@yahoo.fr', 21, '73, rue des pissenlit 54000 Nancy', '0745917283', 0, NULL, NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genre` (`genre`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `motscles`
--
ALTER TABLE `motscles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `recherche`
--
ALTER TABLE `recherche`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `usagers`
--
ALTER TABLE `usagers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `document`
--
ALTER TABLE `document`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `motscles`
--
ALTER TABLE `motscles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT pour la table `recherche`
--
ALTER TABLE `recherche`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `usagers`
--
ALTER TABLE `usagers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `document`
--
ALTER TABLE `document`
  ADD CONSTRAINT `document_ibfk_1` FOREIGN KEY (`genre`) REFERENCES `genre` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
