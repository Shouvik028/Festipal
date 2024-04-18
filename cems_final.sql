
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";




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
  FOREIGN KEY (`type_id`) REFERENCES `event_type` (`type_id`) ON DELETE CASCADE
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
  FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON DELETE CASCADE
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
  `password` varchar(20) NOT NULL,
  PRIMARY KEY(`RegNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




-- Dumping data for table `participent`
--

INSERT INTO `participant` (`RegNo`, `name`, `branch`, `sem`, `phone`, `password`) VALUES

(101, 'John Doe', 'Computer Science', 5, '9876543210', 'default'),
(102, 'Jane Smith', 'Electrical Engineering', 7, '8765432109', 'default'),
(103, 'Michael Johnson', 'Mechanical Engineering', 6, '7654321098', 'default'),
(104, 'Emily Williams', 'Civil Engineering', 8, '6543210987', 'default'),
(105, 'David Brown', 'Information Technology', 4, '5432109876', 'default'),
(106, 'Sarah Jones', 'Computer Science', 6, '4321098765', 'default'),
(107, 'Chris Taylor', 'Electrical Engineering', 5, '3210987654', 'default'),
(108, 'Jessica Anderson', 'Civil Engineering', 7, '2109876543', 'default'),
(109, 'James Martinez', 'Mechanical Engineering', 3, '1098765432', 'default'),
(110, 'Lauren Garcia', 'Computer Science', 8, '0987654321', 'default'),
(111, 'Sophia Moore', 'Information Technology', 5, '9876543210', 'default'),
(112, 'Ethan Wilson', 'Computer Science', 6, '8765432109', 'default'),
(113, 'Ava Lee', 'Electrical Engineering', 4, '7654321098', 'default'),
(114, 'Noah Clark', 'Mechanical Engineering', 7, '6543210987', 'default'),
(115, 'Olivia Anderson', 'Civil Engineering', 3, '5432109876', 'default'),
(116, 'Mason White', 'Information Technology', 8, '4321098765', 'default'),
(117, 'Lily Thompson', 'Computer Science', 5, '3210987654', 'default'),
(118, 'Logan Harris', 'Electrical Engineering', 6, '2109876543', 'default'),
(119, 'Amelia Martin', 'Mechanical Engineering', 4, '1098765432', 'default'),
(120, 'Lucas Jackson', 'Civil Engineering', 7, '0987654321', 'default'),
(121, 'Sophie Brown', 'Computer Science', 5, '9876543210', 'default'),
(122, 'Henry Johnson', 'Electrical Engineering', 7, '8765432109', 'default'),
(123, 'Chloe Davis', 'Mechanical Engineering', 6, '7654321098', 'default'),
(124, 'William Wilson', 'Civil Engineering', 8, '6543210987', 'default'),
(125, 'Victoria Miller', 'Information Technology', 4, '5432109876', 'default'),
(126, 'Gabriel Martinez', 'Computer Science', 6, '4321098765', 'default'),
(127, 'Zoe Anderson', 'Electrical Engineering', 5, '3210987654', 'default'),
(128, 'Nathan Thompson', 'Civil Engineering', 7, '2109876543', 'default'),
(129, 'Madison Harris', 'Mechanical Engineering', 3, '1098765432', 'default'),
(130, 'Alexander Martin', 'Information Technology', 8, '0987654321', 'default'),
(131, 'Rahul Kumar', 'Computer Science', 5, '9876543210', 'default'),
(132, 'Priya Singh', 'Electrical Engineering', 7, '8765432109', 'default'),
(133, 'Vikram Patel', 'Mechanical Engineering', 6, '7654321098', 'default'),
(134, 'Neha Sharma', 'Civil Engineering', 8, '6543210987', 'default'),
(135, 'Ajay Verma', 'Information Technology', 4, '5432109876', 'default'),
(136, 'Anjali Gupta', 'Computer Science', 6, '4321091566', 'default'),
(137, 'Rajesh Shah', 'Electrical Engineering', 5, '3210982677', 'default'),
(138, 'Riya Malhotra', 'Civil Engineering', 7, '2109873788', 'default'),
(139, 'Aman Khan', 'Mechanical Engineering', 3, '1098764899', 'default'),
(141, 'Rohan Kumar', 'Computer Science', 5, '9876543011', 'default'),
(142, 'Priya Singh', 'Electrical Engineering', 7, '8765430122', 'default'),
(143, 'Vikram Patel', 'Mechanical Engineering', 6, '7654320233', 'default'),
(144, 'Neha Sharma', 'Civil Engineering', 8, '6543210344', 'default'),
(145, 'Ajay Verma', 'Information Technology', 4, '5432100455', 'default'),
(146, 'Anjali Gupta', 'Computer Science', 6, '4321091566', 'default'),
(147, 'Rajesh Shah', 'Electrical Engineering', 5, '3210982677', 'default'),
(148, 'Riya Malhotra', 'Civil Engineering', 7, '2109873788', 'default'),
(149, 'Aman Khan', 'Mechanical Engineering', 3, '1098764899', 'default'),
(150, 'Nisha Reddy', 'Information Technology', 8, '0987655900', 'default'),
(151, 'Aarav Gupta', 'Computer Science', 5, '9876546789', 'default'),
(152, 'Ishaan Sharma', 'Electrical Engineering', 7, '8765435678', 'default'),
(153, 'Ananya Patel', 'Mechanical Engineering', 6, '7654324567', 'default'),
(154, 'Kabir Singh', 'Civil Engineering', 8, '6543213456', 'default'),
(155, 'Dia Malhotra', 'Information Technology', 4, '5432102345', 'default'),
(156, 'Vivaan Verma', 'Computer Science', 6, '4321091234', 'default'),
(157, 'Aisha Reddy', 'Electrical Engineering', 5, '3210980123', 'default'),
(158, 'Shaurya Khan', 'Civil Engineering', 7, '2109879012', 'default'),
(159, 'Myra Kumar', 'Mechanical Engineering', 3, '1098767890', 'default'),
(160, 'Arjun Singh', 'Information Technology', 8, '0987656789', 'default'),
(161, 'Neha Gupta', 'Computer Science', 5, '9876545678', 'default'),
(162, 'Rahul Singh', 'Electrical Engineering', 7, '8765434567', 'default'),
(163, 'Shreya Sharma', 'Mechanical Engineering', 6, '7654323456', 'default'),
(164, 'Vivek Patel', 'Civil Engineering', 8, '6543212345', 'default'),
(165, 'Ishita Malhotra', 'Information Technology', 4, '5432101234', 'default'),
(166, 'Kunal Verma', 'Computer Science', 6, '4321099876', 'default'),
(167, 'Anika Reddy', 'Electrical Engineering', 5, '3210988765', 'default'),
(168, 'Aarav Khan', 'Civil Engineering', 7, '2109877654', 'default'),
(169, 'Riya Kumar', 'Mechanical Engineering', 3, '1098766543', 'default'),
(170, 'Aryan Singh', 'Information Technology', 8, '0987655432', 'default'),
(171, 'Riya Gupta', 'Computer Science', 5, '9876547890', 'default'),
(172, 'Rajat Singh', 'Electrical Engineering', 7, '8765436789', 'default'),
(173, 'Sakshi Sharma', 'Mechanical Engineering', 6, '7654325678', 'default'),
(174, 'Aryan Patel', 'Civil Engineering', 8, '6543214567', 'default'),
(175, 'Tanvi Malhotra', 'Information Technology', 4, '5432103456', 'default'),
(176, 'Aarav Verma', 'Computer Science', 6, '4321092345', 'default'),
(177, 'Ananya Reddy', 'Electrical Engineering', 5, '3210981234', 'default'),
(178, 'Yash Khan', 'Civil Engineering', 7, '2109870123', 'default'),
(179, 'Arnav Kumar', 'Mechanical Engineering', 3, '1098769012', 'default'),
(180, 'Riya Singh', 'Information Technology', 8, '0987658901', 'default'),
(181, 'Aarav Gupta', 'Computer Science', 5, '9876548901', 'default'),
(182, 'Ananya Singh', 'Electrical Engineering', 7, '8765437890', 'default'),
(183, 'Raj Singh', 'Mechanical Engineering', 6, '7654326789', 'default'),
(184, 'Kavya Patel', 'Civil Engineering', 8, '6543215678', 'default'),
(185, 'Arnav Malhotra', 'Information Technology', 4, '5432104567', 'default'),
(186, 'Ishaan Verma', 'Computer Science', 6, '4321093456', 'default'),
(187, 'Ria Reddy', 'Electrical Engineering', 5, '3210982345', 'default'),
(188, 'Anjali Khan', 'Civil Engineering', 7, '2109871234', 'default'),
(189, 'Shaurya Kumar', 'Mechanical Engineering', 3, '1098760123', 'default'),
(190, 'Sanvi Singh', 'Information Technology', 8, '0987659012', 'default'),
(191, 'Rohan Gupta', 'Computer Science', 5, '9876549012', 'default'),
(192, 'Anushka Singh', 'Electrical Engineering', 7, '8765438901', 'default'),
(193, 'Aryan Sharma', 'Mechanical Engineering', 6, '7654327890', 'default'),
(194, 'Kritika Patel', 'Civil Engineering', 8, '6543216789', 'default'),
(195, 'Riya Malhotra', 'Information Technology', 4, '5432105678', 'default'),
(196, 'Aarav Verma', 'Computer Science', 6, '4321094567', 'default'),
(197, 'Ananya Reddy', 'Electrical Engineering', 5, '3210983456', 'default'),
(198, 'Kabir Khan', 'Civil Engineering', 7, '2109872345', 'default'),
(199, 'Ishaan Kumar', 'Mechanical Engineering', 3, '1098761234', 'default'),
(200, 'Vidhi Singh', 'Information Technology', 8, '0987658901', 'default'),
(201, 'Siddharth Sharma', 'Computer Science', 5, '9876543011', 'default'),
(202, 'Ananya Singh', 'Electrical Engineering', 7, '8765430122', 'default'),
(203, 'Rajesh Kumar', 'Mechanical Engineering', 6, '7654320233', 'default'),
(204, 'Shreya Patel', 'Civil Engineering', 8, '6543210344', 'default'),
(205, 'Neha Malhotra', 'Information Technology', 4, '5432100455', 'default'),
(206, 'Arjun Gupta', 'Computer Science', 6, '4321091566', 'default'),
(207, 'Amit Shah', 'Electrical Engineering', 5, '3210982677', 'default'),
(208, 'Riya Verma', 'Civil Engineering', 7, '2109873788', 'default'),
(209, 'Aryan Khan', 'Mechanical Engineering', 3, '1098764899', 'default'),
(210, 'Rahul Reddy', 'Information Technology', 8, '0987655900', 'default'),
(211, 'Anjali Sharma', 'Computer Science', 5, '9876546789', 'default'),
(212, 'Aarav Singh', 'Electrical Engineering', 7, '8765435678', 'default'),
(213, 'Kritika Patel', 'Mechanical Engineering', 6, '7654324567', 'default'),
(214, 'Vivek Malhotra', 'Civil Engineering', 8, '6543213456', 'default'),
(215, 'Anushka Gupta', 'Information Technology', 4, '5432102345', 'default'),
(216, 'Shivani Verma', 'Computer Science', 6, '4321091234', 'default'),
(217, 'Rajat Shah', 'Electrical Engineering', 5, '3210981234', 'default'),
(218, 'Aisha Khan', 'Civil Engineering', 7, '2109879012', 'default'),
(219, 'Arnav Kumar', 'Mechanical Engineering', 3, '1098767890', 'default'),
(220, 'Shruti Singh', 'Information Technology', 8, '0987656789', 'default'),
(221, 'Vikas Sharma', 'Computer Science', 5, '9876547890', 'default'),
(222, 'Pooja Singh', 'Electrical Engineering', 7, '8765436789', 'default'),
(223, 'Kunal Patel', 'Mechanical Engineering', 6, '7654325678', 'default'),
(224, 'Tanvi Malhotra', 'Civil Engineering', 8, '6543214567', 'default'),
(225, 'Rohan Gupta', 'Information Technology', 4, '5432103456', 'default'),
(226, 'Anjali Verma', 'Computer Science', 6, '4321092345', 'default'),
(227, 'Rahul Shah', 'Electrical Engineering', 5, '3210980123', 'default'),
(228, 'Ishaan Khan', 'Civil Engineering', 7, '2109878901', 'default'),
(229, 'Aaradhya Kumar', 'Mechanical Engineering', 3, '1098767654', 'default'),
(230, 'Ananya Singh', 'Information Technology', 8, '0987656543', 'default'),
(231, 'Sachin Sharma', 'Computer Science', 5, '9876546780', 'default'),
(232, 'Vidhi Singh', 'Electrical Engineering', 7, '8765435678', 'default'),
(233, 'Karan Patel', 'Mechanical Engineering', 6, '7654324567', 'default'),
(234, 'Jiya Malhotra', 'Civil Engineering', 8, '6543213456', 'default'),
(235, 'Rohit Gupta', 'Information Technology', 4, '5432102345', 'default'),
(236, 'Anushka Verma', 'Computer Science', 6, '4321091234', 'default'),
(237, 'Aryan Shah', 'Electrical Engineering', 5, '3210980123', 'default'),
(238, 'Nisha Khan', 'Civil Engineering', 7, '2109879012', 'default'),
(239, 'Aarav Kumar', 'Mechanical Engineering', 3, '1098767890', 'default'),
(240, 'Riya Singh', 'Information Technology', 8, '0987656789', 'default'),
(241, 'Aarav Sharma', 'Computer Science', 5, '9876547890', 'default'),
(242, 'Ananya Singh', 'Electrical Engineering', 7, '8765436789', 'default'),
(243, 'Rajat Patel', 'Mechanical Engineering', 6, '7654325678', 'default'),
(244, 'Kritika Malhotra', 'Civil Engineering', 8, '6543214567', 'default'),
(245, 'Vivek Gupta', 'Information Technology', 4, '5432103456', 'default'),
(246, 'Anjali Verma', 'Computer Science', 6, '4321092345', 'default'),
(247, 'Rahul Shah', 'Electrical Engineering', 5, '3210981234', 'default'),
(248, 'Ishaan Khan', 'Civil Engineering', 7, '2109878901', 'default'),
(249, 'Aaradhya Kumar', 'Mechanical Engineering', 3, '1098767654', 'default'),
(250, 'Ananya Singh', 'Information Technology', 8, '0987656543', 'default'),
(251, 'Sachin Sharma', 'Computer Science', 5, '9876546780', 'default'),
(252, 'Vidhi Singh', 'Electrical Engineering', 7, '8765435678', 'default'),
(253, 'Karan Patel', 'Mechanical Engineering', 6, '7654324567', 'default'),
(254, 'Jiya Malhotra', 'Civil Engineering', 8, '6543213456', 'default'),
(255, 'Rohit Gupta', 'Information Technology', 4, '5432102345', 'default'),
(256, 'Anushka Verma', 'Computer Science', 6, '4321091234', 'default'),
(257, 'Aryan Shah', 'Electrical Engineering', 5, '3210980123', 'default'),
(258, 'Nisha Khan', 'Civil Engineering', 7, '2109879012', 'default'),
(259, 'Aarav Kumar', 'Mechanical Engineering', 3, '1098767890', 'default'),
(260, 'Riya Singh', 'Information Technology', 8, '0987656789', 'default'),
(261, 'Aarav Sharma', 'Computer Science', 5, '9876547890', 'default'),
(262, 'Ananya Singh', 'Electrical Engineering', 7, '8765436789', 'default'),
(263, 'Rajat Patel', 'Mechanical Engineering', 6, '7654325678', 'default'),
(264, 'Kritika Malhotra', 'Civil Engineering', 8, '6543214567', 'default'),
(265, 'Vivek Gupta', 'Information Technology', 4, '5432103456', 'default'),
(266, 'Anjali Verma', 'Computer Science', 6, '4321092345', 'default'),
(267, 'Rahul Shah', 'Electrical Engineering', 5, '3210981234', 'default'),
(268, 'Ishaan Khan', 'Civil Engineering', 7, '2109878901', 'default'),
(269, 'Aaradhya Kumar', 'Mechanical Engineering', 3, '1098767654', 'default'),
(270, 'Ananya Singh', 'Information Technology', 8, '0987656543', 'default'),
(271, 'Sachin Sharma', 'Computer Science', 5, '9876546780', 'default'),
(272, 'Vidhi Singh', 'Electrical Engineering', 7, '8765435678', 'default'),
(273, 'Karan Patel', 'Mechanical Engineering', 6, '7654324567', 'default'),
(274, 'Jiya Malhotra', 'Civil Engineering', 8, '6543213456', 'default'),
(275, 'Rohit Gupta', 'Information Technology', 4, '5432102345', 'default'),
(276, 'Anushka Verma', 'Computer Science', 6, '4321091234', 'default'),
(277, 'Aryan Shah', 'Electrical Engineering', 5, '3210980123', 'default'),
(278, 'Nisha Khan', 'Civil Engineering', 7, '2109879012', 'default'),
(279, 'Aarav Kumar', 'Mechanical Engineering', 3, '1098767890', 'default'),
(280, 'Riya Singh', 'Information Technology', 8, '0987656789', 'default'),
(281, 'Aarav Sharma', 'Computer Science', 5, '9876547890', 'default'),
(282, 'Ananya Singh', 'Electrical Engineering', 7, '8765436789', 'default'),
(283, 'Rajat Patel', 'Mechanical Engineering', 6, '7654325678', 'default'),
(284, 'Kritika Malhotra', 'Civil Engineering', 8, '6543214567', 'default'),
(285, 'Vivek Gupta', 'Information Technology', 4, '5432103456', 'default'),
(286, 'Anjali Verma', 'Computer Science', 6, '4321092345', 'default'),
(287, 'Rahul Shah', 'Electrical Engineering', 5, '3210981234', 'default'),
(288, 'Ishaan Khan', 'Civil Engineering', 7, '2109878901', 'default'),
(289, 'Aaradhya Kumar', 'Mechanical Engineering', 3, '1098767654', 'default'),
(290, 'Ananya Singh', 'Information Technology', 8, '0987656543', 'default'),
(291, 'Sachin Sharma', 'Computer Science', 5, '9876546780', 'default'),
(292, 'Vidhi Singh', 'Electrical Engineering', 7, '8765435678', 'default'),
(293, 'Karan Patel', 'Mechanical Engineering', 6, '7654324567', 'default'),
(294, 'Jiya Malhotra', 'Civil Engineering', 8, '6543213456', 'default'),
(295, 'Rohit Gupta', 'Information Technology', 4, '5432102345', 'default'),
(296, 'Anushka Verma', 'Computer Science', 6, '4321091234', 'default'),
(297, 'Aryan Shah', 'Electrical Engineering', 5, '3210980123', 'default'),
(298, 'Nisha Khan', 'Civil Engineering', 7, '2109879012', 'default'),
(299, 'Aarav Kumar', 'Mechanical Engineering', 3, '1098767890', 'default'),
(300, 'Riya Singh', 'Information Technology', 8, '0987656789', 'default'),
(301, 'Aarav Sharma', 'Computer Science', 5, '9876547890', 'default'),
(302, 'Ananya Singh', 'Electrical Engineering', 7, '8765436789', 'default'),
(303, 'Rajat Patel', 'Mechanical Engineering', 6, '7654325678', 'default'),
(304, 'Kritika Malhotra', 'Civil Engineering', 8, '6543214567', 'default'),
(305, 'Vivek Gupta', 'Information Technology', 4, '5432103456', 'default'),
(306, 'Anjali Verma', 'Computer Science', 6, '4321092345', 'default'),
(307, 'Rahul Shah', 'Electrical Engineering', 5, '3210981234', 'default'),
(308, 'Ishaan Khan', 'Civil Engineering', 7, '2109878901', 'default'),
(309, 'Aaradhya Kumar', 'Mechanical Engineering', 3, '1098767654', 'default'),
(310, 'Ananya Singh', 'Information Technology', 8, '0987656543', 'default'),
(311, 'Sachin Sharma', 'Computer Science', 5, '9876546780', 'default'),
(312, 'Vidhi Singh', 'Electrical Engineering', 7, '8765435678', 'default'),
(313, 'Karan Patel', 'Mechanical Engineering', 6, '7654324567', 'default'),
(314, 'Jiya Malhotra', 'Civil Engineering', 8, '6543213456', 'default'),
(315, 'Rohit Gupta', 'Information Technology', 4, '5432102345', 'default'),
(316, 'Anushka Verma', 'Computer Science', 6, '4321091234', 'default'),
(317, 'Aryan Shah', 'Electrical Engineering', 5, '3210980123', 'default'),
(318, 'Nisha Khan', 'Civil Engineering', 7, '2109879012', 'default'),
(319, 'Aarav Kumar', 'Mechanical Engineering', 3, '1098767890', 'default'),
(320, 'Riya Singh', 'Information Technology', 8, '0987656789', 'default'),
(321, 'Aarav Sharma', 'Computer Science', 5, '9876547890', 'default'),
(322, 'Ananya Singh', 'Electrical Engineering', 7, '8765436789', 'default'),
(323, 'Rajat Patel', 'Mechanical Engineering', 6, '7654325678', 'default'),
(324, 'Kritika Malhotra', 'Civil Engineering', 8, '6543214567', 'default'),
(325, 'Vivek Gupta', 'Information Technology', 4, '5432103456', 'default'),
(326, 'Anjali Verma', 'Computer Science', 6, '4321092345', 'default'),
(327, 'Rahul Shah', 'Electrical Engineering', 5, '3210981234', 'default'),
(328, 'Ishaan Khan', 'Civil Engineering', 7, '2109878901', 'default'),
(329, 'Aaradhya Kumar', 'Mechanical Engineering', 3, '1098767654', 'default'),
(330, 'Ananya Singh', 'Information Technology', 8, '0987656543', 'default'),
(331, 'Sachin Sharma', 'Computer Science', 5, '9876546780', 'default'),
(332, 'Vidhi Singh', 'Electrical Engineering', 7, '8765435678', 'default'),
(333, 'Karan Patel', 'Mechanical Engineering', 6, '7654324567', 'default'),
(334, 'Jiya Malhotra', 'Civil Engineering', 8, '6543213456', 'default'),
(335, 'Rohit Gupta', 'Information Technology', 4, '5432102345', 'default'),
(336, 'Anushka Verma', 'Computer Science', 6, '4321091234', 'default'),
(337, 'Aryan Shah', 'Electrical Engineering', 5, '3210980123', 'default'),
(338, 'Nisha Khan', 'Civil Engineering', 7, '2109879012', 'default'),
(339, 'Aarav Kumar', 'Mechanical Engineering', 3, '1098767890', 'default'),
(340, 'Riya Singh', 'Information Technology', 8, '0987656789', 'default'),
(341, 'Aarav Sharma', 'Computer Science', 5, '9876547890', 'default'),
(342, 'Ananya Singh', 'Electrical Engineering', 7, '8765436789', 'default'),
(343, 'Rajat Patel', 'Mechanical Engineering', 6, '7654325678', 'default'),
(344, 'Kritika Malhotra', 'Civil Engineering', 8, '6543214567', 'default'),
(345, 'Vivek Gupta', 'Information Technology', 4, '5432103456', 'default'),
(346, 'Anjali Verma', 'Computer Science', 6, '4321092345', 'default'),
(347, 'Rahul Shah', 'Electrical Engineering', 5, '3210981234', 'default'),
(348, 'Ishaan Khan', 'Civil Engineering', 7, '2109878901', 'default'),
(349, 'Aaradhya Kumar', 'Mechanical Engineering', 3, '1098767654', 'default'),
(350, 'Ananya Singh', 'Information Technology', 8, '0987656543', 'default'),
(351, 'Sachin Sharma', 'Computer Science', 5, '9876546780', 'default'),
(352, 'Vidhi Singh', 'Electrical Engineering', 7, '8765435678', 'default'),
(353, 'Karan Patel', 'Mechanical Engineering', 6, '7654324567', 'default'),
(354, 'Jiya Malhotra', 'Civil Engineering', 8, '6543213456', 'default'),
(355, 'Rohit Gupta', 'Information Technology', 4, '5432102345', 'default'),
(356, 'Anushka Verma', 'Computer Science', 6, '4321091234', 'default'),
(357, 'Aryan Shah', 'Electrical Engineering', 5, '3210980123', 'default'),
(358, 'Nisha Khan', 'Civil Engineering', 7, '2109879012', 'default'),
(359, 'Aarav Kumar', 'Mechanical Engineering', 3, '1098767890', 'default'),
(360, 'Riya Singh', 'Information Technology', 8, '0987656789', 'default'),
(361, 'Aarav Sharma', 'Computer Science', 5, '9876547890', 'default'),
(362, 'Ananya Singh', 'Electrical Engineering', 7, '8765436789', 'default'),
(363, 'Rajat Patel', 'Mechanical Engineering', 6, '7654325678', 'default'),
(364, 'Kritika Malhotra', 'Civil Engineering', 8, '6543214567', 'default'),
(365, 'Vivek Gupta', 'Information Technology', 4, '5432103456', 'default'),
(366, 'Anjali Verma', 'Computer Science', 6, '4321092345', 'default'),
(367, 'Rahul Shah', 'Electrical Engineering', 5, '3210981234', 'default'),
(368, 'Ishaan Khan', 'Civil Engineering', 7, '2109878901', 'default'),
(369, 'Aaradhya Kumar', 'Mechanical Engineering', 3, '1098767654', 'default'),
(370, 'Ananya Singh', 'Information Technology', 8, '0987656543', 'default'),
(371, 'Sachin Sharma', 'Computer Science', 5, '9876546780', 'default'),
(372, 'Vidhi Singh', 'Electrical Engineering', 7, '8765435678', 'default'),
(373, 'Karan Patel', 'Mechanical Engineering', 6, '7654324567', 'default'),
(374, 'Jiya Malhotra', 'Civil Engineering', 8, '6543213456', 'default'),
(375, 'Rohit Gupta', 'Information Technology', 4, '5432102345', 'default'),
(376, 'Anushka Verma', 'Computer Science', 6, '4321091234', 'default'),
(377, 'Aryan Shah', 'Electrical Engineering', 5, '3210980123', 'default'),
(378, 'Nisha Khan', 'Civil Engineering', 7, '2109879012', 'default'),
(379, 'Aarav Kumar', 'Mechanical Engineering', 3, '1098767890', 'default'),
(380, 'Riya Singh', 'Information Technology', 8, '0987656789', 'default');




CREATE TABLE `registered` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `RegNo` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`rid`),
  FOREIGN KEY (`RegNo`) REFERENCES `participant` (`RegNo`) ON DELETE CASCADE,
  FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON DELETE CASCADE
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
  FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON DELETE CASCADE
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
  FOREIGN KEY (`sid`) REFERENCES `participant` (`RegNo`) ON DELETE CASCADE,
  FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON DELETE CASCADE
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
