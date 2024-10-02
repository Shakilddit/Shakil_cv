-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2024 at 09:42 AM
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
-- Database: `resume_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `resume_data`
--

CREATE TABLE `resume_data` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `Fathers Name` text NOT NULL,
  `Mothers Name` text NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` text NOT NULL,
  `Maritial Status` text NOT NULL,
  `Religion` text NOT NULL,
  `Nationality` text NOT NULL,
  `Current Location` text NOT NULL,
  `bloodgroup` text NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `linkedin` varchar(100) DEFAULT NULL,
  `github` varchar(100) DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `skills` text DEFAULT NULL,
  `experience` text DEFAULT NULL,
  `education` text DEFAULT NULL,
  `school` text NOT NULL,
  `college` text NOT NULL,
  `undergraduate` text NOT NULL,
  `certifications` text DEFAULT NULL,
  `languages` text DEFAULT NULL,
  `hobbies` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resume_data`
--

INSERT INTO `resume_data` (`id`, `name`, `title`, `Fathers Name`, `Mothers Name`, `dob`, `gender`, `Maritial Status`, `Religion`, `Nationality`, `Current Location`, `bloodgroup`, `email`, `phone`, `linkedin`, `github`, `summary`, `skills`, `experience`, `education`, `school`, `college`, `undergraduate`, `certifications`, `languages`, `hobbies`) VALUES
(1, 'Sakil Mahmud', 'Software Developer', 'Md. Montaz Ali', 'Most. Monoara Khatun', '2000-09-14', 'Male', 'Unmarried', 'Islam', 'Bangladeshi', 'Dhaka', 'AB(+)', 'sakilmahaqd@gmail.com', '01783854999', 'https://www.linkedin.com/in/shakil-mahmud-54a091260/', 'https://github.com/Shakilddit', 'A dedicated and detail-oriented software developer with 9 months of hands-on experience in designing, developing, and maintaining web and desktop applications. Proficient in Python, Java, and C#, with a focus on clean code practices and performance optimization. Proven ability to collaborate effectively in a team setting, while delivering high-quality software solutions on time. Passionate about continuous learning and staying updated with emerging technologies.', 'Graphics Design, \r\nProgramming Skill:,  \r\nC#, Python, Java, django, PHP, HTML, CSS, javascript, Laravel, MySQL, MongoDB, Git', 'Junior Software Developer at Dream Diver. (March 2024 - Present), Technical Manager at Iozil (Jan 2024 - September 2024)', 'Bachelor of Science in Computer Science and engineering from American International university-Bangladesh (2020-Present)', 'SSC in Science from Harimohan Govt. High School (2017)', 'HSC in Science from Cambrian School and college (2019)', 'Bachelor of Science in Computer Science and engineering from American International university-Bangladesh (2020-Present)', 'Certified Python Developer by Programming Hero, \r\nIT Essential by CISCO, \r\nIndustrial Automation Project and Carrer, \r\nEthical Hacking Megamind Workshop.', 'English (Fluent), Bangla, Urdu', 'Coding and Open Source Contributions, Problem solving, Traveling, Photography, Hiking, Playing Football');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `resume_data`
--
ALTER TABLE `resume_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `resume_data`
--
ALTER TABLE `resume_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
