-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2017 at 05:27 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schat`
--

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(40) CHARACTER SET armscii8 COLLATE armscii8_bin NOT NULL,
  `password` varchar(40) CHARACTER SET armscii8 COLLATE armscii8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `username`, `password`) VALUES
(1, 'man', '123'),
(3, 'man2', '123'),
(4, 'pc1', 'pc1'),
(5, 'pc2', 'pc2'),
(6, 'pc3', 'pc3'),
(7, 'pc4', 'pc4'),
(8, 'pc5', 'pc5'),
(9, 'pc6', 'pc6'),
(10, 'pc7', 'pc7'),
(11, 'pc8', 'pc8'),
(12, 'pc9', 'pc9'),
(13, 'pc10', 'pc10'),
(14, 'pc11', 'pc11'),
(15, 'pc12', 'pc12'),
(16, 'pc13', 'pc13'),
(17, 'pc14', 'pc14'),
(18, 'pc15', 'pc15'),
(19, 'pc16', 'pc16'),
(20, 'pc17', 'pc17'),
(21, 'pc18', 'pc18'),
(22, 'pc19', 'pc19'),
(23, 'pc20', 'pc20'),
(24, 'pc21', 'pc21'),
(25, 'pc22', 'pc22'),
(26, 'pc23', 'pc23'),
(27, 'pc24', 'pc24'),
(28, 'pc25', 'pc25'),
(29, 'pc26', 'pc26'),
(30, 'pc27', 'pc27'),
(31, 'pc28', 'pc28'),
(32, 'pc29', 'pc29'),
(33, 'pc30', 'pc30');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `mid` int(10) UNSIGNED NOT NULL,
  `username` varchar(20) NOT NULL,
  `message` text NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`mid`, `username`, `message`, `uid`) VALUES
(5, 'man', 'Ø£Ù‡Ù„Ø§ Ø¨ÙƒÙ… ÙÙŠ Ø¨Ø±Ù†Ø§Ù…Ø¬ Ø§Ù„Ù…Ø­Ø§Ø¯Ø«Ø©', 1),
(6, 'man', 'Welcome', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`mid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `mid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
