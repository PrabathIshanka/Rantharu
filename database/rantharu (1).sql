-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 19, 2021 at 03:14 AM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rantharu`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `ph` int NOT NULL,
  `message` varchar(500) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `email`, `subject`, `ph`, `message`) VALUES
('rantharuservice', 'gim@gmail.com', 'feedback', 123456, ''),
('rantharuservice', 'prabath.ishanka1@gmail.com', 'feedback', 123456, ''),
('rantharuservice', 'ishankadmc@gmail.com', 'feedback', 123456, '');

-- --------------------------------------------------------

--
-- Table structure for table `registation`
--

DROP TABLE IF EXISTS `registation`;
CREATE TABLE IF NOT EXISTS `registation` (
  `fname` varchar(50) NOT NULL,
  `cid` int NOT NULL AUTO_INCREMENT,
  `addr` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tp` int NOT NULL,
  `type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `service` varchar(50) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=124135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `registation`
--

INSERT INTO `registation` (`fname`, `cid`, `addr`, `email`, `tp`, `type`, `service`, `date`) VALUES
('dfgfdg', 124132, 'hggh', 'gim@gmail.com', 0, 'C', 'wash', '2021-03-18'),
('fd', 444, 'gf', 'gim@gmail.com', 112, 'C', 'body', '2021-03-16'),
('fd', 12, 'fdfd', 'gim@gmail.com', 124654, 'C', 'wash', '2021-03-18'),
('prabath', 5555, 'fdfd', 'gim@gmail.com', 124654, 'C', 'wash', '2021-03-10'),
('fd', 124133, 'hgh', 'prabath.ishanka1@gmail.com', 124654, 'C', 'service', '2021-03-18'),
('a', 124134, 'cc', 'f@gmail.com', 1111, 'C', 'wash', '2021-03-29');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
