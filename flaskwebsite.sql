-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2024 at 08:41 AM
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
-- Database: `flaskwebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `mes` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `mes`, `date`) VALUES
(1, 'first post', 'firstpost@gmail.com', '123456789', 'first post', '2024-03-27 09:32:03'),
(2, 'Ariyan Haque', 'ariyan555777@gmail.com', '01754531341', 'hello', '2024-03-28 04:43:57'),
(3, ' Haque', 'ariyan555777@gmail.com', '0166775067', 'hello', '2024-03-28 04:49:12'),
(4, 'Ariyan Haque', 'ariyan555777@gmail.com', '01754531341', 'hello', '2024-03-29 04:26:41'),
(5, 'Ariyan Haque', 'ariyan555777@gmail.com', '01754531341', 'hello', '2024-03-29 04:34:25'),
(6, 'Ariyan Haque', 'ariyan555777@gmail.com', '1754531341', 'hwllo', '2024-03-29 04:38:33'),
(7, 'Ariyan Haque', 'ariyan555777@gmail.com', '1754531341', 'hwllo', '2024-03-29 04:38:34'),
(8, 'Ariyan Haque', 'ariyan555777@gmail.com', '1754531341', 'hwllo', '2024-03-29 04:38:37'),
(9, 'Ariyan Haque', 'ariyan555777@gmail.com', '01754531341', 'hello', '2024-03-31 11:52:11'),
(10, 'Ariyan Haque', 'ariyan555777@gmail.com', '01754531341', 'hello', '2024-03-31 11:53:44'),
(11, 'Ariyan Haque', 'ariyan555777@gmail.com', '01754531341', 'hello', '2024-03-31 12:09:08'),
(12, 'Ariyan Haque', 'shaplagroupxyz@gamil.com', '01754531341', 'hello', '2024-03-31 12:10:00'),
(13, 'Ariyan Haque', 'ariyan555777@gmail.com', '01754531341', 'hello', '2024-03-31 12:10:46'),
(14, 'Ariyan Haque', 'ariyan555777@gmail.com', '01754531341', 'hello', '2024-04-01 03:04:36'),
(15, 'Ariyan Haque', 'ariyan555777@gmail.com', '01754531341', 'hello', '2024-04-01 03:06:16'),
(16, 'Ariyan Haque', 'ariyan555777@gmail.com', '01754531341', 'hello', '2024-04-01 03:08:27');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `img_file` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `date`, `img_file`) VALUES
(1, 'this is my first post\'s title', 'this is fitst post', 'first-post', 'this is my first post I\'m very excited about this blog and flask micro framework', '2024-04-01 09:14:46', 'post-bg.jpg'),
(2, 'this is the second post', 'this is the second post', 'second-post', 'A Jinja template is simply a text file. Jinja can generate any text-based format (HTML, XML, CSV, LaTeX, etc.). A Jinja template doesn’t need to have a specific extension: .html, .xml, or any other extension is just fine.\r\n\r\nA template contains variables and/or expressions, which get replaced with values when a template is rendered; and tags, which control the logic of the template. The template syntax is heavily inspired by Django and Python.\r\n\r\nBelow is a minimal template that illustrates a few basics using the default Jinja configuration. We will cover the details later in this document:', '2024-04-02 09:27:29', ''),
(3, 'Python Programmer Mastersheet', 'How to Become a Master Programmer', 'third-post', 'Learning to code is not easy. \r\n\r\nIf it were, we’d all be able to learn to code and get high-paying jobs effortlessly, and therefore through the laws of supply and demand, the field would become oversaturated and hence no longer lucrative.\r\n\r\nBut, everyone can do it, as long as you’ve got the **correct tools, resources, and guidance**. This is why we created this template for you to have the foundations you need on hand at all times.', '2024-04-02 17:27:56', ''),
(4, 'Lorem Ipsum', 'What is Lorem Ipsum?', 'fourth-post', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2024-04-02 17:29:38', ''),
(5, 'A Minimal Application', 'A minimal Flask application looks something like this:', 'fifth-post', 'from flask import Flask\r\n\r\napp = Flask(__name__)\r\n\r\n@app.route(\"/\")\r\ndef hello_world():\r\n    return \"<p>Hello, World!</p>\"', '2024-04-02 17:30:41', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
