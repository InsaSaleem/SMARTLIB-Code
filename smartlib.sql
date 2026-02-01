-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2026 at 04:45 PM
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
-- Database: `smartlib`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `author` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `isbn` varchar(50) DEFAULT NULL,
  `publisher` varchar(100) DEFAULT NULL,
  `year_published` int(11) DEFAULT NULL,
  `copies_available` int(11) DEFAULT 1,
  `status` enum('available','borrowed','requested','') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `title`, `author`, `category`, `isbn`, `publisher`, `year_published`, `copies_available`, `status`) VALUES
(1, 'Introduction to Algorithms', 'Thomas H. Cormen', 'Computer Science', '9780262033848', 'MIT Press', 2009, 5, 'requested'),
(2, 'Database System Concepts', 'Abraham Silberschatz', 'Databases', '9780073523323', 'McGraw-Hill', 2011, 5, 'available'),
(3, 'Operating System Concepts', 'Abraham Silberschatz', 'Operating Systems', '9781118063330', 'Wiley', 2013, 3, 'available'),
(4, 'Computer Networks', 'Andrew S. Tanenbaum', 'Networking', '9780132126953', 'Pearson', 2010, 3, 'available'),
(6, 'Software Engineering', 'Ian Sommerville', 'Software Engineering', '9780133943030', 'Pearson', 2015, 5, 'available'),
(7, 'Data Structures Using C', 'Reema Thareja', 'Data Structures', '9780198083546', 'Oxford', 2014, 3, 'available'),
(8, 'Python Programming', 'Mark Lutz', 'Programming', '9781449355739', 'O’Reilly', 2013, 8, 'available'),
(9, 'Machine Learning', 'Tom Mitchell', 'Machine Learning', '9780070428072', 'McGraw-Hill', 1997, 4, 'available'),
(10, 'Web Development with PHP', 'Luke Welling', 'Web Development', '9780672329166', 'Pearson', 2016, 6, 'available'),
(11, 'Discrete Mathematics', 'Kenneth Rosen', 'Mathematics', '9780073383095', 'McGraw-Hill', 2012, 5, 'available'),
(12, 'Computer Architecture', 'John L. Hennessy', 'Computer Architecture', '9780123838728', 'Morgan Kaufmann', 2011, 4, 'available'),
(13, 'Java: The Complete Reference', 'Herbert Schildt', 'Programming', '9781260440232', 'McGraw-Hill', 2018, 6, 'available'),
(14, 'Clean Code', 'Robert C. Martin', 'Software Engineering', '9780132350884', 'Prentice Hall', 2008, 4, 'available'),
(15, 'Design Patterns', 'Erich Gamma', 'Software Design', '9780201633610', 'Addison-Wesley', 1994, 3, 'available'),
(16, 'Introduction to Machine Learning', 'Ethem Alpaydin', 'Machine Learning', '9780262028189', 'MIT Press', 2014, 4, 'available'),
(17, 'C Programming Language', 'Brian W. Kernighan', 'Programming', '9780131103627', 'Prentice Hall', 1988, 5, 'available'),
(18, 'Digital Logic Design', 'Morris Mano', 'Electronics', '9780131989269', 'Pearson', 2014, 4, 'available'),
(19, 'Information Security', 'William Stallings', 'Cyber Security', '9780134794105', 'Pearson', 2018, 4, 'available'),
(20, 'Cloud Computing', 'Rajkumar Buyya', 'Cloud Computing', '9780128053652', 'Morgan Kaufmann', 2013, 3, 'available'),
(21, 'Human Computer Interaction', 'Alan Dix', 'HCI', '9780130461094', 'Pearson', 2004, 4, 'available'),
(22, 'Introduction to Computer Science', 'David Reed', 'Computer Science', '9780134076423', 'Pearson', 2016, 5, 'available'),
(23, 'Advanced Database Systems', 'Carlo Zaniolo', 'Databases', '9781558605889', 'Morgan Kaufmann', 2007, 3, 'available'),
(24, 'Modern Operating Systems', 'Andrew S. Tanenbaum', 'Operating Systems', '9780133591620', 'Pearson', 2014, 6, 'available'),
(25, 'Data Mining Concepts', 'Jiawei Han', 'Data Mining', '9780123814791', 'Morgan Kaufmann', 2011, 5, 'available'),
(26, 'Computer Graphics', 'Donald Hearn', 'Graphics', '9780136053583', 'Pearson', 2010, 1, 'available'),
(27, 'Theory of Computation', 'Michael Sipser', 'Theory', '9781133187790', 'Cengage', 2012, 3, 'available'),
(28, 'Object Oriented Programming with C++', 'E. Balagurusamy', 'Programming', '9781259029936', 'McGraw-Hill', 2019, 6, 'available'),
(29, 'Introduction to Cyber Security', 'Michael Goodrich', 'Cyber Security', '9780134076424', 'Pearson', 2017, 5, 'available'),
(30, 'Big Data Analytics', 'Seema Acharya', 'Big Data', '9781118887998', 'Wiley', 2015, 4, 'available'),
(31, 'Network Security Essentials', 'William Stallings', 'Networking', '9780134527338', 'Pearson', 2017, 6, 'available'),
(32, 'Compiler Design', 'Alfred Aho', 'Compiler Design', '9780321486813', 'Pearson', 2006, 3, 'available'),
(33, 'Microprocessors and Interfacing', 'Douglas Hall', 'Hardware', '9780070257429', 'McGraw-Hill', 2013, 5, 'available'),
(34, 'Digital Signal Processing', 'John G. Proakis', 'Signal Processing', '9780131873742', 'Pearson', 2006, 4, 'available'),
(35, 'Internet of Things', 'Arshdeep Bahga', 'IoT', '9780996025515', 'VPT', 2014, 5, 'available'),
(36, 'Introduction to Robotics', 'John J. Craig', 'Robotics', '9780201543612', 'Pearson', 2005, 3, 'available'),
(37, 'Mobile Application Development', 'Reto Meier', 'Mobile Development', '9781449338268', 'O’Reilly', 2018, 6, 'available'),
(38, 'Agile Software Development', 'Robert C. Martin', 'Software Engineering', '9780135974445', 'Pearson', 2020, 2, 'available'),
(39, 'Software Testing Techniques', 'Boris Beizer', 'Software Testing', '9788177222609', 'Dreamtech', 2011, 5, 'available'),
(40, 'Linear Algebra and Its Applications', 'Gilbert Strang', 'Mathematics', '9780030105678', 'Cengage', 2016, 6, 'available'),
(41, 'Probability and Statistics', 'Ronald E. Walpole', 'Mathematics', '9780134115856', 'Pearson', 2017, 5, 'available'),
(42, 'Artificial Neural Networks', 'B. Yegnanarayana', 'AI', '9788120334811', 'PHI', 2009, 4, 'requested'),
(43, 'Deep Learning Illustrated', 'Jon Krohn', 'Deep Learning', '9780135116692', 'Addison-Wesley', 2019, 3, 'available'),
(44, 'Blockchain Basics', 'Daniel Drescher', 'Blockchain', '9781484226032', 'Apress', 2017, 4, 'available'),
(45, 'Ethical Hacking', 'Daniel Graham', 'Cyber Security', '9780071818469', 'McGraw-Hill', 2015, 5, 'available'),
(46, 'Software Project Management', 'Bob Hughes', 'Management', '9780077122799', 'McGraw-Hill', 2017, 4, 'available'),
(47, 'E-Commerce Systems', 'David Whiteley', 'E-Commerce', '9780201770605', 'Pearson', 2016, 3, 'available'),
(48, 'Numerical Methods', 'Steven Chapra', 'Mathematics', '9780073397924', 'McGraw-Hill', 2012, 5, 'available'),
(49, 'Embedded Systems', 'Raj Kamal', 'Embedded Systems', '9780070667648', 'McGraw-Hill', 2015, 4, 'available'),
(50, 'Web Engineering', 'Roger Pressman', 'Web Development', '9780073375977', 'McGraw-Hill', 2014, 5, 'available'),
(51, 'Introduction to Data Science', 'Joel Grus', 'Data Science', '9781492041139', 'O’Reilly', 2019, 6, 'available');

-- --------------------------------------------------------

--
-- Table structure for table `book_recommendations`
--

CREATE TABLE `book_recommendations` (
  `recommend_id` int(11) NOT NULL,
  `faculty_id` int(11) UNSIGNED NOT NULL,
  `book_title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `priority` varchar(20) DEFAULT '''normal''',
  `comments` text DEFAULT NULL,
  `status` varchar(20) DEFAULT '''pending''',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_recommendations`
--

INSERT INTO `book_recommendations` (`recommend_id`, `faculty_id`, `book_title`, `author`, `priority`, `comments`, `status`, `created_at`) VALUES
(4, 4, 'Cyber Security Fundamentals', 'William Stallings', 'high', 'Security specialization book', 'approved', '2024-01-04 08:00:00'),
(5, 5, 'Software Project Management', 'Bob Hughes', 'normal', 'Helpful for SE course', 'pending', '2024-01-05 08:00:00'),
(9, 4, 'Big Data Analytics', 'Seema Acharya', 'high', 'Data science track', 'pending', '2024-01-09 08:00:00'),
(10, 5, 'Compiler Design', 'Alfred Aho', 'normal', 'Core CS subject', 'approved', '2024-01-10 08:00:00'),
(14, 4, 'Parallel Computing', 'Ananth Grama', 'high', 'Advanced computing', 'approved', '2024-01-14 08:00:00'),
(15, 5, 'Computer Graphics', 'Donald Hearn', 'normal', 'Graphics course', 'pending', '2024-01-15 08:00:00'),
(19, 4, 'Network Security', 'William Stallings', 'high', 'Security elective', 'approved', '2024-01-19 08:00:00'),
(20, 5, 'Web Engineering', 'Roger Pressman', 'normal', 'Web systems design', 'pending', '2024-01-20 08:00:00'),
(24, 4, 'Robotics Engineering', 'John Craig', 'normal', 'Robotics intro book', 'pending', '2024-01-24 08:00:00'),
(25, 5, 'Ethical Hacking', 'Daniel Graham', 'high', 'Cyber security lab', 'approved', '2024-01-25 08:00:00'),
(29, 4, 'Game Development', 'Jesse Schell', 'normal', 'Game design course', 'approved', '2024-01-29 08:00:00'),
(30, 5, 'Embedded Systems Design', 'Raj Kamal', 'high', 'Hardware-software integration', 'pending', '2024-01-30 08:00:00'),
(34, 4, 'Data Science from Scratch', 'Joel Grus', 'high', 'Hands-on DS book', 'approved', '2024-02-04 08:00:00'),
(35, 5, 'IT Project Management', 'Kathy Schwalbe', 'normal', 'Management skills', 'approved', '2024-02-05 08:00:00'),
(39, 4, 'Artificial Life', 'Steven Levy', 'normal', 'AI elective support', 'rejected', '2024-02-09 08:00:00'),
(40, 5, 'Digital Forensics', 'Eoghan Casey', 'high', 'Cyber crime investigations', 'approved', '2024-02-10 08:00:00'),
(44, 4, 'Wireless Sensor Networks', 'Ian Akyildiz', 'high', 'Wireless systems course', 'approved', '2024-02-14 08:00:00'),
(45, 5, 'Cloud Security', 'Chris Dotson', 'high', 'Cloud security practices', 'pending', '2024-02-15 08:00:00'),
(49, 4, 'Digital Economy', 'Don Tapscott', 'normal', 'IT & business integration', 'approved', '2024-02-19 08:00:00'),
(50, 5, 'Software Process Improvement', 'Watts Humphrey', 'high', 'CMMI & process quality', 'approved', '2024-02-20 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `issued_books`
--

CREATE TABLE `issued_books` (
  `issue_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `issue_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `status` enum('returned','overdue','requested','issued') DEFAULT 'issued'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issued_books`
--

INSERT INTO `issued_books` (`issue_id`, `member_id`, `book_id`, `issue_date`, `due_date`, `return_date`, `status`) VALUES
(1, 1, 1, '2024-01-05', '2024-01-20', '2024-01-18', 'returned'),
(2, 2, 2, '2024-01-06', '2024-01-21', '2024-01-22', 'overdue'),
(3, 3, 3, '2024-01-07', '2024-01-22', '2024-01-20', 'returned'),
(4, 4, 4, '2024-01-08', '2024-01-23', '2025-12-12', 'returned'),
(5, 5, 5, '2024-01-09', '2024-01-24', '2024-01-24', 'returned'),
(6, 6, 6, '2024-01-10', '2024-01-25', '2025-12-27', 'returned'),
(7, 7, 7, '2024-01-11', '2024-01-26', '2024-01-28', 'overdue'),
(8, 8, 8, '2024-01-12', '2024-01-27', '2024-01-26', 'returned'),
(9, 9, 9, '2024-01-13', '2024-01-28', NULL, 'issued'),
(10, 10, 10, '2024-01-14', '2024-01-29', '2024-01-30', 'overdue'),
(11, 1, 11, '2024-02-01', '2024-02-16', '2024-02-15', 'returned'),
(12, 2, 12, '2024-02-02', '2024-02-17', NULL, 'issued'),
(13, 3, 13, '2024-02-03', '2024-02-18', '2024-02-19', 'overdue'),
(14, 4, 14, '2024-02-04', '2024-02-19', '2024-02-18', 'returned'),
(15, 5, 15, '2024-02-05', '2024-02-20', NULL, 'issued'),
(16, 6, 16, '2024-02-06', '2024-02-21', '2024-02-21', 'returned'),
(17, 7, 17, '2024-02-07', '2024-02-22', '2024-02-25', 'overdue'),
(18, 8, 18, '2024-02-08', '2024-02-23', NULL, 'issued'),
(19, 9, 19, '2024-02-09', '2024-02-24', '2024-02-24', 'returned'),
(20, 10, 20, '2024-02-10', '2024-02-25', '2024-02-27', 'overdue'),
(21, 1, 21, '2024-03-01', '2024-03-16', NULL, 'issued'),
(22, 2, 22, '2024-03-02', '2024-03-17', '2024-03-16', 'returned'),
(23, 3, 23, '2024-03-03', '2024-03-18', '2024-03-20', 'overdue'),
(24, 4, 24, '2024-03-04', '2024-03-19', NULL, 'issued'),
(25, 5, 25, '2024-03-05', '2024-03-20', '2024-03-19', 'returned'),
(26, 6, 26, '2024-03-06', '2024-03-21', NULL, 'issued'),
(27, 7, 27, '2024-03-07', '2024-03-22', '2024-03-24', 'overdue'),
(28, 8, 28, '2024-03-08', '2024-03-23', '2024-03-23', 'returned'),
(29, 9, 29, '2024-03-09', '2024-03-24', NULL, 'issued'),
(30, 10, 30, '2024-03-10', '2024-03-25', '2024-03-27', 'overdue'),
(31, 1, 31, '2024-04-01', '2024-04-16', '2024-04-15', 'returned'),
(32, 2, 32, '2024-04-02', '2024-04-17', NULL, 'issued'),
(33, 3, 33, '2024-04-03', '2024-04-18', '2024-04-20', 'overdue'),
(34, 4, 34, '2024-04-04', '2024-04-19', '2024-04-18', 'returned'),
(35, 5, 35, '2024-04-05', '2024-04-20', NULL, 'issued'),
(36, 6, 36, '2024-04-06', '2024-04-21', '2024-04-21', 'returned'),
(37, 7, 37, '2024-04-07', '2024-04-22', '2024-04-25', 'overdue'),
(38, 8, 38, '2024-04-08', '2024-04-23', NULL, 'issued'),
(39, 9, 39, '2024-04-09', '2024-04-24', '2024-04-24', 'returned'),
(40, 10, 40, '2024-04-10', '2024-04-25', '2024-04-28', 'overdue'),
(41, 1, 41, '2024-05-01', '2024-05-16', '2024-05-15', 'returned'),
(42, 2, 42, '2024-05-02', '2024-05-17', NULL, 'issued'),
(43, 3, 43, '2024-05-03', '2024-05-18', '2024-05-20', 'overdue'),
(44, 4, 44, '2024-05-04', '2024-05-19', '2024-05-18', 'returned'),
(45, 5, 45, '2024-05-05', '2024-05-20', NULL, 'issued'),
(46, 6, 46, '2024-05-06', '2024-05-21', '2024-05-21', 'returned'),
(47, 7, 47, '2024-05-07', '2024-05-22', '2024-05-25', 'overdue'),
(48, 8, 48, '2024-05-08', '2024-05-23', NULL, 'issued'),
(49, 9, 49, '2024-05-09', '2024-05-24', '2024-05-24', 'returned'),
(50, 10, 50, '2024-05-10', '2024-05-25', '2024-05-28', 'overdue'),
(51, 4, 1, '2025-12-12', NULL, NULL, 'requested'),
(52, 11, 42, '2025-12-14', NULL, NULL, 'requested'),
(64, 23, 26, '2025-12-22', '2026-01-21', NULL, 'requested'),
(65, 13, 26, '2025-12-27', '2026-01-26', NULL, 'issued'),
(67, 13, 48, '2025-12-22', '2026-01-21', NULL, 'requested'),
(69, 12, 23, '2025-12-22', '2026-01-21', NULL, 'requested'),
(70, 12, 17, '2025-12-22', '2026-01-21', NULL, 'requested'),
(71, 12, 14, '2025-12-22', '2026-01-21', NULL, 'requested'),
(72, 12, 38, '2026-02-01', '2026-03-03', NULL, 'requested');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `member_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `role` enum('student','faculty','admin','librarian') NOT NULL,
  `password` varchar(255) NOT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `name`, `email`, `phone`, `address`, `role`, `password`, `registration_date`) VALUES
(4, 'Anisa Khan', 'anisa33@fjwu.edu.pk', '03000000033', 'Multan', 'student', 'pass123', '2025-02-02 08:00:00'),
(5, 'Anum Riaz', 'anum23@fjwu.edu.pk', '03000000023', 'Lahore', 'student', 'pass123', '2025-01-23 08:00:00'),
(6, 'Areeba Khan', 'areeba1@fjwu.edu.pk', '03000000001', 'Karachi', 'student', 'pass123', '2025-01-01 08:00:00'),
(7, 'Ayesha Riaz', 'ayesha18@fjwu.edu.pk', '03000000018', 'Peshawar', 'student', 'pass123', '2025-01-18 08:00:00'),
(8, 'Ayesha Khan', 'ayesha1@uni.edu', '03001234567', 'Karachi', 'student', 'password1', '2025-12-12 08:00:00'),
(9, 'Fariha Shah', 'fariha36@fjwu.edu.pk', '03000000036', 'Karachi', 'student', 'pass123', '2025-02-05 08:00:00'),
(10, 'Fatima Noor', 'fatima12@fjwu.edu.pk', '03000000012', 'Multan', 'student', 'pass123', '2025-01-12 08:00:00'),
(12, 'Dr. Fatima', 'fatima@example.com', '03004445566', 'Rawalpindi', 'faculty', 'faculty123', '2025-12-12 13:31:54'),
(13, 'Hafsa Ali', 'hafsa20@fjwu.edu.pk', '03000000020', 'Faisalabad', 'librarian', 'lib123', '2025-01-20 08:00:00'),
(14, 'Hania Khan', 'hania38@fjwu.edu.pk', '03000000038', 'Islamabad', 'student', 'pass123', '2025-02-07 08:00:00'),
(15, 'Harisah Ali', 'harisah32@fjwu.edu.pk', '03000000032', 'Peshawar', 'student', 'pass123', '2025-02-01 08:00:00'),
(17, 'Hina Noor', 'hina35@fjwu.edu.pk', '03000000035', 'Rawalpindi', 'student', 'pass123', '2025-02-04 08:00:00'),
(18, 'Hina Ali', 'hina49@fjwu.edu.pk', '03000000049', 'Rawalpindi', 'student', 'pass123', '2025-02-18 08:00:00'),
(19, 'Hina Raza', 'hina7@fjwu.edu.pk', '03000000007', 'Rawalpindi', 'student', 'pass123', '2025-01-07 08:00:00'),
(20, 'Hira Shah', 'hira13@fjwu.edu.pk', '03000000013', 'Faisalabad', 'student', 'pass123', '2025-01-13 08:00:00'),
(21, 'Huma Ali', 'huma24@fjwu.edu.pk', '03000000024', 'Islamabad', 'student', 'pass123', '2025-01-24 08:00:00'),
(22, 'Huma Shah', 'huma44@fjwu.edu.pk', '03000000044', 'Lahore', 'student', 'pass123', '2025-02-13 08:00:00'),
(27, 'Irza Saleem', 'irza3@fjwu.edu.pk', '03000000003', 'Islamabad', 'student', 'pass123', '2025-01-03 08:00:00'),
(28, 'Laiba Ali', 'laiba14@fjwu.edu.pk', '03000000014', 'Rawalpindi', 'student', 'pass123', '2025-01-14 08:00:00'),
(29, 'Laiba Khan', 'laiba47@fjwu.edu.pk', '03000000047', 'Multan', 'student', 'pass123', '2025-02-16 08:00:00'),
(30, 'Librarian A', 'librarian1@uni.edu', '03007778899', 'Islamabad', 'librarian', 'lib123', '2025-12-12 08:00:00'),
(31, 'Maham Asif', 'maham9@fjwu.edu.pk', '03000000009', 'Lahore', 'student', 'pass123', '2025-01-09 08:00:00'),
(32, 'Mahjabeen Khan', 'mahjabeen41@fjwu.edu.pk', '03000000041', 'Faisalabad', 'student', 'pass123', '2025-02-10 08:00:00'),
(33, 'Mahnoor Khan', 'mahnoor15@fjwu.edu.pk', '03000000015', 'Karachi', 'student', 'pass123', '2025-01-15 08:00:00'),
(34, 'Maria Iqbal', 'maria16@fjwu.edu.pk', '03000000016', 'Lahore', 'student', 'pass123', '2025-01-16 08:00:00'),
(35, 'Dr. Maria', 'maria1@uni.edu', '03001112233', 'Karachi', 'faculty', 'faculty123', '2025-12-12 08:00:00'),
(36, 'Maryam Ali', 'maryam28@fjwu.edu.pk', '03000000028', 'Rawalpindi', 'student', 'pass123', '2025-01-28 08:00:00'),
(37, 'Maryam Shah', 'maryam48@fjwu.edu.pk', '03000000048', 'Faisalabad', 'student', 'pass123', '2025-02-17 08:00:00'),
(38, 'Nawal Ahmed', 'nawal19@fjwu.edu.pk', '03000000019', 'Multan', 'student', 'pass123', '2025-01-19 08:00:00'),
(39, 'Nida Khan', 'nida11@fjwu.edu.pk', '03000000011', 'Peshawar', 'student', 'pass123', '2025-01-11 08:00:00'),
(40, 'Noor Fatima', 'noor46@fjwu.edu.pk', '03000000046', 'Peshawar', 'student', 'pass123', '2025-02-15 08:00:00'),
(41, 'Rabia Ali', 'rabia42@fjwu.edu.pk', '03000000042', 'Rawalpindi', 'student', 'pass123', '2025-02-11 08:00:00'),
(42, 'Dr. Fatima', 'Rabia@example.com', NULL, NULL, 'faculty', 'pass123', '2025-12-12 13:36:31'),
(43, 'Rida Shah', 'rida25@fjwu.edu.pk', '03000000025', 'Peshawar', 'student', 'pass123', '2025-01-25 08:00:00'),
(44, 'Sadia Khan', 'sadia22@fjwu.edu.pk', '03000000022', 'Karachi', 'student', 'pass123', '2025-01-22 08:00:00'),
(45, 'Sadia Noor', 'sadia29@fjwu.edu.pk', '03000000029', 'Karachi', 'student', 'pass123', '2025-01-29 08:00:00'),
(46, 'Sadia Riaz', 'sadia45@fjwu.edu.pk', '03000000045', 'Islamabad', 'student', 'pass123', '2025-02-14 08:00:00'),
(47, 'Sana Ahmed', 'sana26@fjwu.edu.pk', '03000000026', 'Multan', 'student', 'pass123', '2025-01-26 08:00:00'),
(48, 'Sana Noor', 'sana3@uni.edu', '03009876543', 'Islamabad', 'student', 'password3', '2025-12-12 08:00:00'),
(49, 'Sana Noor', 'sana50@fjwu.edu.pk', '03000000050', 'Karachi', 'student', 'pass123', '2025-02-19 08:00:00'),
(50, 'Sana Tariq', 'sana8@fjwu.edu.pk', '03000000008', 'Karachi', 'student', 'pass123', '2025-01-08 08:00:00'),
(51, 'Sania Ali', 'sania39@fjwu.edu.pk', '03000000039', 'Peshawar', 'student', 'pass123', '2025-02-08 08:00:00'),
(52, 'Sara Iqbal', 'sara6@fjwu.edu.pk', '03000000006', 'Faisalabad', 'student', 'pass123', '2025-01-06 08:00:00'),
(53, 'Shazia Riaz', 'shazia37@fjwu.edu.pk', '03000000037', 'Lahore', 'student', 'pass123', '2025-02-06 08:00:00'),
(54, 'Sofia Noor', 'sofia40@fjwu.edu.pk', '03000000040', 'Multan', 'student', 'pass123', '2025-02-09 08:00:00'),
(55, 'Sumbul Rehman', 'sumbul10@fjwu.edu.pk', '03000000010', 'Islamabad', 'student', 'pass123', '2025-01-10 08:00:00'),
(56, 'Zara Ahmed', 'zara5@fjwu.edu.pk', '03000000005', 'Multan', 'student', 'pass123', '2025-01-05 08:00:00'),
(57, 'Zoya Riaz', 'zoya31@fjwu.edu.pk', '03000000031', 'Islamabad', 'student', 'pass123', '2025-01-31 08:00:00'),
(58, 'Zunaira Iqbal', 'zunaira21@fjwu.edu.pk', '03000000021', 'Rawalpindi', 'student', 'pass123', '2025-01-21 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date_sent` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_read` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `member_id`, `message`, `date_sent`, `is_read`) VALUES
(1, 1, 'Your requested book \"Introduction to AI\" is now available.', '2025-12-01 08:00:00', 0),
(2, 2, 'Your book \"Database Management Systems\" is due tomorrow.', '2025-12-02 08:00:00', 0),
(3, 3, 'Reminder: Return \"Python Programming\" to avoid fine.', '2025-12-03 08:00:00', 0),
(4, 4, 'Your profile information was updated successfully.', '2025-12-04 08:00:00', 1),
(5, 5, 'New book \"Data Science Essentials\" added to library.', '2025-12-05 08:00:00', 0),
(6, 6, 'Your issued book \"Algorithms\" is overdue.', '2025-12-06 08:00:00', 0),
(7, 7, 'Your request for \"Machine Learning Basics\" has been approved.', '2025-12-07 08:00:00', 0),
(8, 8, 'Library will be closed tomorrow for maintenance.', '2025-12-08 08:00:00', 1),
(9, 9, 'Your password was changed successfully.', '2025-12-09 08:00:00', 1),
(10, 10, 'Your book \"Computer Networks\" is due in 2 days.', '2025-12-10 08:00:00', 0),
(11, 11, 'Reminder: Library fines must be cleared by end of month.', '2025-12-11 08:00:00', 0),
(12, 12, 'Your requested book \"Operating Systems\" is now available.', '2025-12-12 08:00:00', 0),
(13, 13, 'Library timings changed: 9 AM to 5 PM.', '2025-12-13 08:00:00', 1),
(14, 14, 'Your request for \"Software Engineering\" has been rejected.', '2025-12-14 08:00:00', 0),
(15, 15, 'New e-book \"Artificial Intelligence\" added.', '2025-12-15 08:00:00', 0),
(16, 16, 'Reminder: Return \"Digital Logic Design\" by due date.', '2025-12-16 08:00:00', 0),
(17, 17, 'Your issued book \"Database Systems\" is overdue.', '2025-12-17 08:00:00', 0),
(18, 18, 'Your profile has been viewed by the admin.', '2025-12-18 08:00:00', 1),
(19, 19, 'Library will remain closed on public holidays.', '2025-12-19 08:00:00', 1),
(20, 20, 'Your request for \"Compiler Design\" is pending approval.', '2025-12-20 08:00:00', 0),
(21, 21, 'Reminder: Return \"Web Development\" book.', '2025-12-21 08:00:00', 0),
(22, 22, 'Your requested book \"Cloud Computing\" is ready for pickup.', '2025-12-22 08:00:00', 0),
(23, 23, 'Your issued book \"Cyber Security\" is overdue.', '2025-12-23 08:00:00', 0),
(24, 24, 'Profile updated successfully.', '2025-12-24 08:00:00', 1),
(25, 25, 'New book \"Data Analytics\" added to library.', '2025-12-25 08:00:00', 0),
(26, 26, 'Your request for \"Networking Basics\" has been approved.', '2025-12-26 08:00:00', 0),
(27, 27, 'Library closed on upcoming holiday.', '2025-12-27 08:00:00', 1),
(28, 28, 'Your password changed successfully.', '2025-12-28 08:00:00', 1),
(29, 29, 'Reminder: Your book \"Machine Learning\" is due tomorrow.', '2025-12-29 08:00:00', 0),
(30, 30, 'Your requested book \"Artificial Intelligence\" is now available.', '2025-12-30 08:00:00', 0),
(31, 31, 'Library timings updated: 10 AM to 6 PM.', '2025-12-31 08:00:00', 1),
(32, 32, 'Reminder: Return \"Database Design\" book.', '2026-01-01 08:00:00', 0),
(33, 33, 'Your request for \"Operating Systems\" has been approved.', '2026-01-02 08:00:00', 0),
(34, 34, 'Your issued book \"Computer Graphics\" is overdue.', '2026-01-03 08:00:00', 0),
(35, 35, 'Profile updated successfully.', '2026-01-04 08:00:00', 1),
(36, 36, 'New e-book \"Artificial Intelligence\" added.', '2026-01-05 08:00:00', 0),
(37, 37, 'Reminder: Return \"Data Structures\" by due date.', '2026-01-06 08:00:00', 0),
(38, 38, 'Your issued book \"Networking\" is overdue.', '2026-01-07 08:00:00', 0),
(39, 39, 'Your profile has been viewed by admin.', '2026-01-08 08:00:00', 1),
(40, 40, 'Library closed for maintenance tomorrow.', '2026-01-09 08:00:00', 1),
(41, 41, 'Your request for \"Cloud Computing\" is pending.', '2026-01-10 08:00:00', 0),
(42, 42, 'Reminder: Return \"Software Engineering\" book.', '2026-01-11 08:00:00', 0),
(43, 43, 'New book \"Data Analytics\" is now available.', '2026-01-12 08:00:00', 0),
(44, 44, 'Your request for \"Machine Learning Basics\" approved.', '2026-01-13 08:00:00', 0),
(45, 45, 'Profile updated successfully.', '2026-01-14 08:00:00', 1),
(46, 46, 'Reminder: Book \"Database Systems\" is due tomorrow.', '2026-01-15 08:00:00', 0),
(47, 47, 'Your requested book \"Web Development\" is ready for pickup.', '2026-01-16 08:00:00', 0),
(48, 48, 'Library closed for holiday.', '2026-01-17 08:00:00', 1),
(49, 49, 'Your password changed successfully.', '2026-01-18 08:00:00', 1),
(50, 50, 'Reminder: Return \"Digital Logic Design\" book.', '2026-01-19 08:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `report_id` int(11) NOT NULL,
  `report_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `generated_by` varchar(100) DEFAULT NULL,
  `generated_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`report_id`, `report_type`, `generated_by`, `generated_on`, `details`) VALUES
(1, 'Overdue Books', '1', '2025-12-01 08:00:00', 'List of students with overdue books.'),
(2, 'Issued Books', '2', '2025-12-02 08:00:00', 'Summary of all currently issued books.'),
(3, 'Returned Books', '3', '2025-12-03 08:00:00', 'Report of books returned in the last week.'),
(4, 'Fine Collection', '4', '2025-12-04 08:00:00', 'Total fines collected from students.'),
(5, 'New Book Additions', '5', '2025-12-05 08:00:00', 'Books added to library this month.'),
(6, 'Pending Requests', '6', '2025-12-06 08:00:00', 'List of book requests pending approval.'),
(7, 'Member Activity', '7', '2025-12-07 08:00:00', 'Activity report of library members.'),
(8, 'Top Borrowed Books', '8', '2025-12-08 08:00:00', 'Books most borrowed this month.'),
(9, 'Faculty Activity', '9', '2025-12-09 08:00:00', 'Activity report of faculty members.'),
(10, 'Library Usage', '10', '2025-12-10 08:00:00', 'Daily library usage report.'),
(11, 'Overdue Books', '11', '2025-12-11 08:00:00', 'List of students with overdue books.'),
(12, 'Issued Books', '12', '2025-12-12 08:00:00', 'Summary of all currently issued books.'),
(13, 'Returned Books', '13', '2025-12-13 08:00:00', 'Report of books returned in the last week.'),
(14, 'Fine Collection', '14', '2025-12-14 08:00:00', 'Total fines collected from students.'),
(15, 'New Book Additions', '15', '2025-12-15 08:00:00', 'Books added to library this month.'),
(16, 'Pending Requests', '16', '2025-12-16 08:00:00', 'List of book requests pending approval.'),
(17, 'Member Activity', '17', '2025-12-17 08:00:00', 'Activity report of library members.'),
(18, 'Top Borrowed Books', '18', '2025-12-18 08:00:00', 'Books most borrowed this month.'),
(19, 'Faculty Activity', '19', '2025-12-19 08:00:00', 'Activity report of faculty members.'),
(20, 'Library Usage', '20', '2025-12-20 08:00:00', 'Daily library usage report.'),
(21, 'Overdue Books', '21', '2025-12-21 08:00:00', 'List of students with overdue books.'),
(22, 'Issued Books', '22', '2025-12-22 08:00:00', 'Summary of all currently issued books.'),
(23, 'Returned Books', '23', '2025-12-23 08:00:00', 'Report of books returned in the last week.'),
(24, 'Fine Collection', '24', '2025-12-24 08:00:00', 'Total fines collected from students.'),
(25, 'New Book Additions', '25', '2025-12-25 08:00:00', 'Books added to library this month.'),
(26, 'Pending Requests', '26', '2025-12-26 08:00:00', 'List of book requests pending approval.'),
(27, 'Member Activity', '27', '2025-12-27 08:00:00', 'Activity report of library members.'),
(28, 'Top Borrowed Books', '28', '2025-12-28 08:00:00', 'Books most borrowed this month.'),
(29, 'Faculty Activity', '29', '2025-12-29 08:00:00', 'Activity report of faculty members.'),
(30, 'Library Usage', '30', '2025-12-30 08:00:00', 'Daily library usage report.'),
(31, 'Overdue Books', '31', '2025-12-31 08:00:00', 'List of students with overdue books.'),
(32, 'Issued Books', '32', '2026-01-01 08:00:00', 'Summary of all currently issued books.'),
(33, 'Returned Books', '33', '2026-01-02 08:00:00', 'Report of books returned in the last week.'),
(34, 'Fine Collection', '34', '2026-01-03 08:00:00', 'Total fines collected from students.'),
(35, 'New Book Additions', '35', '2026-01-04 08:00:00', 'Books added to library this month.'),
(36, 'Pending Requests', '36', '2026-01-05 08:00:00', 'List of book requests pending approval.'),
(37, 'Member Activity', '37', '2026-01-06 08:00:00', 'Activity report of library members.'),
(38, 'Top Borrowed Books', '38', '2026-01-07 08:00:00', 'Books most borrowed this month.'),
(39, 'Faculty Activity', '39', '2026-01-08 08:00:00', 'Activity report of faculty members.'),
(40, 'Library Usage', '40', '2026-01-09 08:00:00', 'Daily library usage report.'),
(41, 'Overdue Books', '41', '2026-01-10 08:00:00', 'List of students with overdue books.'),
(42, 'Issued Books', '42', '2026-01-11 08:00:00', 'Summary of all currently issued books.'),
(43, 'Returned Books', '43', '2026-01-12 08:00:00', 'Report of books returned in the last week.'),
(44, 'Fine Collection', '44', '2026-01-13 08:00:00', 'Total fines collected from students.'),
(45, 'New Book Additions', '45', '2026-01-14 08:00:00', 'Books added to library this month.'),
(46, 'Pending Requests', '46', '2026-01-15 08:00:00', 'List of book requests pending approval.'),
(47, 'Member Activity', '47', '2026-01-16 08:00:00', 'Activity report of library members.'),
(48, 'Top Borrowed Books', '48', '2026-01-17 08:00:00', 'Books most borrowed this month.'),
(49, 'Faculty Activity', '49', '2026-01-18 08:00:00', 'Activity report of faculty members.'),
(50, 'Library Usage', '50', '2026-01-19 08:00:00', 'Daily library usage report.');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `request_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `book_title` varchar(150) DEFAULT NULL,
  `author` varchar(150) DEFAULT NULL,
  `request_date` date DEFAULT curdate(),
  `status` enum('pending','approved','rejected','') DEFAULT 'pending',
  `priority` varchar(20) DEFAULT NULL,
  `request_type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`request_id`, `member_id`, `book_title`, `author`, `request_date`, `status`, `priority`, `request_type`) VALUES
(1, 1, 'Introduction to AI', 'John Smith', '2025-12-01', 'pending', NULL, 'priority'),
(2, 2, 'Database Management Systems', 'K. Ramakrishnan', '2025-12-02', 'approved', NULL, 'priority'),
(3, 3, 'Python Programming', 'Mark Lutz', '2025-12-03', 'pending', NULL, 'priority'),
(4, 4, 'Algorithms', 'Cormen', '2025-12-04', 'rejected', NULL, 'priority'),
(5, 5, 'Data Science Essentials', 'Jane Doe', '2025-12-05', 'approved', NULL, 'priority'),
(6, 6, 'Machine Learning Basics', 'Tom Mitchell', '2025-12-06', 'pending', NULL, 'priority'),
(7, 7, 'Computer Networks', 'Andrew S. Tanenbaum', '2025-12-07', 'approved', NULL, 'priority'),
(8, 8, 'Operating Systems', 'Abraham Silberschatz', '2025-12-08', 'pending', NULL, 'priority'),
(9, 9, 'Software Engineering', 'Ian Sommerville', '2025-12-09', 'rejected', NULL, 'priority'),
(10, 10, 'Artificial Intelligence', 'Stuart Russell', '2025-12-10', 'approved', NULL, 'priority'),
(11, 11, 'Digital Logic Design', 'M. Morris Mano', '2025-12-11', 'pending', NULL, 'priority'),
(12, 12, 'Database Systems', 'Ramakrishnan', '2025-12-12', 'approved', NULL, 'priority'),
(13, 13, 'Computer Graphics', 'Hearn & Baker', '2025-12-13', 'pending', NULL, 'priority'),
(14, 14, 'Web Development', 'Jon Duckett', '2025-12-14', 'approved', NULL, 'priority'),
(15, 15, 'Compiler Design', 'Aho & Ullman', '2025-12-15', 'pending', NULL, 'priority'),
(17, 17, 'Cyber Security', 'William Stallings', '2025-12-17', 'pending', NULL, 'priority'),
(18, 18, 'Networking Basics', 'Behrouz Forouzan', '2025-12-18', 'approved', NULL, 'priority'),
(19, 19, 'Digital Electronics', 'Albert Paul Malvino', '2025-12-19', 'pending', NULL, 'priority'),
(20, 20, 'Machine Learning', 'Tom M. Mitchell', '2025-12-20', 'approved', NULL, 'priority'),
(21, 21, 'Operating Systems Concepts', 'Silberschatz', '2025-12-21', 'pending', NULL, 'priority'),
(22, 22, 'Database Design', 'Harrington', '2025-12-22', 'approved', NULL, 'priority'),
(23, 23, 'Computer Architecture', 'Hennessy & Patterson', '2025-12-23', 'pending', NULL, 'priority'),
(24, 24, 'Programming in C', 'K. N. King', '2025-12-24', 'approved', NULL, 'priority'),
(25, 25, 'Object-Oriented Design', 'Grady Booch', '2025-12-25', 'pending', NULL, 'priority'),
(26, 26, 'Cloud Computing', 'Rajkumar Buyya', '2025-12-26', 'approved', NULL, 'priority'),
(27, 27, 'Artificial Neural Networks', 'Simon Haykin', '2025-12-27', 'pending', NULL, 'priority'),
(28, 28, 'Data Structures', 'Seymour Lipschutz', '2025-12-28', 'approved', NULL, 'priority'),
(29, 29, 'Java Programming', 'Herbert Schildt', '2025-12-29', 'pending', NULL, 'priority'),
(30, 30, 'Software Testing', 'Ron Patton', '2025-12-30', 'approved', NULL, 'priority'),
(31, 31, 'Deep Learning', 'Ian Goodfellow', '2025-12-31', 'pending', NULL, 'priority'),
(32, 32, 'Compiler Construction', 'Aho & Ullman', '2026-01-01', 'approved', NULL, 'priority'),
(33, 33, 'Embedded Systems', 'Frank Vahid', '2026-01-02', 'pending', NULL, 'priority'),
(34, 34, 'Human-Computer Interaction', 'Alan Dix', '2026-01-03', 'approved', NULL, 'priority'),
(35, 35, 'Data Mining', 'Jiawei Han', '2026-01-04', 'pending', NULL, 'priority'),
(36, 36, 'Artificial Intelligence: Modern Approach', 'Russell & Norvig', '2026-01-05', 'approved', NULL, 'priority'),
(37, 37, 'Big Data Analytics', 'Seema Acharya', '2026-01-06', 'pending', NULL, 'priority'),
(38, 38, 'Computer Vision', 'Richard Szeliski', '2026-01-07', 'approved', NULL, 'priority'),
(39, 39, 'Mobile App Development', 'Coronel', '2026-01-08', 'pending', NULL, 'priority'),
(40, 40, 'Robotics Basics', 'John J. Craig', '2026-01-09', 'approved', NULL, 'priority'),
(41, 41, 'Data Warehousing', 'Inmon', '2026-01-10', 'pending', NULL, 'priority'),
(42, 42, 'Artificial Intelligence', 'Elaine Rich', '2026-01-11', 'approved', NULL, 'priority'),
(43, 43, 'Computer Networks Lab', 'Tanenbaum', '2026-01-12', 'pending', NULL, 'priority'),
(44, 44, 'Web Technologies', 'Harvey Deitel', '2026-01-13', 'approved', NULL, 'priority'),
(45, 45, 'Machine Learning Projects', 'Aurélien Géron', '2026-01-14', 'pending', NULL, 'priority'),
(46, 46, 'Database Projects', 'Elmasri', '2026-01-15', 'approved', NULL, 'priority'),
(47, 47, 'Software Engineering Lab', 'Pressman', '2026-01-16', 'pending', NULL, 'priority'),
(48, 48, 'Cyber Security Lab', 'William Stallings', '2026-01-17', 'approved', NULL, 'priority'),
(49, 49, 'Programming in Python', 'Mark Lutz', '2026-01-18', 'pending', NULL, 'priority'),
(50, 50, 'Digital Logic Lab', 'M. Morris Mano', '2026-01-19', 'approved', NULL, 'priority'),
(51, 4, 'Introduction to Algorithms', 'Thomas H. Cormen', '2025-12-12', 'pending', NULL, 'priority'),
(52, 11, 'Artificial Neural Networks', 'B. Yegnanarayana', '2025-12-14', 'pending', NULL, 'priority'),
(58, 23, 'Computer Graphics', 'Donald Hearn', '2025-12-22', 'pending', 'priority', NULL),
(60, 13, 'Computer Graphics', 'Donald Hearn', '2025-12-22', 'pending', 'priority', NULL),
(61, 13, 'Numerical Methods', 'Steven Chapra', '2025-12-22', 'pending', 'priority', NULL),
(63, 12, 'Advanced Database Systems', 'Carlo Zaniolo', '2025-12-22', 'pending', 'priority', NULL),
(64, 12, 'C Programming Language', 'Brian W. Kernighan', '2025-12-22', 'pending', 'priority', NULL),
(65, 12, 'Clean Code', 'Robert C. Martin', '2025-12-22', 'pending', 'priority', NULL),
(66, 12, 'Agile Software Development', 'Robert C. Martin', '2026-02-01', 'pending', 'priority', NULL),
(67, 12, 'Agile Software Development', 'Robert C. Martin', '2026-02-01', 'pending', 'priority', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `reservation_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `reservation_date` date DEFAULT curdate(),
  `status` enum('pending','approved','cancelled','') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`reservation_id`, `member_id`, `book_id`, `reservation_date`, `status`) VALUES
(1, 1, 101, '2025-12-01', 'pending'),
(2, 2, 102, '2025-12-02', 'approved'),
(3, 3, 103, '2025-12-03', 'cancelled'),
(4, 4, 104, '2025-12-04', 'pending'),
(5, 5, 105, '2025-12-05', 'approved'),
(6, 6, 106, '2025-12-06', 'pending'),
(7, 7, 107, '2025-12-07', 'approved'),
(8, 8, 108, '2025-12-08', 'cancelled'),
(9, 9, 109, '2025-12-09', 'pending'),
(10, 10, 110, '2025-12-10', 'approved'),
(11, 11, 111, '2025-12-11', 'pending'),
(12, 12, 112, '2025-12-12', 'approved'),
(13, 13, 113, '2025-12-13', 'cancelled'),
(14, 14, 114, '2025-12-14', 'pending'),
(15, 15, 115, '2025-12-15', 'approved'),
(16, 16, 116, '2025-12-16', 'pending'),
(17, 17, 117, '2025-12-17', 'approved'),
(18, 18, 118, '2025-12-18', 'cancelled'),
(19, 19, 119, '2025-12-19', 'pending'),
(20, 20, 120, '2025-12-20', 'approved'),
(21, 21, 121, '2025-12-21', 'pending'),
(22, 22, 122, '2025-12-22', 'approved'),
(23, 23, 123, '2025-12-23', 'cancelled'),
(24, 24, 124, '2025-12-24', 'pending'),
(25, 25, 125, '2025-12-25', 'approved'),
(26, 26, 126, '2025-12-26', 'pending'),
(27, 27, 127, '2025-12-27', 'approved'),
(28, 28, 128, '2025-12-28', 'cancelled'),
(29, 29, 129, '2025-12-29', 'pending'),
(30, 30, 130, '2025-12-30', 'approved'),
(31, 31, 131, '2025-12-31', 'pending'),
(32, 32, 132, '2026-01-01', 'approved'),
(33, 33, 133, '2026-01-02', 'cancelled'),
(34, 34, 134, '2026-01-03', 'pending'),
(35, 35, 135, '2026-01-04', 'approved'),
(36, 36, 136, '2026-01-05', 'pending'),
(37, 37, 137, '2026-01-06', 'approved'),
(38, 38, 138, '2026-01-07', 'cancelled'),
(39, 39, 139, '2026-01-08', 'pending'),
(40, 40, 140, '2026-01-09', 'approved'),
(41, 41, 141, '2026-01-10', 'pending'),
(42, 42, 142, '2026-01-11', 'approved'),
(43, 43, 143, '2026-01-12', 'cancelled'),
(44, 44, 144, '2026-01-13', 'pending'),
(45, 45, 145, '2026-01-14', 'approved'),
(46, 46, 146, '2026-01-15', 'pending'),
(47, 47, 147, '2026-01-16', 'approved'),
(48, 48, 148, '2026-01-17', 'cancelled'),
(49, 49, 149, '2026-01-18', 'pending'),
(50, 50, 150, '2026-01-19', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

CREATE TABLE `statistics` (
  `stat_id` int(11) NOT NULL,
  `total_books` int(11) DEFAULT NULL,
  `total_issued` int(11) DEFAULT NULL,
  `total_requests` int(11) DEFAULT NULL,
  `last_updated` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `statistics`
--

INSERT INTO `statistics` (`stat_id`, `total_books`, `total_issued`, `total_requests`, `last_updated`) VALUES
(1, 50, 28, 15, '2024-01-01'),
(2, 50, 32, 18, '2024-02-01'),
(3, 50, 35, 22, '2024-03-01'),
(4, 50, 40, 25, '2024-04-01'),
(5, 50, 45, 30, '2024-05-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD UNIQUE KEY `isbn` (`isbn`);

--
-- Indexes for table `book_recommendations`
--
ALTER TABLE `book_recommendations`
  ADD PRIMARY KEY (`recommend_id`),
  ADD KEY `faculty_id` (`faculty_id`);

--
-- Indexes for table `issued_books`
--
ALTER TABLE `issued_books`
  ADD PRIMARY KEY (`issue_id`),
  ADD UNIQUE KEY `member_id` (`member_id`,`book_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD UNIQUE KEY `member_id` (`member_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reservation_id`),
  ADD UNIQUE KEY `member_id` (`member_id`,`book_id`);

--
-- Indexes for table `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`stat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `book_recommendations`
--
ALTER TABLE `book_recommendations`
  MODIFY `recommend_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `issued_books`
--
ALTER TABLE `issued_books`
  MODIFY `issue_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `member_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `statistics`
--
ALTER TABLE `statistics`
  MODIFY `stat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book_recommendations`
--
ALTER TABLE `book_recommendations`
  ADD CONSTRAINT `book_recommendations_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `members` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
