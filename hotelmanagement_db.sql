-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2024 at 03:19 AM
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
-- Database: `hotelmanagement_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_information`
--

CREATE TABLE `customer_information` (
  `accountNumber` varchar(30) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `contactNum` varchar(11) NOT NULL,
  `birthDate` date NOT NULL,
  `dateOfSignUp` date NOT NULL DEFAULT current_timestamp(),
  `securityQuestion` varchar(100) NOT NULL,
  `securityAnswer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_information`
--

INSERT INTO `customer_information` (`accountNumber`, `fullName`, `contactNum`, `birthDate`, `dateOfSignUp`, `securityQuestion`, `securityAnswer`) VALUES
('cstmr000024', 'Irish Rocha', '09506558579', '2004-08-15', '2024-11-21', 'What is Your favorite color?', 'Red'),
('cstmr000025', 'JUAN DELA CRUZ', '12345678912', '2005-11-03', '2024-11-25', 'What is your first pet?', 'Dog'),
('cstmr000026', 'IRISH ROCHA', '09506558579', '2004-08-15', '2024-11-27', 'What is your mother\'s maiden name?', 'Rey'),
('cstmr000027', 'rex marzan', '09938261547', '2002-12-25', '2024-12-02', 'What is the name of your first pet?', 'red'),
('cstmr000028', 'Emily Sicat', '09464078521', '2004-12-08', '2024-12-02', 'What is the name of your first pet?', 'gab');

-- --------------------------------------------------------

--
-- Table structure for table `idprime`
--

CREATE TABLE `idprime` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `idprime`
--

INSERT INTO `idprime` (`id`) VALUES
(24),
(25),
(26),
(27),
(28);

-- --------------------------------------------------------

--
-- Table structure for table `login_credentials`
--

CREATE TABLE `login_credentials` (
  `id` int(30) NOT NULL,
  `accountNumber` varchar(250) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_credentials`
--

INSERT INTO `login_credentials` (`id`, `accountNumber`, `email`, `password`) VALUES
(23, 'cstmr000024', 'irishrocha@gmail.com', 'siesta123'),
(24, 'cstmr000025', 'Jdelacruz@gmail.com', 'siesta12345'),
(25, 'cstmr000026', 'irocha15@gmail.com', 'siesta111'),
(26, 'cstmr000027', 'rexmarzan@gmail.com', 'kupalkababoss'),
(27, 'cstmr000028', 'emilysicat@gmail.com', '123');

--
-- Triggers `login_credentials`
--
DELIMITER $$
CREATE TRIGGER `getId` BEFORE INSERT ON `login_credentials` FOR EACH ROW BEGIN
	INSERT INTO idprime VALUES(NULL);
    SET NEW.accountNumber
    = CONCAT("cstmr",LPAD(LAST_INSERT_ID(), 6,"0"));
    
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `reservation_table`
--

CREATE TABLE `reservation_table` (
  `ID` int(30) NOT NULL,
  `reservation_number` varchar(30) NOT NULL,
  `idNumber` varchar(300) NOT NULL,
  `date_of_booking` date NOT NULL DEFAULT current_timestamp(),
  `destination` varchar(300) DEFAULT NULL,
  `season` varchar(300) DEFAULT NULL,
  `paidGuests` int(3) NOT NULL DEFAULT 0,
  `childGuests` int(30) NOT NULL DEFAULT 0,
  `bookingSummarry` varchar(500) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservation_table`
--

INSERT INTO `reservation_table` (`ID`, `reservation_number`, `idNumber`, `date_of_booking`, `destination`, `season`, `paidGuests`, `childGuests`, `bookingSummarry`) VALUES
(1, 'rsrvtn00000', 'Starting point', '2024-12-05', NULL, NULL, 0, 0, ''),
(2, 'rsrvtn00001', '', '2024-12-10', NULL, NULL, 0, 0, '0'),
(3, 'rsrvtn00002', 'cstmr000024', '2024-12-10', 'Hong Kong', 'High Season', 0, 0, '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `idprime`
--
ALTER TABLE `idprime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_credentials`
--
ALTER TABLE `login_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation_table`
--
ALTER TABLE `reservation_table`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `idprime`
--
ALTER TABLE `idprime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `login_credentials`
--
ALTER TABLE `login_credentials`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `reservation_table`
--
ALTER TABLE `reservation_table`
  MODIFY `ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
