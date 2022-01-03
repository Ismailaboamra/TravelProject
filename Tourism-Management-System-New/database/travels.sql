-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jan 02, 2022 at 03:01 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travels`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertise`
--

CREATE TABLE `advertise` (
  `aid` int(11) NOT NULL,
  `aname` varchar(10) NOT NULL,
  `ad_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `advertise`
--

INSERT INTO `advertise` (`aid`, `aname`, `ad_img`) VALUES
(1, 'College ad', 'images//ads//ad1.jpg'),
(2, 'Amazon Ads', 'images//ads//ad2.jpg'),
(3, 'Audible Ad', 'images//ads//ad3.jpg'),
(4, 'ezoic ad', 'images//ads//ad4.jpg'),
(5, 'management', 'images//ads//ad5.jpg'),
(6, 'Food ad', 'images//ads//ad6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(10) NOT NULL,
  `ffirst` varchar(20) NOT NULL,
  `flast` varchar(20) NOT NULL,
  `femail` varchar(30) NOT NULL,
  `city` varchar(20) NOT NULL,
  `fphone` int(15) NOT NULL,
  `fdesti` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `ffirst`, `flast`, `femail`, `city`, `fphone`, `fdesti`) VALUES
(1, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'Honnavar', 2147483647, 'Eilat'),
(2, 'kiran', 'Naik', 'kirannaik1@gmail.com', 'Honnavar', 845868956, 'banias River'),
(7, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'Honnavar', 2147483647, 'jurselm'),
(8, 'Hitesh', 'HT', 'hitesh45jk@gmail.com', 'Udupi', 458696561, 'TheDeadSea'),
(9, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'Honnavar', 2147483647, 'Sea of Galilee'),
(10, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'Honnavar', 2147483647, 'nazareth'),
(11, 'Gajanan', 'Bhat', 'gajabhat@gmail.com', 'Kumta', 2147483647, 'mountain hermon'),
(12, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'Honnavar', 2147483647, 'Kerala'),
(13, 'Adil', 'SS', 'mail@gmail.com', 'Chicago', 2147483647, 'Eilat'),
(14, 'Mahesh', 'np', 'maheshnp@gmail.com', 'Eilat', 1485966311, 'TheDeadSea'),
(15, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'Sea of Galilee', 2147483647, 'Sea of Galilee'),
(16, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'Jaffa', 2147483647, 'Jaffa'),
(17, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'h', 2147483647, 'Jaffa'),
(18, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'h', 2147483647, 'Jaffa'),
(19, '', '', '', '', 0, ''),
(20, '', '', '', '', 0, ''),
(21, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'h', 2147483647, 'Jaffa'),
(22, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'h', 2147483647, 'Jaffa'),
(23, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'h', 2147483647, 'Jaffa'),
(24, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'h', 2147483647, 'Jaffa'),
(25, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'h', 2147483647, 'Jaffa'),
(26, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'h', 2147483647, 'Jaffa'),
(27, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'h', 2147483647, 'Jaffa'),
(28, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'h', 2147483647, 'Jaffa'),
(29, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'h', 2147483647, 'Jaffa'),
(30, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'h', 2147483647, 'Jaffa'),
(31, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'h', 2147483647, 'Jaffa'),
(32, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'Mangalore', 2147483647, 'Akko'),
(33, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'Mangalore', 2147483647, 'Eliate');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `cid` int(10) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `comment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`cid`, `pname`, `comment`) VALUES
(7, 'Eilat', 'this place is good to visit please come here!!!'),
(37, 'Eilat', 'super place to visit'),
(40, 'Eilat', 'nice experience '),
(43, 'Eilat', 'I had good experience in this tour'),
(50, 'Eilat', 'best place has good whether'),
(51, 'banias River', 'good wheather nice place nice peoples best experience'),
(52, 'nazareth', 'little bit trafic is there and rest is good'),
(53, 'jurselm', 'very good wheather nice place and good service by the company'),
(54, 'Eilat', 'good website'),
(55, 'nazareth', 'best place has good whether  nice place good people');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `city` varchar(10) NOT NULL,
  `phone` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `fname`, `password`, `email`, `city`, `phone`) VALUES
(34, 'admin', 'Adm12345', 'admintms@gmail.com', 'Honnavar', 8971046276),
(51, 'Ganesh', 'Gane1234', 'ganeshravinaik2001@gmail.com', 'Honnavar', 8971046276),
(72, 'Aditya', 'Adi12389', 'adityag45@gmail.com', 'Manglore', 8574968283),
(73, 'Gajanan', 'GAjju700', 'gajabhat@gmail.com', 'Kumta', 7984768581),
(74, 'Kiran', 'AJkiran1', 'kiranaj56@gmail.com', 'Honnavar', 7586949199),
(75, 'Prasad', 'Pra23444', 'prasad24@gmail.com', 'Honnavar', 7485961256),
(76, 'Mahesh', 'Mahi1233', 'maheshmm@gmail.com', 'Kumta', 9978488656),
(78, 'Nishchay', 'Nishi789', 'nishibhatt234@gmail.com', 'Udupi', 7485961236),
(80, 'niyAT', 'G@nesh12', 'ganeshravinaik2001@gmail.com', 'Mangalore', 8971046276);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `feedbk` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `feedbk`) VALUES
(1, 'joy', 'joy123@gmail.com', 'good website'),
(2, 'amar', 'amar56@gmail.com', 'nice website'),
(3, 'adam', 'adamgray@gmail.com', 'your website looks good and nice user interface'),
(4, 'adam', 'adamgray@gmail.com', 'your website looks good and nice user interface'),
(5, 'arjun', 'arjun45@gmal.com', 'good website'),
(6, 'Hitesh', 'hitesh43jk@gmai.com', 'its good website nice user interface'),
(7, 'kiran', 'kiran35@gmail.com', 'this is a good website');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `hid` int(10) NOT NULL,
  `hname` varchar(20) NOT NULL,
  `hphone` varchar(15) NOT NULL,
  `hcity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hid`, `hname`, `hphone`, `hcity`) VALUES
(1, 'Taj Hotel', '78869565', 'Mumbai'),
(2, 'Hotel High', '78869565', 'Benglore');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `placeid` int(10) NOT NULL,
  `pname` varchar(30) NOT NULL,
  `pdescription` varchar(10000) NOT NULL,
  `pi_main` varchar(1000) NOT NULL,
  `pi1` varchar(1000) NOT NULL,
  `pi2` varchar(1000) NOT NULL,
  `pi3` varchar(1000) NOT NULL,
  `package` int(20) NOT NULL,
  `likes` int(255) NOT NULL,
  `temprature` int(10) NOT NULL,
  `duration` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`placeid`, `pname`, `pdescription`, `pi_main`, `pi1`, `pi2`, `pi3`, `package`, `likes`, `temprature`, `duration`) VALUES
(1, 'Eilat', 'Calangute is the most popular holiday destination in Goa. Calangute Beach is colloquially know as the Queen of all the Beaches. Excellent accommodation facilites are available, particularly at the tourist resorts and cottages.\r\nThe Beaches of Goa are much ahead of other beaches in India in terms of popularity and the facilities that are available here. The beaches here have been accepted as a matter of life, there are exotic cuisine backing the pleasure of have on sun and sand, and water sports facilities that include from water scooters to water gliding. To add on you can shake your legs for some time with a glass of feni and beer, engaged in shopping on the beachside, or have midnight bonfire on the beach.', 'images//destination//goa1.jpg', 'images//destination//goa2.jpg', 'images//destination//goa3.jpg', 'images//destination//goa4.jpg', 15000, 34, 31, 6),
(2, 'banias River', 'A state in Southern India is known as a tropical paradise of waving palms and wide sandy beaches. It is a narrow strip of coastal territory that slopes down the Western Ghats in a cascade of lush green vegetation, and reaches to the Arabian sea. Kerala borders the states of Tamil Nadu to the east and Karnataka to the north. It is also known for its backwaters, mountains, coconuts, spices and art forms like Kathakali and Mohini Attam. It is the most literate state in India, and a land of diverse religions, where you can find Hindu temples, mosques, churches, and even synagogues. With world class tourist sporting options, ayurvedic spas and treatments, eco-tourism initiatives, Kerala has much to offer the visitor.', 'images//destination//kerala1.jpg', 'images//destination//kerala2.jpg', 'images//destination//kerala3.jpg', 'images//destination//kerala4.jpg', 10000, 163, 38, 5),
(3, 'jurselm', 'Mysore Palace, also called Amba Vilas Palace, is one of the most magnificent and largest palaces in India. Situated in the southern state of Karnataka, it used to be the official residence of the Wodeyar Dynasty, the rulers of Mysore from 1399 to 1950. The grand palace stands tall in the heart of Mysore city and attracts visitors from across the world. Being one of the prime attractions in India after the Taj Mahal, it certainly deserves a place in every traveler’s bucket list. So why not visit Mysore Palace this holiday season?', 'images//destination//mysore1.jpg', 'images//destination//mysore2.jpg', 'images//destination//mysore3.jpg', 'images//destination//mysore4.jpg', 9000, 10, 25, 4),
(4, 'TheDeadSea', 'Leh & Ladakh, situated amidst the Great Himalayas and the Karakoram ranges in the scenic state of Jammu and Kashmir, are two of the most spectacular places in the world where scores of tourists from across the globe throng annually. Emblems of pure paradisiacal beauty, Leh & Ladakh are all about awe-inspiring landscapes, picturesque green oasis, scintillating monasteries and quaint hamlets. You are taken in by the breathtaking beauty the moment you land in this incredible mountain town. Get mesmerised by the amazingly pristine blue sky and transfer to a world of complete solitude admiring the mountain flowers, the snow covered peaks, the streams flowing by and the deep valleys', 'images//destination//ladakh1.jpg', 'images//destination//ladakh2.jpg', 'images//destination//ladakh3.jpg', 'images//destination//ladakh4.jpg', 20000, 8, 28, 3),
(5, 'Sea of Galilee', 'The Taj Mahal is located on the right bank of the Yamuna River in a vast Mughal garden that encompasses nearly 17 hectares, in the Agra District in Uttar Pradesh. It was built by Mughal Emperor Shah Jahan in memory of his wife Mumtaz Mahal with construction starting in 1632 AD and completed in 1648 AD, with the mosque, the guest house and the main gateway on the south, the outer courtyard and its cloisters were added subsequently and completed in 1653 AD. The existence of several historical and Quaranic inscriptions in Arabic script have facilitated setting the chronology of Taj Mahal.', 'images//destination//tajmahal1.jpg', 'images//destination//tajmahal2.jpg', 'images//destination//tajmahal3.jpg', 'images//destination//tajmahal4.jpg', 19000, 23, 25, 8),
(6, 'mountain hermon', 'India Gate is one of many British monuments built by order of the Imperial War Graves Commission (later renamed Commonwealth War Graves Commission). The architect was Sir Edwin Lutyens, an Englishman who designed numerous other war memorials and was also the principal planner of New Delhi. The cornerstone was laid in 1921 by the duke of Connaught, third son of Queen Victoria. Construction of the All-India War Memorial, as it was originally known, continued until 1931, the year of the formal dedication of New Delhi as the capital of India.', 'images//destination//india_gate1.jpg', 'images//destination//india_gate2.jpg', 'images//destination//india_gate3.jpg', 'images//destination//india_gate4.jpg', 10000, 37, 30, 5),
(8, 'TelAviv', 'Tel Aviv, is the most populous city in the Gush Dan metropolitan area of Israel. Located on the Israeli Mediterranean coastline and with a population of 460,613, it is the economic and technological center of the country. If East Jerusalem is considered part of Israel, Tel Aviv is the country\'s second most populous city after Jerusalem; if not, Tel Aviv is the most populous city ahead of West Jerusalem.[a]\r\n\r\nTel Aviv is governed by the Tel Aviv-Yafo Municipality, headed by Mayor Ron Huldai, and is home to many foreign embassies.[b] It is a beta+ world city and is ranked 41st in the Global Financial Centres Index. Tel Aviv has the third- or fourth-largest economy and the largest economy per capita in the Middle East.[6][7]', 'images//gallery//TelAviv3.jpg', 'images//destination//rajasthan2.jpg', 'images//destination//rajasthan3.jpg', 'images//destination//rajasthan4.jpg', 16000, 29, 20, 3),
(9, 'Haifa', 'Once called the \"end of the habitable world,\" Manali is an important hill station of northern India and is the destination of thousands of tourists every year. Its cool atmosphereprovides a perfect haven for the ones afflicted by the hot Indian summers. Besides offering quite a few places for sightseeing, Manali is also famous for adventure sports like skiing, hiking, mountaineering, paragliding, rafting, trekking, kayaking, and mountain biking. In brief, Manali-the veritable \"valley of the Gods\"-is an ideal place for the ones in search of both adventure and comfort.', 'images//destination//manali1.jpg', 'images//destination//manali2.jpg', 'images//destination//manali3.jpg', 'images//destination//manali4.jpg', 21000, 2, 26, 9),
(10, 'Jaffa', 'Srinagar, the summer capital is situated in the centre of Kashmir valley and is surrounded by five districts. In the north it is flanked by Kargil, in the South by Pulwama, in the north-west by Budgam. This extremely beautiful place tells the story of the love of the Mughal emperors. It possess deep green rice fields and river bridges, gardens in bloom, lakes rimmed by houseboats, a business center and holiday resort.', 'images//destination//srinagar1.jpg', 'images//destination//srinagar2.jpg', 'images//destination//srinagar3.jpg', 'images//destination//srinagar4.jpg', 21200, 1, 29, 7),
(11, 'Ramon Crater', 'Amritsar - Amritsar, literally Pool of Nectar, derives its name from Amrit Sarovar, the holy tank that surrounds the fabulous Golden Temple. First time visitors to Amritsar could be forgiven for the impression that Amritsar is like any other small town in northern India. In one sense, it is - with bustling markets, haphazard traffic, unyielding cattle, crowds and congestion typical of small town India. But Amritsar stands head and shoulders above any other city, its status elevated and sanctified by the presence of the venerable Golden Temple.', 'images//destination//amritsar1.jpg', 'images//destination//amritsar2.jpg', 'images//destination//amritsar3.jpg', 'images//destination//amritsar4.jpg', 19000, 2, 36, 4),
(12, 'Akko', 'Jog Falls are located in the Shimoga district of Karnataka. Four cascades, known as Raja, Rani, Rover and Rocket merge to form the huge waterfall on the Sharavathi River. The falls are locally known as Geruoppe Falls, Gersoppa Falls and Jogada Gundi. Jog itself is a Kannada word, which means falls. Jog Falls are unique as the water does not stream down the rocks in a tiered fashion; it thunders down the slope losing contact with the rocks, making it the tallest un-tiered waterfall in India. The beauty of the waterfalls is enhanced by the lush green surroundings, which provide a scenic backdrop. Visitors can hike to the base of the falls and take a plunge in the water.', 'images//destination//jogfalls1.jpg', 'images//destination//jogfalls2.jpg', 'images//destination//jogfalls3.jpg', 'images//destination//jogfalls4.jpg', 5000, 11, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user` varchar(10) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `date_time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user`, `pass`, `date_time`) VALUES
('adii', '784596', '2021-01-20 05:56:33am'),
('anusha', '45789656', '2021-01-20 06:06:24am'),
('adii', '123456', '2021-01-20 08:15:18am'),
('gaja', '12356', '2021-01-22 10:13:22am'),
('gaja', '123456', '2021-01-24 06:40:56am'),
('nishchay', 'nishi123', '2021-01-24 07:09:22am'),
('mahesh', '12345mn', '2021-01-24 07:10:00am'),
('admin', 'ad123', '2021-01-24 07:10:24am'),
('admin', 'ad123', '2021-01-25 05:54:18am'),
('admin', 'ad123', '2021-01-25 06:07:10am'),
('admin', 'ad123', '2021-01-25 06:09:19am'),
('admin', 'ad123', '2021-01-27 01:30:47pm'),
('admin', 'ad123', '2021-01-29 09:23:58am'),
('Gajanan', 'GAjju700', '2021-01-30 06:13:16pm'),
('Ganesh', 'Gane1234', '2021-01-30 06:24:15pm'),
('admin', 'ad123', '2021-06-08 04:11:53pm'),
('admin', 'ad123', '2021-09-19 03:24:26pm'),
('admin', 'ad123', '2021-09-19 04:41:06pm'),
('niyAT', 'G@nesh12', '2021-12-29 04:02:37pm'),
('admin', 'ad123', '2021-12-29 04:03:09pm'),
('admin', 'ad123', '2021-12-29 06:12:35pm'),
('admin', 'ad123', '2021-12-30 08:38:02am'),
('admin', 'ad123', '2021-12-30 08:59:35pm'),
('admin', 'ad123', '2021-12-31 03:09:59pm'),
('amar', 'Amar@123', '2021-12-31 03:58:43pm'),
('amar', 'Amar@123', '2021-12-31 04:01:36pm'),
('amar', 'Amar@123', '2021-12-31 04:47:47pm'),
('admin', 'ad123', '2021-12-31 07:49:01pm'),
('amar', 'Amar@123', '2022-01-01 09:21:25am'),
('admin', 'ad123', '2022-01-01 09:30:25am'),
('admin', 'ad123', '2022-01-01 01:26:22pm'),
('amar', 'Amar@123', '2022-01-01 01:26:46pm'),
('admin', 'ad123', '2022-01-01 02:46:19pm'),
('amar', 'Amar@123', '2022-01-01 02:49:51pm'),
('admin', 'ad123', '2022-01-01 02:53:03pm'),
('admin', 'ad123', '2022-01-01 03:36:27pm'),
('admin', 'ad123', '2022-01-01 04:08:22pm'),
('amar', 'Amar@123', '2022-01-01 04:08:59pm'),
('amar', 'Amar@123', '2022-01-02 01:33:39pm'),
('admin', 'ad123', '2022-01-02 01:40:30pm');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `city` varchar(10) NOT NULL,
  `cardname` varchar(20) NOT NULL,
  `cardnumber` varchar(100) NOT NULL,
  `expmonth` varchar(10) NOT NULL,
  `expyear` varchar(10) NOT NULL,
  `cvv` varchar(10) NOT NULL,
  `payId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`name`, `email`, `phone`, `city`, `cardname`, `cardnumber`, `expmonth`, `expyear`, `cvv`, `payId`) VALUES
('amar', 'amar@gmail.com', '4564655465', 'jurselm', 'Amar', '4596-7412-', 'April', '2022', '142', 1);

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `pid` int(10) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `pcity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`pid`, `pname`, `pcity`) VALUES
(1, 'Tajmahal', 'Agra'),
(2, 'Beach', 'Goa'),
(3, 'India Gate', 'Delhi'),
(4, 'Kerala Beach', 'Kerala'),
(5, 'Mysore Palace', 'Mysore'),
(6, 'Ladakh', 'Ladakh India');

-- --------------------------------------------------------

--
-- Table structure for table `travel_agent`
--

CREATE TABLE `travel_agent` (
  `aid` int(10) NOT NULL,
  `afname` varchar(20) NOT NULL,
  `apass` varchar(20) NOT NULL,
  `aemail` varchar(30) NOT NULL,
  `aphone` int(15) NOT NULL,
  `acity` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `certificate` varchar(30) NOT NULL,
  `available` varchar(10) NOT NULL,
  `vcertificate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `travel_agent`
--

INSERT INTO `travel_agent` (`aid`, `afname`, `apass`, `aemail`, `aphone`, `acity`, `type`, `certificate`, `available`, `vcertificate`) VALUES
(1, 'amar', 'Amar@123', 'amarraj123@gmail.com', 85749646, 'Eilat', 'Medical', 'Screenshot (15).png', 'Yes', 'Screenshot (263).png'),
(2, 'akhil', 'Akhi@123', 'akhil23@gmai.com', 45968678, 'banias River', 'Medical', 'Screenshot (13).png', 'Yes', ''),
(3, 'kiran', 'kira@123', 'kiru34@gmail.com', 78969665, 'jurselm', 'Medical', '', 'Yes', ''),
(4, 'satya', 'saty@123', 'satya@gmail.com', 2147483647, 'TheDeadSea', 'Medical', '', 'Yes', ''),
(5, 'Hasan', 'hasa@123', 'hasan@gmail.com', 2147483647, 'Sea of Galilee', 'Normal', '', 'Yes', ''),
(6, 'Adil', 'adil@123', 'adil@gmail.com', 2147483647, 'mountain hermon', 'Normal', '', 'Yes', ''),
(7, 'rihan', 'riha@123', 'rihan@gmail.com', 2147483647, 'nazareth', 'Normal', '', 'Yes', ''),
(8, 'vasim', 'vasi@123', 'vasim@gmail.com', 2147483647, 'TelAviv', 'Normal', '', 'Yes', ''),
(9, 'milka', 'milk@123', 'milka@gmail.com', 2147483647, 'Haifa', 'Normal', '', 'Yes', ''),
(10, 'vedalm', 'veda@123', 'vedalm@gmail.com', 2147483647, 'Jaffa', 'Normal', '', 'Yes', ''),
(11, 'shersha', 'sher@123', 'shersha@gmail.com', 2147483647, 'Ramon Crater', 'Normal', '', 'Yes', ''),
(12, 'sunny', 'sunn@123', 'sunny@gmail.com', 2147483647, 'Akko', 'Armed', 'Screenshot (17).png', 'Yes', ''),
(13, 'masuma', 'masu@123', 'masuma@gmail.com', 1485749636, 'banias River', 'Medical', '', 'No', ''),
(14, 'abuday', 'abud@123', 'abudaya@gmail.com', 2147483647, 'TelAviv', 'Armed', '', 'Yes', ''),
(16, 'deyya', 'deyy@123', 'deyya@gmail.com', 1452857496, 'Sea of Galilee', 'Armed', '', 'Yes', ''),
(17, 'deepa', 'deep@123', 'deepa@gmail.com', 758589645, 'nazareth', 'Normal', '', 'Yes', ''),
(18, 'Lalma', 'Lalm@123', 'Lalma@gmail.com', 2147483647, 'Akko', 'Normal', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertise`
--
ALTER TABLE `advertise`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fname` (`fname`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`placeid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payId`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `travel_agent`
--
ALTER TABLE `travel_agent`
  ADD PRIMARY KEY (`aid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertise`
--
ALTER TABLE `advertise`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `hid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `placeid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `travel_agent`
--
ALTER TABLE `travel_agent`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
