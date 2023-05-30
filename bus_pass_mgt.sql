-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2023 at 03:18 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bus_pass_mgt`
--

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `BID` int(11) NOT NULL,
  `BusNumber` text DEFAULT NULL,
  `VisitingAreas` text DEFAULT NULL,
  `DriverName` varchar(100) DEFAULT 'Driver',
  `DriverMobile` varchar(10) DEFAULT '9999999999'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`BID`, `BusNumber`, `VisitingAreas`, `DriverName`, `DriverMobile`) VALUES
(1, 'UP99AB1234', 'Teliyarganj, Beli, BHS, Civil Lines, New Naini Bridge, UCER.', 'Driver', '9898989898'),
(3, 'UP70AA1111', 'Rajrooppur, Chakiya, Beniganj, Himmatganj, Khusrubagh, Railway Station, Johnstonganj, Bairhana, New Naini Bridge, UCER.', 'Pankaj', '9854444444'),
(4, 'UP70AB1111', 'IIIT Jhalwa, Kalendipuram, 60 Feet Road, BOB Kareli, Gol Park, New Naini Bridge, ADA, UCER  ', 'Anuj', '8888888888'),
(8, 'UP70MB1124', 'Katra, Teliyarganj, Balson, Civil Lines, New Naini Bridge, ADA, UCER.', 'AS', '8555555555'),
(9, 'UP70BB1113', 'Preetam Nagar, New Cant, High Court, Civil Lines, New Naini Bridge, ADA, UCER ', 'Ankit', '9666655555');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `message` text NOT NULL,
  `IsSolved` bit(1) NOT NULL,
  `timestamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `message`, `IsSolved`, `timestamp`) VALUES
(6, 'Manas Dubey', 'dmanas760@gmail.com', 'The seats in bus R1 are broken and needed to be fixed .', b'0', '2023-05-30 13:27:44'),
(7, 'Kriti Srivastava', 'ks@gmail.com', 'My address has changed and I want to change the allotted bus.\r\nMy new address is GTB Nagar, New Katra, Prayagraj.\r\nPlease do so.', b'0', '2023-05-30 13:31:13');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `LID` bigint(20) NOT NULL,
  `Longitude` varchar(20) DEFAULT '0.000000',
  `Latitude` varchar(20) DEFAULT '0.000000',
  `LastUpdateTime` datetime DEFAULT NULL,
  `BID` bigint(20) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`LID`, `Longitude`, `Latitude`, `LastUpdateTime`, `BID`) VALUES
(133, '26.8082313', '80.8926384', '2023-04-25 05:44:39', 2),
(283, '25.437836', '81.798561', '2023-04-30 01:06:50', 3),
(350, '25.437836', '81.798561', '2023-04-30 02:17:58', 4),
(527, '25.43397552257026', '81.79366374939157', '2023-05-11 00:33:53', 9),
(613, '25.438095', '81.798538', '2023-05-19 07:35:32', 8),
(733, '25.438329', '81.79902633333332', '2023-05-23 19:55:03', 11),
(747, '25.438135', '81.79861433333332', '2023-05-26 23:17:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `NID` bigint(20) NOT NULL,
  `Title` varchar(500) DEFAULT 'Notice Board Title',
  `Description` text DEFAULT NULL,
  `UpdateTime` datetime DEFAULT '2023-01-01 00:00:00',
  `Status` varchar(20) NOT NULL DEFAULT 'Unread'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`NID`, `Title`, `Description`, `UpdateTime`, `Status`) VALUES
(3, 'New Bus Timing', 'Following buses will run at a different time from now :\r\nA1: 7:50 AM\r\nB1: 7:35 AM\r\nR1: 7:45 AM', '2023-05-05 13:57:48', 'Read'),
(5, 'Bus Route Change', 'A1: Katra\r\nB1: Bamraulli\r\nC1: Allahpur', '2023-05-07 13:11:13', 'Read'),
(6, 'Self-Conveyance Notification', 'Tomorrow, no buses will run on the routes as per government order, so students and faculty are asked to use their own vehicles to travel.', '2023-05-19 19:57:59', 'Read'),
(7, 'Holiday Notification', 'Due to the elections, buses will not run.', '2023-05-21 21:33:10', 'Read'),
(24, 'Notice ', 'Notification Test\r\n', '2023-05-29 23:55:09', 'Read');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `SID` int(11) NOT NULL,
  `StudentName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Mobile` varchar(10) NOT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `BID` bigint(20) DEFAULT 1,
  `PWD` varchar(50) DEFAULT 'aa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`SID`, `StudentName`, `Email`, `Mobile`, `Address`, `BID`, `PWD`) VALUES
(1, 'Manas Dubey', 'stud@gmail.com', '9111111111', '200 A OPS Nagar, Rajrooppur, Prayagraj ', 1, 'bb'),
(3, 'Sarthak Sharma', 'sarthak753@gmail.com', '7860511600', '30 Feet Road, Rajrooppur, Prayagraj', 8, 'ab'),
(9, 'Aashi Srivastava', 'as@gmail.com', '8888888877', 'Beli Road, New Katra, Prayagraj', 3, '8888888877'),
(10, 'Kriti Srivastava', 'ks@gmail.com', '9888888888', 'B5 ,GTB Nagar, Kareli, Prayagraj', 4, '9888888888'),
(11, 'Vikas Mishra', 'vkmishra@gmail.com', '9999988666', 'Vasant Kunj, Neat IIiT Jhalwa Road, Kalendipuram', 1, '9999988666');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UID` int(11) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `PWD` varchar(25) NOT NULL,
  `Mobile` varchar(10) NOT NULL,
  `GUID` text DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `DOB` datetime DEFAULT NULL,
  `IsVerified` tinyint(1) NOT NULL,
  `Status` text DEFAULT NULL,
  `UserType` text DEFAULT NULL,
  `Services` text DEFAULT NULL,
  `ZipCode` text DEFAULT NULL,
  `BID` bigint(20) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UID`, `UserName`, `Email`, `PWD`, `Mobile`, `GUID`, `Address`, `DOB`, `IsVerified`, `Status`, `UserType`, `Services`, `ZipCode`, `BID`) VALUES
(1, 'Admin', 'admin@gmail.com', 'aa', '9988776677', NULL, NULL, NULL, 0, NULL, 'Admin', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20230331203037_mig1', '3.1.32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`BID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`LID`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`NID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`SID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UID`,`UserName`);

--
-- Indexes for table `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buses`
--
ALTER TABLE `buses`
  MODIFY `BID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `LID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=748;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `NID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
