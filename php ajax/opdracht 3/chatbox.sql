-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 14, 2017 at 08:32 AM
-- Server version: 5.6.28
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatbox`
--

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `username`, `message`, `added`) VALUES
(1, 'Leonie', 'hallo\n', '2017-07-30 11:28:56'),
(2, 'Leonie', 'wrgwrg\n\nwr\nwrg', '2017-07-30 11:29:36'),
(3, 'Leonie', '', '2017-07-30 11:30:36'),
(4, 'Leonie', '', '2017-07-30 11:30:40'),
(5, 'Leonie', 'Verstuur', '2017-07-30 11:31:27'),
(6, 'Leonie', 'Verstuuretheth', '2017-07-30 11:32:49'),
(7, 'Leonie', 'qerh eth qeth et hqh qet h', '2017-07-30 11:34:13'),
(8, 'Leonie', 'cccc', '2017-07-30 11:34:16'),
(9, 'Leonie', 'wrgqwrgqwrgqwrgqwr', '2017-07-30 11:34:56'),
(10, 'Leonie', 'qwrgeqth qeth eqth qeth qet', '2017-07-30 11:34:59'),
(11, 'Leonie', 'wth thet hw th', '2017-07-30 11:35:29'),
(12, 'Leonie', 'wet hwet hwet h', '2017-07-30 11:35:31'),
(13, 'Leonie', 'we hewt hewt h', '2017-07-30 11:35:34'),
(14, 'Leonie', 'weth wet hetw', '2017-07-30 11:35:37'),
(15, 'Emiel', 'eththr', '2017-07-30 11:38:43'),
(16, 'Emiel', 'ewhthweth', '2017-07-30 11:38:55'),
(17, 'Emiel', 'ewthewth', '2017-07-30 11:38:57'),
(18, 'Emiel', 'qeheth', '2017-07-30 11:43:07'),
(19, 'Emiel', 'qegqeth', '2017-07-30 11:43:16'),
(20, 'Emiel', 'gggg', '2017-07-30 11:43:18'),
(21, 'Emiel', 'ggg', '2017-07-30 11:43:20'),
(22, 'Emiel', 'eqrveqrverqb', '2017-07-30 11:43:38'),
(23, 'Emiel', 'erbqerb', '2017-07-30 11:43:42'),
(24, 'Emiel', 'arhaerhaehea aeh aerhae rh', '2017-07-30 11:43:57'),
(25, 'Emiel', 'tjqethqet', '2017-07-30 11:43:59'),
(26, 'Emiel', 'qetjeqtjqe', '2017-07-30 11:44:00'),
(27, 'Emiel', 'qetjqetjqe', '2017-07-30 11:44:02'),
(28, 'Emiel', 'qetj', '2017-07-30 11:44:02'),
(29, 'Emiel', 'qetj', '2017-07-30 11:44:02'),
(30, 'Emiel', 'qetj', '2017-07-30 11:44:03'),
(31, 'Emiel', 'qetj', '2017-07-30 11:44:03'),
(32, 'Emiel', 'qetj', '2017-07-30 11:44:03'),
(33, 'Emiel', 'qe', '2017-07-30 11:44:03'),
(34, 'Emiel', 'tjqetj', '2017-07-30 11:44:03'),
(35, 'Emiel', 'qehtqet', '2017-07-30 12:06:23'),
(36, 'Emiel', 'huh', '2017-07-30 12:09:09'),
(37, 'Emiel', 'tehqth', '2017-07-30 14:05:41'),
(38, 'Emiel', 'tehqth', '2017-07-30 14:05:43'),
(39, 'Emiel', 'tehqth', '2017-07-30 14:05:44'),
(40, 'Emiel', 'tehqth', '2017-07-30 14:05:45'),
(41, 'Emiel', 'tehqth', '2017-07-30 14:05:45'),
(42, 'Emiel', 'tehqth', '2017-07-30 14:05:45'),
(43, 'Emiel', 'tehqth', '2017-07-30 14:26:01'),
(44, 'Emiel', 'ththe', '2017-07-30 14:26:10'),
(45, 'don', 'okok', '2017-08-14 06:22:41'),
(46, 'don', '', '2017-08-14 06:22:47'),
(47, 'don', '', '2017-08-14 06:22:47'),
(48, 'don', '', '2017-08-14 06:22:48'),
(49, 'don', '', '2017-08-14 06:22:48'),
(50, 'don', '', '2017-08-14 06:22:48'),
(51, 'don', '', '2017-08-14 06:22:48'),
(52, 'don', '', '2017-08-14 06:22:49'),
(53, 'don', '', '2017-08-14 06:22:49'),
(54, 'don', '', '2017-08-14 06:22:49'),
(55, 'hans', 'huh', '2017-08-14 06:23:11'),
(56, 'don', 'ja zo werkt het', '2017-08-14 06:23:23'),
(57, 'hans', 'zo snel?', '2017-08-14 06:23:31'),
(58, 'hans', 'haetjat', '2017-08-14 06:29:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
