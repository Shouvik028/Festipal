-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2019 at 03:57 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cems_final`
--

-- --------------------------------------------------------

--

-- Table structure for table `event_type`
--

CREATE TABLE `event_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_title` text NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping data for table `event_type`
--

INSERT INTO `event_type` (`type_id`, `type_title`) VALUES
(1, 'Technical Events'),
(2, 'Gaming Events'),
(3, 'Cultural Events'),
(4, 'Sports Event');


-- Table structure for table `events`
--
CREATE TABLE `events` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_title` varchar(50) NOT NULL,
  `event_price` int(11) DEFAULT NULL,
  `participant` int(100) DEFAULT 0,
  `img_link` text DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY(`event_id`),
  FOREIGN KEY (`type_id`) REFERENCES `event_type` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_title`, `event_price`, `participant`, `img_link`, `type_id`) VALUES
(1, 'Cryptohunt', 100, 10, 'images/ch.jpg', 1),
(2, 'Hackathon', 100, 10, 'images/ht.jpg', 1),
(3, 'Tech-Quiz',100, 20, 'images/tc.jpg', 1),
(4, 'Competitive-Coding', 100, 10, 'images/coding.jpg', 1),
(5, 'Pubg', 50, 30, 'images/pubg.jpg', 2),
(6, 'Counter-Strike', 50, 20, 'images/counter.jpg\r\n', 2),
(7, 'Valorant', 50, 20, 'images/val.jpg', 2),
(8, 'Fortnite', 50, 10, 'images/for.jpg', 2),
(9, 'Dance Manipal', 200, 10, 'images/dance.jpg', 3),
(10, 'Manipal Idol', 200, 10, 'images/sing.jpg', 3),
(11, 'Slam Poetry', 200, 10, 'images/sp.jpg', 3),
(12, 'Fashion Frenzy', 200, 10, 'images/ff.jpg', 3),
(13, 'Football', 300, 20, 'images/fb.jpg', 4),
(14, 'Cricket', 300, 20, 'images/cr.jpg', 4),
(15, 'Table Tennis', 300, 10, 'images/tt.jpg', 4),
(16, 'Swimming', 300, 10, 'images/sm.jpg', 4);

-- Table structure for table `event_info`
--

CREATE TABLE `event_info` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date DEFAULT NULL,
  `time` varchar(20) NOT NULL,
  `location` varchar(300) NOT NULL,
  FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping data for table `event_info`
--

INSERT INTO `event_info` (`event_id`, `Date`, `time`, `location`) VALUES
(1, '2024-11-16', '3.00pm', 'AB5'),
(2, '2024-11-16', '1.00pm', 'AB5'),
(3, '2024-11-16', '11.00am', 'AB5'),
(4, '2024-11-16', '9.30am', 'AB5'),
(5, '2024-10-17', '10.00am', 'AB3'),
(6, '2024-10-17', '11.00am', 'AB3'),
(7, '2024-10-17', '9.30pm', 'AB3'),
(8, '2024-10-17', '7.00pm', 'AB3'),
(9, '2024-10-17', '5.00pm', 'Quadrangle'),
(10, '2024-10-17', '6.00pm', 'Quadrangle'),
(11, '2024-10-16', '10.30am', 'Quadrangle'),
(12, '2024-10-16', '10.00am', 'Quadrangle'),
(13, '2024-11-12', '3pm', 'MIT Ground'),
(14, '2024-11-13', '2.00pm', 'MIT Ground'),
(15, '2024-11-14', '2.00pm', 'Marena'),
(16, '2024-11-15', '2.00pm', 'Marena');


-- Table structure for table `participent`
--

CREATE TABLE `participant` (
  `RegNo` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `branch` varchar(11) NOT NULL,
  `sem` int(11) NOT NULL,
  `phone` varchar(12) NOT NULL,
  PRIMARY KEY(`RegNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




-- Dumping data for table `participent`
--

INSERT INTO `participant` (`RegNo`, `name`, `branch`, `sem`, `phone`) VALUES

(101, 'John Doe', 'Computer Science', 5, '9876543210'),
(102, 'Jane Smith', 'Electrical Engineering', 7, '8765432109'),
(103, 'Michael Johnson', 'Mechanical Engineering', 6, '7654321098'),
(104, 'Emily Williams', 'Civil Engineering', 8, '6543210987'),
(105, 'David Brown', 'Information Technology', 4, '5432109876'),
(106, 'Sarah Jones', 'Computer Science', 6, '4321098765'),
(107, 'Chris Taylor', 'Electrical Engineering', 5, '3210987654'),
(108, 'Jessica Anderson', 'Civil Engineering', 7, '2109876543'),
(109, 'James Martinez', 'Mechanical Engineering', 3, '1098765432'),
(110, 'Lauren Garcia', 'Computer Science', 8, '0987654321'),
(111, 'Sophia Moore', 'Information Technology', 5, '9876543210'),
(112, 'Ethan Wilson', 'Computer Science', 6, '8765432109'),
(113, 'Ava Lee', 'Electrical Engineering', 4, '7654321098'),
(114, 'Noah Clark', 'Mechanical Engineering', 7, '6543210987'),
(115, 'Olivia Anderson', 'Civil Engineering', 3, '5432109876'),
(116, 'Mason White', 'Information Technology', 8, '4321098765'),
(117, 'Lily Thompson', 'Computer Science', 5, '3210987654'),
(118, 'Logan Harris', 'Electrical Engineering', 6, '2109876543'),
(119, 'Amelia Martin', 'Mechanical Engineering', 4, '1098765432'),
(120, 'Lucas Jackson', 'Civil Engineering', 7, '0987654321'),
(121, 'Sophie Brown', 'Computer Science', 5, '9876543210'),
(122, 'Henry Johnson', 'Electrical Engineering', 7, '8765432109'),
(123, 'Chloe Davis', 'Mechanical Engineering', 6, '7654321098'),
(124, 'William Wilson', 'Civil Engineering', 8, '6543210987'),
(125, 'Victoria Miller', 'Information Technology', 4, '5432109876'),
(126, 'Gabriel Martinez', 'Computer Science', 6, '4321098765'),
(127, 'Zoe Anderson', 'Electrical Engineering', 5, '3210987654'),
(128, 'Nathan Thompson', 'Civil Engineering', 7, '2109876543'),
(129, 'Madison Harris', 'Mechanical Engineering', 3, '1098765432'),
(130, 'Alexander Martin', 'Information Technology', 8, '0987654321'),
(131, 'Rahul Kumar', 'Computer Science', 5, '9876543210'),
(132, 'Priya Singh', 'Electrical Engineering', 7, '8765432109'),
(133, 'Vikram Patel', 'Mechanical Engineering', 6, '7654321098'),
(134, 'Neha Sharma', 'Civil Engineering', 8, '6543210987'),
(135, 'Ajay Verma', 'Information Technology', 4, '5432109876'),
(136, 'Anjali Gupta', 'Computer Science', 6, '4321091566'),
(137, 'Rajesh Shah', 'Electrical Engineering', 5, '3210982677'),
(138, 'Riya Malhotra', 'Civil Engineering', 7, '2109873788'),
(139, 'Aman Khan', 'Mechanical Engineering', 3, '1098764899'),
(141, 'Rohan Kumar', 'Computer Science', 5, '9876543011'),
(142, 'Priya Singh', 'Electrical Engineering', 7, '8765430122'),
(143, 'Vikram Patel', 'Mechanical Engineering', 6, '7654320233'),
(144, 'Neha Sharma', 'Civil Engineering', 8, '6543210344'),
(145, 'Ajay Verma', 'Information Technology', 4, '5432100455'),
(146, 'Anjali Gupta', 'Computer Science', 6, '4321091566'),
(147, 'Rajesh Shah', 'Electrical Engineering', 5, '3210982677'),
(148, 'Riya Malhotra', 'Civil Engineering', 7, '2109873788'),
(149, 'Aman Khan', 'Mechanical Engineering', 3, '1098764899'),
(150, 'Nisha Reddy', 'Information Technology', 8, '0987655900'),
(151, 'Aarav Gupta', 'Computer Science', 5, '9876546789'),
(152, 'Ishaan Sharma', 'Electrical Engineering', 7, '8765435678'),
(153, 'Ananya Patel', 'Mechanical Engineering', 6, '7654324567'),
(154, 'Kabir Singh', 'Civil Engineering', 8, '6543213456'),
(155, 'Dia Malhotra', 'Information Technology', 4, '5432102345'),
(156, 'Vivaan Verma', 'Computer Science', 6, '4321091234'),
(157, 'Aisha Reddy', 'Electrical Engineering', 5, '3210980123'),
(158, 'Shaurya Khan', 'Civil Engineering', 7, '2109879012'),
(159, 'Myra Kumar', 'Mechanical Engineering', 3, '1098767890'),
(160, 'Arjun Singh', 'Information Technology', 8, '0987656789'),
(161, 'Neha Gupta', 'Computer Science', 5, '9876545678'),
(162, 'Rahul Singh', 'Electrical Engineering', 7, '8765434567'),
(163, 'Shreya Sharma', 'Mechanical Engineering', 6, '7654323456'),
(164, 'Vivek Patel', 'Civil Engineering', 8, '6543212345'),
(165, 'Ishita Malhotra', 'Information Technology', 4, '5432101234'),
(166, 'Kunal Verma', 'Computer Science', 6, '4321099876'),
(167, 'Anika Reddy', 'Electrical Engineering', 5, '3210988765'),
(168, 'Aarav Khan', 'Civil Engineering', 7, '2109877654'),
(169, 'Riya Kumar', 'Mechanical Engineering', 3, '1098766543'),
(170, 'Aryan Singh', 'Information Technology', 8, '0987655432'),
(171, 'Riya Gupta', 'Computer Science', 5, '9876547890'),
(172, 'Rajat Singh', 'Electrical Engineering', 7, '8765436789'),
(173, 'Sakshi Sharma', 'Mechanical Engineering', 6, '7654325678'),
(174, 'Aryan Patel', 'Civil Engineering', 8, '6543214567'),
(175, 'Tanvi Malhotra', 'Information Technology', 4, '5432103456'),
(176, 'Aarav Verma', 'Computer Science', 6, '4321092345'),
(177, 'Ananya Reddy', 'Electrical Engineering', 5, '3210981234'),
(178, 'Yash Khan', 'Civil Engineering', 7, '2109870123'),
(179, 'Arnav Kumar', 'Mechanical Engineering', 3, '1098769012'),
(180, 'Riya Singh', 'Information Technology', 8, '0987658901'),
(181, 'Aarav Gupta', 'Computer Science', 5, '9876548901'),
(182, 'Ananya Singh', 'Electrical Engineering', 7, '8765437890'),
(183, 'Raj Singh', 'Mechanical Engineering', 6, '7654326789'),
(184, 'Kavya Patel', 'Civil Engineering', 8, '6543215678'),
(185, 'Arnav Malhotra', 'Information Technology', 4, '5432104567'),
(186, 'Ishaan Verma', 'Computer Science', 6, '4321093456'),
(187, 'Ria Reddy', 'Electrical Engineering', 5, '3210982345'),
(188, 'Anjali Khan', 'Civil Engineering', 7, '2109871234'),
(189, 'Shaurya Kumar', 'Mechanical Engineering', 3, '1098760123'),
(190, 'Sanvi Singh', 'Information Technology', 8, '0987659012'),
(191, 'Rohan Gupta', 'Computer Science', 5, '9876549012'),
(192, 'Anushka Singh', 'Electrical Engineering', 7, '8765438901'),
(193, 'Aryan Sharma', 'Mechanical Engineering', 6, '7654327890'),
(194, 'Kritika Patel', 'Civil Engineering', 8, '6543216789'),
(195, 'Riya Malhotra', 'Information Technology', 4, '5432105678'),
(196, 'Aarav Verma', 'Computer Science', 6, '4321094567'),
(197, 'Ananya Reddy', 'Electrical Engineering', 5, '3210983456'),
(198, 'Kabir Khan', 'Civil Engineering', 7, '2109872345'),
(199, 'Ishaan Kumar', 'Mechanical Engineering', 3, '1098761234'),
(200, 'Vidhi Singh', 'Information Technology', 8, '0987658901'),
(201, 'Siddharth Sharma', 'Computer Science', 5, '9876543011'),
(202, 'Ananya Singh', 'Electrical Engineering', 7, '8765430122'),
(203, 'Rajesh Kumar', 'Mechanical Engineering', 6, '7654320233'),
(204, 'Shreya Patel', 'Civil Engineering', 8, '6543210344'),
(205, 'Neha Malhotra', 'Information Technology', 4, '5432100455'),
(206, 'Arjun Gupta', 'Computer Science', 6, '4321091566'),
(207, 'Amit Shah', 'Electrical Engineering', 5, '3210982677'),
(208, 'Riya Verma', 'Civil Engineering', 7, '2109873788'),
(209, 'Aryan Khan', 'Mechanical Engineering', 3, '1098764899'),
(210, 'Rahul Reddy', 'Information Technology', 8, '0987655900'),
(211, 'Anjali Sharma', 'Computer Science', 5, '9876546789'),
(212, 'Aarav Singh', 'Electrical Engineering', 7, '8765435678'),
(213, 'Kritika Patel', 'Mechanical Engineering', 6, '7654324567'),
(214, 'Vivek Malhotra', 'Civil Engineering', 8, '6543213456'),
(215, 'Anushka Gupta', 'Information Technology', 4, '5432102345'),
(216, 'Shivani Verma', 'Computer Science', 6, '4321091234'),
(217, 'Rajat Shah', 'Electrical Engineering', 5, '3210981234'),
(218, 'Aisha Khan', 'Civil Engineering', 7, '2109879012'),
(219, 'Arnav Kumar', 'Mechanical Engineering', 3, '1098767890'),
(220, 'Shruti Singh', 'Information Technology', 8, '0987656789'),
(221, 'Vikas Sharma', 'Computer Science', 5, '9876547890'),
(222, 'Pooja Singh', 'Electrical Engineering', 7, '8765436789'),
(223, 'Kunal Patel', 'Mechanical Engineering', 6, '7654325678'),
(224, 'Tanvi Malhotra', 'Civil Engineering', 8, '6543214567'),
(225, 'Rohan Gupta', 'Information Technology', 4, '5432103456'),
(226, 'Anjali Verma', 'Computer Science', 6, '4321092345'),
(227, 'Rahul Shah', 'Electrical Engineering', 5, '3210980123'),
(228, 'Ishaan Khan', 'Civil Engineering', 7, '2109878901'),
(229, 'Aaradhya Kumar', 'Mechanical Engineering', 3, '1098767654'),
(230, 'Ananya Singh', 'Information Technology', 8, '0987656543'),
(231, 'Sachin Sharma', 'Computer Science', 5, '9876546780'),
(232, 'Vidhi Singh', 'Electrical Engineering', 7, '8765435678'),
(233, 'Karan Patel', 'Mechanical Engineering', 6, '7654324567'),
(234, 'Jiya Malhotra', 'Civil Engineering', 8, '6543213456'),
(235, 'Rohit Gupta', 'Information Technology', 4, '5432102345'),
(236, 'Anushka Verma', 'Computer Science', 6, '4321091234'),
(237, 'Aryan Shah', 'Electrical Engineering', 5, '3210980123'),
(238, 'Nisha Khan', 'Civil Engineering', 7, '2109879012'),
(239, 'Aarav Kumar', 'Mechanical Engineering', 3, '1098767890'),
(240, 'Riya Singh', 'Information Technology', 8, '0987656789'),
(241, 'Aarav Sharma', 'Computer Science', 5, '9876547890'),
(242, 'Ananya Singh', 'Electrical Engineering', 7, '8765436789'),
(243, 'Rajat Patel', 'Mechanical Engineering', 6, '7654325678'),
(244, 'Kritika Malhotra', 'Civil Engineering', 8, '6543214567'),
(245, 'Vivek Gupta', 'Information Technology', 4, '5432103456'),
(246, 'Anjali Verma', 'Computer Science', 6, '4321092345'),
(247, 'Rahul Shah', 'Electrical Engineering', 5, '3210981234'),
(248, 'Ishaan Khan', 'Civil Engineering', 7, '2109878901'),
(249, 'Aaradhya Kumar', 'Mechanical Engineering', 3, '1098767654'),
(250, 'Ananya Singh', 'Information Technology', 8, '0987656543'),
(251, 'Sachin Sharma', 'Computer Science', 5, '9876546780'),
(252, 'Vidhi Singh', 'Electrical Engineering', 7, '8765435678'),
(253, 'Karan Patel', 'Mechanical Engineering', 6, '7654324567'),
(254, 'Jiya Malhotra', 'Civil Engineering', 8, '6543213456'),
(255, 'Rohit Gupta', 'Information Technology', 4, '5432102345'),
(256, 'Anushka Verma', 'Computer Science', 6, '4321091234'),
(257, 'Aryan Shah', 'Electrical Engineering', 5, '3210980123'),
(258, 'Nisha Khan', 'Civil Engineering', 7, '2109879012'),
(259, 'Aarav Kumar', 'Mechanical Engineering', 3, '1098767890'),
(260, 'Riya Singh', 'Information Technology', 8, '0987656789'),
(261, 'Aarav Sharma', 'Computer Science', 5, '9876547890'),
(262, 'Ananya Singh', 'Electrical Engineering', 7, '8765436789'),
(263, 'Rajat Patel', 'Mechanical Engineering', 6, '7654325678'),
(264, 'Kritika Malhotra', 'Civil Engineering', 8, '6543214567'),
(265, 'Vivek Gupta', 'Information Technology', 4, '5432103456'),
(266, 'Anjali Verma', 'Computer Science', 6, '4321092345'),
(267, 'Rahul Shah', 'Electrical Engineering', 5, '3210981234'),
(268, 'Ishaan Khan', 'Civil Engineering', 7, '2109878901'),
(269, 'Aaradhya Kumar', 'Mechanical Engineering', 3, '1098767654'),
(270, 'Ananya Singh', 'Information Technology', 8, '0987656543'),
(271, 'Sachin Sharma', 'Computer Science', 5, '9876546780'),
(272, 'Vidhi Singh', 'Electrical Engineering', 7, '8765435678'),
(273, 'Karan Patel', 'Mechanical Engineering', 6, '7654324567'),
(274, 'Jiya Malhotra', 'Civil Engineering', 8, '6543213456'),
(275, 'Rohit Gupta', 'Information Technology', 4, '5432102345'),
(276, 'Anushka Verma', 'Computer Science', 6, '4321091234'),
(277, 'Aryan Shah', 'Electrical Engineering', 5, '3210980123'),
(278, 'Nisha Khan', 'Civil Engineering', 7, '2109879012'),
(279, 'Aarav Kumar', 'Mechanical Engineering', 3, '1098767890'),
(280, 'Riya Singh', 'Information Technology', 8, '0987656789'),
(281, 'Aarav Sharma', 'Computer Science', 5, '9876547890'),
(282, 'Ananya Singh', 'Electrical Engineering', 7, '8765436789'),
(283, 'Rajat Patel', 'Mechanical Engineering', 6, '7654325678'),
(284, 'Kritika Malhotra', 'Civil Engineering', 8, '6543214567'),
(285, 'Vivek Gupta', 'Information Technology', 4, '5432103456'),
(286, 'Anjali Verma', 'Computer Science', 6, '4321092345'),
(287, 'Rahul Shah', 'Electrical Engineering', 5, '3210981234'),
(288, 'Ishaan Khan', 'Civil Engineering', 7, '2109878901'),
(289, 'Aaradhya Kumar', 'Mechanical Engineering', 3, '1098767654'),
(290, 'Ananya Singh', 'Information Technology', 8, '0987656543'),
(291, 'Sachin Sharma', 'Computer Science', 5, '9876546780'),
(292, 'Vidhi Singh', 'Electrical Engineering', 7, '8765435678'),
(293, 'Karan Patel', 'Mechanical Engineering', 6, '7654324567'),
(294, 'Jiya Malhotra', 'Civil Engineering', 8, '6543213456'),
(295, 'Rohit Gupta', 'Information Technology', 4, '5432102345'),
(296, 'Anushka Verma', 'Computer Science', 6, '4321091234'),
(297, 'Aryan Shah', 'Electrical Engineering', 5, '3210980123'),
(298, 'Nisha Khan', 'Civil Engineering', 7, '2109879012'),
(299, 'Aarav Kumar', 'Mechanical Engineering', 3, '1098767890'),
(300, 'Riya Singh', 'Information Technology', 8, '0987656789'),
(301, 'Aarav Sharma', 'Computer Science', 5, '9876547890'),
(302, 'Ananya Singh', 'Electrical Engineering', 7, '8765436789'),
(303, 'Rajat Patel', 'Mechanical Engineering', 6, '7654325678'),
(304, 'Kritika Malhotra', 'Civil Engineering', 8, '6543214567'),
(305, 'Vivek Gupta', 'Information Technology', 4, '5432103456'),
(306, 'Anjali Verma', 'Computer Science', 6, '4321092345'),
(307, 'Rahul Shah', 'Electrical Engineering', 5, '3210981234'),
(308, 'Ishaan Khan', 'Civil Engineering', 7, '2109878901'),
(309, 'Aaradhya Kumar', 'Mechanical Engineering', 3, '1098767654'),
(310, 'Ananya Singh', 'Information Technology', 8, '0987656543'),
(311, 'Sachin Sharma', 'Computer Science', 5, '9876546780'),
(312, 'Vidhi Singh', 'Electrical Engineering', 7, '8765435678'),
(313, 'Karan Patel', 'Mechanical Engineering', 6, '7654324567'),
(314, 'Jiya Malhotra', 'Civil Engineering', 8, '6543213456'),
(315, 'Rohit Gupta', 'Information Technology', 4, '5432102345'),
(316, 'Anushka Verma', 'Computer Science', 6, '4321091234'),
(317, 'Aryan Shah', 'Electrical Engineering', 5, '3210980123'),
(318, 'Nisha Khan', 'Civil Engineering', 7, '2109879012'),
(319, 'Aarav Kumar', 'Mechanical Engineering', 3, '1098767890'),
(320, 'Riya Singh', 'Information Technology', 8, '0987656789'),
(321, 'Aarav Sharma', 'Computer Science', 5, '9876547890'),
(322, 'Ananya Singh', 'Electrical Engineering', 7, '8765436789'),
(323, 'Rajat Patel', 'Mechanical Engineering', 6, '7654325678'),
(324, 'Kritika Malhotra', 'Civil Engineering', 8, '6543214567'),
(325, 'Vivek Gupta', 'Information Technology', 4, '5432103456'),
(326, 'Anjali Verma', 'Computer Science', 6, '4321092345'),
(327, 'Rahul Shah', 'Electrical Engineering', 5, '3210981234'),
(328, 'Ishaan Khan', 'Civil Engineering', 7, '2109878901'),
(329, 'Aaradhya Kumar', 'Mechanical Engineering', 3, '1098767654'),
(330, 'Ananya Singh', 'Information Technology', 8, '0987656543'),
(331, 'Sachin Sharma', 'Computer Science', 5, '9876546780'),
(332, 'Vidhi Singh', 'Electrical Engineering', 7, '8765435678'),
(333, 'Karan Patel', 'Mechanical Engineering', 6, '7654324567'),
(334, 'Jiya Malhotra', 'Civil Engineering', 8, '6543213456'),
(335, 'Rohit Gupta', 'Information Technology', 4, '5432102345'),
(336, 'Anushka Verma', 'Computer Science', 6, '4321091234'),
(337, 'Aryan Shah', 'Electrical Engineering', 5, '3210980123'),
(338, 'Nisha Khan', 'Civil Engineering', 7, '2109879012'),
(339, 'Aarav Kumar', 'Mechanical Engineering', 3, '1098767890'),
(340, 'Riya Singh', 'Information Technology', 8, '0987656789'),
(341, 'Aarav Sharma', 'Computer Science', 5, '9876547890'),
(342, 'Ananya Singh', 'Electrical Engineering', 7, '8765436789'),
(343, 'Rajat Patel', 'Mechanical Engineering', 6, '7654325678'),
(344, 'Kritika Malhotra', 'Civil Engineering', 8, '6543214567'),
(345, 'Vivek Gupta', 'Information Technology', 4, '5432103456'),
(346, 'Anjali Verma', 'Computer Science', 6, '4321092345'),
(347, 'Rahul Shah', 'Electrical Engineering', 5, '3210981234'),
(348, 'Ishaan Khan', 'Civil Engineering', 7, '2109878901'),
(349, 'Aaradhya Kumar', 'Mechanical Engineering', 3, '1098767654'),
(350, 'Ananya Singh', 'Information Technology', 8, '0987656543'),
(351, 'Sachin Sharma', 'Computer Science', 5, '9876546780'),
(352, 'Vidhi Singh', 'Electrical Engineering', 7, '8765435678'),
(353, 'Karan Patel', 'Mechanical Engineering', 6, '7654324567'),
(354, 'Jiya Malhotra', 'Civil Engineering', 8, '6543213456'),
(355, 'Rohit Gupta', 'Information Technology', 4, '5432102345'),
(356, 'Anushka Verma', 'Computer Science', 6, '4321091234'),
(357, 'Aryan Shah', 'Electrical Engineering', 5, '3210980123'),
(358, 'Nisha Khan', 'Civil Engineering', 7, '2109879012'),
(359, 'Aarav Kumar', 'Mechanical Engineering', 3, '1098767890'),
(360, 'Riya Singh', 'Information Technology', 8, '0987656789'),
(361, 'Aarav Sharma', 'Computer Science', 5, '9876547890'),
(362, 'Ananya Singh', 'Electrical Engineering', 7, '8765436789'),
(363, 'Rajat Patel', 'Mechanical Engineering', 6, '7654325678'),
(364, 'Kritika Malhotra', 'Civil Engineering', 8, '6543214567'),
(365, 'Vivek Gupta', 'Information Technology', 4, '5432103456'),
(366, 'Anjali Verma', 'Computer Science', 6, '4321092345'),
(367, 'Rahul Shah', 'Electrical Engineering', 5, '3210981234'),
(368, 'Ishaan Khan', 'Civil Engineering', 7, '2109878901'),
(369, 'Aaradhya Kumar', 'Mechanical Engineering', 3, '1098767654'),
(370, 'Ananya Singh', 'Information Technology', 8, '0987656543'),
(371, 'Sachin Sharma', 'Computer Science', 5, '9876546780'),
(372, 'Vidhi Singh', 'Electrical Engineering', 7, '8765435678'),
(373, 'Karan Patel', 'Mechanical Engineering', 6, '7654324567'),
(374, 'Jiya Malhotra', 'Civil Engineering', 8, '6543213456'),
(375, 'Rohit Gupta', 'Information Technology', 4, '5432102345'),
(376, 'Anushka Verma', 'Computer Science', 6, '4321091234'),
(377, 'Aryan Shah', 'Electrical Engineering', 5, '3210980123'),
(378, 'Nisha Khan', 'Civil Engineering', 7, '2109879012'),
(379, 'Aarav Kumar', 'Mechanical Engineering', 3, '1098767890'),
(380, 'Riya Singh', 'Information Technology', 8, '0987656789');




CREATE TABLE `registered` (
  `rid` int(11) NOT NULL,
  `RegNo` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  PRIMARY KEY(`rid`),
  FOREIGN KEY (`RegNo`) REFERENCES `participant` (`RegNo`),
  FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `registered`
--
INSERT INTO `registered` (`rid`, `RegNo`, `event_id`) VALUES
('1', '101', '1'),
('2', '105', '2'),
('3', '111', '1'),
('4', '116', '1'),
('5', '122', '2'),
('6', '134', '3'),
('7', '142', '4'),
('8', '152', '1'),
('9', '163', '2'),
('10', '175', '3'),
('11', '187', '4'),
('12', '195', '1'),
('13', '196', '2'),
('14', '141', '1'),
('15', '153', '2'),
('16', '164', '3'),
('17', '176', '4'),
('18', '182', '1'),
('19', '194', '2'),
('20', '102', '3'),
('21', '217', '4'),
('22', '226', '1'),
('23', '238', '2'),
('24', '251', '1'),
('25', '265', '2'),
('26', '272', '3'),
('27', '287', '4'),
('28', '293', '1'),
('29', '305', '2'),
('30', '317', '3'),
('31', '326', '4'),
('32', '331', '1'),
('33', '345', '2'),
('34', '351', '1'),
('35', '365', '2'),
('36', '372', '3'),
('37', '337', '4'),
('38', '283', '1'),
('39', '315', '2'),
('40', '316', '3'),
('41', '348', '4'),
('42', '309', '1'),
('43', '346', '2'),
('44', '201', '1'),
('45', '302', '2'),
('46', '303', '3'),
('47', '204', '4'),
('48', '106', '1'),
('49', '276', '2'),
('50', '107', '3'),
('51', '298', '4'),
('52', '380', '1'),
('53', '210', '2');



-- Table structure for table `staff_coordinator`
--

CREATE TABLE `staff_coordinator` (
  `stid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  PRIMARY KEY(`stid`),
  FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `staff_coordinator`
--

INSERT INTO `staff_coordinator` (`stid`, `name`, `phone`, `event_id`) VALUES
(1, 'Dr. Smitha N Pai', '9956436610', 1),
(2, 'Dr. Manohara M M Pai', '9956436123', 2),
(3, 'Dr. Balachandra', '9956436456', 3),
(4, 'Dr. Manjula Shenoy K', '9956436789', 4),
(5, 'Jayashree', '9956436101', 5),
(6, 'Mrs. Divya S', '9123436610', 6),
(7, 'Mrs. Manjula C Belavagi', '9456436610', 7),
(8, 'Dr. Poornalatha G', '9789436610', 8),
(9, 'Ms. Ramyashree', '9956412310', 9),
(10, 'Dr. Raghavendra Ganiga', '9956445610', 10),
(11, 'Dr. Ritesh Sharma', '9956473510', 11),
(12, 'Dr. Pankaj Kumar', '9955636610', 12),
(13, 'Dr. Manoj Tolani', '8948476464', 13),
(14, 'Mr. Akshay K C', '9876543210', 14),
(15, 'Mrs. Pooja S', '9676643210', 15),
(16, 'Mrs. Sangeetha TS', '9976544210', 16);

-- Table structure for table `student_coordinator`
--

CREATE TABLE `student_coordinator` (
  `sid` int(11) NOT NULL,
  `st_name` varchar(100) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  FOREIGN KEY (`sid`) REFERENCES `participant` (`RegNo`),
  FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `student_coordinator`
--

INSERT INTO `student_coordinator` (`sid`, `st_name`, `phone`, `event_id`) VALUES
(141, 'Rohan Kumar', '9876543011', 1),
(142, 'Priya Singh', '8765430122', 2),
(143, 'Vikram Patel', '7654320233', 3),
(144, 'Neha Sharma', '6543210344', 4),
(145, 'Ajay Verma', '5432100455', 5),
(146, 'Anjali Gupta', '4321091566', 6),
(147, 'Rajesh Shah', '3210982677', 7),
(148, 'Riya Malhotra', '2109873788', 8),
(149, 'Aman Khan', '1098764899', 9),
(150, 'Nisha Reddy', '0987655900', 10),
(151, 'Aarav Gupta', '9876546789', 11),
(152, 'Ishaan Sharma', '8765435678', 12),
(153, 'Ananya Patel', '7654324567', 13),
(154, 'Kabir Singh', '6543213456', 14),
(155, 'Dia Malhotra', '5432102345', 15),
(156, 'Vivaan Verma', '4321091234', 16);
--

DELIMITER $$

CREATE TRIGGER `count` AFTER INSERT ON `registered` FOR EACH ROW 
BEGIN
    UPDATE events
    SET participant = participant + 1
    WHERE event_id = NEW.event_id;
END$$

DELIMITER ;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
