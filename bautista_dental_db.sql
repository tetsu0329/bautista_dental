-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2020 at 01:49 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bautista_dental_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `adminId` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `employeeId` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `adminId`, `firstName`, `lastName`, `employeeId`, `password`, `photo`, `createdAt`) VALUES
(1, 'LT3NBH0D', 'Bautista', 'Dental', 'admin', '$2y$10$/vwEbm/dyR3zEq/Vg7MlfOb6B0bUX1WQdkhh2zmuuowSXTJu2OXeO', NULL, '2020-01-30 04:47:17');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `appointmentId` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `serviceId` varchar(255) NOT NULL,
  `employeeId` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `start` varchar(255) NOT NULL,
  `end` varchar(255) NOT NULL,
  `duration` int(11) NOT NULL,
  `time` varchar(255) NOT NULL,
  `message` text DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `preDiagnostic` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `appointmentId`, `userId`, `serviceId`, `employeeId`, `date`, `start`, `end`, `duration`, `time`, `message`, `status`, `preDiagnostic`, `createdAt`) VALUES
(6, '851NUHlz', 'HYLJlA27', 'IU3fPNvB ', 'Ma2hzx7I', '2020-01-30', '12:00 PM', '01:00 pm', 1, '12:00 PM,12:30 PM,01:00 PM', '', 'APPROVED', 'hao-shaw-Dqrlp6cMLkE-unsplash.jpg', '2020-02-10 02:40:16'),
(7, '0W2eSwqa', 'HYLJlA27', 'IU3fPNvB ', 'Ma2hzx7I', '2020-01-30', '1:30 PM', '02:30 pm', 1, '01:30 PM,02:00 PM,02:30 PM', '', 'APPROVED', 'hao-shaw-Dqrlp6cMLkE-unsplash.jpg', '2020-02-10 02:40:18'),
(8, 'tX5TsmNW', 'HYLJlA27', 'IU3fPNvB ', 'Ma2hzx7I', '2020-01-31', '1:30 PM', '02:30 pm', 1, '01:30 PM,02:00 PM,02:30 PM', '', 'CANCELED', 'hao-shaw-Dqrlp6cMLkE-unsplash.jpg', '2020-02-10 02:40:20'),
(9, 'DKSow58C', 'HYLJlA27', 'IU3fPNvB ', 'Ma2hzx7I', '2020-01-31', '11:00 AM', '12:00 pm', 1, '11:00 AM,11:30 AM,12:00 PM', '', 'APPROVED', '', '2020-01-30 11:00:53'),
(10, 'O903Wuzh', 'HYLJlA27', 'F7setd5L ', 'Ma2hzx81', '2020-02-20', '10:00 AM', '12:00 pm', 2, '10:00 AM,10:30 AM,11:00 AM,11:30 AM,12:00 PM', '', 'PENDING', '', '2020-01-30 08:22:52'),
(11, 'dn47afus', 'HYLJlA27', 'ynxUG1uI ', 'Ma2hzx81', '2020-02-29', '4:00 PM', '05:00 pm', 1, '04:00 PM,04:30 PM,05:00 PM', '', 'CANCELED', '', '2020-02-01 08:50:11'),
(12, '2Y8uO', 'HYLJlA27', 'F7setd5L ', 'Ma2hzx81', '2020-03-18', '8:00 AM', '10:00 am', 2, '08:00 AM,08:30 AM,09:00 AM,09:30 AM,10:00 AM', '', 'PENDING', '', '2020-02-01 05:33:14'),
(13, '24n6hypyp', 'HYLJlA27', 'F7setd5L ', 'Ma2hzx81', '2020-01-01', '8:00 AM', '10:00 am', 2, '08:00 AM,08:30 AM,09:00 AM,09:30 AM,10:00 AM', '', 'PENDING', '', '2020-02-01 05:32:59'),
(14, '24n6hAOL', 'HYLJlA27', 'F7setd5L ', 'Ma2hzx7I', '2020-01-02', '8:00 AM', '10:00 am', 2, '08:00 AM,08:30 AM,09:00 AM,09:30 AM,10:00 AM', '', 'APPROVED', '', '2020-01-30 17:51:35'),
(15, 'ETKjsvfl', 'HYLJlA27', 'IU3fPNvB ', 'Ma2hzx7I', '2020-02-15', '3:00 PM', '04:00 pm', 1, '03:00 PM,03:30 PM,04:00 PM', '', 'PENDING', '', '2020-02-01 13:50:45'),
(16, 'XKIyUQCr', 'HYLJlA27', 'ynxUG1uI ', 'Ma2hzx81', '2020-02-15', '7:00 AM', '08:00 am', 1, '07:00 AM,07:30 AM,08:00 AM', '', 'PENDING', '', '2020-02-02 13:34:55'),
(17, '2O8SApa1', 'HYLJlA27', 'ynxUG1uI ', 'Ma2hzx7I', '2020-02-07', '11:00 AM', '12:00 pm', 1, '11:00 AM,11:30 AM,12:00 PM', '', 'PENDING', '', '2020-02-02 13:59:23'),
(18, 'nGIi0CWv', 'HYLJlA27', 'IU3fPNvB ', 'Ma2hzx7I', '2020-02-14', '12:00 PM', '01:00 pm', 1, '12:00 PM,12:30 PM,01:00 PM', '', 'PENDING', '', '2020-02-04 18:04:24'),
(19, '6ljksZYu', 'HYLJlA27', 'IU3fPNvB ', 'Ma2hzx81', '2020-02-07', '4:00 PM', '05:00 pm', 1, '04:00 PM,04:30 PM,05:00 PM', '', 'PENDING', '', '2020-02-04 18:17:16'),
(20, '2FLAnlVx', 'HYLJlA27', 'IU3fPNvB ', 'Ma2hzx7I', '2020-02-14', '1:00 PM', '02:00 pm', 1, '01:00 PM,01:30 PM,02:00 PM', '', 'PENDING', '', '2020-02-04 18:19:23'),
(21, 'D7oiAerY', 'HYLJlA27', 'IU3fPNvB ', 'Ma2hzx7I', '2020-02-14', '8:00 AM', '09:00 am', 1, '08:00 AM,08:30 AM,09:00 AM', '', 'PENDING', '', '2020-02-04 18:22:49'),
(22, 'vMkp4dhS', 'HYLJlA27', 'IU3fPNvB ', 'Ma2hzx7I', '2020-02-08', '12:00 PM', '01:00 pm', 1, '12:00 PM,12:30 PM,01:00 PM', '', 'PENDING', '', '2020-02-04 18:24:54'),
(23, 'LZAXHo6f', 'HYLJlA27', 'IU3fPNvB ', 'Ma2hzx81', '2020-02-14', '4:00 PM', '05:00 pm', 1, '04:00 PM,04:30 PM,05:00 PM', '', 'PENDING', '', '2020-02-04 18:27:47');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryId` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryId`, `name`, `description`, `photo`, `createdAt`) VALUES
(1, 'TyPYE87p', 'Check-up', 'TEST', NULL, '2020-01-13 08:33:36');

-- --------------------------------------------------------

--
-- Table structure for table `cms_content`
--

CREATE TABLE `cms_content` (
  `id` int(11) NOT NULL,
  `section` varchar(100) DEFAULT NULL,
  `title` varchar(10000) DEFAULT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_content`
--

INSERT INTO `cms_content` (`id`, `section`, `title`, `description`, `image`) VALUES
(1, 'ABOUT', 'HISTORY', 'YWRhc2Rhc2RzZHNmc2FzZGFkYWQNCmFzZGFzZA0KYWRhc2Rhc2QNCmFkYWRhcw==', NULL),
(2, 'ABOUT', 'MISSION', 'd3dlcjM0cmlvcmp0aWpydA0KcnRna292cGdydmtwbw==', NULL),
(3, 'ABOUT', 'VISION', 'ZXJpamZlb2lqaWNqY29pY3Blamlyb2pndmll', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `employeeId` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `specialization` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `employeeId`, `title`, `firstName`, `lastName`, `contact`, `email`, `photo`, `specialization`, `role`, `createdAt`) VALUES
(1, 'Ma2hzx7I', 'Dr.', 'Bautista', 'Bautista', '09876543212', 'bautista@test.com', NULL, '2', 'DOCTOR', '2020-02-10 02:18:50'),
(2, 'Ma2hzx81', 'Dr.', 'Ok', 'OK', '0987654321', 'ok@test.com', NULL, '4', 'DENTIST', '2020-02-10 02:18:51'),
(3, 'w2tIFjy4', 'Dr.', 'asdasd', 'asdasd', '87978765756756', 'dev.web@htechcorp.net', NULL, '3', 'DOCTOR', '2020-02-10 02:13:02'),
(4, 'PQDvokH6', 'Dr.', 'nm', 'mm', '0988900', 'test@gmail.com', NULL, '0,1', 'DOCTOR', '2020-02-11 08:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `mediaID` varchar(200) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `imageText` varchar(1000) DEFAULT NULL,
  `page` varchar(1000) DEFAULT NULL,
  `component` varchar(500) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `mediaID`, `image`, `imageText`, `page`, `component`, `createdAt`) VALUES
(22, 'GvYwop9V', 'hao-shaw-Dqrlp6cMLkE-unsplash.jpg', NULL, 'HOME', 'BANNER', '2020-02-05 17:47:53'),
(23, '8PTfFEe6', 'hao-shaw-tL4iLYL9Q5E-unsplash.jpg', NULL, 'HOME', 'BANNER', '2020-02-05 17:47:53'),
(24, 'GvserC7M', 'jurica-koletic-7YVZYZeITc8-unsplash.jpg', NULL, 'HOME', 'BANNER', '2020-02-05 17:47:54'),
(25, 'eCEdVc3f', 'ben-parker-OhKElOkQ3RE-unsplash.jpg', NULL, 'GALLERY', 'IMAGE', '2020-02-06 17:04:38'),
(26, 'hQFgW0O5', 'alexander-krivitskiy-zle2_jp-AUw-unsplash.jpg', NULL, 'GALLERY', 'IMAGE', '2020-02-06 17:04:39'),
(27, 'AWfnHzMv', 'hao-shaw-Dqrlp6cMLkE-unsplash.jpg', NULL, 'GALLERY', 'IMAGE', '2020-02-06 17:04:39'),
(28, '96bP71oN', 'lesly-juarez-1AhGNGKuhR0-unsplash.jpg', NULL, 'GALLERY', 'IMAGE', '2020-02-06 17:04:40'),
(29, 'enopqsUZ', '11821907_1644405129131378_659110783_a.jpg', NULL, 'GALLERY', 'IMAGE', '2020-02-07 05:36:43'),
(30, 'I9xHTm7k', '60669549_494550001110798_7253444620023629096_n.jpg', NULL, 'GALLERY', 'IMAGE', '2020-02-07 05:36:43');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `messageId` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` int(9) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `messageId`, `name`, `email`, `mobile`, `body`, `createdAt`) VALUES
(3, 'TnMAquyZ', 'asdasdasd', 'dem0@gmail.com', 909878788, 'aGpzaGpzaGpjZmhzZGsNCnNrZGpza2pzbGtkZg0Kc2RramZzbGtqZmxrcw==', '2020-02-02 22:27:03'),
(4, 'Jqhbtand', 'adadasdad', 'asdasdasd@gmail.com', 0, 'YXNkYXNkYWRzYWRhZA==', '2020-02-02 22:39:16'),
(5, 'GIqPAS95', 'adasdasd', 'adasdasdasd@gmial.com', 0, 'YXNkYWRhZGFk', '2020-02-02 22:40:32'),
(6, 'EP3Jw4uG', 'asasdadad', 'dem0@gmail.com', 909878788, 'YXNsZGV3anJ3ZWpyd2xyandsZXJ3a2VyDQo=', '2020-02-03 04:34:51'),
(7, 'DTc4IEju', 'joshua blando', 'josh@gmail.com', 909878788, 'YXNsZGV3anJ3ZWpyd2xyandsZXJ3a2VyDQpha3NkaGFsc2xzbGhha3NsZHMNCnNkYXNkZHNhZGFzZGFkcw==', '2020-02-03 04:35:35'),
(8, 'jpENV31P', 'joshua blando', 'josh@gmail.com', 909878788, 'YXNsZGV3anJ3ZWpyd2xyandsZXJ3a2VyDQpha3NkaGFsc2xzbGhha3NsZHMNCnNkYXNkZHNhZGFzZGFkcw==', '2020-02-03 04:35:36'),
(9, 'DR5SdaQ2', 'joshua blando', 'josh@gmail.com', 909878788, 'c2Fhc2Rua2hraGFrc2QNCmFqc2lkamlqd2lqd2llcXcNCnF3b2plb3FqZW93amVvcQ==', '2020-02-03 12:30:58'),
(10, 'hG5mlOiq', 'joshua hermosa', 'josh@gmail.com', 909878788, 'c2Fhc2Rua2hraGFrc2QNCmFqc2lkamlqd2lqd2llcXcNCnF3b2plb3FqZW93amVvcQ==', '2020-02-03 12:34:18');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `notif_id` varchar(200) NOT NULL,
  `notifiable` varchar(100) NOT NULL,
  `readAt` varchar(1000) DEFAULT '0000-00-00',
  `seen` int(11) NOT NULL DEFAULT 0,
  `details` varchar(1000) NOT NULL,
  `redirectUrl` varchar(500) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `notif_id`, `notifiable`, `readAt`, `seen`, `details`, `redirectUrl`, `createdAt`, `updatedAt`) VALUES
(1, 'vujThffs', 'ADMIN', '2020-02-04', 1, 'New Inquiry from joshua blando has been recieved', 'message.php', '2020-02-03 12:30:58', '2020-02-03 12:30:58'),
(2, '7k65RsMc', 'ADMIN', '2020-02-04', 1, 'New Inquiry from joshua hermosa has been recieved', 'message.php', '2020-02-03 12:34:19', '2020-02-03 12:34:19'),
(3, 'vujTh2Ms', 'ADMIN', '2020-02-04', 1, 'New Inquiry from joshua blando has been recieved', 'message.php', '2020-02-03 12:30:58', '2020-02-03 12:30:58'),
(4, 'Y02ltgiM', 'ADMIN', '2020-02-04', 1, 'Demo  User set an appointment to Dr. Ok OK', 'appointment.php', '2020-02-04 18:27:48', '2020-02-04 18:27:48');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `scheduleId` varchar(255) NOT NULL,
  `employeeId` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `scheduleId`, `employeeId`, `date`, `time`, `createdAt`) VALUES
(4, 'cPXDwlFz', 'Ma2hzx81', '2020-01-26', '7:00 AM', '2020-02-02 16:56:09'),
(5, 'JvNOB5Gf', 'Ma2hzx81', '2020-02-26', '7:00 AM', '2020-02-02 16:55:12'),
(9, 'KR4NtSwu', 'Ma2hzx81', '2020-01-27', '8:00 AM', '2020-02-03 12:52:45'),
(10, 'cPXDwlFz', 'Ma2hzx81', '2020-01-26', '10:00 AM', '2020-02-02 16:56:09');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `serviceId` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `categoryId` varchar(255) NOT NULL,
  `duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `serviceId`, `name`, `description`, `photo`, `categoryId`, `duration`) VALUES
(9, 'p2WG7b9C', 'Cosmetic Dentistry', 'Cosmetic Dentistry Description', NULL, 'General Dentist', 0),
(10, 'EcIU982R', 'Crowns and Bridges', 'Crowns and Bridges Description', NULL, 'Orthodontist', 0),
(11, 'fk5pKjS1', 'Dentures', 'Dentures Description', NULL, 'General Dentist', 0),
(12, 's8mxXVFt', 'Grafts', 'Grafts Description', NULL, 'Orthodontist', 0),
(13, 'LR7jE1kY', 'Excessive or Uneven Gums', 'Excessive or Uneven Gums Description', NULL, 'Oral and Maxillofacial Surgeon', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `userId`, `firstName`, `lastName`, `contact`, `email`, `password`, `photo`, `createdAt`) VALUES
(1, 'uw4dCUjX', 'Test', 'Test', '09876543211', 'test@test.com', '$2y$10$epn33a74dP4l6M4gsXXDl.tuf2MKebBRo1EjW9QoL5lZwv.E6vWW2', NULL, '2020-01-13 09:53:43'),
(2, 'ZDK1kq94', 'test2', 'test2', '1234567890', 'test2@test2.com', '$2y$10$RHmVj63bFUynu.mXZpkDO.Z.EsAvtmd8D2NVqxIkh9NGJMv0vU1H2', NULL, '2020-01-22 11:28:35'),
(3, 'HYLJlA27', 'Demo', ' User', '09095929288', 'dem0@gmail.com', '$2y$10$/vwEbm/dyR3zEq/Vg7MlfOb6B0bUX1WQdkhh2zmuuowSXTJu2OXeO', NULL, '2020-01-27 11:51:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_content`
--
ALTER TABLE `cms_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_content`
--
ALTER TABLE `cms_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
