-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2022 at 01:30 AM
-- Server version: 8.0.29
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-01-24 16:21:18', '01-07-2020 03:25:30 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(2, 'Mens Wallet', 'Mens leather Wallets', '2022-11-26 22:52:52', NULL),
(3, 'Greeting Cards', 'Wish cards for the best presents like birthday or anniversary  ', '2022-11-26 22:54:18', NULL),
(4, 'Dolls ', 'Dolls imported from international market ', '2022-11-26 22:56:30', NULL),
(5, 'Hand Bags', 'luxury Leather bags for girls', '2022-11-26 22:57:09', NULL),
(6, 'Beauty Products', 'Beauty products like cosmetics,facewash......', '2022-11-26 22:57:52', NULL),
(7, 'Gift Articles', 'Gift articles for present a special moments ', '2022-11-26 23:01:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `PersonID` int NOT NULL,
  `uc_name` varchar(50) DEFAULT NULL,
  `uc_email` varchar(50) DEFAULT NULL,
  `uc_message` varchar(50) DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `userId` int DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int NOT NULL,
  `orderId` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int NOT NULL,
  `productId` int DEFAULT NULL,
  `quality` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `value` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(1, 3, 1, 2, 2, 'hamza', 'asas', 'asas', '2022-11-27 00:10:44');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `category` int NOT NULL,
  `subCategory` int DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int DEFAULT NULL,
  `productPriceBeforeDiscount` int DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(3, 2, 2, 'Carhartt Men\'s Billfold and Passcase Wallets, Durable Bifold Wallets, Available in Leather and Canvas Styles', 'Carhartt', 3500, 3700, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Carhartt Men\'s Saddle Leather Bifold Wallet. Men\'s leather passcase with reinforced stitched edges</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Keep your ID and essential cards within easy reach. This men\'s bifold wallet is made of rugged and smooth full-grain leather with a slim design and stitched on Carhartt&nbsp;</span></li></ul>', 'b3.jpg', 'b2.jpg', 'b1.jpg', 85, 'In Stock', '2022-11-26 23:12:37', NULL),
(4, 2, 2, 'SERMAN BRANDS - Wallets for Men Slim Mens leather RFID Blocking Minimalist Card Front Pocket ', 'SERMAN BRANDS', 3999, 5000, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">PATENT PENDING - 12 MONTH WARRANTY, The SERMAN BRANDS Warranty covers any factory defects as a result from the manufacturing process of the product.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">SAFETY. PRIVACY. SECURITY - Our minimalist wallets for men are equipped with advanced RFID Blocking Technology, a unique metal composite, engineered specifically to block 13.56 MHz or higher RFID signals and protect the valuable information stored on RFID chips from unauthorized scans</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">SLIM AND STYLISH – Bifold is made with the finest full grain genuine leather that develops a richer texture and establishes stronger character and color with use. Designed Quick Access ID Windows, Best Fits 8-10 cards plus US bills, and a minimal Pull-tab design to reduce bulk - Wallet Size: 4.25\" in. x 3.1\" in. .4\" in.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">HOW IT WORKS- At last! A slim travel wallet that will meet your everyday needs. The SERMAN BRANDS slim wallet is equipped with a front pocket for your daily card, 4 quick draw interior pockets, and a smart strap that lets you get to your everyday credit cards. Most currencies fit easily with a half fold,</span></li></ul>', 's1.jpg', 's2.jpg', 's3.jpg', 250, 'In Stock', '2022-11-26 23:14:11', NULL),
(5, 2, 2, 'he Ridge Minimalist Slim Wallet For Men - RFID Blocking Front Pocket Credit Card Holder - Aluminum Metal', 'Ridge', 4999, 6000, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">LIFETIME GUARANTEE – We chose our military-grade materials for their durability and, in turn, created a wallet that’ll last a lifetime — guaranteed. If you ever feel your wallet isn’t functioning properly, you can make a claim and we’ll do our best to make it right. This includes the replacements of elastic, screws, money clip, and cash strap plate. Each purchase of The Ridge is just the beginning of many years of you carrying a better wallet.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">RFID BLOCKING – Breathe easy because your cards will be surrounded by the metal body of this wallet protecting them from even the most powerful RFID Chip Readers.</span></li></ul>', 'd1.jpg', 'd2.jpg', 'd3.jpg', 250, 'In Stock', '2022-11-26 23:15:33', NULL),
(6, 2, 2, 'Timberland Men\'s Genuine Leather RFID Blocking Trifold Wallet', 'Timberland', 3000, 3500, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Made in the USA or Imported</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Leather lining</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Trifold closure</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Hand Wash</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">100% GENUINE LEATHER TRIFOLD WALLET - This mens trifold wallet is crafted from genuine leather, with a soft texture that is very smooth to the touch and will look terrific even as it ages with everyday use</span></li></ul>', 'w1.jpg', 'w2.jpg', 'w3.jpg', 150, 'In Stock', '2022-11-26 23:17:00', NULL),
(7, 7, 7, 'Rolex Men\'s 8926OB Pro Diver Collection Coin-Edge Automatic Watch', 'Rolex', 9999, 12000, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Gold tone stainless steel case 40mm diameter x 14.5mm thick; Exhibition case back; Military Green dial; Luminous hands</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">NH35A Japanese Automatic movement, 24 jewel; Assembled in Malaysia; Watch weight: 155 grams</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Gold tone stainless steel band, 205mm L x 20mm W; Band is adjustable by adding/removing links; Fold over safety clasp</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Mineral crystal; Screw-down crown; Uni-directional stainless steel bezel with military green top bezel ring; 200 meter water resistant: Suitable for professional marine activity and surface water sports.</span></li></ul>', 'a2.jpg', 'a1.jpg', 'a3.jpg', 650, 'In Stock', '2022-11-26 23:21:02', NULL),
(8, 7, 7, 'Casio F-108WH-1ACF Big Square Digital Display Quartz Black Watch', 'casio', 17000, 18500, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Imported</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Square watch with digital display featuring LED light, daily alarm, and hourly time signal</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">42.4 mm stainless steel case with mineral dial window</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Quartz movement with digital display, 1/100 Sec. Stopwatch</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Resin band with buckle closure</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Water Resistant; Accuracy : ±30 Seconds a month</span></li></ul>', 'c1.jpg', 'c3.jpg', 'c2.jpg', 85, 'In Stock', '2022-11-26 23:22:34', NULL),
(9, 7, 7, 'Fossil Men\'s Nate Stainless Steel Quartz Chronograph Watch', 'Fossil', 12500, 15000, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Fossil has always been inspired by American creativity and ingenuity. Since 1984, we’ve strived to bring new life into the industry by making quality, fashionable watches and accessories that were both fun and accessible</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">For a bold, oversized look that\'s certain to be noticed, choose Nate! Its clean, military-inspired design with oversized lugs and bold details offers a laid-back yet rugged feel that is perfect for any adventure, day or night</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Case size: 50mm; Band size: 24mm; quartz movement with chronograph analog display and date window; hardened mineral crystal lens resists scratches; imported</span></li></ul>', 'b1.jpg', 'b2.jpg', 'b3.jpg', 85, 'In Stock', '2022-11-26 23:23:56', NULL),
(10, 7, 7, 'Samsung Smart watch Gear 4', 'Samsung', 45000, 60000, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Get inspired and stay accountable with Versa 4 + Premium - learn when to work out or recover, see real-time stats during exercise and find new ways to keep your routine fresh and fun</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Built for better fitness results: Daily Readiness Score(1), built-in GPS and workout intensity map, Active Zone Minutes, all-day activity tracking and 24/7 heart rate, 40+ exercise modes and automatic exercise tracking</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Tools to measure and improve sleep quality: personalized Sleep Profile(1), daily sleep stages &amp; Sleep Score, smart wake alarm and do not disturb mode</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Maintain a healthy body and mind: daily Stress Management Score, reflection logging, SpO2(2), health metrics dashboard(3), guided breathing sessions, menstrual health tracking and mindfulness content</span></li></ul>', 'd2.jpg', 'd1.jpg', 'd3.jpg', 50, 'In Stock', '2022-11-26 23:26:00', NULL),
(11, 3, 3, 'Hallmark All Occasion Boxed Set of Assorted Blank Greeting Cards with Card Organizer (Pack of 100)—Birthday, Thank You, Congratulations, Wedding, Baby, Thinking of You, Sympathy', 'Cardboard', 399, 500, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Send a note of celebration, sympathy, or encouragement with one of the versatile assorted cards in this boxed set.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Covers feature modern designs, accented with embossing, glitter, and metallic foil. Each card is blank inside.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Assortment includes 2 each of 50 designs (100 total): 12 birthday cards; 5 thank you cards; 4 Christmas cards; 3 congratulations cards, wedding cards, thinking of you cards, blank cards; 2 baby shower cards, encouragement cards, get well cards, sympathy cards, housewarming cards, and Valentine\'s Day cards; 1 just because card, New Year\'s card, Mother\'s Day card, Father\'s Day card, and graduation card.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Cards measure 4\" x 6\" and come with coordinating envelopes, and a polka dot storage box with organizational dividers.</span></li></ul>', 'a2.jpg', 'a1.jpg', 'a3.jpg', 45, 'In Stock', '2022-11-26 23:28:07', NULL),
(12, 3, 3, 'Amazon Basics Thank You Cards, Black and White, 48 Cards and Envelopes', 'Cardboard', 500, 700, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">48 thank-you cards (+ 48 envelopes); ideal for personal or professional use</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Assortment of 3 designs (16 cards + envelope per design); matte black and white</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Durable same-size brown kraft envelope fits the card snugly and closes with a water-activated adhesive seal</span></li></ul>', 'b1.jpg', 'b2.jpg', 'b3.jpg', 45, 'In Stock', '2022-11-26 23:30:02', NULL),
(13, 3, 3, 'Image Arts Boxed Religious Christmas Cards Assortment, Peace on Earth', 'Cardboard', 250, 500, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">This boxed set of religious Christmas cards contains everything you need to send warm wishes to friends and family this holiday season.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Holiday cards feature four unique designs, accented with gold foil. Inside message for each design: Peace on Earth design reads, \"Peace in every heart, joy to all the world . . . May God bless you this season;\" joy design, \"A wish that God\'s peace and the joy of Christmas will fall gently over you and those you love;\" star design, \"Hope the light of God\'s love and His presence in our world shine even brighter for you this Christmas;\" church design, \"In this season of joy and rejoicing, may you and yours be especially blessed.\"</span></li></ul>', 'c1.jpg', 'c2.jpg', 'c3.jpg', 15, 'In Stock', '2022-11-26 23:31:24', NULL),
(14, 3, 3, 'Hallmark Boxed Christmas Cards, Snowy Wreath (40 Cards and Envelopes)', 'Cardboard', 600, 850, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">This boxed set of Christmas cards contains everything you need to send warm wishes to friends and family this season.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Holiday cards feature a glittery photographic design of a cheery wreath dusted with snow. Inside reads: \"Meaningful, memorable, merry and bright . . . wishing you a Christmas season that\'s everything you could hope for and more.\"</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">A great value—pack of 40 provides enough cards to send season\'s greetings to everyone on your holiday list.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Christmas cards measure 5\" x 7.2\" and come with a coordinating envelope.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Printed on high quality paper stock, Hallmark\'s eco-friendly greeting cards are made with paper from well-managed forests.</span></li></ul>', 'd3.jpg', 'd2.jpg', 'd1.jpg', 45, 'In Stock', '2022-11-26 23:32:26', NULL),
(15, 6, 6, 'Revlon Lipsticks New Edition', 'Revlon', 1299, 1999, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">3 PIECE MATTE FINISH LIPSTICK KIT: Includes these comfortable shades 001 If I Want To (Nude/Brown), 004 Wild Thoughts (Pink), 021 Black Cherry (Plum/Berry)</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">ADDICTIVELY COMFORTABLE MATTE FORMULA: No drag or drying out lips. Just perfectly matte, totally luxe shades</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">SMOOTHING AND HYDRATING INGREDIENTS: Our moisturizing lipstick formula is infused with a luxurious botanical blend of agave, moringa oil, and cupuacu butter that feels amazing on lips</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">LUXE PACKAGING: Our ultra-chic, embossed lipstick bullet comes in a sleek, matte to the-touch tube you\'ll want the world to see, and is perfect for gifting</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">FIND YOUR PERFECT LIP KIT: Our most iconic lipstick is available in matte, cream, and pearl finishes, plus a glossy shine lip gloss. Discover the new Revlon Super Lustrous Lipstick Kits, exclusively sold on Amazon</span></li></ul>', 'b1.jpg', 'b2.jpg', 'b3.jpg', 50, 'In Stock', '2022-11-26 23:34:42', NULL),
(16, 6, 6, 'Lipstick By Wet n Wild Mega Last High-Shine Lipstick Lip Color Makeup, ', 'Wet n Wild', 999, 2000, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Mega Last High Shine Lipstick: This lush lipstick is infused with Murumuru Butter, Mango Butter, and Sunflower and Watermelon Seed Oils to nourish lips while delivering long wearing buildable lip color</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Perfect Your Pout: Available in 13 Cruelty-free, Gluten-free, and Fragrance-free shades, this long wearing, creamy lip color has a buildable formula that glides on easily and won\'t feather or bleed</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Best Face Forward: From bronzer and blush to primer, highlighter, natural finish powder, and concealer, we\'ve got you covered and photo ready for your next big thing. You\'ve met your true makeup match</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Always Cruelty Free: We are 100% cruelty free and always have been. We also carry vegan makeup &amp; tools such as foundation, nail polish, contour palettes, lipstick, makeup brushes and more</span></li></ul>', 'c1.jpg', 'c2.jpg', 'c3.jpg', 85, 'In Stock', '2022-11-26 23:36:07', NULL),
(17, 6, 6, 'CeraVe Foaming Facial Cleanser | Daily Face Wash for Oily Skin with Hyaluronic Acid, Ceramides, and Niacinamide| Fragrance Free Paraben Free | 16 Fluid Ounce', 'CeraVe', 1199, 1500, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">[ FOAMING FACIAL CLEANSER ] Dispenses as a clear gel cleanser and transforms into a foam as you lather. Cleanses without leaving skin feeling tight, dry, or stripped</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">[NON- DRYING FACE CLEANSER] Fragrance-free, paraben free, non-comedogenic, non-drying, and non-irritating. Gently refreshes and effectively removes excess oil, dirt, and makeup</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">[ MULTI-USE SKIN CARE ] Skin Cleanser for face and/or body and can be used as a hand wash. Suitable for daily cleansing morning (AM) and night (PM) for normal to oily skin</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">[ 3 ESSENTIAL CERAMIDES ] Ceramides are found naturally in the skin and make up 50% of the lipids in the skin barrier. All CeraVe products, formulated with three essential ceramides (1, 3, 6-II)to help maintain the skin’s natural barrier.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">[ DEVELOPED WITH DERMATOLOGISTS &amp; #1 DERMATOLOGIST RECOMMENDED SKINCARE BRAND ] CeraVe Skincare is developed with dermatologists and has products suitable for dry skin, sensitive skin, oily skin, acne-prone, and more.</span></li></ul>', 'd1.jpg', 'd2.jpg', 'd3.jpg', 50, 'In Stock', '2022-11-26 23:37:44', NULL),
(18, 6, 6, 'Clean & Clear Oil-Free Deep Action Exfoliating Facial Scrub, Cooling Daily Face Wash With Exfoliating Beads for Smooth Skin, Cleanses Deep Down to the Pores to Remove Dirt, Oil & Makeup,', 'Clean & Clear', 1999, 2500, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">7-ounce value size of Clean &amp; Clear Oil-Free Deep Action Exfoliating Facial Scrub to help clean deep down to the pores, exfoliate surface skin to remove dirt, oil and makeup and smooth skin</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">The oil-free formula of the daily facial scrub is designed to invigorate facial skin. This deep exfoliating scrub provides a tingly, cooling sensation as you gently massage it on skin, leaving skin feeling refreshed</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">The unique oil-free formula of this cooling face wash works to remove dirt, oil and even makeup from the surface of your skin and will rinse clean so it won\'t clog pores</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Cleansing deep down to the pores action goes to work using natural micro-scrubbers to exfoliate surface skin while invigorating skin and leaving it feeling soft, soothed and refreshed</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">To use, gently massage exfoliating wash on face and rinse thoroughly. Exfoliating facial scrub is suitable for everyday use for refreshing,</span></li></ul>', 'e1.jpg', 'e2.jpg', 'e3.jpg', 250, 'In Stock', '2022-11-26 23:39:40', NULL),
(19, 6, 6, 'Facial Kit 24pcs Impoorted', 'Importance due', 7500, 9000, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">NATURAL FACE CLEANSER: Infused with rice extracts and aloe vera, Burt’s Bees 98;9% natural origin fragrance-free sensitive face cleanser provides hydration and won\'t clog pores to achieve smooth skin</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">DERMATOLOGIST TESTED: Burt’s Bees hypoallergenic cleanser face wash for sensitive skin is Dermatologist and allergy tested, and was Awarded National Eczema Association Seal of Acceptance</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">BURT\'S BEES SKIN CARE: Use Burt’s Bees facial cleanser wash as a part of your daily Burt\'s Bees 5 product sensitive face care regimen for a natural and healthy-looking complexion</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#1 Dermatologist Recommended Natural Skincare Brand</span></li></ul>', 'f1.jpg', 'f2.jpg', 'f3.jpg', 50, 'In Stock', '2022-11-26 23:41:28', NULL),
(20, 5, 5, 'ALDO Women\'s Jerilini Top Handle Bag', 'ALDO', 6999, 7999, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Faux Leather</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Imported</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Synthetic Material: Each bag is made of quality durable faux leather.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">1 big compartment with a smaller one</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Removable / Adjustable Crossbody strap</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Handle Drop Length: 4\'\'</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Strap Drop Length: 23\'\'</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Bag Dimensions: 10.5\" W x 8.5\" H x 4.5\" D</span></li></ul>', 'a1.jpg', 'a2.jpg', 'a3.jpg', 85, 'In Stock', '2022-11-26 23:44:23', NULL),
(21, 5, 5, 'Fossil Women\'s Fiona Large Crossbody Purse Handbag', 'Fossil', 8500, 9999, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">100 Synthetic</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Imported</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Fossil has always been inspired by American creativity and ingenuity. Since 1984, we’ve strived to bring new life into the industry by making quality, fashionable watches and accessories that were both fun and accessible.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">For adventures near or far, Fiona\'s structured design, easy-access pockets and vintage details make it easy to haul everything (and then some).</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Faux Leather Crossbody Bag; Zipper Closure; imported</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Exterior Details: 1 Back Slide Pocket, 1 Front Zipper Pocket, 2 Front Slide Pockets; Interior Details: 1 Zipper Pocket, 2 Slide Pockets; Device Compatibility: iPad Pro 9.7</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Measurements: 11.88\"L x 2.75\"W x 9.88\"H; 1 Adjustable &amp; Detachable Crossbody Strap</span></li></ul>', 'b1.jpg', 'b2.jpg', 'b3.jpg', 250, 'In Stock', '2022-11-26 23:45:26', NULL),
(22, 5, 5, 'Vera Bradley Women\'s Cotton Small Vera Tote Bag', 'Vera Bradley', 15000, 17000, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">100% Cotton</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Imported</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Fibers,Polyester,Lining,Cotton lining</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Zipper closure</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Machine Wash</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">MACHINE WASHABLE RECYCLED COTTON – The cotton fabric that you’re familiar with has been reimagined; this sustainable fabric is made from recycled cotton fibers and has all of the comfort, softness, and vibrancy that you know and love.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">EVERYDAY USE - Vera Bradley tote bags are perfect for any occasion - whether you are heading to work, on a weekend getaway, going to a party, or traveling, they are your perfect daily companion - &amp; make great gifts too</span></li></ul>', 'c1.jpg', 'c2.jpg', 'c3.jpg', 50, 'In Stock', '2022-11-26 23:46:49', NULL),
(23, 5, 5, 'NINE WEST Brooklyn Jet Set Carryall', 'Carryall', 1500, 18000, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Are your casual looks a little too plain? Add this trendy top handle handbag and spruce up your daily outfits, versatile it can also be worn as a crossbody.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Made of synthetic materials.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">This handbag features one compartment, stylish and functional to store your cell phone, wallet, or any other essential you need near by.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">This small sized hangbag is the perfect compact acessory for taking your outfits from day to night. Dimension: 7.874 x 3.5433 x 5.70865</span></li></ul>', 'd1.jpg', 'd2.jpg', 'd3.jpg', 850, 'In Stock', '2022-11-26 23:48:38', NULL),
(24, 4, 4, 'Barbie Daisy Doll, Pink Hair,', 'Barbie', 3999, 5000, '<div><font color=\"#0f1111\" face=\"Amazon Ember, Arial, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">This small sized Dolls is the perfect compact accessory&nbsp; Dimension: 7.874 x 3.5433 x 5.70865</span></li></ul>', 'a1.jpg', 'a2.jpg', 'a3.jpg', 50, 'In Stock', '2022-11-26 23:52:22', NULL),
(25, 4, 4, 'Barbie Yoga Doll,  ', 'Barbie', 1800, 2000, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Additional accessories provide the ingredients to inspire the imaginations of young food lovers -a mixing bowl and spoon, a box of cake mix, a spatula and an oven mitt that fits Barbie doll\'s hand</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Barbie has also partnered with Tynker to encourage hands-on exploration with its creative computing platform and inspire new ways to play, like using coding concepts to frost cupcakes and decorate cakes</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">The playset baking action is easy to activate. Place the pan with the pound cake or the pan with the cupcakes into the oven and turn the timer to the right -the timer dings and the baked treat inside pops up</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">The pink and white oven features plug-and-play design and signature style -smaller accessories fit into pockets for stay-in-place play and easy clean up.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">Barbie bakery chef doll looks sweet wearing a dress with a colorful cupcake decal on her white top and a denim skirt on the bottom, a pair of white sneakers, a red headband with bow and a red apron with colorful cupcake print.</span></li></ul>', 'b1.jpg', 'b2.jpg', 'b3.jpg', 45, 'In Stock', '2022-11-26 23:55:45', NULL),
(26, 4, 4, 'Surprise Hair Hair Hair Dolls, Series 2 with 10 Surprises- Collectible Doll with Real Hair, Including Stylish Fashion Accessories, Holiday Toy, Great Gift for Kids Girls Boys Ages 4 5 6+', 'Barbie', 4999, 6000, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">STYLE AND PLAY: Each outrageous character comes with real hair and multiple accessories to brush, style, and accessorize for tons of unique looks. Mix and match for never-ending hairstyles!</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">UNBOX 10 SURPRISES, including: (1) LOL Surprise Hair Hair Hair Doll; (2) Outfit; (3) Shoes; (4) Accessory; (5) Bottle; (6) Hairbrush; (7) Hair Accessories; (8) Scrunchie; (9) Rubber Bands; (10) Hair Roller</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">COLOR REVEAL. Bathe your LOL Surprise Hair Hair Hair doll to reveal a color change surprise!</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">COLLECT all 8 characters and design your own fierce looks with the whole crew!</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">WINDOW BOX PACKAGING: See your B.B.\'s fabulous hair and fashions before you unbox! Visit the LOL Surprise Amazon Store to see all the latest collections for great gifts and stocking stuffers!</span></li></ul>', 'c1.jpg', 'c2.jpg', 'c3.jpg', 50, 'In Stock', '2022-11-26 23:56:49', NULL),
(27, 4, 4, 'Babies Jenna Fashion Doll with 9+ Surprises Including Outfit and Accessories for Fashion Toy, Girls and Boys Ages 4 and Up, 7.8 Inch Doll', 'Barbie', 1600, 2000, '<div id=\"featurebullets_feature_div\" class=\"celwidget\" data-feature-name=\"featurebullets\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"featurebullets\" data-csa-c-slot-id=\"featurebullets_feature_div\" data-csa-c-asin=\"B09R5ZTWHQ\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"6sn06g-j7w51m-2ag28l-h8ylt4\" data-cel-widget=\"featurebullets_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><div id=\"feature-bullets\" class=\"a-section a-spacing-medium a-spacing-top-small\" style=\"box-sizing: border-box; margin-top: 8px !important; margin-bottom: 0px;\"><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">UNBOX 9+ SURPRISES including a BFF fashion doll, fashions, and accessories!</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">TRENDY FASHIONS: Unbox Jenna\'s fashions and accessories to get her ready for any adventure! They are articulated which make it super easy to pose them just like the images on the packaging!</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">FUN UNBOXING: Spin the cylinders to see Jenna strike different poses! Open to reveal her closet and accessories! Discover your doll in the cylinder portion!</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">INCLUDES: 1 doll, 2 pieces of clothing, a bag, a headband, a pair of matching shoes with a pair of socks and a necklace!</span></li><li></li></ul></div></div><div id=\"provenanceCertifications_feature_div\" class=\"celwidget\" data-feature-name=\"provenanceCertifications\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"provenanceCertifications\" data-csa-c-slot-id=\"provenanceCertifications_feature_div\" data-csa-c-asin=\"B09R5ZTWHQ\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"jx2ncp-2sgaa7-8h4twb-s8hasi\" data-cel-widget=\"provenanceCertifications_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"></div><div id=\"serviceCapabilities_feature_div\" class=\"celwidget\" data-feature-name=\"serviceCapabilities\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"serviceCapabilities\" data-csa-c-slot-id=\"serviceCapabilities_feature_div\" data-csa-c-asin=\"B09R5ZTWHQ\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"mmporv-z77cdm-kt0ldi-be1n7p\" data-cel-widget=\"serviceCapabilities_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"></div>', 'd1.jpg', 'd3.jpg', 'd2.jpg', 300, 'In Stock', '2022-11-26 23:58:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int NOT NULL,
  `categoryid` int DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Mens Wallet', '2022-11-26 22:43:22', NULL),
(2, 2, 'Mens Wallet', '2022-11-26 23:01:35', NULL),
(3, 3, 'Greeting Cards', '2022-11-26 23:01:40', NULL),
(4, 4, 'Dolls', '2022-11-26 23:01:45', NULL),
(5, 5, 'Hand Bags', '2022-11-26 23:01:48', NULL),
(6, 6, 'Beauty Products', '2022-11-26 23:01:52', NULL),
(7, 7, 'Gift Articles', '2022-11-26 23:02:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int NOT NULL,
  `userId` int DEFAULT NULL,
  `productId` int DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`PersonID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `PersonID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
