-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 11, 2024 at 11:12 AM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id22134011_mentalhealth`
--
CREATE DATABASE IF NOT EXISTS `id22134011_mentalhealth` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id22134011_mentalhealth`;

-- --------------------------------------------------------

--
-- Table structure for table `coping_strategies`
--

CREATE TABLE `coping_strategies` (
  `id` int(11) NOT NULL,
  `strategy` varchar(200) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coping_strategies`
--

INSERT INTO `coping_strategies` (`id`, `strategy`, `description`) VALUES
(1, 'Practice mindfulness', 'Engage in physical activity'),
(2, 'Talk to a trusted friend or family member', 'seek professional help when needed');

-- --------------------------------------------------------

--
-- Table structure for table `crisis_intervention`
--

CREATE TABLE `crisis_intervention` (
  `id` int(11) NOT NULL,
  `resourse_name` varchar(200) NOT NULL,
  `phone_number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `crisis_intervention`
--

INSERT INTO `crisis_intervention` (`id`, `resourse_name`, `phone_number`) VALUES
(1, 'if you are in crisis or experiencing thouths of self harm, please contact us immediately', '0781838834');

-- --------------------------------------------------------

--
-- Table structure for table `mental_health_topics`
--

CREATE TABLE `mental_health_topics` (
  `id` int(11) NOT NULL,
  `topic` varchar(300) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mental_health_topics`
--

INSERT INTO `mental_health_topics` (`id`, `topic`, `description`) VALUES
(1, 'Emotional', 'it affect how we think, feel and act'),
(2, 'social well-being', 'it affect how we think, feel and act');

-- --------------------------------------------------------

--
-- Table structure for table `professional_help_contacts`
--

CREATE TABLE `professional_help_contacts` (
  `id` int(11) NOT NULL,
  `organization_name` varchar(100) NOT NULL,
  `phone_number` varchar(100) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `professional_help_contacts`
--

INSERT INTO `professional_help_contacts` (`id`, `organization_name`, `phone_number`, `address`) VALUES
(1, 'SocialWell ltd', '0781838834', 'kigali/Rwanda ,Reach out us in your area!');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coping_strategies`
--
ALTER TABLE `coping_strategies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crisis_intervention`
--
ALTER TABLE `crisis_intervention`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mental_health_topics`
--
ALTER TABLE `mental_health_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professional_help_contacts`
--
ALTER TABLE `professional_help_contacts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coping_strategies`
--
ALTER TABLE `coping_strategies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `crisis_intervention`
--
ALTER TABLE `crisis_intervention`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mental_health_topics`
--
ALTER TABLE `mental_health_topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `professional_help_contacts`
--
ALTER TABLE `professional_help_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
