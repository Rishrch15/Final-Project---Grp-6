-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2024 at 03:20 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelmanagement_rm`
--

-- --------------------------------------------------------

--
-- Table structure for table `availableroom`
--

CREATE TABLE `availableroom` (
  `label` varchar(30) NOT NULL,
  `standard` int(5) NOT NULL,
  `deluxe` int(5) NOT NULL,
  `quadruple` int(5) NOT NULL,
  `family` int(5) NOT NULL,
  `suite` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `availableroom`
--

INSERT INTO `availableroom` (`label`, `standard`, `deluxe`, `quadruple`, `family`, `suite`) VALUES
('roomAvailable', 5, 4, 5, 3, 2),
('capacity', 1, 2, 4, 6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `internationalrate`
--

CREATE TABLE `internationalrate` (
  `season` varchar(30) NOT NULL,
  `standard` int(7) NOT NULL,
  `deluxe` int(7) NOT NULL,
  `quadruple` int(7) NOT NULL,
  `family` int(7) NOT NULL,
  `suite` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `internationalrate`
--

INSERT INTO `internationalrate` (`season`, `standard`, `deluxe`, `quadruple`, `family`, `suite`) VALUES
('lean', 2500, 5000, 7500, 10000, 12500),
('high', 4500, 7000, 9500, 12000, 14500),
('peak', 6500, 9000, 11500, 14000, 16500),
('superPeak', 10000, 13000, 16000, 19000, 22000);

-- --------------------------------------------------------

--
-- Table structure for table `localrate`
--

CREATE TABLE `localrate` (
  `season` varchar(30) NOT NULL,
  `standard` int(7) NOT NULL,
  `deluxe` int(7) NOT NULL,
  `quadruple` int(7) NOT NULL,
  `family` int(7) NOT NULL,
  `suite` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `localrate`
--

INSERT INTO `localrate` (`season`, `standard`, `deluxe`, `quadruple`, `family`, `suite`) VALUES
('lean', 2000, 3000, 4000, 5000, 6000),
('high', 4000, 5000, 7000, 9000, 11000),
('peak', 6000, 8000, 10000, 12000, 14000),
('superPeak', 9000, 12000, 15000, 18000, 21000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
