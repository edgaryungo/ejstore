-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 28, 2018 at 05:34 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `liquorst_ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `brand_id` int(100) NOT NULL AUTO_INCREMENT,
  `brand_title` text NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(4, 58, '::1', 3, 1),
(5, 63, '::1', 3, 1),
(6, 101, '::1', 3, 1),
(7, 55, '::1', 3, 1),
(8, 57, '::1', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(100) NOT NULL AUTO_INCREMENT,
  `cat_title` text NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Whiskey'),
(2, 'Vodka'),
(3, 'Gin'),
(4, 'Rum'),
(5, 'Wine'),
(6, 'Beer'),
(7, 'Tequila'),
(8, 'Chaser'),
(9, 'Spirits');

-- --------------------------------------------------------

--
-- Table structure for table `c_order_details`
--

CREATE TABLE IF NOT EXISTS `c_order_details` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` int(30) NOT NULL,
  `location` varchar(30) NOT NULL,
  `tim` varchar(100) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `c_order_details`
--

INSERT INTO `c_order_details` (`c_id`, `user_id`, `name`, `phone`, `location`, `tim`) VALUES
(1, 11, 'Idah', 791852258, 'Ruiru', 'Mon, 05 Mar 18 17:15:34 +0100'),
(2, 13, 'shady', 727869877, 'gate B juja', 'Fri, 09 Mar 18 19:56:13 +0100'),
(3, 3, 'tonny', 791181702, 'mukundi house room 28', 'Fri, 20 Apr 18 20:54:28 +0200'),
(4, 3, '', 0, '', 'Mon, 23 Apr 18 16:10:56 +0200'),
(5, 14, 'Gloria', 799308299, 'Messo estate Block G - 73', 'Tue, 24 Apr 18 11:29:06 +0200'),
(6, 4, 'Tonny', 791181702, 'kenyatta road', 'Fri, 27 Apr 18 21:26:06 +0200'),
(7, 4, 'Tonny', 791181702, 'kenyatta road', 'Fri, 27 Apr 18 21:33:11 +0200'),
(8, 4, 'Betty', 727390284, 'eldoret', 'Fri, 27 Apr 18 21:33:53 +0200'),
(9, 4, 'Betty', 727390284, 'eldoret', 'Fri, 27 Apr 18 21:34:36 +0200'),
(10, 4, 'Meshack Kipkorir', 2147483647, '186-30700 iten', 'Fri, 27 Apr 18 21:34:54 +0200'),
(11, 4, '', 0, '', 'Sat, 28 Apr 18 02:16:07 +0200');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=85 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(25, 4, 1, 1, '973571778', 'completed'),
(26, 4, 55, 1, '615753174', 'completed'),
(27, 4, 56, 1, '777313233', 'completed'),
(28, 5, 48, 1, '853210450', 'completed'),
(29, 5, 51, 1, '494506836', 'completed'),
(30, 5, 52, 1, '590484620', 'completed'),
(31, 5, 50, 1, '113372803', 'completed'),
(32, 6, 50, 1, '282928467', 'completed'),
(33, 6, 57, 1, '536437989', 'completed'),
(34, 6, 55, 1, '731567383', 'completed'),
(35, 6, 50, 1, '55084229', 'completed'),
(36, 4, 3, 1, '45166016', 'pending'),
(37, 4, 55, 1, '305145264', 'pending'),
(38, 4, 49, 1, '371734620', 'pending'),
(39, 7, 57, 1, '49896241', 'pending'),
(40, 7, 50, 1, '798339844', 'pending'),
(41, 7, 48, 1, '518402100', 'pending'),
(42, 7, 63, 1, '143554688', 'pending'),
(43, 7, 57, 1, '335693360', 'pending'),
(44, 7, 55, 1, '645782471', 'pending'),
(45, 7, 10, 1, '692687989', 'pending'),
(46, 7, 56, 1, '92315674', 'pending'),
(47, 4, 49, 1, '524200440', 'pending'),
(48, 4, 51, 1, '751403809', 'pending'),
(49, 4, 3, 1, '473480225', 'pending'),
(50, 8, 2, 1, '906402588', 'pending'),
(51, 8, 8, 1, '221496583', 'pending'),
(52, 8, 62, 1, '57281495', 'pending'),
(53, 9, 55, 1, '458770752', 'pending'),
(54, 10, 50, 1, '302062989', 'pending'),
(55, 4, 54, 1, '836029053', 'pending'),
(56, 4, 52, 1, '332031251', 'pending'),
(57, 4, 50, 1, '470947266', 'pending'),
(58, 4, 58, 1, '584991456', 'pending'),
(59, 5, 50, 1, '271301270', 'pending'),
(60, 4, 1, 1, '947418213', 'pending'),
(61, 4, 2, 5, '692199708', 'pending'),
(62, 11, 57, 1, '731719971', 'pending'),
(63, 11, 58, 5, '118591309', 'pending'),
(64, 13, 58, 1, '266998292', 'pending'),
(65, 3, 55, 1, '727996827', 'pending'),
(66, 3, 57, 1, '369018555', 'pending'),
(67, 3, 129, 2, '162261963', 'pending'),
(68, 3, 55, 1, '848876954', 'pending'),
(69, 3, 57, 1, '279327393', 'pending'),
(70, 3, 58, 1, '432800293', 'pending'),
(71, 14, 73, 1, '278167725', 'pending'),
(72, 14, 71, 1, '150146485', 'pending'),
(73, 4, 58, 1, '908538819', 'pending'),
(74, 4, 55, 1, '110595704', 'pending'),
(75, 4, 57, 1, '806671143', 'pending'),
(76, 4, 58, 1, '913269043', 'pending'),
(77, 4, 57, 1, '79315186', 'pending'),
(78, 4, 55, 1, '787719727', 'pending'),
(79, 4, 119, 1, '425689698', 'pending'),
(80, 4, 55, 1, '901092530', 'pending'),
(81, 4, 57, 1, '611450196', 'pending'),
(82, 4, 58, 1, '462310792', 'pending'),
(83, 4, 55, 1, '744049073', 'pending'),
(84, 4, 57, 1, '649963379', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(100) NOT NULL AUTO_INCREMENT,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=130 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(55, 1, 4, 'Grants 750ml', 1300, 'whisky', 'Grants.jpg', 'Grants'),
(57, 1, 4, 'Glenrock 750ml', 750, 'whisky', 'glenrock.jpg', 'glenrock'),
(58, 2, 4, 'chrome vodka 250ml', 250, 'whisky', 'chrome.jpg', 'chrome'),
(59, 1, 4, 'JackDaniels 750ml', 1250, 'whisky', 'jackdaniels.jpg', 'jackdaniels'),
(60, 1, 4, 'williamlawson 750ml', 1500, 'whisky', 'williamlawson.jpg', 'williamlawson'),
(61, 4, 4, 'Old monk 750ml', 800, 'whisky', 'oldmonk.jpg', 'old monk'),
(62, 1, 4, 'Royal Gold 750ml', 750, 'whisky', 'royalgold.jpg', 'royal gold'),
(63, 2, 4, 'Rider vodka 750ml', 2500, 'whisky', 'rider.jpg', 'Rider'),
(67, 2, 0, 'Meakins 750ml', 800, 'whisky', 'meakins.jpg', 'meakins'),
(68, 1, 0, 'J & B 750ml', 3500, 'whisky', 'j&b.jpg', 'J&B'),
(69, 2, 0, 'Bluemoon 750ml', 750, 'whisky', 'bluemoon.jpg', 'bluemoon'),
(71, 1, 0, 'Jameson 750ml', 2400, 'whisky', 'jameson.JPG', 'jameson'),
(72, 1, 0, 'Chivas Regal 750ml', 1100, 'whisky', 'chivasregal.JPG', 'Chivas Regal'),
(73, 1, 0, '8 PM 750', 700, 'whisky', '8pm.JPG', '8 pm'),
(74, 1, 0, 'AC Black 750ml', 700, 'whisky', 'acblack.jpg', 'ac black'),
(75, 1, 0, 'balantines', 1900, 'whisky', 'ballantis.JPG', 'Balantines'),
(76, 1, 0, 'Best 750ml', 750, 'whisky', 'best.JPG', 'best'),
(77, 1, 0, 'Bond 7', 1130, 'whisky', 'bond7.JPG', 'bond 7'),
(78, 1, 0, 'Bond 7', 1130, 'whisky', 'bond7.JPG', 'bond 7'),
(79, 1, 0, 'Famous grouse 750ml ', 1200, 'whisky', 'famous.JPG', 'famous grouse'),
(80, 1, 0, 'Glenfiddich', 2500, 'whisky', 'glenfiddich.jpg', 'glenfiddich'),
(81, 1, 0, 'Gold Supreme', 1500, 'whisky', 'goldsupreme.JPG', 'gold supreme '),
(82, 1, 0, 'Hennessy', 4000, 'whisky', 'hennessy.JPG', 'hennessy'),
(83, 1, 0, 'Hunters Choice 750ml', 750, 'whisky', 'hunterschoice.jpg', 'hunters choice'),
(84, 1, 0, 'Jack Daniels', 3200, 'whisky', 'jackDaniels.JPG', 'jack daniels'),
(85, 1, 0, 'Johnie walker Black Label 750ml', 3800, 'whisky', 'johnieblack.jpg', 'black label'),
(86, 1, 0, 'Johnie walker Red Label 750ml', 2000, 'whisky', 'redlabel.JPG', 'johnie walker'),
(87, 1, 0, 'Knights', 2000, 'whisky', 'knights.jpg', 'knights'),
(88, 1, 0, 'Ninja', 800, 'whisky', 'ninja.jpg', 'ninja'),
(89, 1, 0, 'Macmohan', 650, 'whisky', 'macmohan.jpg', 'macmohan'),
(90, 1, 0, 'Neptune', 750, 'whisky', 'neptune.jpg', 'neptune'),
(91, 1, 0, 'Royal Gold 750 ml', 750, 'whisky', 'royalgold.jpg', 'royal gold'),
(92, 1, 0, 'Royal Kingston 750 ml', 700, 'whisky', 'royalkingston.JPG', 'royal kingston'),
(93, 1, 0, 'Top Secret', 700, 'whisky', 'topsecret.jpg', 'top secret'),
(94, 1, 0, 'VAT 69', 2000, 'whisky', 'vat69.JPG', 'vat 69'),
(95, 1, 0, 'white house', 700, 'whisky', 'whitehouse.JPG', 'white house'),
(96, 1, 0, 'Whytehall Fire', 1100, 'whisky', 'whytehallfire.JPG', 'whytehall fire'),
(97, 1, 0, 'Whytehall Royal Blue 750ml', 1100, 'whisky', 'whytehallroyalblue.JPG', 'Whytehall Royal Blue'),
(98, 1, 0, 'William Lawson 750ml', 1200, 'whisky', 'william.jpg', 'william lawson'),
(99, 2, 0, 'Bluemoon 750ml', 750, 'whisky', 'bm750.jpg', 'bluemoon'),
(100, 2, 0, 'Bluemoon 250ml', 250, 'whisky', 'bm.jpg', 'bluemoon'),
(101, 2, 0, 'Bluemoon Orange flavour 750ml', 750, 'whisky', 'bmgreen.jpg', 'bluemoon'),
(102, 2, 0, 'Chrome lemon 250ml', 250, 'whisky', 'chrome.jpg', 'chrome'),
(103, 1, 0, 'Crazy Cock 750ml', 750, 'whisky', 'crazycork.jpg', 'Crazy Cock'),
(104, 2, 0, 'Flirt Vodka Apple flavour 750ml', 1500, 'whisky', 'flirtapple.jpg', 'Flirt Vodka'),
(105, 2, 0, 'Smirnoff ice 250ml', 350, 'whisky', 'smirf250.jpg', 'smirnoff ice'),
(106, 2, 0, 'Sminoff ice 750ml', 1500, 'whisky', 'smirfice.jpg', 'smirnoff ice'),
(107, 2, 0, 'Maya 750ml', 1500, 'vodka', 'maya.jpg', 'maya'),
(108, 2, 0, 'Mistral Fuji Apple 250ml', 250, 'vodka', 'mistral150.jpg', 'mistral'),
(109, 2, 0, 'Mojo Vodka 750ml', 850, 'vodka', 'mojo750.jpg', 'mojo'),
(110, 2, 0, 'Povpov 250ml', 250, 'Vodka', 'povpov.jpg', 'povpov'),
(111, 2, 0, 'New Amsterdam 750ml', 1500, 'vodka', 'amsterdam.jpg', 'New Amsterdam'),
(112, 22, 0, 'Povpov 750ml', 650, 'vodka', 'povpov750.jpg', 'povpov'),
(113, 2, 0, 'Sky vodka 750ml', 1550, 'vodka', 'skyvodka.jpg', 'sky vodka'),
(114, 2, 0, 'Smirnoff Red 250ml', 400, 'vodka', 'smirfred.jpg', 'smirnoff red'),
(115, 2, 0, 'Smirnoff red 350ml', 550, 'vodka', 'smirfred350.jpg', 'smirnoff red'),
(116, 2, 0, 'Smirnoff Vanilla 750ml', 1600, 'vodka', 'smirnoffvanilla.jpg', 'smirnoff '),
(117, 2, 0, 'White mischief 750ml', 750, 'vodka', 'mischief.jpg', 'white mischief'),
(118, 3, 0, 'Bombay Saphire 750ml', 2250, 'rum', 'bombay.jpg', 'bombay '),
(119, 3, 0, 'Bulldog 750ml', 1800, 'rum', 'bulldog.jpg', 'bulldog'),
(120, 3, 0, 'chelsea Gin 750ml', 650, 'Gin', 'chelsea750.jpg', 'Chelsea'),
(121, 3, 0, 'CHELSEA GIN 250ML', 250, 'Gin', 'chelsea250.jpg', 'chelsea '),
(122, 3, 0, 'Gilbeys 1ltr', 1500, 'Gin', 'gilbey1l.jpg', 'gin gilbey'),
(123, 3, 0, 'Consulate Gin 750ml', 650, 'Gin', 'consulate.jpg', 'Consulate'),
(124, 3, 0, 'Gilbey 250ml', 450, 'Gin', 'gilbey250.jpg', 'gilbey'),
(125, 3, 0, 'Gilbey 350ml', 700, 'Gin', 'gilbey350.jpg', 'gilbey'),
(126, 3, 0, 'Gilbey 750ml', 1200, 'Gin', 'gilbey750.jpg', 'gilbey'),
(127, 3, 0, 'Kenya King 750ml', 650, 'Gin', 'kenyaking.jpg', 'kenya king'),
(128, 3, 0, 'Meracki Citrus 750ml', 650, 'Gin', 'meracki.jpg', 'Meracki'),
(129, 4, 0, 'Captain Spiced Gold 750ml', 2000, 'rum', 'captainmorgan.jpg', 'captain morgan');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(3, 'meshack ', 'kipkorir', 'meshackkipkorir105@gmail.com', '697f30059a0d6aa464e049eb8e5f4d51', '0790019666', 'stafev', 'stafev'),
(4, 'Betty', 'Kemboi', 'bettykemz@gmail.com', '6ebe76c9fb411be97b3b0d48b791a7c9', '0727384259', 'Eldoret', 'Eldoret'),
(5, 'Leah', 'Wanja', 'leahwanja@gmail.com', '0d187906c36e2d8e33fbd79f4ecd4dc9', '0700791552', 'Luton', 'Luton'),
(6, 'Meshack', 'kipkorir', 'meshackkipkorir1055@gmail.com', '697f30059a0d6aa464e049eb8e5f4d51', '0791186877', 'Ibis', 'Room 67'),
(7, 'rishit', 'Patel', 'rishit_p@yahoo.com', 'a4ff126cc238be5a7c918251901e7fb9', '0714791781', 'mukundi', 'mukundi hou'),
(8, 'Florence', 'Muchangi', 'florencemurugi5@gmail.com', '2dd3a035fec14e69972e238160750400', '0711375095', 'gift apartment', 'seasons'),
(9, 'Sylvia', 'njuguna', 'sylvianjuguna@gmail.com', 'ef447f9235a00c70916fd3c9deee1620', '0704232172', 'seasons', 'seasons'),
(10, 'NJAMBI', 'LUCY', 'njambilucy18@gmail.com', '1d0433f28b42e581ef7fda562e6b7e13', '0734428132', 'jatsun', 'victon'),
(11, 'Idah ', 'Wambui', 'idhahwambui@gmail.com', '6ebe76c9fb411be97b3b0d48b791a7c9', '0791852258', 'Ruiru', 'Ruiru'),
(12, 'Meshack ', 'Kipkorir', 'meshackkipkorir105@gmail.com', '105199748217062', 'ustakejua', 'juja', 'juja'),
(13, 'Shadrack', 'Yator', 'skipprono@gmail.com', 'eec09098837a1190356e7349afd011b4', '0727869877', 'eldoret', 'kimumu'),
(14, 'Gloria', 'Rono', 'ronogloria97@gmail.com', '1a6f6e493d567c06f0811ecb362f1f6a', '0799308299', '186-30700 iten', '186-30700 i');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
