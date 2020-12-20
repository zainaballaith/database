-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 20, 2020 at 03:26 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitnessdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `exercises`
--

CREATE TABLE `exercises` (
  `e_id` int(4) NOT NULL,
  `name` varchar(15) NOT NULL,
  `level` varchar(10) NOT NULL,
  `duration` int(20) NOT NULL,
  `muscles` text NOT NULL,
  `video` varchar(100) NOT NULL,
  `calories` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `l_id` int(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `login_time` datetime NOT NULL,
  `logout_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `privatesubscription`
--

CREATE TABLE `privatesubscription` (
  `p_id` int(15) NOT NULL,
  `trainer_user` varchar(30) NOT NULL,
  `trainee_user` varchar(30) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `days_week` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `s_id` int(3) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `trainer_user` varchar(30) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `pic` varchar(300) DEFAULT 'http://172.20.10.7/fitness/session.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`s_id`, `sname`, `trainer_user`, `start_date`, `end_date`, `start_time`, `end_time`, `pic`) VALUES
(1, 'session one', 'trainer', '2014-10-10', '2015-10-10', '10:00:00', '11:00:00', 'http://172.20.10.7/fitness/session.jpg'),
(3, 'session two', 'trainer', '2015-10-10', '2015-11-11', '10:00:00', '11:00:00', 'http://172.20.10.7/fitness/session.jpg'),
(4, 'session two', 'trainer', '2016-10-10', '2016-11-11', '10:00:00', '11:00:00', 'http://172.20.10.7/fitness/session.jpg'),
(22, 'session 10', 'trainer', '2020-09-10', '2020-10-05', '08:00:00', '10:00:00', 'http://172.20.10.7/fitness/session.jpg'),
(56, 'session 6666', 'trainer', '2021-01-25', '2021-02-25', '06:00:00', '07:00:00', 'http://172.20.10.7/fitness/session.jpg'),
(57, 'session77', 'trainer', '2021-02-25', '2021-03-25', '06:30:00', '07:30:00', 'http://172.20.10.7/fitness/session.jpg'),
(59, 'session88', 'trainer', '2021-02-28', '2021-03-29', '06:00:00', '11:00:00', 'http://172.20.10.7/fitness/session.jpg'),
(60, 'session88', 'trainer', '2021-02-28', '2021-03-29', '07:00:00', '08:00:00', 'http://172.20.10.7/fitness/session.jpg'),
(61, 'session88', 'trainer', '2021-02-28', '2021-03-29', '07:00:00', '08:00:00', 'http://172.20.10.7/fitness/session.jpg'),
(62, 'session two', 'trainer', '2021-02-10', '2021-04-15', '09:30:00', '11:00:00', 'http://172.20.10.7/fitness/session.jpg'),
(63, 'session two', 'trainer', '2021-02-10', '2021-04-15', '09:30:00', '11:00:00', 'http://172.20.10.7/fitness/session.jpg'),
(64, 'session two', 'trainer', '2015-10-28', '2015-11-29', '05:30:00', '06:30:00', 'http://172.20.10.7/fitness/session.jpg'),
(65, 'session last', 'trainer', '2021-02-27', '2021-03-28', '17:00:00', '17:30:00', 'fitness/session.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `trainees`
--

CREATE TABLE `trainees` (
  `trainee_user` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `age` int(3) NOT NULL,
  `weight` int(3) NOT NULL,
  `height` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trainees`
--

INSERT INTO `trainees` (`trainee_user`, `fullname`, `email`, `age`, `weight`, `height`) VALUES
('et4e', 'rty', 'zaym@hotmail.com', 1, 1, 1),
('fatoom', 'fatima ahmed', 'fofo@gmail.com', 21, 66, 171),
('jaafar', 'jaafar zuhair', 'jam@gmail.com', 23, 65, 181),
('jszuhair', 'jaafar ', 'jszuhair@gmail.com', 11, 111, 11),
('lala', 'lalalala', 'lala@gmail.com', 12, 12, 12),
('zainabyy', 'zainab allaith', 'zaza@gmail.com', 22, 55, 161),
('zaynabii', 'zainab hussain', 'zaina@gmail.com', 12, 12, 12);

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `trainer_user` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `description` text NOT NULL,
  `pic` varchar(300) NOT NULL DEFAULT 'http://172.20.10.7/fitness/trainer.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`trainer_user`, `fullname`, `email`, `description`, `pic`) VALUES
('trainer', 'Ali', '', '', 'http://172.20.10.7/fitness/trainer.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `type`) VALUES
('admin', '12345678', 'admin'),
('jszuhair', '12345678', 'trainee'),
('zaynabii', '12345678', 'trainee');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exercises`
--
ALTER TABLE `exercises`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`l_id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `privatesubscription`
--
ALTER TABLE `privatesubscription`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `trainee_user` (`trainee_user`),
  ADD KEY `trainer_user` (`trainer_user`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `sessions_ibfk_1` (`trainer_user`);

--
-- Indexes for table `trainees`
--
ALTER TABLE `trainees`
  ADD PRIMARY KEY (`trainee_user`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`trainer_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exercises`
--
ALTER TABLE `exercises`
  MODIFY `e_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `l_id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privatesubscription`
--
ALTER TABLE `privatesubscription`
  MODIFY `p_id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `s_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `log_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `privatesubscription`
--
ALTER TABLE `privatesubscription`
  ADD CONSTRAINT `privatesubscription_ibfk_1` FOREIGN KEY (`trainee_user`) REFERENCES `trainees` (`trainee_user`),
  ADD CONSTRAINT `privatesubscription_ibfk_2` FOREIGN KEY (`trainer_user`) REFERENCES `trainers` (`trainer_user`);

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_ibfk_1` FOREIGN KEY (`trainer_user`) REFERENCES `trainers` (`trainer_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
