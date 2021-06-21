-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2021 at 01:54 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mus_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_abn`
--

CREATE TABLE `tbl_abn` (
  `abn_id` int(11) NOT NULL,
  `prix` varchar(256) CHARACTER SET utf8 NOT NULL,
  `titre` varchar(256) CHARACTER SET utf8 NOT NULL,
  `description` varchar(256) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_abn`
--

INSERT INTO `tbl_abn` (`abn_id`, `prix`, `titre`, `description`) VALUES
(1, '2500DA/Mois', 'OFFRE CLASSIQUE', 'Musculation / Cardio/Yoga / Zumba /Natation'),
(2, '2000DA/Mois', 'OFFRE FAMILLE', 'Musculation / Cardio / Yoga / Zumba / Natation'),
(3, '2000DA/Mois', 'OFFRE ÉTUDIANT', 'Musculation / Cardio / Yoga / Zumba / Natation');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coach`
--

CREATE TABLE `tbl_coach` (
  `coach_id` int(11) NOT NULL,
  `coachname` varchar(256) NOT NULL,
  `coachemail` varchar(256) NOT NULL,
  `coachpassword` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_coach`
--

INSERT INTO `tbl_coach` (`coach_id`, `coachname`, `coachemail`, `coachpassword`) VALUES
(0, 'manar', 'manar@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reservation`
--

CREATE TABLE `tbl_reservation` (
  `reserv_id` int(11) NOT NULL,
  `nom` varchar(256) CHARACTER SET utf8 NOT NULL,
  `prenom` varchar(256) CHARACTER SET utf8 NOT NULL,
  `email` varchar(256) CHARACTER SET utf8 NOT NULL,
  `telephone` varchar(256) CHARACTER SET utf8 NOT NULL,
  `adresse` varchar(256) CHARACTER SET utf8 NOT NULL,
  `planning` varchar(256) CHARACTER SET utf8 NOT NULL,
  `stats` varchar(256) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_reservation`
--

INSERT INTO `tbl_reservation` (`reserv_id`, `nom`, `prenom`, `email`, `telephone`, `adresse`, `planning`, `stats`) VALUES
(1, 'cheyma', 'messili', 'cheymamessili@gmail.com', '06666666', 'msila', '2021-06-27', 'success'),
(2, 'cheyma', 'messili', 'cheymaadmin@gmail.com', '06666666', 'msila', '2021-06-27', 'pending'),
(3, 'cheyma', 'messili', 'cheymaadmin@gmail.com', '06666666', 'msila', '2021-07-04', 'pending'),
(4, 'manar', 'benziane', 'manarben@gmail.com', '55555555', 'msila', '2021-06-27', 'success'),
(5, 'manar', 'bezziane', 'manarbezziane@gmail', '055555666', 'msila', '2021-06-27', 'success');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(256) CHARACTER SET utf8 NOT NULL,
  `useremail` varchar(256) CHARACTER SET utf8 NOT NULL,
  `userphone` int(11) NOT NULL,
  `userpassword` varchar(256) CHARACTER SET utf8 NOT NULL,
  `userrole` varchar(88) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `username`, `useremail`, `userphone`, `userpassword`, `userrole`) VALUES
(6, 'cheyma', 'cheymamessili@gmail.com', 696519783, 'cheyma010101', 'user'),
(7, 'cheyma', 'cheymaadmin@gmail.com', 696519783, 'cheymacheyma0101', 'admin'),
(10, 'manar', 'manarbezziane@gmail.com', 55555666, 'manar0123', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_abn`
--
ALTER TABLE `tbl_abn`
  ADD PRIMARY KEY (`abn_id`);

--
-- Indexes for table `tbl_reservation`
--
ALTER TABLE `tbl_reservation`
  ADD PRIMARY KEY (`reserv_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_abn`
--
ALTER TABLE `tbl_abn`
  MODIFY `abn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_reservation`
--
ALTER TABLE `tbl_reservation`
  MODIFY `reserv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
