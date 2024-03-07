-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2024 at 12:48 AM
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
('1', 'Scheduled Delivery ', '2024-03-08', 1),
('3', 'Contacted Customer to schedule | LVM', '2024-03-08', 2),
('3', 'Scheduled to 2/14/15', '2024-03-08', 3),
('3', 'Unschedule | Customer request ', '2024-03-08', 4),
('8', 'Unschedule | Inbound delay', '2024-03-08', 5),
('8', 'Unschedule | Inbound delay', '2024-03-08', 6);

-- --------------------------------------------------------

--
-- Table structure for table `hub`
--

CREATE TABLE `hub` (
  `Location Type` varchar(255) NOT NULL,
  `Facility` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Phone_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hub`
--

INSERT INTO `hub` (`Location Type`, `Facility`, `Address`, `Phone_number`) VALUES
('warehouse', 'RXO LASTMILE HUB PITTSBURG', '410  CROWN COURT , OAKDALE, PA, 15071, US', '412 347 8989');

-- --------------------------------------------------------

--
-- Table structure for table `prod`
--

CREATE TABLE `prod` (
  `WO_number` varchar(255) DEFAULT NULL,
  `Vendor` varchar(255) DEFAULT NULL,
  `Product` varchar(255) DEFAULT NULL,
  `Prod_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prod`
--

INSERT INTO `prod` (`WO_number`, `Vendor`, `Product`, `Prod_ID`) VALUES
('1', 'LG', 'LG Fridge (GM-X441SLUV)', 1),
('2', 'LG', 'LG Fridge (GM-X441SLUV)', 2),
('3', 'LG', 'LG Fridge (GM-X441SLUV)', 3),
('4', 'LG', 'LG Fridge (GM-X441SLUV)', 4),
('5', 'Amazon', 'Sofa (Futon Sofa)', 5),
('6', 'LG', 'LG Fridge (GM-X441SLUV)', 6),
('7', 'Samsung', 'Samsung TV (Q700A)', 7),
('8', 'Amazon', 'Sofa (Recliner Sofa)', 8),
('9', 'LG', 'LG Fridge (GM-X441SLUV)', 9),
('10', 'Amazon', 'Sofa (Chesterfield Sofa)', 10),
('11', 'LG', 'LG Fridge (GM-X441SLUV)', 11),
('12', 'Amazon', 'Sofa (Futon Sofa)', 12),
('13', 'Amazon', 'Sofa (Futon Sofa)', 13),
('14', 'Samsung', 'Samsung TV (QN85B)', 14),
('15', 'Amazon', 'Sofa (Recliner Sofa)', 15),
('16', 'Amazon', 'Sofa (Futon Sofa)', 16),
('17', 'Amazon', 'Sofa (Recliner Sofa)', 17);

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
  `Phone_number` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `work_order`
--

INSERT INTO `work_order` (`WO_number`, `Customer_name`, `address`, `Status`, `Time_Window`, `Schedule_Date`, `Receive_Date`, `Phone_number`) VALUES
(1, 'carol Banquer', '1420 COACHMAN CT, FREELAND, WA, 98249, US', 'Fully Received', '11:00 to 3:00pm', '2024-03-26', 'Tue 02/06/2024 07:05 PM EST', '(415) 453-5558'),
(2, 'BEN RIXSTINE', '1832 EKIN AVE APT 1, NEW ALBANY, IN, 47150, US', 'Fully Received', '8:00am to 11:00am', '2024-03-13', 'Fri 02/23/2024 06:54 AM EST', '(309) 423-9471'),
(3, 'Xing Zhao', '721 SIMPSON ST APT. 2, EVANSTON, IL, 60201, US', 'Fully Received', '3:00 to 7:00pm', '2024-03-07', 'Thu 02/22/2024 09:46 AM EST', '(631) 504-7269'),
(4, 'Gerald Jackson', '45 MAIN ST STE 530, BROOKLYN, NY, 11201, US', 'Fully Received', NULL, NULL, 'Fri 02/23/2024 08:05 AM EST', '(646) 629-4288'),
(5, 'Cheryl Beeler', '1196 ORTEGO DR, FAIRBORN, OH, 45324, US', 'Not Received', NULL, NULL, NULL, '(937) 475-4299'),
(6, 'GABRIELA GODINEZ HERNANDEZ', '1110 GRAHAM ROCK LN APT 307, DUNCAN, SC, 29334, US', 'Not Received', NULL, NULL, NULL, '(864) 790-0487'),
(7, 'Kyle Shreve', '164 CROSSGATE DR, BOILING SPRINGS, SC, 29316, US', 'Not Received', NULL, NULL, NULL, '(864) 205-5611'),
(8, 'Megan Guyan', '3616A FILLMORE ST, SAINT LOUIS, MO, 63116, US', 'Not Received', NULL, NULL, NULL, '(314) 698-8982'),
(9, 'John Robinson', '339 THOMPSON RD, GREENWICH, NY, 12834, US', 'Not Received', NULL, NULL, NULL, '(518) 603-4469'),
(10, 'Josie Lolli', '1704 GLENBROOK CT, COLUMBIA, MO, 65203, US', 'Not Received', NULL, NULL, NULL, '(573) 268-4952'),
(11, 'Erin Devine', '2629 ROLLINGSHIRE DR, BEDFORD, TX, 76021, US', 'Not Applicable', '11:00 to 3:00pm', '2024-03-11', 'Sat 02/24/2024 11:23 AM EST', '(202) 577-8140'),
(12, 'Charneal Wilson', '5438 FORT ST APT B, COLORADO SPRINGS, CO, 80902, US', 'Not Received', NULL, NULL, NULL, '(843) 442-9108'),
(13, 'Jerry Hatfield', '280 ROLAND BRANCH RD, BURNSVILLE, NC, 28714, US', 'Not Received', '3:00 to 7:00pm', '2024-03-22', NULL, '(828) 678-1639'),
(14, 'Ramses Garcia', '9839 N 18TH AVE, PHOENIX, AZ, 85021, US', 'Not Applicable', NULL, NULL, 'Sat 02/24/2024 11:04 AM EST', '(602) 737-4574'),
(15, 'Deborah Elliott', '733 SE 69TH ST, PLEASANT HILL, IA, 50327, US', 'Not Applicable', NULL, NULL, 'Sat 02/24/2024 11:04 AM EST', '(563) 349-7827'),
(16, 'Delmy M Garza Sandoval', '177 WARDWELL ST 1, STAMFORD, CT, 06902, US', 'Not Received', '', '', NULL, '(203) 918-2257'),
(17, 'Jorge barajas', '501 LITTLE ROCK DR, SANTAQUIN, UT, 84655, US', 'Not Received', NULL, NULL, NULL, '(385) 439-3943');

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
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `prod`
--
ALTER TABLE `prod`
  MODIFY `Prod_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `work_order`
--
ALTER TABLE `work_order`
  MODIFY `WO_number` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
