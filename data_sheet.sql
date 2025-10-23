-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2024 at 10:40 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee_ets`
--

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `recipient` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `is_read` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO notifications (id, message, recipient, type, date, is_read) VALUES
(1, '\'Write Blog Post: "Java Collections"\' has been assigned to you. Please review and start working on it.', 7, 'New Task Assigned', '2025-09-05', 1),
(2, '\'Review Editorial Guidelines\' has been assigned to you. Please review and start working on it', 7, 'New Task Assigned', '2025-08-20', 1),
(3, '\'Brainstorm Blog Topics\' has been assigned to you. Please review and start working on it', 2, 'New Task Assigned', '2025-08-24', 1),
(4, '\'Research Competitor Content\' has been assigned to you. Please review and start working on it', 8, 'New Task Assigned', '2025-08-24', 0),
(5, '\'Submit First Draft (Internal)\' has been assigned to you. Please review and start working on it', 7, 'New Task Assigned', '2025-09-06', 1),
(6, '\'Write Blog Post: "OOP Concepts"\' has been assigned to you. Please review and start working on it', 7, 'New Task Assigned', '2025-09-06', 1),
(7, '\'Format Manuscript for Publishing\' has been assigned to you. Please review and start working on it', 7, 'New Task Assigned', '2025-09-06', 1),
(8, '\'Draft Chapter 3: Networking\' has been assigned to you. Please review and start working on it', 2, 'New Task Assigned', '2025-09-06', 0),
(9, '\'Develop Project Glossary\' has been assigned to you. Please review and start working on it', 2, 'New Task Assigned', '2025-09-06', 0),
(10, '\'Proofread Final Draft (Chapter 1)\' has been assigned to you. Please review and start working on it', 7, 'New Task Assigned', '2025-09-06', 0),
(11, '\'Create Diagrams for Chapter 2\' has been assigned to you. Please review and start working on it', 2, 'New Task Assigned', '2025-09-06', 0),
(12, '\'Review Code Snippet Accuracy\' has been assigned to you. Please review and start working on it', 7, 'New Task Assigned', '2025-09-06', 0),
(13, '\'Schedule Writers Sync Meeting\' has been assigned to you. Please review and start working on it', 2, 'New Task Assigned', '2025-09-06', 0),
(14, '\'Outline Chapter 4: Concurrency\' has been assigned to you. Please review and start working on it', 7, 'New Task Assigned', '2025-09-06', 0),
(15, '\'Write Blog Post: "New Java Features"\' has been assigned to you. Please review and start working on it', 7, 'New Task Assigned', '2025-09-06', 0),
(16, '\'Research Citation Standards\' has been assigned to you. Please review and start working on it', 2, 'New Task Assigned', '2025-09-06', 0);
-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` enum('pending','in_progress','completed') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO tasks (id, title, description, assigned_to, due_date, status, created_at) VALUES
(1, 'Outline Technical Manual', 'Create the main structure and chapter outlines for the new Java guide.', 7, NULL, 'completed', '2025-08-29 16:47:37'),
(4, 'Draft Chapter 1: Introduction', 'Write the initial draft for the first chapter of the Java manual, covering basic concepts.', 7, '2025-09-01', 'completed', '2025-08-31 10:50:20'),
(5, 'Write Blog Post: "Java Collections"', 'Draft a 1000-word blog post explaining the Java Collections Framework.', 7, '2025-09-03', 'in_progress', '2025-08-31 10:50:47'),
(6, 'Review Technical Drafts (Peer)', 'Perform a peer review on the drafts for Chapters 1 and 2, checking for technical accuracy.', 7, '2025-09-03', 'pending', '2025-08-31 10:51:12'),
(7, 'Draft Chapter 2: Data Structures', 'Write the content for the chapter on B+ Trees, Hash Tables, and Graphs.', 2, '2025-09-03', 'completed', '2025-08-31 10:51:45'),
(8, 'Create Code Snippets for Manual', 'Develop and test Java code examples to be included in the technical manual.', 2, '2025-09-01', 'pending', '2025-08-31 10:52:11'),
(17, 'Write Blog Post: "OOP Concepts"', 'Draft a blog post explaining Encapsulation, Inheritance, and Polymorphism.', 7, '2025-09-06', 'pending', '2025-09-06 08:01:48'),
(18, 'Format Manuscript for Publishing', 'Ensure all drafts adhere to the standard style guide and formatting rules.', 7, '2025-09-07', 'pending', '2025-09-06 08:02:27'),
(19, 'Draft Chapter 3: Networking', 'Write the chapter covering basic networking concepts and socket programming in Java.', 2, '2025-09-07', 'pending', '2025-09-06 08:02:59'),
(20, 'Develop Project Glossary', 'Compile a comprehensive glossary of all technical terms used in the manual.', 2, '2025-09-04', 'pending', '2025-09-06 08:03:21'),
(21, 'Proofread Final Draft (Chapter 1)', 'Perform a final proofread for spelling, grammar, and clarity on the first chapter.', 7, '2025-09-07', 'pending', '2025-09-06 08:03:44'),
(22, 'Create Diagrams for Chapter 2', 'Design visual aids (diagrams) for the B+ Tree and Hash Table sections.', 2, '2025-09-06', 'pending', '2025-09-06 08:04:20'),
(23, 'Review Code Snippet Accuracy', 'Verify that all code examples in the draft are functional and correct.', 7, '2025-09-07', 'pending', '2025-09-06 08:04:39'),
(24, 'Schedule Writers Sync Meeting', 'Organize a meeting to discuss progress on the technical manual.', 2, '2025-09-07', 'pending', '2025-09-06 08:04:57'),
(25, 'Outline Chapter 4: Concurrency', 'Prepare the structure and key topics for the chapter on Java multithreading.', 7, '2025-09-07', 'pending', '2025-09-06 08:05:21'),
(26, 'Write Blog Post: "New Java Features"', 'Draft and publish a blog post about new features in the latest Java release.', 7, '2025-09-07', 'pending', '2025-09-06 08:10:50'),
(27, 'Research Citation Standards', 'Ensure all external references and sources are cited correctly according to standards.', 2, '2025-09-06', 'pending', '2025-09-06 08:11:28');
-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','employee') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `username`, `password`, `role`, `created_at`) VALUES
(1, 'Adi', 'admin', '$2y$10$fw96EIX4ZLTqfMMMYdl0Oe4UMUgtvZrWeRaUKA61J6z2L3/35k5rK', 'admin', '2025-08-20 07:11:04'),
(2, 'Budi', 'budi', '$2y$10$17RVtVnQlRDiThK08VPeieFQSrWXUn84Vv.H/VDai4d3TJIjDPOx.', 'employee', '2025-09-10 08:11:50'),
(7, 'Setya', 'setya', '$2y$10$Wr3Tjsr3zDe9DCvfNiRv2.rtvZHrCiqh51P7MYHx.HfqxfUkhHn.y', 'employee', '2025-09-17 20:11:21'),
(8, 'Emi', 'emi', '$2y$10$FHkzQKpVUrBvGVUF7eHl8eabbmmEH8ItaYwbt4R4IJXl//V7PMzdq', 'employee', '2025-09-29 11:11:34');
-- admin - admin123
-- budi - budi123
-- setya - setya123
-- emi - emi123
-- Indexes for dumped tables
--

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assigned_to` (`assigned_to`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
