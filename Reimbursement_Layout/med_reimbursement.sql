-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2021 at 11:38 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `med_reimbursement`
--

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticketNum` int(11) NOT NULL,
  `purpose` varchar(128) NOT NULL,
  `office` varchar(128) NOT NULL,
  `activityDate` varchar(128) NOT NULL,
  `expense` varchar(128) NOT NULL,
  `amount` int(128) NOT NULL,
  `remarks` varchar(128) NOT NULL,
  `userId` int(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`ticketNum`, `purpose`, `office`, `activityDate`, `expense`, `amount`, `remarks`, `userId`) VALUES
(1, 'Reimburse', 'cso', '2021-02-28', 'test 123										', 2021, 'test							\r\n						', 0),
(2, 'Reimburse', 'gcu', '2021-02-28', 'test xd										', 2021, 'test remakrs							\r\n						', 0),
(3, 'Reimburse', 'mrc', '2021-02-28', 'test 123										', 2021, 'XD							\r\n						', 0),
(4, 'Reimburse', 'fo', '2021-02-28', 'test										', 2021, 'test xddddd					', 0),
(5, 'Reimburse', 'du', '2021-02-28', 'test										', 2021, 'valheim							\r\n						', 0),
(6, 'Reimburse', 'fo', '2021-02-28', 'sessh										', 2021, 'XD							\r\n						', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usersId` int(64) NOT NULL,
  `userType` tinyint(1) NOT NULL,
  `usersName` varchar(64) NOT NULL,
  `usersEmail` varchar(64) NOT NULL,
  `usersPass` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usersId`, `userType`, `usersName`, `usersEmail`, `usersPass`) VALUES
(2, 1, 'Admin', 'admin@admin.com', '$2y$10$MJBGS6I/VbN1iXna0RLTr.QZhaqpBq7cAdLoTvPqO8QaxBC3hqNOm'),
(4, 0, 'Reyjudel Eroy', 'rey_judel135@yahoo.com.ph', '$2y$10$asHw90.pevPLhhW8zIm6Ae1hytK61IJFLxu.Y7SdyBKTlc4z/6yaS'),
(5, 0, 'testuser', 'test@user', '$2y$10$lpRtEguqgdxIj6PfGpYVvuDQ5pH4E/xX0eyWOUKZkGHplCsVsjSUC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticketNum`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usersId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticketNum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usersId` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
