-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Sep 14, 2017 at 02:06 PM
-- Server version: 5.6.28
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `morecontent`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `added`, `title`, `message`) VALUES
(1, '2017-09-10 08:40:56', '1Het eerste bericht', 'Mauris magna elit, porta vel maximus eu, porta id tellus. Quisque nunc arcu, sagittis sit amet fermentum sed, fringilla a lacus. Donec efficitur nibh at augue viverra, eget luctus turpis iaculis. Mauris vitae metus libero. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut bibendum mattis tellus sit amet placerat. Ut gravida, ex vitae placerat malesuada, ligula nulla posuere mi, et scelerisque sapien sem a dui. Ut finibus metus nec ligula feugiat dictum. Nulla vestibulum congue mi ut rutrum. Cras vitae commodo enim. Integer sodales mi a tellus viverra luctus. Praesent sed nunc et purus sagittis egestas. Fusce maximus pharetra massa, vel imperdiet ipsum pharetra at. Proin eu nulla laoreet, rutrum elit at, porta nulla. staan.'),
(2, '2017-09-10 08:40:57', '2En weer een bericht', 'Mauris magna elit, porta vel maximus eu, porta id tellus. Quisque nunc arcu, sagittis sit amet fermentum sed, fringilla a lacus. Donec efficitur nibh at augue viverra, eget luctus turpis iaculis. Mauris vitae metus libero. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut bibendum mattis tellus sit amet placerat. Ut gravida, ex vitae placerat malesuada, ligula nulla posuere mi, et scelerisque sapien sem a dui. Ut finibus metus nec ligula feugiat dictum. Nulla vestibulum congue mi ut rutrum. Cras vitae commodo enim. Integer sodales mi a tellus viverra luctus. Praesent sed nunc et purus sagittis egestas. Fusce maximus pharetra massa, vel imperdiet ipsum pharetra at. Proin eu nulla laoreet, rutrum elit at, porta nulla.'),
(3, '2017-09-10 08:41:35', '3Bericht titel', 'Mauris magna elit, porta vel maximus eu, porta id tellus. Quisque nunc arcu, sagittis sit amet fermentum sed, fringilla a lacus. Donec efficitur nibh at augue viverra, eget luctus turpis iaculis. Mauris vitae metus libero. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut bibendum mattis tellus sit amet placerat. Ut gravida, ex vitae placerat malesuada, ligula nulla posuere mi, et scelerisque sapien sem a dui. Ut finibus metus nec ligula feugiat dictum. Nulla vestibulum congue mi ut rutrum. Cras vitae commodo enim. Integer sodales mi a tellus viverra luctus. Praesent sed nunc et purus sagittis egestas. Fusce maximus pharetra massa, vel imperdiet ipsum pharetra at. Proin eu nulla laoreet, rutrum elit at, porta nulla.'),
(4, '2017-09-10 08:41:36', '4Bericht titel', 'Mauris magna elit, porta vel maximus eu, porta id tellus. Quisque nunc arcu, sagittis sit amet fermentum sed, fringilla a lacus. Donec efficitur nibh at augue viverra, eget luctus turpis iaculis. Mauris vitae metus libero. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut bibendum mattis tellus sit amet placerat. Ut gravida, ex vitae placerat malesuada, ligula nulla posuere mi, et scelerisque sapien sem a dui. Ut finibus metus nec ligula feugiat dictum. Nulla vestibulum congue mi ut rutrum. Cras vitae commodo enim. Integer sodales mi a tellus viverra luctus. Praesent sed nunc et purus sagittis egestas. Fusce maximus pharetra massa, vel imperdiet ipsum pharetra at. Proin eu nulla laoreet, rutrum elit at, porta nulla.'),
(5, '2017-09-10 08:41:53', '5Bericht titel', 'Mauris magna elit, porta vel maximus eu, porta id tellus. Quisque nunc arcu, sagittis sit amet fermentum sed, fringilla a lacus. Donec efficitur nibh at augue viverra, eget luctus turpis iaculis. Mauris vitae metus libero. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut bibendum mattis tellus sit amet placerat. Ut gravida, ex vitae placerat malesuada, ligula nulla posuere mi, et scelerisque sapien sem a dui. Ut finibus metus nec ligula feugiat dictum. Nulla vestibulum congue mi ut rutrum. Cras vitae commodo enim. Integer sodales mi a tellus viverra luctus. Praesent sed nunc et purus sagittis egestas. Fusce maximus pharetra massa, vel imperdiet ipsum pharetra at. Proin eu nulla laoreet, rutrum elit at, porta nulla.'),
(6, '2017-09-10 08:41:54', '6Bericht titel', 'Mauris magna elit, porta vel maximus eu, porta id tellus. Quisque nunc arcu, sagittis sit amet fermentum sed, fringilla a lacus. Donec efficitur nibh at augue viverra, eget luctus turpis iaculis. Mauris vitae metus libero. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut bibendum mattis tellus sit amet placerat. Ut gravida, ex vitae placerat malesuada, ligula nulla posuere mi, et scelerisque sapien sem a dui. Ut finibus metus nec ligula feugiat dictum. Nulla vestibulum congue mi ut rutrum. Cras vitae commodo enim. Integer sodales mi a tellus viverra luctus. Praesent sed nunc et purus sagittis egestas. Fusce maximus pharetra massa, vel imperdiet ipsum pharetra at. Proin eu nulla laoreet, rutrum elit at, porta nulla.'),
(7, '2017-09-10 09:03:50', '7Bericht titel', 'Mauris magna elit, porta vel maximus eu, porta id tellus. Quisque nunc arcu, sagittis sit amet fermentum sed, fringilla a lacus. Donec efficitur nibh at augue viverra, eget luctus turpis iaculis. Mauris vitae metus libero. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut bibendum mattis tellus sit amet placerat. Ut gravida, ex vitae placerat malesuada, ligula nulla posuere mi, et scelerisque sapien sem a dui. Ut finibus metus nec ligula feugiat dictum. Nulla vestibulum congue mi ut rutrum. Cras vitae commodo enim. Integer sodales mi a tellus viverra luctus. Praesent sed nunc et purus sagittis egestas. Fusce maximus pharetra massa, vel imperdiet ipsum pharetra at. Proin eu nulla laoreet, rutrum elit at, porta nulla.'),
(8, '2017-09-10 09:03:51', '8Bericht titel', 'Mauris magna elit, porta vel maximus eu, porta id tellus. Quisque nunc arcu, sagittis sit amet fermentum sed, fringilla a lacus. Donec efficitur nibh at augue viverra, eget luctus turpis iaculis. Mauris vitae metus libero. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut bibendum mattis tellus sit amet placerat. Ut gravida, ex vitae placerat malesuada, ligula nulla posuere mi, et scelerisque sapien sem a dui. Ut finibus metus nec ligula feugiat dictum. Nulla vestibulum congue mi ut rutrum. Cras vitae commodo enim. Integer sodales mi a tellus viverra luctus. Praesent sed nunc et purus sagittis egestas. Fusce maximus pharetra massa, vel imperdiet ipsum pharetra at. Proin eu nulla laoreet, rutrum elit at, porta nulla.'),
(9, '2017-09-10 09:04:49', '9Bericht titel', 'Mauris magna elit, porta vel maximus eu, porta id tellus. Quisque nunc arcu, sagittis sit amet fermentum sed, fringilla a lacus. Donec efficitur nibh at augue viverra, eget luctus turpis iaculis. Mauris vitae metus libero. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut bibendum mattis tellus sit amet placerat. Ut gravida, ex vitae placerat malesuada, ligula nulla posuere mi, et scelerisque sapien sem a dui. Ut finibus metus nec ligula feugiat dictum. Nulla vestibulum congue mi ut rutrum. Cras vitae commodo enim. Integer sodales mi a tellus viverra luctus. Praesent sed nunc et purus sagittis egestas. Fusce maximus pharetra massa, vel imperdiet ipsum pharetra at. Proin eu nulla laoreet, rutrum elit at, porta nulla.'),
(10, '2017-09-10 09:04:50', '10Bericht titel', 'Mauris magna elit, porta vel maximus eu, porta id tellus. Quisque nunc arcu, sagittis sit amet fermentum sed, fringilla a lacus. Donec efficitur nibh at augue viverra, eget luctus turpis iaculis. Mauris vitae metus libero. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut bibendum mattis tellus sit amet placerat. Ut gravida, ex vitae placerat malesuada, ligula nulla posuere mi, et scelerisque sapien sem a dui. Ut finibus metus nec ligula feugiat dictum. Nulla vestibulum congue mi ut rutrum. Cras vitae commodo enim. Integer sodales mi a tellus viverra luctus. Praesent sed nunc et purus sagittis egestas. Fusce maximus pharetra massa, vel imperdiet ipsum pharetra at. Proin eu nulla laoreet, rutrum elit at, porta nulla.'),
(11, '2017-09-10 09:06:25', '11Bericht titel', 'Mauris magna elit, porta vel maximus eu, porta id tellus. Quisque nunc arcu, sagittis sit amet fermentum sed, fringilla a lacus. Donec efficitur nibh at augue viverra, eget luctus turpis iaculis. Mauris vitae metus libero. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut bibendum mattis tellus sit amet placerat. Ut gravida, ex vitae placerat malesuada, ligula nulla posuere mi, et scelerisque sapien sem a dui. Ut finibus metus nec ligula feugiat dictum. Nulla vestibulum congue mi ut rutrum. Cras vitae commodo enim. Integer sodales mi a tellus viverra luctus. Praesent sed nunc et purus sagittis egestas. Fusce maximus pharetra massa, vel imperdiet ipsum pharetra at. Proin eu nulla laoreet, rutrum elit at, porta nulla.'),
(12, '2017-09-10 09:06:26', '12Bericht titel', 'Mauris magna elit, porta vel maximus eu, porta id tellus. Quisque nunc arcu, sagittis sit amet fermentum sed, fringilla a lacus. Donec efficitur nibh at augue viverra, eget luctus turpis iaculis. Mauris vitae metus libero. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut bibendum mattis tellus sit amet placerat. Ut gravida, ex vitae placerat malesuada, ligula nulla posuere mi, et scelerisque sapien sem a dui. Ut finibus metus nec ligula feugiat dictum. Nulla vestibulum congue mi ut rutrum. Cras vitae commodo enim. Integer sodales mi a tellus viverra luctus. Praesent sed nunc et purus sagittis egestas. Fusce maximus pharetra massa, vel imperdiet ipsum pharetra at. Proin eu nulla laoreet, rutrum elit at, porta nulla.'),
(13, '2017-09-10 09:06:56', '13bericht titel', 'Mauris magna elit, porta vel maximus eu, porta id tellus. Quisque nunc arcu, sagittis sit amet fermentum sed, fringilla a lacus. Donec efficitur nibh at augue viverra, eget luctus turpis iaculis. Mauris vitae metus libero. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut bibendum mattis tellus sit amet placerat. Ut gravida, ex vitae placerat malesuada, ligula nulla posuere mi, et scelerisque sapien sem a dui. Ut finibus metus nec ligula feugiat dictum. Nulla vestibulum congue mi ut rutrum. Cras vitae commodo enim. Integer sodales mi a tellus viverra luctus. Praesent sed nunc et purus sagittis egestas. Fusce maximus pharetra massa, vel imperdiet ipsum pharetra at. Proin eu nulla laoreet, rutrum elit at, porta nulla.'),
(14, '2017-09-10 09:06:57', '14Bericht titel', 'Mauris magna elit, porta vel maximus eu, porta id tellus. Quisque nunc arcu, sagittis sit amet fermentum sed, fringilla a lacus. Donec efficitur nibh at augue viverra, eget luctus turpis iaculis. Mauris vitae metus libero. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut bibendum mattis tellus sit amet placerat. Ut gravida, ex vitae placerat malesuada, ligula nulla posuere mi, et scelerisque sapien sem a dui. Ut finibus metus nec ligula feugiat dictum. Nulla vestibulum congue mi ut rutrum. Cras vitae commodo enim. Integer sodales mi a tellus viverra luctus. Praesent sed nunc et purus sagittis egestas. Fusce maximus pharetra massa, vel imperdiet ipsum pharetra at. Proin eu nulla laoreet, rutrum elit at, porta nulla.'),
(15, '2017-09-10 09:07:11', '15bericht titel', 'Mauris magna elit, porta vel maximus eu, porta id tellus. Quisque nunc arcu, sagittis sit amet fermentum sed, fringilla a lacus. Donec efficitur nibh at augue viverra, eget luctus turpis iaculis. Mauris vitae metus libero. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut bibendum mattis tellus sit amet placerat. Ut gravida, ex vitae placerat malesuada, ligula nulla posuere mi, et scelerisque sapien sem a dui. Ut finibus metus nec ligula feugiat dictum. Nulla vestibulum congue mi ut rutrum. Cras vitae commodo enim. Integer sodales mi a tellus viverra luctus. Praesent sed nunc et purus sagittis egestas. Fusce maximus pharetra massa, vel imperdiet ipsum pharetra at. Proin eu nulla laoreet, rutrum elit at, porta nulla.'),
(16, '2017-09-10 09:07:13', '16bericht titel', 'Mauris magna elit, porta vel maximus eu, porta id tellus. Quisque nunc arcu, sagittis sit amet fermentum sed, fringilla a lacus. Donec efficitur nibh at augue viverra, eget luctus turpis iaculis. Mauris vitae metus libero. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut bibendum mattis tellus sit amet placerat. Ut gravida, ex vitae placerat malesuada, ligula nulla posuere mi, et scelerisque sapien sem a dui. Ut finibus metus nec ligula feugiat dictum. Nulla vestibulum congue mi ut rutrum. Cras vitae commodo enim. Integer sodales mi a tellus viverra luctus. Praesent sed nunc et purus sagittis egestas. Fusce maximus pharetra massa, vel imperdiet ipsum pharetra at. Proin eu nulla laoreet, rutrum elit at, porta nulla.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
