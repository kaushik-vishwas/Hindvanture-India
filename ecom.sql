-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2024 at 11:27 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(97, 'Currency Counting Machine', 1),
(99, 'Fake Note Detector', 1),
(101, 'Lamination Machine', 1),
(102, 'Binding Machine', 1),
(103, 'Note Binding Machine', 1),
(105, 'Paper Cutter', 1),
(108, 'Paper Shredder Machine', 1),
(110, 'consumable', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(2, 'Kaushik', 'Kaushik@gmail.com', '8989787654', 'hi kaushik', '2023-11-28 07:40:53'),
(6, 'Kunal', 'kunal@gmail.com', '7607397066', 'hello', '2023-12-21 05:53:20'),
(7, 'Sobhit Matang', 'sobh@gmail.com', '8989898989', 'hi i am here', '2023-12-21 06:31:35'),
(8, 'Priya', 'priya@gmail.com', '6454545454', 'Hii i am user', '2023-12-21 12:24:37'),
(9, 'Kaushik', 'kaushikbiawas@gmail.com', '7607397066', 'Hello i am kaushik', '2023-12-22 12:09:45'),
(10, '', '', '', '', '2024-01-16 09:02:09');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_status` int(11) NOT NULL,
  `added_on` datetime NOT NULL,
  `transactionId` varchar(30) NOT NULL,
  `providerReferenceId` varchar(30) NOT NULL,
  `code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `address`, `city`, `pincode`, `payment_type`, `total_price`, `payment_status`, `order_status`, `added_on`, `transactionId`, `providerReferenceId`, `code`) VALUES
(52, 1, 'Uttamnagar', 'NEW DELHI', 110042, 'COD', 11121, 'pending', 0, '2023-12-25 07:34:27', '', '', ''),
(54, 1, 'Bokultala, Gutri, Gaighata', 'North    Parganas', 743249, 'COD', 2999, 'pending', 0, '2023-12-25 07:38:22', '', '', ''),
(55, 1, 'Kolkata, Bokultala', 'Kolkata', 743260, 'COD', 12599, 'pending', 0, '2023-12-26 12:37:22', '', '', ''),
(56, 1, 'Kolkata, Bokultala', 'Kolkata', 743260, 'COD', 5999, 'pending', 0, '2023-12-27 06:58:11', '', '', ''),
(57, 1, 'aaaaaabbbbccc', 'Kolkata', 743260, 'COD', 8999, '1', 1, '2023-12-27 07:04:02', '', '', ''),
(58, 1, 'JOP Plaza', 'Gautam Buddha Nagar', 201308, 'payu', 12599, '1', 1, '2023-12-27 07:10:19', '', '', ''),
(59, 1, 'Karnataka', 'Vellure', 121212, 'payu', 5999, '1', 1, '2023-12-27 07:12:50', '', '', ''),
(60, 1, 'Bharat', 'Kolkata', 743260, 'COD', 7999, '1', 1, '2023-12-27 07:14:13', '', '', ''),
(61, 1, 'Bharat', 'North    Parganas', 743249, 'COD', 0, '1', 1, '2023-12-27 07:14:24', '', '', ''),
(62, 1, 'Varanasi', 'Varanaransi', 743260, 'payu', 8999, '1', 1, '2023-12-27 07:16:21', '', '', ''),
(63, 1, 'Rajeev Chowk', 'Delhi', 656565, 'COD', 4999, '1', 1, '2023-12-27 07:18:57', '', '', ''),
(64, 1, 'Kanpur', 'UP', 233445, 'payu', 14998, '1', 1, '2023-12-27 08:28:59', '', '', ''),
(65, 6, 'England', 'India', 12345, 'COD', 8999, '1', 1, '2023-12-27 08:57:50', '', '', ''),
(66, 6, 'Kolkata, Bokultala', 'Kolkata', 743260, 'COD', 6999, '1', 1, '2023-12-27 09:00:39', '', '', ''),
(67, 6, 'Afgan', 'Afgan', 12345, 'payu', 5999, '1', 1, '2023-12-27 09:02:09', '', '', ''),
(68, 6, 'Kolkata, Bokultala', 'Kolkata', 743260, 'COD', 0, '1', 1, '2023-12-27 10:07:46', '', '', ''),
(69, 5, 'guwajait', 'NEW DELHI', 110042, 'payu', 5999, '1', 1, '2023-12-27 10:24:05', '', '', ''),
(70, 5, 'Kolkata, Bokultala', 'Kolkata', 743260, 'payu', 9999, '1', 1, '2023-12-27 10:27:43', '', '', ''),
(71, 5, 'Kolkata, Bokultala', 'Kolkata', 743260, 'COD', 8999, '1', 1, '2023-12-27 10:29:01', '', '', ''),
(72, 5, 'Kolkata, Bokultala', 'Kolkata', 743260, 'payu', 9999, '1', 1, '2023-12-27 10:34:45', '', '', ''),
(73, 5, 'Kolkata, Bokultala', 'Kolkata', 743260, 'payu', 0, '1', 1, '2023-12-27 10:36:44', '', '', ''),
(74, 5, 'Kolkata, Bokultala', 'Kolkata', 743260, 'payu', 5999, '1', 1, '2023-12-27 10:36:58', '', '', ''),
(75, 5, 'Kolkata, Bokultala', 'Kolkata', 743260, 'payu', 123, '1', 1, '2023-12-27 10:37:32', '', '', ''),
(76, 5, 'Kolkata, Bokultala', 'Kolkata', 743260, 'payu', 0, '1', 1, '2023-12-27 10:37:51', '', '', ''),
(77, 5, 'Shradha Nand Colony, Village- Bhalswa Dairy, Street No. 7 BLK- F, Plot No. 104/1 KH. No. 733 Ground Floor', 'NEW DELHI', 110042, 'payu', 5999, '1', 1, '2023-12-27 10:40:00', '', '', ''),
(78, 5, 'Shradha Nand Colony, Village- Bhalswa Dairy, Street No. 7 BLK- F, Plot No. 104/1 KH. No. 733 Ground Floor', 'NEW DELHI', 110042, 'payu', 0, '1', 1, '2023-12-27 10:41:40', '', '', ''),
(79, 5, 'Shradha Nand Colony, Village- Bhalswa Dairy, Street No. 7 BLK- F, Plot No. 104/1 KH. No. 733 Ground Floor', 'NEW DELHI', 110042, 'payu', 8999, '1', 1, '2023-12-27 10:42:10', '', '', ''),
(80, 5, 'Bokultala, Gutri, Gaighata', 'North    Parganas', 743249, 'payu', 5999, '1', 1, '2023-12-27 10:48:07', '', '', ''),
(81, 5, 'Kolkata, Bokultala', 'Kolkata', 743260, 'payu', 5999, '1', 1, '2023-12-27 10:50:12', '', '', ''),
(82, 5, 'Kolkata, Bokultala', 'Kolkata', 743260, 'payu', 9999, '1', 1, '2023-12-27 10:53:01', '', '', ''),
(83, 5, 'Kolkata, Bokultala', 'Kolkata', 743260, 'payu', 22997, '1', 1, '2023-12-27 10:55:07', '', '', ''),
(84, 1, 'Kolkata, Bokultala', 'Kolkata', 743260, 'payu', 5999, '1', 1, '2023-12-27 11:10:32', '', '', ''),
(85, 6, 'Sonu', 'Sonu', 222222, 'payu', 3290, '1', 2, '2023-12-29 06:48:38', '', '', ''),
(86, 6, 'JOP Plaza', 'Gautam Buddha Nagar', 201308, 'payu', 3290, '1', 2, '2023-12-29 06:53:25', '', '', ''),
(87, 7, 'Kolkata, Bokultala', 'Kolkata', 743260, 'payu', 21299, '1', 2, '2024-01-04 10:49:11', '', '', ''),
(88, 1, 'Kolkata, Bokultala', 'Kolkata', 743260, 'payu', 2999, '1', 1, '2024-01-05 08:35:51', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`) VALUES
(1, 1, 117, 1, 2999),
(2, 2, 120, 1, 7999),
(3, 3, 117, 1, 2999),
(4, 1, 112, 4, 9999),
(5, 2, 114, 9, 123),
(6, 3, 115, 1, 4999),
(7, 5, 118, 3, 12999),
(8, 6, 117, 10, 2999),
(9, 7, 117, 10, 2999),
(10, 8, 119, 1, 2999),
(11, 9, 117, 1, 2999),
(12, 10, 118, 4, 12999),
(13, 11, 121, 2, 8999),
(14, 12, 119, 1, 2999),
(15, 13, 114, 1, 123),
(16, 13, 119, 8, 2999),
(17, 14, 119, 1, 2999),
(18, 16, 119, 3, 2999),
(19, 17, 120, 2, 7999),
(20, 19, 119, 1, 2999),
(21, 21, 120, 1, 7999),
(22, 22, 117, 1, 2999),
(23, 23, 120, 1, 7999),
(24, 25, 119, 1, 2999),
(25, 27, 116, 1, 5999),
(26, 29, 116, 1, 5999),
(27, 31, 117, 1, 2999),
(28, 32, 120, 1, 7999),
(29, 33, 119, 1, 2999),
(30, 34, 119, 1, 2999),
(31, 35, 120, 1, 7999),
(32, 36, 120, 1, 7999),
(33, 37, 119, 1, 2999),
(34, 38, 120, 1, 7999),
(35, 40, 116, 1, 5999),
(36, 41, 120, 1, 7999),
(37, 43, 119, 1, 2999),
(38, 45, 114, 1, 123),
(39, 46, 119, 1, 2999),
(40, 47, 121, 4, 8999),
(41, 48, 120, 1, 7999),
(42, 49, 114, 4, 123),
(43, 50, 119, 1, 2999),
(44, 51, 120, 1, 7999),
(45, 51, 119, 1, 2999),
(46, 52, 119, 1, 2999),
(47, 52, 114, 1, 123),
(48, 52, 113, 1, 7999),
(49, 53, 114, 5, 123),
(50, 54, 119, 1, 2999),
(51, 55, 122, 1, 12599),
(52, 56, 126, 1, 5999),
(53, 57, 127, 1, 8999),
(54, 58, 122, 1, 12599),
(55, 59, 126, 1, 5999),
(56, 60, 113, 1, 7999),
(57, 62, 121, 1, 8999),
(58, 63, 125, 1, 4999),
(59, 64, 127, 1, 8999),
(60, 64, 126, 1, 5999),
(61, 65, 119, 1, 8999),
(62, 66, 120, 1, 6999),
(63, 67, 126, 1, 5999),
(64, 69, 126, 1, 5999),
(65, 70, 123, 1, 9999),
(66, 71, 127, 1, 8999),
(67, 72, 123, 1, 9999),
(68, 74, 126, 1, 5999),
(69, 75, 114, 1, 123),
(70, 77, 126, 1, 5999),
(71, 79, 127, 1, 8999),
(72, 80, 126, 1, 5999),
(73, 81, 126, 1, 5999),
(74, 82, 123, 1, 9999),
(75, 83, 123, 1, 9999),
(76, 83, 125, 1, 4999),
(77, 83, 124, 1, 7999),
(78, 84, 126, 1, 5999),
(79, 85, 176, 1, 3290),
(80, 86, 176, 1, 3290),
(81, 87, 134, 1, 21299),
(82, 88, 130, 1, 2999);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Pending'),
(2, 'Processing'),
(3, 'Shipped'),
(4, 'Canceled'),
(5, 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `image4` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `warranty` int(11) NOT NULL,
  `desc1` varchar(255) NOT NULL,
  `desc2` varchar(255) NOT NULL,
  `desc3` varchar(255) NOT NULL,
  `desc4` varchar(255) NOT NULL,
  `desc5` varchar(255) NOT NULL,
  `desc6` varchar(255) NOT NULL,
  `desc7` varchar(255) NOT NULL,
  `desc8` varchar(255) NOT NULL,
  `meta_title` varchar(2000) NOT NULL,
  `meta_description` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `video` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `image1`, `image2`, `image3`, `image4`, `short_desc`, `description`, `warranty`, `desc1`, `desc2`, `desc3`, `desc4`, `desc5`, `desc6`, `desc7`, `desc8`, `meta_title`, `meta_description`, `meta_keyword`, `status`, `video`) VALUES
(115, 100, 'Thermal', 3999, 4999, 1, '9499648_Array', '', '', '', '', 'thermal', 'thermal', 0, '', '', '', '', '', '', '', '', 'thermal', 'thermal', 'thermal', 1, ''),
(180, 101, 'A3 – Heavy Duty Lamination Machine', 8500, 6800, 1, '9744950_Array', '9744950_Array', '9744950_Array', '9744950_Array', '9744950_Array', 'Hindvanture A3 – Heavy Duty Lamination machine for upto A3 size', 'Technical Details: Model GL-12\r\n\r\nLaminating Width:  Max. 480 mm (A/3)\r\nLaminating Thickness: 75 to 250 Micron\r\nLaminating Speed: Up to 80 cm/minute\r\nRunning Circle: 2 Hour\r\nWarm Up Time: 2.5 Minute\r\nWeight: 11 kg. (Approx.)\r\nDimension: 630 x 200 x 110 mm\r\nSize Available: 18″\r\nSuitable to Laminate: ID Card  to A4/A3 Size Document, A3 – Heavy Duty Lamination machine for upto A3 size. Fully automatic with heated rollers', 0, '9744950_Array', '9744950_Array', '9744950_Array', '9744950_Array', '9744950_Array', '9744950_Array', '9744950_Array', '9744950_Array', 'Hindvanture A3 – Heavy Duty Lamination machine for upto A3 size', 'Hindvanture A3 – Heavy Duty Lamination machine for upto A3 size', 'Hindvanture A3 – Heavy Duty Lamination machine for upto A3 size', 1, ''),
(181, 101, 'HV-320L A3 Lamination Machine', 6500, 5500, 1, '6673019_Array', '5002516_Array', '6926308_Array', '2292169_Array', '2989434_Array', 'Hindvanture HV-320L A3 Lamination Machine', 'echnical Details: \r\n\r\nLaminating Width:  Max. 320 mm (A/3)\r\nLaminating Thickness: 75 to 250 Micron\r\nLaminating Speed: Up to 80 cm/minute\r\nRunning Circle: 2 Hour\r\nWarm Up Time: 2 Minute\r\nWeight: 7.5 kg. (Approx.)\r\nDimension: 255 x 498 x 97 mm\r\nSize Available: 12″ \r\nSuitable to Laminate: ID Card  to A4/A3 Size Document', 0, 'abc', 'abc', 'abc', 'abc', 'abc', 'abc', 'abc', 'abc', 'HV-320L A3 Lamination Machine', 'HV-320L A3 Lamination Machine', 'HV-320L A3 Lamination Machine', 1, ''),
(182, 97, 'Hindvanture Note Counting Machine With Fake Note Detector (Model: Money Count 221)', 9990, 5990, 1, '8745224_Array', '', '', '', '', 'Hindvanture Note Counting Machine With Fake Note Detector. Cash counting machine In India, best cash counting machine in India hindvanture money count 221 note counting machine, note counting machine with fake note detector price in India.\r\n\r\nAutomatic detecting UV and MG while counting Suitable for most currencies\r\n\r\nAutomatic start and stop Batch, adding and self examination functions\r\n\r\nDisplay Type : LED\r\n\r\nAutomatic half note detection Voltage: 110V, 50~60Hz\r\n\r\nDetection Technology: Magnetic Sensor, UV Sensor, Watermark Sensor', 'Money Count 221 Note Counting Machine With Fake Note Detector. Cash counting machine In India, best cash counting machine in India Money Count 221 note counting machine, note counting machine with fake note detector price in India.\r\n\r\nMoney Count 221 Cash Counting Machine Compatible with Old & New INR- Rs.10, 20, 50,100,200, 500 & 2000 with Fake Note Detector.\r\n\r\nCounting Speed – 1000pcs/min.It counts all old and new denomination of INR- Rs.10, 20, 50,100,200, 500 & 2000 and detecting counterfeit /fake notes as well.\r\nAutomatic Start, stop and clearing. With batching, adding and self examination function\r\nExtra Customer Display , Pip Alarm For Fake Notes\r\nKindly refer to the Manual book instruction / video to present examine (For best use). This particular machine does only count number of notes. This machine will not display value of notes on Display as it is not a value counting machine.\r\nSupports batch function with in-built display\r\nMoney Count 221 Note Counting Machine With Fake Note Detector', 1, 'Detection Sensors: UV & MG Suspect Note Recognition', 'Display: Front + Customer Display (External)', 'Note Holding Capacity: 200 Notes', 'Weight (Approx.): 5.5 Kg.', 'Dimensions in mm: 320 x 288 x 205', 'Counting Speed:1000 Notes /min', 'Function: Batch, Add and Self Examination', 'Currency Mode: INR', '', '', '', 1, ''),
(183, 97, 'MODEL NP-150 LCD', 12990, 8490, 1, '3821372_Array', '', '', '', '', 'Cash Counter Machine : MODEL NP-150 LCD', 'Technical Specification\r\nModel: NP150 LCD\r\nNote Holding Capacity: 200 Notes\r\nNote Counting Speed: 1000 Notes/Min\r\nWeight (Approx.): 5.9 Kg.\r\nDimension in mm: 290 x 255 x 165\r\nType of Note Use: Loose Note\r\nDetection Technology: UV, MG, IR, MT, Color Detection\r\nSpeaking Features: On/Off Option\r\nValue Features: Semi Value Counter (Manual Mode)\r\nBest Use Currency Exchange Services, Shop, Store, Shopping Mall, Banks etc.\r\n\r\nFeatures and Functions:\r\nCOUNT NUMBER OF NOTES WITH UV, MG, IR, AND DD DETECTION\r\nOTHER FUNCTIONS ARE ADD, BATCH, COUNT\r\nSPECIAL FUNCTION IS SEMI VALUE (MANUAL VALUE COUNT)\r\nCOUNTING MODE AUTO AND MANUAL BOTH\r\nCURRENCY MODE INR, DOLLAR, EURO\r\nINDICATE WITH MESSAGE ON DISPLAY SCREEN- SHOW TYPE OF FAKE NOTE WITH COLOR CHANGING DISPLAY (DISPLAY SCREEN TURN RED COLOR WHILE DETECT SUSPECT NOTE) AND ALERT BEEP SOUND\r\nVOICE/SPEAKING FEATURE: INDICATE STEP BY STEP WITH VOICE PRONUNCIATION\r\nDISPLAY: LCD', 0, '', '', '', '', '', '', '', '', 'MODEL NP-150 LCD', 'MODEL NP-150 LCD', 'MODEL NP-150 LCD', 1, ''),
(184, 97, 'Hindvanture Mix Note Value Counting Machine With Fake Note Detector (Model: Money Count- 271)', 21500, 15490, 1, '5872645_Array', '', '', '', '', 'Calculates Total Value of Mix notes of all denominations together & Shows number of notes individually for each denomination. It has a side display to make the counting readable for the person on the other side.', 'Uses an Advanced Japanese Sensor for Accurate Counting of Mix Notes of all Denomination both old and new. INR₹10 ₹20 ₹50 ₹100 ₹200 ₹500 & ₹2000\r\n\r\nCalculates Total Value of Mix notes of all denominations together & Shows number of notes individually for each denomination. It has a side display to make the counting readable for the person on the other side.\r\nLCD Display for Error. LCD Display shows an error every time a Non-Genuine Note is Detected. Advanced Counterfeit Detection with UV / MG / IR / MT which makes it impossible to miss any fake notes.\r\nFor Best Use – \r\n\r\n1.Insert up-to 200 notes at a time and use the “Add” function to link each round. \r\n2.To avoid notes getting stuck insert notes carefully in one clean deck. If notes are not entered properly the sensor will not be able to scan properly and error might occur. Make sure notes are not crumpled or damaged. Please note- Rs.10 note is very small, take special care with this because some flying out from the front of the machine can occur.\r\nPlease read the manual before use.\r\n\r\nThe Hindvanture Money Count- 271Total Value Counter is an advanced piece of machinery made for businesses, firms, and personals that deals in a lot of cash transactions. The Money Count- 271 comes with a sturdy design and sophisticated software to make the user experience as simple as it gets. Money Count- 271 counts notes of any denomination at the same time while also providing fake currency detection with accurate results by using Ultraviolet, Magnetic and Infrared sensors as Indian notes contain ultraviolet and magnetic detection points by using this, the Money Count- 271 is able to distinguish between the real and counterfeit notes with much ease.\r\n\r\nMoney Count- 271 comes with an impressive counting speed of 1,000 notes per minute with a hopper size of 200 notes which is highly suitable for firms that deals in a lot of cash transactions as it prevents loss due to the acceptance of the fake, broken, and half-notes.\r\nThe Money Count- 271 comes with an LCD display to show all the various functions and also display the details regarding the counted money. Other than the LCD display, Money Count- 271 comes with few buttons that allow the user to access all the functions ranging from Add, Batch, Start, Stop to Reset Functions. It also got few more buttons which the user can find useful according to their needs.', 1, 'Technical Specifications: (MODEL: Money Count 271)', 'Stacker/Hopper  Capacity:	200 bills', 'Weight:	6 kg Approx.', 'Counting Speed:	1000pcs/min', 'Dimensions:	310 x 285 x 175 mm', 'Power Supply:	AC220V±10% 50Hz', 'Functions: Short, Total, Add, Batch, Start, Stop & Etc..', 'Power Consumption:	80 W', 'Hindvanture Mix Note Value Counting Machine With Fake Note Detector (Model: Money Count- 271)', 'Hindvanture Mix Note Value Counting Machine With Fake Note Detector (Model: Money Count- 271)', 'Hindvanture Mix Note Value Counting Machine With Fake Note Detector (Model: Money Count- 271)', 1, ''),
(185, 97, 'Hindvanture Best Mix Note Value Counting Machine with Fake Note Detector (Gold Color) Model: Money Count- 251', 17990, 13990, 1, '3147031_Array', '', '', '', '', 'This is an bank approved mix value note counting machine which helps to count currency of all denomination in mix denomination and detect fake currency accurately . It can count Total number of notes, Total number of notes for each denomination & Total value for all denomination of currencies. Currency counter is a very helpful tool in detecting fake notes due to the increased number of fake notes being circulated in the market. This machine has a special LCD screen for clear display which also turns red in color on detecting fake notes, suspicious notes,half notes, double notes, old notes (prior 2005), soiled notes.', 'Currency counting machine has Sorting Facility⚫Comes Mix Note Counter, Which machine will tell you total value (if you put mix currency in machine it will tell you total value and bifurcation of notes as 2000rs 20 notes 500 rs 50 notes etc)\r\n\r\nWith its advanced technology, this machine can accurately count mixed notes and detect counterfeit bills, ensuring that your business is protected from financial losses.', 1, '(Model: Money Count Gold Color)', 'Note Holding Capacity:  200-300 Notes (Approx.)', 'Note Counting Speed: 1000 Notes/Minute', 'Power Consumption:	<80W', 'Weight: 6.5 KG  Approx.', 'Dimension: 360x330x235 mm (Approx.)', 'Automatic start, stop and clear, Currency Mode', 'Detection Sensors: UV, MG, IR, MT, 3D & Colours Sensors', '', '', '', 1, ''),
(186, 97, 'Hindventure Best Mix Currency Counting Machine for Indian Currency Notes | Business-Grade The Best Mix Cash Counting Machine in India (Model: Money Count 261)', 19500, 14490, 1, '1315630_Array', '', '', '', '', 'Money Count 261 Mix currency counting machine has a proper fake note detection system built-in with the help of a few sensors. It comes with Ultraviolet, Infrared, and Magnetic sensors. The Ultraviolet sensor automatically sanitizes the notes from the virus and bacteria’s. The color code LCD screen turns red when the machine detects fake or half notes. The user has to remove the fake note manually, as it does not support automatic note ejection.', 'Introducing the best mix currency counting machine in India. This advanced device is designed to accurately and efficiently count mixed denominations of currency, making it an essential tool for businesses and financial institutions. With its user-friendly interface and reliable performance, this machine is a must-have for anyone who values precision and convenience in their currency counting needs. Multi Currency Mix Currency Counting Machine\r\n\r\nMixmaster is a Total Value Mix Currency Counting Machine with a Fake Note Detector. It detects fake currency via UV, MG, MT, IR Detection Sensors.', 1, 'Model: Money Count 261', 'Note Holding Capacity: 200-300 Notes (Approx.)', 'Note Counting Speed:	1000 Notes/Minute', 'Counting Display: 3 Types Display', 'Power Consumption:	<80W', 'Weight:	6.3 KG  Approx.', 'Dimension:	300x257x165 mm (Approx.)', 'Currency: INR, Euro, Dolor', '', '', '', 1, ''),
(187, 97, 'Hindvanture Best Cash Counting Machine with Fake Note Detector | Heavy Duty Note Counting Machine with Fake Note Detector (Black Gray Color) (Model:  Money Count 231)', 13900, 10490, 1, '9593352_Array', '', '', '', '', 'Best Cash Counting Machine with Fake Note Detector in India. Money Count 231 is regular and simplest in use model in our series allows for up to 10-12 hours of continuous counting of 1000 bills per minute. This time-saving machine will allow you more time to earn money by doing all the counting work for you through increasing accuracy and eliminating errors. The money counter features UV, MG, IR, MT & DD sensors to spot counterfeits instantly, making it a perfect money sorting tool for homes and businesses.', 'Best Currency Counting Machine in India. The demand for equipment that might check for the fake currency is growing day after another. From the time when the fake currency has been flowing in the market, it is really significant to ensure that you are always on the safe side. In the recent times, people are receiving fake currency notes even whilst withdrawing their money from the ATMs of the bank, which thereby warns us about the foulest existing situation. Therefore, it is counseled to make use of the note counting machines that have the feature of fake note detection so that the user is away from the fake currency', 1, 'Note Holding Capacity: 200-300 Notes (Approx.)', 'Note Counting Speed: 1000 Notes/Minute', 'Power Consumption:	<80W', 'Weight: 5.5 KG  Approx.', 'Dimension: 292x248x175 mm (Approx.)', 'INR, USD and euro detection along with mg detection, uv detection, ir detection', 'Display colour change for error and has automatic currency feeding function automatic counting, preset counting, automatic self checking', 'Half notes detection, double currency detection, counterfeit alarm prevent clamp', '', '', '', 1, ''),
(189, 97, 'Hindvanture Best Mix Note Counting Machine with Fake Note Detector (Black Color)', 17990, 13490, 1, '6098919_Array', '', '', '', '', 'Hindvanture Best Mix Note Counting Machine with Fake Note Detector (Black Color)', 'Currency counting machine has Sorting Facility⚫Comes Mix Note Counter, Which machine will tell you total value (if you put mix currency in machine it will tell you total value and bifurcation of notes as 2000rs 20 notes 500 rs 50 notes etc)\r\n\r\nTop & Best Mix Note Counting Machine with Fake Note Detector\r\nThe Money Count -251 Top & Best Mix Note Counting Machine with Fake Note Detector in India ARUN AUTOMATION Money Count -251 Black is a reliable and efficient solution for businesses that handle cash transactions.\r\n\r\nHeavy Duty Note Counting Machine with Fake Note Detector\r\nWith its advanced technology, this machine can accurately count mixed notes and detect counterfeit bills, ensuring that your business is protected from financial losses.\r\n\r\nTechnical Specifications ( Money Count -251 Black )\r\nNote Holding Capacity	200-300 Notes (Approx.)\r\nNote Counting Speed	1000 Notes/Minute\r\nCounting Display	4 Digit LCD\r\nBatch Display	3 Digit LCD\r\nPower Consumption	<80W\r\nWeight	6.5 KG  Approx.\r\nDimension	360x330x235 mm (Approx.)\r\nFeatures	\r\nAutomatic start, stop and clear\r\nCurrency Mode\r\nINR Indian Rupees Mode: Count Notes with Fake Note Detection Plus Each Note Denomination and Automatically Calculate Total Value of Mix Notes.\r\nUS Dollar & Euro Mode:  Only Count Notes with Fake Note Detection.\r\nUV, MG, IR & MT Sensors for detection\r\nWith Count Mode, Batch, Add and Self –Examination function\r\nSort Mode for Sorting Different Denomination Notes\r\nDouble –Note, Half-Note and Chained-Note Detection\r\nVoice On & Off Function – Indicate with Voice Pronunciation\r\nDual motors for smooth Processing of currencies\r\nMixed value counting for India Rupee and show each numbers of different denominations\r\nCan charge mobile phone via USB port.\r\nHumanized intelligent design with TFT Interface\r\nCan be updated with new note in the future\r\nManual Mode for New Users\r\nExtra Side LED Display with Main Function Key and Alarm Light on Top of Machine', 0, '', '', '', '', '', '', '', '', 'Hindvanture Best Mix Note Counting Machine with Fake Note Detector (Black Color)', 'Currency counting machine has Sorting Facility⚫Comes Mix Note Counter, Which machine will tell you total value (if you put mix currency in machine it will tell you total value and bifurcation of notes as 2000rs 20 notes 500 rs 50 notes etc)\r\n\r\nTop & Best Mix Note Counting Machine with Fake Note Detector\r\nThe Money Count -251 Top & Best Mix Note Counting Machine with Fake Note Detector in India ARUN AUTOMATION Money Count -251 Black is a reliable and efficient solution for businesses that handle cash transactions.\r\n\r\nHeavy Duty Note Counting Machine with Fake Note Detector\r\nWith its advanced technology, this machine can accurately count mixed notes and detect counterfeit bills, ensuring that your business is protected from financial losses.\r\n\r\nTechnical Specifications ( Money Count -251 Black )\r\nNote Holding Capacity	200-300 Notes (Approx.)\r\nNote Counting Speed	1000 Notes/Minute\r\nCounting Display	4 Digit LCD\r\nBatch Display	3 Digit LCD\r\nPower Consumption	<80W\r\nWeight	6.5 KG  Approx.\r\nDimension	360x330x235 mm (Approx.)\r\nFeatures	\r\nAutomatic start, stop and clear\r\nCurrency Mode\r\nINR Indian Rupees Mode: Count Notes with Fake Note Detection Plus Each Note Denomination and Automatically Calculate Total Value of Mix Notes.\r\nUS Dollar & Euro Mode:  Only Count Notes with Fake Note Detection.\r\nUV, MG, IR & MT Sensors for detection\r\nWith Count Mode, Batch, Add and Self –Examination function\r\nSort Mode for Sorting Different Denomination Notes\r\nDouble –Note, Half-Note and Chained-Note Detection\r\nVoice On & Off Function – Indicate with Voice Pronunciation\r\nDual motors for smooth Processing of currencies\r\nMixed value counting for India Rupee and show each numbers of different denominations\r\nCan charge mobile phone via USB port.\r\nHumanized intelligent design with TFT Interface\r\nCan be updated with new note in the future\r\nManual Mode for New Users\r\nExtra Side LED Display with Main Function Key and Alarm Light on Top of Machine', 'Hindvanture Best Mix Note Counting Machine with Fake Note Detector (Black Color)', 1, ''),
(190, 97, 'Hindventure SUPER MINI JUMBO Currency Detector', 3850, 1899, 1, '3921699_Array', '', '', '', '', 'Hindventure SUPER MINI JUMBO Currency Detector UV Light or Bank Cheque Validator (Metal Body)', 'Technical Specification:\r\nModel: SUPER MINI JUMBO.\r\nPower: UV tube—9W, White tube—9W, Yellow light—25W.\r\nPower supply: 220Volts / 50 Hz.\r\nDimensions: (24 X 12.5 X 16.5) millimeter.\r\nItem Weight: 1.7 kilograms (Approx.).\r\nType of Detection: Ultra violet, Watermark (Color shift-type) and Magnetic detection (Optional).\r\nBest Use: Currency Exchange Services, Shop, Store, Shopping Mall, Banks. etc.\r\n\r\nFeatures & Functions:\r\nThis model is having a Larger space for holding a bundle of 100 and more number notes at one time.\r\nIt is capable of magnifying the money or notes to 10X times the actual size.\r\nThe model is having a reflector on three sides for increasing the Ultra Violet (UV) effect and better visibility of fake notes.\r\nOption available for a fixture of the machine on the table.\r\nIt is having 3 types of lights as UV light, White light, and Yellow light for checking any types of documents and notes.\r\nThis machine is capable of detecting Fake notes and also available for checking Passports, Bank Cheques, Credit/Debit cards, and Stamp/ Lease papers, etc.\r\nSuitable for Fake money detection of any kind of Currencies all over the World.\r\n\r\n[NOTE: PRODUCT SPECIFICATIONS AND DATA ARE SUBJECT TO CHANGE WITHOUT PRIOR NOTICE TO IMPROVE RELIABILITY, FUNCTION OR DESIGN OR OTHERWISE]\r\n\r\nWarranty: 1 Year', 0, '', '', '', '', '', '', '', '', 'Hindventure SUPER MINI JUMBO Currency Detector UV Light or Bank Cheque Validator (Metal Body)', 'Hindventure SUPER MINI JUMBO Currency Detector UV Light or Bank Cheque Validator (Metal Body)', 'Hindventure SUPER MINI JUMBO Currency Detector UV Light or Bank Cheque Validator (Metal Body)', 1, ''),
(191, 97, 'Touch PRO – Mix Note Value Counting Machine', 24500, 17490, 1, '9195087_Array', '', '', '', '', 'Hindventure Touch PRO – Mix Note Value Counting Machine with Fake Note Detector', 'Experience the ultimate currency counting efficiency with the Kavinstar TOUCH PRO Mix Note Value Counting Machine. This feature-packed bill counter is designed to cater to various currency exchange services, shops, stores, shopping malls, and banks, ensuring accurate and secure currency handling. With advanced UV, MG, IR, MT, 3D, and Color Detection Sensor technologies, this machine efficiently counts and detects fake currency in a mix bundle, providing comprehensive and reliable results.\r\n\r\nWarranty T & C: There are exceptions to the non-refundable and non-returnable policy. These exceptions typically apply in cases of physical damage, receiving the wrong item, or missing items in your order. In this condition, do your complain within 24 hours after delivery and provide proof of damaged products such as images and video: 1 Year', 0, '', '', '', '', '', '', '', '', 'Hindventure Touch PRO – Mix Note Value Counting Machine with Fake Note Detector', 'Hindventure Touch PRO – Mix Note Value Counting Machine with Fake Note Detector', 'Hindventure Touch PRO – Mix Note Value Counting Machine with Fake Note Detector', 1, ''),
(192, 99, 'Hindventure SELFCHEK Manual Fake Note Detector UV Light', 2750, 1050, 1, '3886364_Array', '', '', '', '', 'Hindventure SELFCHEK Manual Fake Note Detector UV Light', 'Technical Specification\r\nModel: SELFCHEK.\r\nWeight (Approx.): 1/2 Kg.\r\n​Dimensions: 190 x 130 x 140 mm.\r\nPower Supply: 220v 50-60Hz 110v 50-60Hz.\r\nPower Consumption: <10W.\r\n\r\nFeatures & Functions:\r\n– UV, Watermark Detection with Magnifying Glass Compact and portable.\r\n– Easy to use Powerful UV light Detector-Compact & Portable.\r\nBest Use: Currency Exchange Services, Shop, Store, Shopping Mall, Banks, etc.\r\n\r\nThe machine is Reflector on three sides for increasing UV effect & best detectable of fake note option available for the fixture of the machine on a table.\r\nTypes two of light as UV light & White light for examining any types of documents & notes.\r\n\r\n[NOTE: PRODUCT SPECIFICATIONS AND DATA ARE SUBJECT TO CHANGE WITHOUT PRIOR NOTICE TO IMPROVE RELIABILITY, FUNCTION OR DESIGN OR OTHERWISE]\r\n\r\nWarranty: 1 Year', 0, '', '', '', '', '', '', '', '', '', 'Hindventure SELFCHEK Manual Fake Note Detector UV Light', 'Hindventure SELFCHEK Manual Fake Note Detector UV Light', 1, ''),
(193, 0, 'Hindevnture SUPER MINI JUMBO Currency Detector', 3850, 1899, 1, '9153596_Array', '', '', '', '', 'Hindevnture SUPER MINI JUMBO Currency Detector UV Light or Bank Cheque Validator (Metal Body)', 'Technical Specification:\r\nModel: SUPER MINI JUMBO.\r\nPower: UV tube—9W, White tube—9W, Yellow light—25W.\r\nPower supply: 220Volts / 50 Hz.\r\nDimensions: (24 X 12.5 X 16.5) millimeter.\r\nItem Weight: 1.7 kilograms (Approx.).\r\nType of Detection: Ultra violet, Watermark (Color shift-type) and Magnetic detection (Optional).\r\nBest Use: Currency Exchange Services, Shop, Store, Shopping Mall, Banks. etc.\r\n\r\nFeatures & Functions:\r\nThis model is having a Larger space for holding a bundle of 100 and more number notes at one time.\r\nIt is capable of magnifying the money or notes to 10X times the actual size.\r\nThe model is having a reflector on three sides for increasing the Ultra Violet (UV) effect and better visibility of fake notes.\r\nOption available for a fixture of the machine on the table.\r\nIt is having 3 types of lights as UV light, White light, and Yellow light for checking any types of documents and notes.\r\nThis machine is capable of detecting Fake notes and also available for checking Passports, Bank Cheques, Credit/Debit cards, and Stamp/ Lease papers, etc.\r\nSuitable for Fake money detection of any kind of Currencies all over the World.\r\n\r\n[NOTE: PRODUCT SPECIFICATIONS AND DATA ARE SUBJECT TO CHANGE WITHOUT PRIOR NOTICE TO IMPROVE RELIABILITY, FUNCTION OR DESIGN OR OTHERWISE]\r\n\r\nWarranty: 1 Year', 0, '', '', '', '', '', '', '', '', 'Hindevnture SUPER MINI JUMBO Currency Detector UV Light or Bank Cheque Validator (Metal Body)', 'Hindevnture SUPER MINI JUMBO Currency Detector UV Light or Bank Cheque Validator (Metal Body)', 'Hindevnture SUPER MINI JUMBO Currency Detector UV Light or Bank Cheque Validator (Metal Body)', 1, ''),
(194, 99, 'Hindventure Super Jumbo Fake Note or Currency Detector Machine', 4990, 2690, 1, '1197054_Array', '', '', '', '', 'Kavinstar Super Jumbo Fake Note or Currency Detector Machine', 'Protect your business from counterfeit currency with the Kavinstar Super Jumbo Fake Note and Currency Detector Machine. This powerful device is designed to detect fake notes and ensure the authenticity of currency during transactions, making it an essential tool for businesses, banks, and currency handling services.\r\n\r\nWarranty T & C: Goods once sold are not returnable /non-refundable basis. Off-site manufacturing defect warranty only on electronic components will be provided to the customers who have bought a product from the original brand dealer Arun Automation for: 1 Year', 0, '', '', '', '', '', '', '', '', 'Hindventure Super Jumbo Fake Note or Currency Detector Machine', 'Hindventure Super Jumbo Fake Note or Currency Detector Machine', 'Hindventure Super Jumbo Fake Note or Currency Detector Machine', 1, ''),
(195, 99, 'Super Mini Jumbo Fake Note Detector Machine', 3000, 1690, 1, '8774154_Array', '', '', '', '', 'Hindventure Super Mini Jumbo Fake Note Detector Machine', 'Ensure the authenticity of currency and legal documents with the Kavinstar Super Mini Jumbo Fake Note Detector Machine. Equipped with a magnifying lens and UV lamp, this compact device enhances detection capabilities, allowing you to identify minute marks and watermarks for secure currency handling.  Warranty T & C: There are exceptions to the non-refundable and non-returnable policy. These exceptions typically apply in cases of physical damage, receiving the wrong item, or missing items in your order. In this condition, do your complain within 24 hours after delivery and provide proof of damaged products such as images and video: 1 Year', 0, '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(196, 99, 'Super Jumbo Fake Note or Currency Detector Machine', 4990, 2690, 1, '3312722_Array', '', '', '', '', 'Hindventure Super Jumbo Fake Note or Currency Detector Machine', 'Protect your business from counterfeit currency with the Kavinstar Super Jumbo Fake Note and Currency Detector Machine. This powerful device is designed to detect fake notes and ensure the authenticity of currency during transactions, making it an essential tool for businesses, banks, and currency handling services.\r\n\r\nWarranty T & C: Goods once sold are not returnable /non-refundable basis. Off-site manufacturing defect warranty only on electronic components will be provided to the customers who have bought a product from the original brand dealer Arun Automation for: 1 Year', 0, '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(197, 103, 'Note Binding Paper Tape Roll Set – 15 Rolls with Various Sizes', 5400, 2550, 1, '3556099_Array', '', '', '', '', 'Note Binding Paper Tape Roll Set – 15 Rolls with Various Sizes', 'Product Type: Note Binding Paper Tape Roll Set\r\n\r\n– Set Content: 15 Rolls with Various Sizes\r\n\r\n– Suitable for: Note binding\r\n\r\n– Ideal For: Banks, businesses, financial institutions, currency handling services\r\n\r\n– Versatile Usage: The Note Binding Paper Tape Roll Set offers versatile bundling solutions, accommodating different quantities of banknotes.\r\n\r\n– Professional Presentation: Enhance the professional appearance of your bundled banknotes with the neat and secure binding provided by this tape set.\r\n\r\nExperience the convenience of organized and secure currency bundling with the Note Binding Paper Tape Roll Set. With 15 rolls in various sizes, this set ensures that you have the right tape for any bundling requirement. Elevate your currency management process with this reliable and practical tape set, catering to both small and larger stacks of banknotes. Trust in this set for efficient and professional note binding solutions.\r\n\r\nWarranty T & C: Goods once sold are not returnable /non-refundable basis. Off-site manufacturing defect warranty only on electronic components will be provided to the customers who have bought a product from the original brand dealer Arun Automation for: 1 Year', 0, '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(198, 103, 'Banknote Strapping Paper Tape – Set of 10 Rolls', 3600, 1750, 1, '1918242_Array', '', '', '', '', 'Banknote Strapping Paper Tape – Set of 10 Rolls (Sizes: 20mm, 25mm, 30mm, 40mm)', 'Product Type: Banknote Strapping Paper Tape\r\n\r\n– Set Content: 10 Rolls (20mm, 25mm, 30mm, 40mm)\r\n\r\n– Suitable for: Note banding, currency handling, banknotes\r\n\r\n– Price: Rs175 per roll\r\n\r\n– Ideal For: Banks, businesses, financial institutions, currency handling services Enhance your note banding and currency handling with the BankNote Strapping Paper Tape set. Its diverse range of sizes, secure binding capabilities, and versatile applications make it an essential tool for maintaining organized and secure currency management. Choose this tape set to streamline your currency handling processes with confidence.\r\n\r\nWarranty T & C: Goods once sold are not returnable /non-refundable basis. Off-site manufacturing defect warranty only on electronic components will be provided to the customers who have bought a product from the original brand dealer Arun Automation for: 1 Year', 0, '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(199, 103, 'Bank Note Binding Tape – Set of 5 Rolls', 1600, 910, 1, '8198377_Array', '', '', '', '', 'Bank Note Binding Tape – Set of 5 Rolls (Sizes: 20mm, 25mm, 30mm, 40mm)', 'Product Specifications:\r\n\r\n– Product Type: Bank Note Binding Tape\r\n\r\n– Set Content: 5 Rolls (20mm, 25mm, 30mm, 40mm)\r\n\r\n– Price: Rs182 per roll\r\n\r\n– Suitable for: Currency bundling, banknotes, currency handling\r\n\r\n– Ideal For: Banks, financial institutions, businesses, currency handling services Elevate your currency bundling process with the Bank Note Binding Tape set. Its versatile sizes, durable quality, and cost-effective pricing make it a valuable asset for ensuring secure and\r\n\r\nWarranty T & C: Goods once sold are not returnable /non-refundable basis. Off-site manufacturing defect warranty only on electronic components will be provided to the customers who have bought a product from the original brand dealer Arun Automation for: 1 Year', 0, '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(200, 103, 'HD5 Heavy Duty A3 Spiral Binding Machine', 14500, 9990, 1, '2146026_Array', '', '', '', '', 'Hindventure HD5 Heavy Duty A3 Spiral Binding Machine with 10-12 Sheets (70gsm) Punching Capacity', 'Technical Specification\r\nModel: HD5.\r\nMax Paper Size: A3 with A4 & Legal (FS) Size.\r\nMax Punching Capacity: 10-12 Sheets (70gsm).\r\nMax Binding Capacity: 500 Sheets.\r\nPunching Hole Type: Circle.\r\nPunching Hole Size: 5 mm.\r\nThroat: Open.\r\nSide Margin Adjuster: Yes.\r\nBackSpace Adjuster: No.\r\nHandle Type: Single One Side Handle.\r\nOperation Mode: Manual Punching Handheld Binding.\r\nDimension: 485 x 355 x 220 mm.\r\nWeight: 6.5 kg. (Approx.).\r\nFeatures: Solid Metal Base Effortless punch for A3, FS, and A4 Sizes at a single slot, Safe & comfortable, high-quality steel cutters.\r\nThe machine is used in press and book publishing sectors for binding the papers.\r\nThe quality inspectors test on quality and performance parameters to offer the clients a flawless range.\r\nUses: Good for Home, Personal Use, School, Small Shop & Business Offices, etc.\r\n\r\n[NOTE: PRODUCT SPECIFICATIONS AND DATA ARE SUBJECT TO CHANGE WITHOUT NOTICE TO IMPROVE RELIABILITY, FUNCTION OR DESIGN OR OTHERWISE]', 0, '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(201, 103, 'Hindventure HD12 Double Handle Spiral Binding Machine – A4 Size with 10-12 Sheets (70gsm) Punching Capacity', 11500, 5500, 1, '3416342_Array', '', '', '', '', 'Hindventure HD12 Double Handle Spiral Binding Machine – A4 Size with 10-12 Sheets (70gsm) Punching Capacity', 'Technical Specification\r\nModel: HD12\r\nMax Paper Size: A4\r\nMax Punching Capacity: 10-12 Sheets (70gsm)\r\nMax Binding Capacity: 500 Sheets\r\nPunching Hole Type: Circle\r\nPunching Hole Size: 4 mm\r\nThroat: Open\r\nSide Margin Adjuster: Yes\r\nBackSpace Adjuster: No\r\nHandle Type: Dual Side (Double) Handle\r\nOperation Mode: Manual Punching Handheld Binding\r\nDimension: 380 x 300 x 148 mm\r\nWeight: 5.5 kg. (Approx.)\r\nFeatures: Effortless proper punch for A4 Size at a single slot, Safe & comfortable, metal base, high-quality steel cutters\r\nSmooth paper punching and the clearance of holes are best.\r\nManually to operate (Smooth punching)\r\nMaterial use metal\r\nEasy to Handle\r\nStrong Build in Quality\r\nUses Ideal for Schools, Students, And Small Offices, Shops, etc.\r\n\r\n[NOTE: PRODUCT SPECIFICATIONS AND DATA ARE SUBJECT TO CHANGE WITHOUT NOTICE TO IMPROVE RELIABILITY, FUNCTION OR DESIGN OR OTHERWISE]', 0, '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(202, 103, 'Thermal Binding Machine SK 2008', 16400, 10999, 1, '8398152_Array', '', '', '', '', 'Hindventure Thermal Binding Machine SK 2008 with 200-250 Sheets (70gsm) Binding Capacity', 'Technical Specification\r\nModel: SK 2008.\r\nMax Paper Size: A4.\r\nMax Binding Capacity: 250 Sheets (A4, 70gsm).\r\nMaximum binding length: 320 mm.\r\nMaximum binding thickness: 38 mm.\r\nHeating Temperature:150ºC(±10ºC).\r\nOperation Mode: Electric Thermal Binding.\r\nClamp: Manual.\r\nWarm-Up Time: 2-3 Minutes.\r\nDuty Cycle: 2 Hour On /30 Minute Off.\r\nVoltage: AC 220-240 V, 50 Hz.\r\nDimension: 410 x 275 x 210 mm (Approx.).\r\nWeight: 4.5 kg. (Approx.).\r\nFeatures: \r\nCPU Control System.\r\nPTC Ceramic Heating.\r\nInfrared Photoelectric Testing.\r\nDifferent Time Selection.\r\nOver-Time Protection.\r\nPress Tight By Hand.\r\nUses: Good for Home, Personal, School, College, Small Business Offices, etc.\r\n\r\n[NOTE: PRODUCT SPECIFICATIONS AND DATA ARE SUBJECT TO CHANGE WITHOUT NOTICE TO IMPROVE RELIABILITY, FUNCTION OR DESIGN OR OTHERWISE]\r\n\r\nWarranty: 6 Months', 0, '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(203, 103, 'HD25 Heavy Duty Spiral binding Machine A2 Size with 20-25 Sheets (70gsm) Punching Capacity', 55000, 30000, 1, '9467711_Array', '', '', '', '', 'HD25 Heavy Duty Spiral binding Machine A2 Size', 'Technical Specification\r\nModel: HD25.\r\nMax Paper Size: A2 with A3, A4, and Legal/Foolscap.\r\nMax Punching Capacity: 20-25 Sheets (70gsm).\r\nMax Binding Capacity: 500 Sheets.\r\nPunching Hole Type: Circle.\r\nPunching Hole Size: 5 mm.\r\nThroat: Open.\r\nSide Margin Adjuster: Fix.\r\nBackSpace Adjuster: No.\r\nHandle Type: Single One Side Handle.\r\nOperation Mode: Manual Punching Handheld Binding.\r\nDimension: 600 x 370 x 230 mm.\r\nWeight: 30 kg. (Approx.).\r\nFeatures: Heavy-duty punch for A2, A3, Legal/FS & A4 Size at a single slot, Safe & comfortable, solid metal base, high-quality steel cutters\r\nThe machine is used in press and book publishing sectors for binding the papers.\r\nThe quality inspectors test the Spiral Binding Machines on quality and performance parameters to offer the clients a flawless range.\r\nUses: Good for Professionals, Books Binders, Publishers, Photocopy & Printing Store, School, Government & Large Business Offices, etc.\r\n\r\n[NOTE: PRODUCT SPECIFICATIONS AND DATA ARE SUBJECT TO CHANGE WITHOUT NOTICE TO IMPROVE RELIABILITY, FUNCTION OR DESIGN OR OTHERWISE]\r\n\r\nKavinstar HD25 Heavy Duty Spiral binding Machine A2 Size with 20-25 Sheets (70gsm) Punching Capacity quantity\r\n1\r\nAdd to CartBuy Now\r\n84401090 84401090HD25\r\nSKU: KAVINSTARHD25\r\nCategories: Binding Machines (Document Paper Binder), Spiral Binding Machines (Plastic Coil Binder)\r\nDescription Reviews (3)', 0, '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(204, 103, '25H Heavy Duty Spiral Binding Machine', 26500, 16500, 1, '5498027_Array', '', '', '', '', 'Hindventure 25H Heavy Duty Spiral Binding Machine FS/Legal Size with 20-25 Sheets (70gsm) Punching Capacity', 'Technical Specification\r\nModel: 25H.\r\nMax Paper Size: Legal/Foolscap Size with A4 Size.\r\nMax Punching Capacity: 20-25 Sheets (70gsm).\r\nMax Binding Capacity: 500 Sheets.\r\nPunching Hole Type: Circle.\r\nPunching Hole Size: 5 mm.\r\nThroat: Open.\r\nSide Margin Adjuster: Fix.\r\nBackSpace Adjuster: No.\r\nHandle Type: Single One Side Handle.\r\nOperation Mode: Manual Punching Handheld Binding.\r\nDimension: 485 x 355 x 220 mm.\r\nWeight: 20 kg. (Approx.).\r\nFeatures: Heavy-duty punch for Legal/FS & A4 Size at a single slot, Safe & comfortable, solid metal base, high-quality steel cutters\r\nThe machine is used in press and book publishing sectors for binding the papers.\r\nThe quality inspectors test the Spiral Binding Machines on quality and performance parameters to offer the clients a flawless range.\r\nUses: Good for Professionals, Books Binders, Publishers, Photocopy & Printing Store, School, Government & Large Business Offices, etc.\r\n\r\n[NOTE: PRODUCT SPECIFICATIONS AND DATA ARE SUBJECT TO CHANGE WITHOUT NOTICE TO IMPROVE RELIABILITY, FUNCTION OR DESIGN OR OTHERWISE]', 0, '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(205, 103, '12L Heavy Duty A4 Spiral Binding Machine with 10-12 Sheets', 10500, 7990, 1, '5305984_Array', '', '', '', '', 'Kavinstar 12L Heavy Duty A4 Spiral Binding Machine with 10-12 Sheets (70gsm) Punching Capacity', 'Technical Specification\r\nModel: 12L.\r\nMax Paper Size: A4.\r\nMax Punching Capacity: 10-12 Sheets (70gsm).\r\nMax Binding Capacity: 500 Sheets.\r\nPunching Hole Type: Circle.\r\nPunching Hole Size: 5 mm.\r\nThroat: Open.\r\nSide Margin Adjuster: Yes.\r\nBackSpace Adjuster: No.\r\nHandle Type: Single One Side Handle.\r\nOperation Mode: Manual Punching Handheld Binding.\r\nDimension: 380 x 300 x 148 mm.\r\nWeight: 5.5 kg. (Approx.).\r\nFeatures: Solid Metal Base Effortless punch for A4 Size at a single slot, Safe & comfortable, high-quality steel cutters.\r\nThe machine is used in the press and book publishing sectors for binding the papers.\r\nThe quality inspectors test on quality and performance parameters to offer the clients a flawless range.\r\nUses: Good for Home, Personal Use, School, Small Shop & Business Offices, etc.\r\n\r\n[NOTE: PRODUCT SPECIFICATIONS AND DATA ARE SUBJECT TO CHANGE WITHOUT NOTICE TO IMPROVE RELIABILITY, FUNCTION OR DESIGN OR OTHERWISE]', 0, '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(206, 103, 'HD123 Dual Side Handle Spiral Binding Machine', 14500, 7990, 1, '9870927_Array', '', '', '', '', 'HD123 Dual Side Handle Spiral Binding Machine – FS/Legal Size with 10-12 Sheets (70gsm) Punching Capacity', 'Technical Specification\r\nModel: HD123.\r\nMax Paper Size: Foolscap/Legal with A4.\r\nMax Punching Capacity: 10-12 Sheets (70gsm).\r\nMax Binding Capacity: 500 Sheets.\r\nPunching Hole Type: Circle.\r\nPunching Hole Size: 4 mm.\r\nThroat: Open.\r\nSide Margin Adjuster: Yes.\r\nBackSpace Adjuster: No.\r\nHandle Type: Dual Side (Double) Handle.\r\nOperation Mode: Manual Punching Handheld Binding.\r\nDimension: 485 x 355 x 220 mm.\r\nWeight: 6.5 kg. (Approx.).\r\nFeatures: Effortless proper punch for FS or Legal Size with A4 Size at a single slot, Safe & comfortable, metal base, high-quality steel cutters.\r\nSmooth paper punching and the clearance of holes are best.\r\nManually to operate (Smooth punching).\r\nMaterial use metal.\r\nEasy to Handle.\r\nStrong Build in Quality.\r\nUses Ideal for Schools, Students, And Small Offices, Shops, etc.\r\n\r\n[NOTE: PRODUCT SPECIFICATIONS AND DATA ARE SUBJECT TO CHANGE WITHOUT NOTICE TO IMPROVE RELIABILITY, FUNCTION OR DESIGN OR OTHERWISE]', 0, '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(207, 103, '123S Spiral Binding Machine A3 Size', 8990, 6500, 1, '3215399_Array', '', '', '', '', '123S Spiral Binding Machine A3 Size with 10-12 Sheets (70gsm) Punching Capacity', 'Technical Specification\r\nModel: 123S.\r\nMax Paper Size: A3 with A4 & Legal (Foolscap) Size.\r\nMax Punching Capacity: 8-10 Sheets (70gsm).\r\nMax Binding Capacity: 500 Sheets.\r\nPunching Hole Type: Circle.\r\nPunching Hole Size: 4 mm.\r\nThroat: Open.\r\nSide Margin Adjuster: Yes.\r\nBackSpace Adjuster: No.\r\nHandle Type: Single One Side Handle.\r\nOperation Mode: Manual Punching Handheld Binding.\r\nDimension: 560 x 330 x 190 mm.\r\nWeight: 6 kg. (Approx.).\r\nFeatures: Light Weight Metal Base Effortless punch for A4, A3 & Legal Size at a single slot, Safe & comfortable, high-quality steel cutters.\r\nUses: Good for Home, Personal Use, School, Small Business Offices, etc.\r\n\r\n[NOTE: PRODUCT SPECIFICATIONS AND DATA ARE SUBJECT TO CHANGE WITHOUT NOTICE TO IMPROVE RELIABILITY, FUNCTION OR DESIGN OR OTHERWISE]', 0, '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(208, 103, 'Hindventure Currency Binding Machine', 17990, 12999, 1, '4768457_Array', '', '', '', '', 'Hindventure Currency Binding Machine', 'Product Description:\r\n\r\nIntroducing the Kavinstar Currency Binding Machine, a top-notch solution to streamline your currency bundling process. This machine is crafted to meet the diverse demands of our esteemed clients, offering unmatched quality and performance.\r\n\r\nKey Features:\r\n\r\n1. Compact Design: With dimensions of 240 x 200 x 220 mm, this machine is thoughtfully designed to take up minimal space while delivering maximum functionality.\r\n\r\n2. Brand Reliability: Trust in the reputable brand of Kavinstar, known for its high-quality office equipment.\r\n\r\n3. Low Power Consumption: With a power consumption of just 60 watts during operation and 10 watts in standby mode, this machine is energy-efficient and cost-effective.\r\n\r\n4. Minimal Noise: Enjoy a peaceful working environment with noise levels of less than 70 dB, ensuring a quiet operation.\r\n\r\n5. Swift Binding Speed: The Currency Binding Machine can complete one binding cycle in just 2 seconds, enhancing productivity and efficiency.\r\n\r\n6. Suitable Tape Size: The paper tape size of 20×160 mm ensures a secure and professional binding of currency notes.\r\n\r\n7. Adjustable Tape Center: Customize the binding tape center within a range of 10.83mm, accommodating various note sizes with ease.\r\n\r\n8. Wide Voltage Range: The machine supports a voltage range of 100-240 VAC, with a DC 12V/1.0A power supply, making it versatile for various power sources.', 0, '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(209, 108, 'Hindventure CC 15 Cross Cut Paper Shredder Machine Shred Upto 12-15 Sheets', 35990, 26990, 1, '6566407_Array', '', '', '', '', 'Hindventure CC 15 Cross Cut Paper Shredder Machine Shred Upto 12-15 Sheets', 'Technical Specification\r\n\r\nModel: CC 15\r\n\r\nEntry Width: 220 mm\r\n\r\nShred Size: 3 x 30 mm (for paper), Strip Cut for CD, Credit Card\r\n\r\nRunning Cycle: 10-15 minutes on, 20-25 minutes off (duty cycle)\r\n\r\nSheet Capacity: 12-15 sheets at a time (A4 size, 70 gsm)\r\n\r\nCutting Speed: 4 mm/min\r\n\r\nPower Consumption: 170W\r\n\r\nPower Supply: 220V\r\n\r\nBin Capacity: 23 litres (approx.)\r\n\r\nDimension: 396 x 313 x 598 mm\r\n\r\nWeight: 14 kg (approx.)\r\n\r\nNoise Level: 58db\r\n\r\nSecurity Measures: Thermal shutdown on overheating, thermal overload protection\r\n\r\nFeatures:\r\n\r\n– Auto Start/Stop and Reverse Option\r\n\r\n– Elegant Design\r\n\r\n– Pull Out Basket\r\n\r\n– Transparent Bin Full Indicator\r\n\r\nUses:\r\n\r\nThe CC 15 Shredder Model is suitable for various purposes, including:\r\n\r\n– Personal Cabin\r\n\r\n– Under Desk\r\n\r\n– Small and Medium Business Offices\r\n\r\nThe shredder’s cross-cut capabilities enhance security for paper documents, while the strip-cut function allows for the secure disposal of CDs and credit cards. The machine’s thermal shutdown and overload protection features ensure safe operation.\r\n\r\nWith its user-friendly features, efficient shredding speed, and a combination of cross-cut and strip-cut functions, the CC 15 Shredder Model is a versatile choice for securely disposing of sensitive documents and media in personal and business settings.\r\n\r\n[NOTE: Product specifications and data are subject to change without notice to improve reliability, function, design, or otherwise.]', 0, '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(210, 108, 'Hindventure OS 008CD Personal Use Paper Shredder', 11990, 7590, 1, '3200641_Array', '', '', '', '', 'Machine Shred Upto 8 Sheets (70gsm) at a time with CD, Credit Card Separate Slot', 'Technical Specification\r\nModel: OS 008CD.\r\nEntry Width: 225 mm.\r\nShred Size: 4 x 40 mm.\r\nRunning Cycle: 3 Minute on 20 Minute Off.\r\nSheet Capacity: 6-8 Sheets at a time (A/4 Size 70 gsm).\r\nShred Type: Cross Cut for Paper & Strip Cut for CD, Cr. Card.\r\nCutting Speed: 4 mm/min.\r\nPower Consumption: 60w.\r\nPower Supply: 220v.\r\nBin Capacity: 18 ltr.(Approx.).\r\nDimension: 14 x 12.5 x 8 Inch.\r\nWeight: 4 kg. (Approx.).\r\nNoise Label: 70db.\r\nFeatures: Auto Start/Stop and Reveres Option, Elegant Design, Lift Out Basket,\r\nTransparent Bin full Indicator.\r\nUses: Good for Home, Personal Use, Personal Cabin, Under Desk, Small Business, and Office, etc.\r\n\r\n[NOTE: PRODUCT SPECIFICATIONS AND DATA ARE SUBJECT TO CHANGE WITHOUT NOTICE TO IMPROVE RELIABILITY, FUNCTION OR DESIGN OR OTHERWISE]\r\n\r\nWarranty: 1 Year', 0, '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(211, 108, 'Hindventrue JUMBO S40 Strip', 179990, 93990, 1, '5698216_Array', '', '', '', '', 'Hindventure JUMBO S40 Strip Cut Heavy Duty Paper Shredder Machine or Paper Katran Machine Shred Up to 35-40 Sheets at a time', 'Technical Specification\r\nModel: JUMBO S-40.\r\nEntry Width: 300 mm.\r\nShred Size: 8 mm.\r\nRunning Cycle: 1.5 Hour Continue Shredding (Approx.).\r\nSheet Capacity: 40-45 Sheets (A/4 Size 70 gsm).\r\nProduction Capacity: 80 Kg Per Hour.\r\nShred Type: Strip Cut.\r\nBin Capacity: 90 ltr.(Approx.).\r\nMachine Size (LxWxH): 580 x 495 x 920 mm.\r\nWaste Bin Size (LxWxH): 490 x 360 x 580 mm.\r\nWeight: 65 kg. (Approx.).\r\nMotor: 2 H.P. (Single Phase).\r\nPower Consumption: 1500W.\r\nPower Supply: 220V-230V.\r\nFeatures: Built with 90 Degree Rotation Wheel Easy to Move and Use With Rotary Power Switch Forward and Reverse Option with Good Quality Power MCV Switch.\r\nUses: Paper Katran Machine or This Kind Strip Cut Paper Shredder is the most useful product with Fruit Vendors, Crockery Sets, Glass Made Items as it is used during packaging, Bulk Paper Shredding Business, and Shredding Services.\r\n\r\n[NOTE: PRODUCT SPECIFICATIONS AND DATA ARE SUBJECT TO CHANGE WITHOUT PRIOR NOTICE TO IMPROVE RELIABILITY, FUNCTION OR DESIGN OR OTHERWISE]', 0, '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(212, 108, 'MC 15 Micro Cut Paper Shredder Machine', 39990, 34990, 1, '7447012_Array', '', '', '', '', 'Hindventure MC 15 Micro Cut Paper Shredder Machine Shred Upto 12-15 Sheets (70gsm) at a time with Separate Slot for CD & Credit Card', 'Technical Specification\r\nModel: MC 15\r\nEntry Width: 230 mm\r\nShred Size: 2 x 10 mm\r\nRunning Cycle: 10-15 Minute on 20-25 Minute Off\r\nSheet Capacity: 12-15 Sheets at a time (A/4 Size 70 gsm)\r\nShred Type: Cross Cut for Paper & Strip Cut for CD, Cr. Card\r\nCutting Speed: 4 mm/min\r\nPower Consumption: 300w\r\nPower Supply: 220v\r\nBin Capacity: 34 ltr.(Approx.)\r\nDimension: 396 x 313 x 629 mm\r\nWeight: 16 kg. (Approx.)\r\nNoise Label: 55db\r\nSecurity Measures: Thermal Shutdown on Over Hearting +Thermal Overload Protection\r\nFeatures: Auto Start/Stop and Reveres Option, Elegant Design, Pull Out Basket,\r\nTransparent Bin full Indicator,\r\nUses: Good for Personal Cabin, Under Desk, Small & Medium, Large Business Offices etc.\r\n\r\n[NOTE: PRODUCT SPECIFICATIONS AND DATA ARE SUBJECT TO CHANGE WITHOUT NOTICE TO IMPROVE RELIABILITY, FUNCTION OR DESIGN OR OTHERWISE]', 0, '', '', '', '', '', '', '', '', '', '', '', 1, ''),
(213, 105, 'A4 Paper Cutter Machine', 2900, 1499, 1, '3230035_Array', '', '', '', '', 'Kavinstar KVR A4 Paper Cutter Machine Cut Upto 10 -12 Sheets (70 GSM) at a time', 'Technical Specification\r\nModel: KVR-A4.\r\nCutting Capacity: Max 10-12 Sheets (A/4, 70 GSM).\r\nSize: 12 inches.\r\nPaper Clamp: Manual.\r\nCutting Width: 250mm.\r\nDimension: 47x27x5 cm.\r\nWeight: 1.5 Kg. (Approx.).\r\nBody Material: Metallic.\r\nSize: A4.\r\nCutting Capability: Paper, Photo, PVC Products.\r\nSuitable for Cut Thick/Strong Paper, Card, etc.\r\n\r\n[NOTE: PRODUCT SPECIFICATIONS AND DATA ARE SUBJECT TO CHANGE WITHOUT PRIOR NOTICE TO IMPROVE RELIABILITY, FUNCTION OR DESIGN OR OTHERWISE]', 0, '', '', '', '', '', '', '', '', 'A4 Paper Cutter Machine', 'A4 Paper Cutter Machine', 'A4 Paper Cutter Machine', 1, ''),
(214, 105, 'A3 Paper Cutter Machine', 4500, 2499, 1, '7318130_Array', '', '', '', '', 'Hindventure A3 Paper Cutter Machine Cut Upto 10 -12 Sheets (70 GSM) at a time', 'Technical Specification\r\nModel: KVR-A3.\r\nCutting Capacity: Max 10-12 Sheets (A/3, 70 GSM).\r\nSize: 17.5inch.\r\nPaper Clamp: Manual.\r\nCutting Width: 250mm.\r\nDimension: 68x40x6 cm.\r\nWeight: 4 Kg. (Approx.).\r\nBody Material: Metalick.\r\nSize: A3.\r\nCutting Capability: Paper, Photo, PVC Products,\r\nSuitable for Cut Thick/Strong Paper, Card, etc.\r\n\r\n[NOTE: PRODUCT SPECIFICATIONS AND DATA ARE SUBJECT TO CHANGE WITHOUT PRIOR NOTICE TO IMPROVE RELIABILITY, FUNCTION OR DESIGN OR OTHERWISE]', 0, '', '', '', '', '', '', '', '', '', '', '', 1, '');
INSERT INTO `product` (`id`, `categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `image1`, `image2`, `image3`, `image4`, `short_desc`, `description`, `warranty`, `desc1`, `desc2`, `desc3`, `desc4`, `desc5`, `desc6`, `desc7`, `desc8`, `meta_title`, `meta_description`, `meta_keyword`, `status`, `video`) VALUES
(215, 105, 'A200 Manual Paper Cutting Machine', 24990, 16499, 1, '7055478_Array', '1198933_Array', '8357241_Array', '4383241_Array', '6752002_Array', 'Hindvanture-A200 Manual Paper Cutting Machine (Cutting Capacity – 350 sheets/70gsm)', 'A3 Manual Paper Cutting Machine\r\nTechnical Specification\r\n\r\nBrand	Kavinstar\r\nModel	KVR-A200\r\nCutting Capacity	350 Sheets/70gsmCutting Size \r\nCutting Size	A3 & A4 (18 Inch Blade Size)\r\nPaper Clamp	Manual\r\nCutting Width	 458mm\r\nCutting Height	40 mm\r\nWeight	25 Kg. (Approx.)\r\nBody Materials	Metal Body\r\nDimension	76x55x30 cm\r\nCutting Capability	Heavy-duty Paper cutter for commercial and professional with Hardened steel cutting die and punch Suitable to Cut Business Card, ID card, PVC Sheets, Notebook, Bill Book, A4 to A3 Size Thick/Strong Papers, etc.\r\nBest Uses	On your desk, in open-plan offices and workshops, in marketing agencies, notebook binders, publishers, and printers: This type of paper cutting machine fits in anywhere that precise, safe, and speedy paper cutting is required. This is a professional, user-friendly, and precise paper cutting machine for individual sheets, small amounts of paper, or whole stacks (rim/ream) – the Make in India.\r\n[NOTE: PRODUCT SPECIFICATIONS AND DATA ARE SUBJECT TO CHANGE WITHOUT PRIOR NOTICE TO IMPROVE RELIABILITY, FUNCTION OR DESIGN OR OTHERWISE]', 0, '1', '1', '1', '1', '1', '1', '1', '1', '', '', '', 1, ''),
(216, 102, 'test product', 1000, 1000, 1, '9752951_Array', '9553879_Array', '4494384_Array', '2449328_Array', '1181900_Array', '000', '000', 0, '000', '000', '000', '000', '000', '000', '000', '000', '000', '000', '000', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `reviewer_name` varchar(255) DEFAULT NULL,
  `reviewer_email` varchar(255) DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `review` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_id`, `reviewer_name`, `reviewer_email`, `rate`, `review`, `created_at`) VALUES
(1, 215, 'kaushik', 'kaushik@gmail.com', 0, 'hi there', '2024-01-24 09:29:31'),
(2, 214, 'ramesh', 'ram@gmail.com', 0, 'thankyou ', '2024-01-24 09:30:06'),
(17, 215, 'jai', 'jai@gmail.com', 0, 'nice product', '2024-01-24 09:45:10'),
(18, 215, 'jai', 'jai@gmail.com', 0, 'nice product', '2024-01-24 09:45:14'),
(19, 215, 'jai', 'jai@gmail.com', 0, 'nice product', '2024-01-24 09:45:44'),
(20, 215, 'jai', 'jai@gmail.com', 0, 'nice product', '2024-01-24 09:48:44'),
(21, 215, 'jai', 'jai@gmail.com', 0, 'nice product', '2024-01-24 09:49:41'),
(22, 215, 'jai', 'jai@gmail.com', 0, 'nice product', '2024-01-24 09:49:53'),
(23, 215, 'jai', 'jai@gmail.com', 0, 'nice product', '2024-01-24 09:50:37'),
(24, 215, 'jai', 'jai@gmail.com', 0, 'nice product', '2024-01-24 09:50:47'),
(25, 215, 'jai', 'jai@gmail.com', 0, 'nice product', '2024-01-24 09:50:55'),
(26, 215, 'jai', 'jai@gmail.com', 0, 'nice product', '2024-01-24 09:51:07'),
(27, 215, 'jai', 'jai@gmail.com', 0, 'nice product', '2024-01-24 09:52:51'),
(28, 215, 'jai', 'jai@gmail.com', 0, 'nice product', '2024-01-24 09:55:13'),
(29, 215, 'jai', 'jai@gmail.com', 0, 'nice product', '2024-01-24 09:57:07'),
(30, 215, 'jai', 'jai@gmail.com', 0, 'nice product', '2024-01-24 09:57:36'),
(31, 215, 'jai', 'jai@gmail.com', 0, 'nice product', '2024-01-24 09:57:58'),
(34, 216, 'raghav', 'rjraghav@gmail.com', 0, 'awesome', '2024-01-24 10:32:32'),
(35, 216, 'raghav', 'rjraghav@gmail.com', 0, 'awesome', '2024-01-24 10:32:55'),
(36, 216, 'ramesh', 'kaushik@gmail.com', 0, 'klkklkllkpllpllp;', '2024-01-24 10:34:02'),
(37, 216, 'ramesh', 'kaushik@gmail.com', 0, 'klkklkllkpllpllp;', '2024-01-24 10:35:53'),
(38, 216, 'utkarsh', 'ram@gmail.com', 5, 'adkada', '2024-01-24 10:36:07'),
(39, 216, 'utkarsh', 'ram@gmail.com', 5, 'adkada', '2024-01-24 10:38:14'),
(40, 216, 'utkarsh', 'ram@gmail.com', 5, 'adkada', '2024-01-24 10:39:53'),
(41, 216, 'utkarsh', 'ram@gmail.com', 5, 'adkada', '2024-01-24 10:41:19'),
(42, 216, 'utkarsh', 'ram@gmail.com', 5, 'adkada', '2024-01-24 10:41:59'),
(43, 216, 'utkarsh', 'ram@gmail.com', 5, 'adkada', '2024-01-24 10:47:54'),
(44, 216, 'utkarsh', 'ram@gmail.com', 5, 'adkada', '2024-01-24 10:48:04'),
(45, 216, 'utkarsh', 'ram@gmail.com', 5, 'adkada', '2024-01-24 10:49:26'),
(46, 216, 'utkarsh', 'ram@gmail.com', 5, 'adkada', '2024-01-24 10:49:52'),
(47, 216, 'utkarsh', 'ram@gmail.com', 5, 'adkada', '2024-01-24 10:51:22'),
(48, 216, 'kaushik', 'kaushik@gmail.com', 3, 'adad', '2024-01-29 06:04:59'),
(49, 216, 'kaushik', 'kaushik@gmail.com', 3, 'adad', '2024-01-29 06:06:11'),
(50, 216, 'kaushik', 'kaushik@gmail.com', 3, 'adad', '2024-01-29 06:06:22'),
(51, 216, 'kaushik', 'kaushik@gmail.com', 3, 'adad', '2024-01-29 06:06:40'),
(52, 216, 'kaushik', 'kaushik@gmail.com', 3, 'adad', '2024-01-29 06:07:28'),
(53, 216, 'kaushik', 'kaushik@gmail.com', 3, 'adad', '2024-01-29 06:07:53'),
(54, 215, '', '', 1, '', '2024-01-29 06:54:07'),
(55, 215, 'hello', 'kaushik@gmail.com', 1, 'nice', '2024-01-29 06:54:22'),
(56, 215, 'kaushik', 'kaushik@gmail.com', 1, 'adkad', '2024-01-29 07:35:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `added_on`, `password`) VALUES
(1, 'Kaushik Vishwas', 'kaushik@gmail.com', '8787878787', '2023-12-16 06:18:16', 'kaushik'),
(2, 'Kaushik Vishwas', 'kbsuperking123@gmail.com', '09306288532', '2023-12-21 08:53:35', 'dgdgfd'),
(3, 'Rohit', 'rohit@gmail.com', '09306288532', '2023-12-21 08:54:27', 'dgdgfd'),
(4, 'Kunal', 'kunal@gmail.com', '09306288532', '2023-12-21 08:55:30', 'kunal'),
(5, 'rahul', 'rahul@gmail.com', '1111111111', '2023-12-27 08:28:01', 'rahul'),
(6, 'sonu', 'sonu@gmail.com', '1212121212', '2023-12-27 08:56:18', 'sonu'),
(7, 'deepak', 'deepak@gmail.com', '7676767676', '2024-01-04 10:48:11', '12345'),
(8, '', '', '', '2024-01-08 03:39:12', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
