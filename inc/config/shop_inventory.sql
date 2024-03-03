-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2019 at 03:51 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` int(11) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` int(11) NOT NULL,
  `phone2` int(11) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `pincode` int(10) DEFAULT NULL,
  `district` varchar(30) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `fullName`, `email`, `mobile`, `phone2`, `address`, `address2`, `pincode`, `district`, `status`, `createdOn`) VALUES
(4, 'Chirag K', 'chiragk123@wipro.com', 994537375, 772484884, '45, 573304 House, Marine Drive', 'South ', '573202', 'Dharwad', 'Active', '2022-04-30 15:14:02'),
(14, 'Darshini', 'darshinis@apple.com', 84382983, 84382983, '1st Floor, Apple House, ', 'Banglore Street', '57301', 'Banglore Rural', 'Disabled', '2022-05-01 12:03:10'),
(18, 'Abhignya', 'abhignya345@gmail.com', 77798765, 83423434, 'No. 3, Radcliff Avenue, School Lane', 'Banglore Urban South', '57305', 'Banglore Urban', 'Active', '2022-05-02 09:52:28'),
(24, 'Sunil Sharma', 'Sunil@gypsies.sound', 83383939, 84138372, '67/7, Sharma Villa, Jayasekara Avenue', 'Mount L', '57201', 'Hassan', 'Active', '2022-05-02 10:48:37'),
(25, 'Rahul Ramesh', 'rahulramesh@kr.gov.in', 83293939, 77778337, '12, Downing Street', 'lakshmipura', '575400', 'Haveri', 'Active', '2022-05-03 02:28:07'),
(26, 'Sachin Shekhar', 'sachinshekhar45@kr.gov.in', 84449583, 84798283, '789-4, Apartment 3, ', 'Cric Complex', '580300', 'Puttalam', 'Active', '2022-05-03 02:28:38'),
(38, 'Anand Gupta', 'anandgupta@yahoo.com', 83936782, 0, 'Nuwan Villa, Lower Street,', 'North Mulativu', '564789', 'Shimoga', 'Active', '2022-05-05 11:17:49'),
(39, 'Amal Sharma', 'amals452@yahoo.com', 82323456, 0, 'Amal''s House, Amal''s Street,', 'Amal Road', '567890', 'Kolar', 'Active', '2022-05-05 13:27:06'),
(40, 'Rajesh Shetty', 'rajeshshetty@kr.au.in', 86665961, 0, '23, Oak View Avenue', 'Western ', '573201', 'Hassan', 'Disabled', '2022-05-13 01:20:23'),
(41, 'Karan Mehta', '', 111, 0, '111', '', '', 'Hassan', 'Active', '2022-05-13 01:24:54'),
(42, 'Usha', 'usha234@apple.com', 83338298, 0, '1st Floor, Apple House, ', 'Banglore Street', '585677', 'Banglore Urban', 'Disabled', '2022-05-13 02:39:41');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `productID` int(11) NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `discount` float NOT NULL DEFAULT '0',
  `stock` int(11) NOT NULL DEFAULT '0',
  `unitPrice` float NOT NULL DEFAULT '0',
  `imageURL` varchar(255) NOT NULL DEFAULT 'imageNotAvailable.jpg',
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`productID`, `itemNumber`, `itemName`, `discount`, `stock`, `unitPrice`, `imageURL`, `status`, `description`) VALUES
(34, '1', 'Precision Screw', 0, 28, 1500, 'products_precision_screw5.jpg', 'Active', ''),
(35, '2', 'Ball Screws', 0, 5, 500, 'ball_screw_1.jpg', 'Active', ''),
(36, '3', 'Ball Screws', 0, 5, 1300, 'ball_screw_2.jpg', 'Active', ''),
(37, '4', 'Precision Pins', 2, 6, 3409, 'precision_pin.jpg', 'Active', ''),
(38, '5', 'Precision Rivets', 2, 17, 1200, 'precision_rivets.jpg', 'Active', ''),
(39, '6', 'Stainless Steel Flanges', 0, 0, 3000, 'stainless_steel_flanges_1.jpg', 'Active', ''),
(40, '7', 'Cap Head Screws', 1.5, 10, 1650, 'cap_head_screws.jpg', 'Active', ''),
(41, '8', 'Socket Head Screw', 2.1, 9, 2300, 'socket_head_screw.jpg', 'Active', ''),
(43, '10', 'Socket Head Cap Screw', 1, 92, 1000, 'socket_head_cap_screw.jpg', 'Active', ''),
(45, '11', 'Stainless Steel Flanges', 1.5, 11, 1200, 'stainless_steel_flanges_2.jpg', 'Active', ''),
(49, '14', 'Hex Bolt', 1.5, 6, 1200, 'hex_bolt.jpg', 'Active', '');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchaseID` int(11) NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `purchaseDate` date NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `unitPrice` float NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `vendorName` varchar(255) NOT NULL DEFAULT 'Test Vendor',
  `vendorID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`purchaseID`, `itemNumber`, `purchaseDate`, `itemName`, `unitPrice`, `quantity`, `vendorName`, `vendorID`) VALUES
(39, '1', '2022-05-24', 'Precision Screw', 1600, 10, 'Sriram Cold Forgings Pvt.Ltd', 3),
(40, '2', '2022-05-18', 'Precision Screw', 2341, 2, 'Crest Precision Screws Pvt.Ltd', 4),
(41, '4', '2022-05-07', 'Precision Pins', 1234, 3, 'Sriram Cold Forgings Pvt.Ltd', 3),
(42, '1', '2022-05-24', 'Precision Screw', 345, 12, 'Crest Precision Screws Pvt.Ltd', 4),
(43, '5', '2022-05-03', 'Precision Rivets', 35, 3, 'Sriram Cold Forgings Pvt.Ltd', 3),
(44, '5', '2022-05-16', 'Precision Rivets', 3000, 2, 'ABC Company', 1),
(45, '5', '2022-05-21', 'Precision Rivets', 3000, 10, 'Sample Vendor 222', 2),
(46, '4', '2022-05-19', 'Precision Pins', 1200, 4, 'Sriram Cold Forgings Pvt.Ltd', 3),
(47, '2', '2022-05-10', 'Ball Screws', 2, 1, 'Sample Vendor 222', 2),
(48, '1', '2022-05-12', 'Cap Head Screws', 2, 9, 'ABC Company', 1),
(50, '14', '2022-05-15', 'Hex Bolt', 1000, 5, 'Crest Precision Screws Pvt.Ltd', 4),
(51, '11', '2022-05-11', 'Stainless Steel FlangesStainless Steel Flanges', 1121, 1, 'ABC Company', 1),
(52, '1', '2022-05-21', 'Precision Screw', 1235, 2, 'Sample Vendor 222', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `saleID` int(11) NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `customerID` int(11) NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `saleDate` date NOT NULL,
  `discount` float NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `unitPrice` float(10,0) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`saleID`, `itemNumber`, `customerID`, `customerName`, `itemName`, `saleDate`, `discount`, `quantity`, `unitPrice`) VALUES
(1, '3', 4, 'Chirag K', 'Ball Screws', '2022-05-24', 5, 2, 1300),
(2, '1', 39, 'Amal Sharma', 'Precision Screw', '2022-05-24', 0, 111, 1500),
(3, '4', 18, 'Abhignya', 'Precision Pins', '2022-05-24', 2, 1, 3409),
(4, '5', 25, 'Rajesh Shetty', 'Precision Rivets', '2022-05-24', 2, 1, 1200),
(5, '6', 24, 'Sunil Sharma', 'Stainless Steel Flanges', '2022-05-24', 0, 1, 3000),
(6, '7', 14, 'Darshini', 'Cap Head Screws', '2022-05-24', 1.5, 1, 1650),
(7, '3', 4, 'Chirag K', 'Ball Screws', '2022-05-24', 0, 3, 1300),
(8, '8', 4, 'Chirag K', 'Socket Head Screw', '2022-05-14', 2.1, 1, 2300),
(9, '6', 26, 'Sachin Shekhar', 'Stainless Steel Flanges', '2022-05-14', 0, 1, 3000),
(10, '5', 25, 'Rajesh Shetty', 'Precision Rivets', '2022-05-14', 2, 9, 1200),
(11, '10', 26, 'Sachin Shekhar', 'Socket Head Cap Screw', '2022-04-05', 1, 7, 1000),
(12, '1', 14, 'Darshini', 'Precision Screw', '2022-05-14', 0, 2, 1500),
(13, '3', 38, 'Anand Gupta', 'Ball Screws', '2022-05-24', 0, 0, 1300),
(14, '10', 39, 'Amal Sharma', 'Socket Head Cap Screw', '2022-05-17', 1, 1, 1000),
(15, '14', 38, 'Anand Gupta', 'Hex Bolt', '2022-05-24', 1.5, 1, 1200),
(16, '1', 14, 'Darshini', 'Precision Screw', '2022-05-24', 10, 1, 1500),
(17, '4', 14, 'Darshini', 'Precision Pins', '2022-05-18', 2, 1, 3409);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `fullName`, `username`, `password`, `status`) VALUES
(5, 'Guest', 'guest', '81dc9bdb52d04dc20036dbd8313ed055', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendorID` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` int(11) NOT NULL,
  `phone2` int(11) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `pincode` varchar(30) DEFAULT NULL,
  `district` varchar(30) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendorID`, `fullName`, `email`, `mobile`, `phone2`, `address`, `address2`, `pincode`, `district`, `status`, `createdOn`) VALUES
(1, 'ABC Company', '', 82343775, 0, '80, Ground Floor, ABC Shopping Complex', '46th Avenue', '573303', 'Hassan', 'Active', '2022-05-05 05:48:44'),
(2, 'Sample Vendor 222', 'sample@volvo.com', 89982982, 28373018, '123, A Road, B avenue', 'Pitipana', '573201', 'Bijapur', 'Disabled', '2022-05-05 06:12:02'),
(3, 'Sriram Cold Forgings Pvt.Ltd', '', 32323, 0, '34, Malwatta Road, Kottawa', 'Pannipitiya', '573202', 'Hassan', 'Active', '2022-05-05 06:28:33'),
(4, 'Crest Precision Screws Pvt.Ltd', 'crest@crest.pvt.in', 32323493, 0, '45, Palmer Valley, 5th Crossing', 'Delaware', '573304', 'Chamarajanagar', 'Active', '2022-05-05 06:29:41'),
(6, 'Test Vendor', 'test@vendor.com', 43434, 47569937, 'Test address', 'Test address 2', '573400', 'Dakshina Kannada', 'Active', '2022-05-05 06:53:14'),
(7, 'Nuts Co. Exporters Ltd.', '', 1111, 0, 'Sea Road, Bambalapitiya', '', '573305', 'Hassan', 'Active', '2022-05-15 10:36:54'),
(8, 'New Rivets Exporters', '', 191938930, 0, '123, A Road, B avenue, ', 'Gilford Crescent', '573308', 'Hassan', 'Active', '2022-05-16 12:36:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchaseID`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`saleID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendorID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchaseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `saleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
