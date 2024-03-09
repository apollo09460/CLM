-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2024 at 03:48 AM
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
-- Database: `clm`
--

-- --------------------------------------------------------

--
-- Table structure for table `com_log`
--

CREATE TABLE `com_log` (
  `WO_number` varchar(255) DEFAULT NULL,
  `Logs` varchar(255) DEFAULT NULL,
  `Date` varchar(255) DEFAULT NULL,
  `log_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `com_log`
--

INSERT INTO `com_log` (`WO_number`, `Logs`, `Date`, `log_id`) VALUES
('1', 'Scheduled on 2024-03-11', '2024-03-09', 21),
('1', 'Scheduled on 2024-03-12', '2024-03-09', 22),
('1', 'Scheduled on 2024-03-13', '2024-03-09', 23),
('3', 'Scheduled on 2024-03-10', '2024-03-09', 24),
('1', 'Scheduled on 2024-03-27', '2024-03-09', 25),
('1', 'Unscheduled', '2024-03-09', 26),
('1', 'Unscheduled', '2024-03-09', 27),
('1', 'Scheduled on 2024-03-23', '2024-03-09', 28),
('1', 'Unscheduled', '2024-03-09', 29),
('3', 'Scheduled on 2024-03-10', '2024-03-09', 30),
('3', 'Unscheduled', '2024-03-09', 31),
('9', 'Scheduled on 2024-03-17', '2024-03-09', 32),
('9', 'Unscheduled', '2024-03-09', 33),
('8', 'Scheduled on 2024-03-12', '2024-03-09', 34),
('8', 'Unscheduled', '2024-03-09', 35),
('11', 'Unscheduled', '2024-03-09', 36),
('12', 'Unscheduled', '2024-03-09', 37),
('7', 'Unscheduled', '2024-03-09', 38),
('5', 'Scheduled on 2024-03-19', '2024-03-09', 39),
('5', 'Unscheduled', '2024-03-09', 40),
('13', 'Unscheduled', '2024-03-09', 41),
('1', 'CCI | status update ', '2024-03-09', 42),
('10', 'Scheduled on 2024-03-10', '2024-03-09', 43),
('10', 'Unscheduled', '2024-03-09', 44),
('1', 'Scheduled on 2024-03-21', '2024-03-09', 45),
('1', 'Unscheduled', '2024-03-09', 46),
('1', 'Scheduled on 2024-03-12', '2024-03-09', 47),
('1', 'Unscheduled', '2024-03-09', 48),
('1', 'Unscheduled', '2024-03-09', 49),
('13', 'Scheduled on 2024-03-11', '2024-03-09', 50),
('13', 'Unscheduled', '2024-03-09', 51),
('2', 'Scheduled on 2024-03-12', '2024-03-09', 52),
('2', 'Unscheduled', '2024-03-09', 53),
('2', 'Scheduled on 2024-03-09', '2024-03-09', 54);

-- --------------------------------------------------------

--
-- Table structure for table `prod`
--

CREATE TABLE `prod` (
  `WO_number` varchar(255) DEFAULT NULL,
  `Vendor` varchar(255) DEFAULT NULL,
  `Product` varchar(255) DEFAULT NULL,
  `Prod_ID` int(11) NOT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `date_receive` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prod`
--

INSERT INTO `prod` (`WO_number`, `Vendor`, `Product`, `Prod_ID`, `Status`, `date_receive`) VALUES
('1', 'LG', 'Sofa (Chesterfield Sofa)', 1, ' RECEIVE', '3/9/2024'),
('2', 'LG', 'LG Fridge (GM-X441SLUV)', 2, ' RECEIVE', '3/9/2024'),
('3', 'LG', 'Sofa (Recliner Sofa)', 3, 'NOT RECEIVE', ''),
('4', 'LG', 'Sofa (Chesterfield Sofa)', 4, 'NOT RECEIVE', ''),
('5', 'Amazon', 'Sofa (Futon Sofa)', 5, 'NOT RECEIVE', ''),
('6', 'LG', 'LG Fridge (GM-X441SLUV)', 6, ' RECEIVE', '3/29/24'),
('7', 'Samsung', 'Samsung TV (Q700A)', 7, 'NOT RECEIVE', ''),
('8', 'Amazon', 'Sofa (Recliner Sofa)', 8, ' RECEIVE', '3/9/2024'),
('9', 'LG', 'LG Fridge (GR-B222ELDS)', 9, 'RECEIVED', '3/9/2024'),
('10', 'Amazon', 'Sofa (Chesterfield Sofa)', 10, 'RECEIVED', ''),
('11', 'LG', 'Sofa (Futon Sofa)', 11, 'NOT RECEIVE', ''),
('12', 'Amazon', 'Sofa (Futon Sofa)', 12, 'NOT RECEIVE', ''),
('13', 'Amazon', 'Sofa (Futon Sofa)', 13, 'NOT RECEIVE', ''),
('14', 'Samsung', 'Samsung TV (QN85B)', 14, 'NOT RECEIVE', ''),
('15', 'Amazon', 'Sofa (Recliner Sofa)', 15, 'NOT RECEIVE', ''),
('16', 'Amazon', 'Sofa (Futon Sofa)', 16, 'NOT RECEIVE', ''),
('17', 'Amazon', 'Sofa (Recliner Sofa)', 17, 'NOT RECEIVE', '');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `Location Type` varchar(255) NOT NULL,
  `Facility` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Phone_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`Location Type`, `Facility`, `Address`, `Phone_number`) VALUES
('warehouse', 'RXO LASTMILE HUB PITTSBURG', '410  CROWN COURT , OAKDALE, PA, 15071, US', '412 347 8989');

-- --------------------------------------------------------

--
-- Table structure for table `work_order`
--

CREATE TABLE `work_order` (
  `WO_number` int(22) NOT NULL,
  `Customer_name` varchar(26) DEFAULT NULL,
  `address` varchar(51) DEFAULT NULL,
  `Status` varchar(14) DEFAULT NULL,
  `Time_Window` varchar(255) DEFAULT NULL,
  `Schedule_Date` varchar(255) DEFAULT NULL,
  `Receive_Date` varchar(27) DEFAULT NULL,
  `Phone_number` varchar(14) DEFAULT NULL,
  `WO_status` varchar(255) NOT NULL,
  `Operational_Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `work_order`
--

INSERT INTO `work_order` (`WO_number`, `Customer_name`, `address`, `Status`, `Time_Window`, `Schedule_Date`, `Receive_Date`, `Phone_number`, `WO_status`, `Operational_Status`) VALUES
(1, 'carol Banquer', '1420 COACHMAN CT, FREELAND, WA, 98249, US', ' RECEIVE', NULL, NULL, '3/9/2024', '(415) 453-5558', 'Closed', 'Not Started'),
(2, 'BEN RIXSTINE', '1832 EKIN AVE APT 1, NEW ALBANY, IN, 47150, US', ' RECEIVE', '8:00am to 11:00am', '2024-03-09', '3/9/2024', '(309) 423-9471', 'Open', 'Out for delivery'),
(3, 'Xing Zhao', '721 SIMPSON ST APT. 2, EVANSTON, IL, 60201, US', 'NOT RECEIVE', NULL, NULL, '', '(631) 504-7269', 'Open', 'Not Started'),
(4, 'Gerald Jackson', '45 MAIN ST STE 530, BROOKLYN, NY, 11201, US', 'NOT RECEIVE', NULL, NULL, '', '(646) 629-4288', 'Open', 'Not Started'),
(5, 'Cheryl Beeler', '1196 ORTEGO DR, FAIRBORN, OH, 45324, US', 'NOT RECEIVE', NULL, NULL, '', '(937) 475-4299', 'Open', 'Not Started'),
(6, 'GABRIELA GODINEZ HERNANDEZ', '1110 GRAHAM ROCK LN APT 307, DUNCAN, SC, 29334, US', ' RECEIVE', NULL, NULL, '3/29/24', '(864) 790-0487', 'Open', 'Not Started'),
(7, 'Kyle Shreve', '164 CROSSGATE DR, BOILING SPRINGS, SC, 29316, US', 'NOT RECEIVE', NULL, NULL, '', '(864) 205-5611', 'Open', 'Not Started'),
(8, 'Megan Guyan', '3616A FILLMORE ST, SAINT LOUIS, MO, 63116, US', ' RECEIVE', NULL, NULL, '3/9/2024', '(314) 698-8982', 'Open', 'Not Started'),
(9, 'John Robinson', '339 THOMPSON RD, GREENWICH, NY, 12834, US', 'RECEIVED', NULL, NULL, '3/9/2024', '(518) 603-4469', 'Open', 'Not Started'),
(10, 'Josie Lolli', '1704 GLENBROOK CT, COLUMBIA, MO, 65203, US', 'RECEIVED', NULL, NULL, '', '(573) 268-4952', 'Open', 'Not Started'),
(11, 'Erin Devine', '2629 ROLLINGSHIRE DR, BEDFORD, TX, 76021, US', 'NOT RECEIVE', NULL, NULL, '', '(202) 577-8140', 'Open', 'Not Started'),
(12, 'Charneal Wilson', '5438 FORT ST APT B, COLORADO SPRINGS, CO, 80902, US', 'NOT RECEIVE', NULL, NULL, '', '(843) 442-9108', 'Open', 'Not Started'),
(13, 'Jerry Hatfield', '280 ROLAND BRANCH RD, BURNSVILLE, NC, 28714, US', 'NOT RECEIVE', NULL, NULL, '', '(828) 678-1639', 'Open', 'Not Started'),
(14, 'Ramses Garcia', '9839 N 18TH AVE, PHOENIX, AZ, 85021, US', 'NOT RECEIVE', NULL, NULL, '', '(602) 737-4574', 'Open', 'Not Started'),
(15, 'Deborah Elliott', '733 SE 69TH ST, PLEASANT HILL, IA, 50327, US', 'NOT RECEIVE', NULL, NULL, '', '(563) 349-7827', 'Open', 'Not Started'),
(16, 'Delmy M Garza Sandoval', '177 WARDWELL ST 1, STAMFORD, CT, 06902, US', 'NOT RECEIVE', '', '', '', '(203) 918-2257', 'Open', 'Not Started'),
(17, 'Jorge barajas', '501 LITTLE ROCK DR, SANTAQUIN, UT, 84655, US', 'NOT RECEIVE', NULL, NULL, '', '(385) 439-3943', 'Open', 'Not Started');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `com_log`
--
ALTER TABLE `com_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `prod`
--
ALTER TABLE `prod`
  ADD PRIMARY KEY (`Prod_ID`);

--
-- Indexes for table `work_order`
--
ALTER TABLE `work_order`
  ADD PRIMARY KEY (`WO_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `com_log`
--
ALTER TABLE `com_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `prod`
--
ALTER TABLE `prod`
  MODIFY `Prod_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `work_order`
--
ALTER TABLE `work_order`
  MODIFY `WO_number` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
