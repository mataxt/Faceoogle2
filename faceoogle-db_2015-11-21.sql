-- phpMyAdmin SQL Dump
-- version 4.4.15.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 21, 2015 at 11:22 AM
-- Server version: 5.5.46
-- PHP Version: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `faceoogle`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `Id` int(11) NOT NULL,
  `Chater` varchar(255) NOT NULL,
  `Chatee` varchar(255) NOT NULL,
  `Message` text NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`Id`, `Chater`, `Chatee`, `Message`, `Timestamp`) VALUES
(2, 'mataxt', 'ramias', 'Nice chat (͡° ͜ʖ ͡°)', '2015-11-11 12:18:14'),
(3, 'ramias', 'ramias', 'What is this?', '2015-11-11 12:19:15'),
(4, 'mataxt', 'ramias', 'Hello"!!!"!"!" ???!!', '2015-11-11 14:20:16'),
(5, 'mataxt', 'ramias', 'Hello"!!!"!"!" ???!!', '2015-11-11 14:20:16'),
(6, 'mataxt', 'ramias', 'WOWOWOWOWOW', '2015-11-11 14:22:56'),
(7, 'ramias', 'mataxt', 'HELLO MATDAX!', '2015-11-11 14:25:50'),
(8, 'mataxt', 'ramias', 'Hi.', '2015-11-11 14:26:07'),
(9, 'mataxt', 'eddie', 'Pls hack ramias?', '2015-11-11 14:26:22'),
(10, 'ramias', 'mataxt', 'HELLO', '2015-11-11 15:06:33'),
(11, 'ramias', 'mataxt', 'HEJ\r\nHEJ 2', '2015-11-11 15:08:09'),
(12, 'ramias', 'mataxt', 'HEJtest\r\nHEJtest2', '2015-11-11 15:08:34'),
(13, 'ramias', 'mataxt', 'asdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasd', '2015-11-11 15:08:51'),
(14, 'ramias', 'mataxt', 'dsf', '2015-11-11 15:10:41'),
(15, 'ramias', 'mataxt', 'dsf', '2015-11-11 15:10:43'),
(16, 'ramias', 'mataxt', 'dsf', '2015-11-11 15:10:43'),
(17, 'ramias', 'mataxt', 'dsf', '2015-11-11 15:10:44'),
(18, 'ramias', 'mataxt', 'dsf', '2015-11-11 15:10:44'),
(19, 'ramias', 'mataxt', 'dsf', '2015-11-11 15:10:44'),
(20, 'mataxt', 'ramias', 'HEJTTTTTT', '2015-11-11 15:27:28'),
(21, 'ramias', 'mataxt', 'sdfsdf', '2015-11-11 15:28:34'),
(22, 'ramias', 'mataxt', 'dfsf', '2015-11-11 15:29:22'),
(23, 'ramias', 'mataxt', 'dfsf', '2015-11-11 15:29:33'),
(24, 'ramias', 'mataxt', 'dfsf', '2015-11-11 15:30:36'),
(25, 'ramias', 'mataxt', 'asdas', '2015-11-11 15:30:39'),
(26, 'ramias', 'mataxt', 'asdas', '2015-11-11 15:30:53'),
(27, 'ramias', 'mataxt', 'sadads', '2015-11-11 15:30:56'),
(28, 'ramias', 'mataxt', 'asdas', '2015-11-11 15:33:00'),
(29, 'ramias', 'mataxt', 'test', '2015-11-11 15:33:03'),
(30, 'ramias', 'mataxt', 'asdas', '2015-11-11 15:33:34'),
(31, 'ramias', 'mataxt', '12313123', '2015-11-11 15:33:41'),
(32, 'ramias', 'mataxt', '2', '2015-11-11 15:33:54'),
(33, 'mataxt', 'ramias', '23132', '2015-11-11 15:34:22'),
(34, 'mataxt', 'ramias', 'we', '2015-11-11 15:40:01'),
(35, 'ramias', 'mataxt', 'hey', '2015-11-11 15:40:23'),
(36, 'mataxt', 'ramias', 'adasda', '2015-11-11 15:46:53'),
(37, 'mataxt', 'ramias', 'test', '2015-11-11 16:07:26'),
(38, 'mataxt', 'ramias', 'test', '2015-11-11 16:08:15'),
(39, 'mataxt', 'ramias', 'aa', '2015-11-11 16:10:25'),
(40, 'mataxt', 'ramias', 'test', '2015-11-11 16:17:07'),
(41, 'mataxt', 'ramias', 'test', '2015-11-11 16:17:46'),
(42, 'mataxt', 'ramias', 'test', '2015-11-11 16:19:08'),
(43, 'mataxt', 'ramias', 'test', '2015-11-11 16:19:10'),
(44, 'mataxt', 'ramias', 'test', '2015-11-11 16:20:34'),
(45, 'mataxt', 'ramias', 'testeg', '2015-11-11 16:20:46'),
(46, 'mataxt', 'ramias', 'gefag', '2015-11-11 16:21:13'),
(47, 'mataxt', 'ramias', 'gefag', '2015-11-11 16:21:20'),
(48, 'mataxt', 'ramias', 'gefag', '2015-11-11 16:21:24'),
(49, 'mataxt', 'ramias', 'geg', '2015-11-11 16:21:48'),
(50, 'mataxt', 'ramias', 'gegge', '2015-11-11 16:23:17'),
(51, 'mataxt', 'ramias', 'geggeg', '2015-11-11 16:23:45'),
(52, 'mataxt', 'ramias', 'geggeg', '2015-11-11 16:23:58'),
(53, 'mataxt', 'ramias', 'geggegge', '2015-11-11 16:24:24'),
(54, 'mataxt', 'ramias', 'geggegge', '2015-11-11 16:24:38'),
(55, 'mataxt', 'ramias', 'geggegge', '2015-11-11 16:24:42'),
(56, 'mataxt', 'ramias', 'geggegge', '2015-11-11 16:25:45'),
(57, 'mataxt', 'ramias', 'geggeggeeeag', '2015-11-11 16:25:54'),
(58, 'mataxt', 'ramias', 'geggeggeeeag', '2015-11-11 16:27:43'),
(59, 'mataxt', 'ramias', 'test', '2015-11-11 16:35:10'),
(60, 'mataxt', 'ramias', 'aa', '2015-11-11 16:35:13'),
(61, 'mataxt', 'ramias', 'fsdfsdf', '2015-11-11 16:37:01'),
(62, 'mataxt', 'ramias', '342444', '2015-11-11 16:37:04'),
(63, 'mataxt', 'ramias', 'U w000t m8', '2015-11-11 16:37:09'),
(64, 'mataxt', 'ramias', 'damn u PL', '2015-11-11 16:37:29'),
(65, 'mataxt', 'ramias', 'test', '2015-11-11 16:38:28'),
(66, 'mataxt', 'ramias', 'damn u PL 2', '2015-11-11 16:39:12'),
(67, 'mataxt', 'ramias', 'damn u PL 5412332112', '2015-11-11 16:40:21'),
(68, 'mataxt', 'ramias', 'damn u PL 9876532', '2015-11-11 16:40:30'),
(69, 'mataxt', 'ramias', 'damn u PL 987653222', '2015-11-11 16:44:04'),
(70, 'mataxt', 'ramias', 'tesz4', '2015-11-11 16:44:45'),
(71, 'mataxt', 'ramias', 'tesz465', '2015-11-11 16:45:29'),
(72, 'mataxt', 'ramias', 'pls work\r\n', '2015-11-11 16:56:28'),
(73, 'mataxt', 'ramias', 'u work?\r\n', '2015-11-11 16:56:37'),
(74, 'mataxt', 'ramias', 'te', '2015-11-11 16:57:16'),
(75, 'mataxt', 'ramias', 'tea', '2015-11-11 17:01:06'),
(76, 'mataxt', 'ramias', 'gega', '2015-11-11 17:02:54'),
(77, 'mataxt', 'ramias', 'aa', '2015-11-11 17:04:10'),
(78, 'mataxt', 'ramias', 'test', '2015-11-11 17:17:37'),
(79, 'mataxt', 'ramias', 't2323', '2015-11-11 18:00:32'),
(80, 'mataxt', 'ramias', 't2323', '2015-11-11 18:00:32'),
(81, 'mataxt', 'ramias', 't2323123123123', '2015-11-11 18:00:40'),
(82, 'mataxt', 'ramias', '(͡° ͜ʖ ͡°)', '2015-11-11 18:00:52'),
(83, 'mataxt', 'ramias', 'saddsd', '2015-11-11 18:18:48'),
(84, 'mataxt', 'ramias', 'remove pls', '2015-11-11 18:51:40'),
(85, 'mataxt', 'ramias', 'remove pls', '2015-11-11 18:52:25'),
(86, 'mataxt', 'ramias', 'remove pls', '2015-11-11 18:53:06'),
(87, 'mataxt', 'ramias', 'remove pls', '2015-11-11 18:53:11'),
(88, 'mataxt', 'ramias', 'remove pls', '2015-11-11 18:53:38'),
(89, 'mataxt', 'ramias', 'remove pls', '2015-11-11 18:53:42'),
(90, 'mataxt', 'ramias', 'teset', '2015-11-11 18:53:45'),
(91, 'mataxt', 'ramias', 'aa', '2015-11-11 18:53:49'),
(92, 'mataxt', 'ramias', 'aa', '2015-11-11 18:53:50'),
(93, 'mataxt', 'ramias', 'teast', '2015-11-11 19:00:04'),
(94, 'mataxt', 'ramias', 'aa', '2015-11-11 19:00:25'),
(95, 'mataxt', 'ramias', 'cmon man', '2015-11-11 19:01:28'),
(96, 'mataxt', 'ramias', 'cmon man', '2015-11-11 19:02:00'),
(97, 'mataxt', 'ramias', 'cmon man', '2015-11-11 19:02:04'),
(98, 'mataxt', 'ramias', 'ea', '2015-11-11 19:02:49'),
(99, 'mataxt', 'ramias', 'HELLO\r\n', '2015-11-12 13:48:16'),
(100, 'mataxt', 'ramias', 'asdasda', '2015-11-12 13:50:41'),
(101, 'mataxt', 'ramias', 'adsadasd', '2015-11-12 13:50:43'),
(102, 'mataxt', 'ramias', '(͡° ͜ʖ ͡°) ', '2015-11-12 13:51:30'),
(103, 'mataxt', 'ramias', '(͡° ͜ʖ ͡°) ', '2015-11-12 13:51:31'),
(104, 'mataxt', 'ramias', '(͡° ͜ʖ ͡°) ', '2015-11-12 13:51:32'),
(105, 'mataxt', 'ramias', 'fsdfsdf', '2015-11-12 14:17:31'),
(106, 'mataxt', 'ramias', '(͡° ͜ʖ ͡°) ', '2015-11-12 14:43:18'),
(107, 'mataxt', 'ramias', 'kalas', '2015-11-12 14:48:58'),
(108, 'mataxt', 'ramias', 'kalas', '2015-11-12 14:48:59'),
(109, 'mataxt', 'ramias', 'adasdasd', '2015-11-12 14:52:00'),
(110, 'mataxt', 'ramias', 'adasdasd', '2015-11-12 14:52:03'),
(111, 'mataxt', 'ramias', 'sadasdsd', '2015-11-12 14:53:27'),
(112, 'mataxt', 'ramias', 'sadasdsd2', '2015-11-12 14:53:30'),
(113, 'mataxt', 'ramias', 'sadasdsd2', '2015-11-12 14:53:30'),
(114, 'mataxt', 'ramias', 'sdf', '2015-11-12 14:54:47'),
(115, 'mataxt', 'ramias', 'asd', '2015-11-12 14:55:07'),
(116, 'mataxt', 'ramias', 'adasd', '2015-11-12 14:55:36'),
(117, 'mataxt', 'ramias', '121', '2015-11-12 14:56:08'),
(118, 'mataxt', 'ramias', 'asdasd', '2015-11-12 14:57:51'),
(119, 'ramias', 'mataxt', 'HELLO', '2015-11-13 14:08:48'),
(120, 'mataxt', 'ramias', 'N00b', '2015-11-13 14:08:53'),
(121, 'mataxt', 'ramias', 'AT', '2015-11-13 15:24:04'),
(124, 'Chater', 'Chatee', 'Testing', '2015-11-14 12:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `User` varchar(255) NOT NULL,
  `Friend` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`User`, `Friend`) VALUES
('clinton', 'obama'),
('mataxt', 'eddie'),
('mataxt', 'ramias'),
('obama', 'clinton'),
('ramias', 'eddie'),
('ramias', 'mataxt');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `Id` int(11) NOT NULL,
  `Writer` varchar(255) NOT NULL,
  `Receiver` varchar(255) NOT NULL,
  `Body` text NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`Id`, `Writer`, `Receiver`, `Body`, `Timestamp`) VALUES
(95, 'clinton', 'clinton', 'American politician who served as the 67th United States Secretary of State under President Barack Obama from 2009 to 2013.', '2015-11-11 12:16:53'),
(96, 'clinton', 'obama', 'Hi Obama!', '2015-11-11 12:17:14'),
(97, 'mataxt', 'ramias', 'Hello', '2015-11-11 12:17:38'),
(98, 'ramias', 'mataxt', '(͡° ͜ʖ ͡°)', '2015-11-11 12:18:44'),
(99, 'ramias', 'eddie', 'Hacks?', '2015-11-11 12:19:38'),
(100, 'mataxt', 'mataxt', 'Rain ( ˘︹˘ )', '2015-11-11 12:20:55'),
(101, 'obama', 'clinton', '(͠≖ ͜ʖ͠≖)', '2015-11-11 12:22:50'),
(102, 'mataxt', 'mataxt', 'TEST', '2015-11-11 15:42:15'),
(103, 'mataxt', 'ramias', '(͡° ͜ʖ ͡°) ', '2015-11-12 14:39:09'),
(104, 'mataxt', 'ramias', '(͡° ͜ʖ ͡°) ', '2015-11-12 14:39:54'),
(105, 'mataxt', 'ramias', '(͡° ͜ʖ ͡°) ', '2015-11-12 15:03:01'),
(106, 'mataxt', 'mataxt', '(͡° ͜ʖ ͡°)', '2015-11-12 15:05:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Birthdate` date NOT NULL,
  `Gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Username`, `Password`, `Name`, `Birthdate`, `Gender`) VALUES
('clinton', '123456', 'Hillary Clinton', '1947-10-26', 'Female'),
('eddie', '123456', 'Edward Snowden', '1982-06-12', 'Male'),
('mataxt', '123456', 'Mathias Axtelius', '1994-03-11', 'Male'),
('obama', '123456', 'Barack Obama', '1961-08-04', 'Male'),
('ramias', '123456', 'Rami Alsawadi', '1994-12-11', 'Male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`User`,`Friend`),
  ADD KEY `User` (`User`),
  ADD KEY `Friend` (`Friend`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=107;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `friends`
--
ALTER TABLE `friends`
  ADD CONSTRAINT `DeleteUser` FOREIGN KEY (`User`) REFERENCES `users` (`Username`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
