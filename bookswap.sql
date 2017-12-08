-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 08, 2017 at 07:24 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `bookswap`
--
CREATE DATABASE IF NOT EXISTS `bookswap` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bookswap`;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `isbn` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`isbn`, `title`, `author`) VALUES
(9780025929814, 'Optional web-enabled concept', 'Jacquetta Blomefield'),
(9780048660732, 'Grass-roots bandwidth-monitored pricing structure', 'Clarabelle Cattach'),
(9780058315417, 'Public-key user-facing portal', 'Tressa Balazin'),
(9780165407210, 'Fundamental foreground hardware', 'Dannye Spring'),
(9780431225319, 'Triple-buffered multimedia info-mediaries', 'Gina Footer'),
(9780464576228, 'Cross-group real-time concept', 'Ernestine O\'Curneen'),
(9780676293623, 'Distributed value-added extranet', 'Minnnie Lukacs'),
(9780768034189, 'Self-enabling non-volatile Graphical User Interface', 'Yoshi Eymer'),
(9780878674374, 'Open-source executive knowledge user', 'Giacopo Sivewright'),
(9780961653064, 'Streamlined didactic open architecture', 'Joycelin Menloe'),
(9781016312141, 'Persevering real-time budgetary management', 'Max Comettoi'),
(9781367898943, 'Proactive zero tolerance website', 'Marven Myerscough'),
(9781409832225, 'Team-oriented holistic open architecture', 'Welbie Holley'),
(9781463092252, 'Re-contextualized secondary policy', 'Fifi Sivyer'),
(9781500311438, 'Re-engineered multi-state artificial intelligence', 'Mayer Sherme'),
(9781517053321, 'Optimized client-server benchmark', 'Cal Bigg'),
(9781545615393, 'Self-enabling radical definition', 'Emmott Cerie'),
(9781558773554, 'Organic needs-based circuit', 'Cloe Pringley'),
(9781819640953, 'Persevering bifurcated protocol', 'Bail Cullotey'),
(9781882612765, 'Exclusive system-worthy support', 'Nigel Skirlin'),
(9781894411813, 'Front-line 5th generation archive', 'Kathlin Scobbie'),
(9781904415749, 'Focused tangible moratorium', 'Daveta Gilberthorpe'),
(9782130070047, 'Right-sized composite capability', 'Derrek Agdahl'),
(9782133711602, 'Digitized national challenge', 'Keene Elks'),
(9782261290482, 'Robust clear-thinking throughput', 'Paulette Saben'),
(9782330601393, 'Balanced uniform groupware', 'Hedwig Manwaring'),
(9782387558480, 'Pre-emptive object-oriented superstructure', 'Sharity Tregent'),
(9782515777875, 'Synchronised 24/7 application', 'Issi Birdwhistell'),
(9782706778131, 'Synergized explicit application', 'Roth Wynch'),
(9783032715357, 'Persevering content-based architecture', 'Gretna Slemming'),
(9783039509768, 'Managed empowering interface', 'Marc Berthon'),
(9783097053067, 'Up-sized client-driven function', 'Barbe Friberg'),
(9783204824924, 'Reduced homogeneous application', 'Payton Mirrlees'),
(9783205325529, 'Persevering holistic function', 'Heloise MacAnulty'),
(9783249646796, 'Right-sized mission-critical benchmark', 'Kurtis Rawcliffe'),
(9783328645801, 'Synergistic scalable customer loyalty', 'Chlo Heare'),
(9783503307197, 'Implemented directional analyzer', 'Debor Serjent'),
(9783646368536, 'Organic static Graphical User Interface', 'Rosella Shakesbye'),
(9783920079479, 'Organic full-range help-desk', 'Alyosha Bridgett'),
(9784068010836, 'Visionary full-range protocol', 'Alika McPhillips'),
(9784415863726, 'Versatile asynchronous emulation', 'Clarey Petracchi'),
(9784467674967, 'Organized bi-directional open architecture', 'Almire Floch'),
(9784635809900, 'Seamless mission-critical matrices', 'Nani Stollenhof'),
(9784675708850, 'Cross-platform mission-critical array', 'Fania Pobjay'),
(9784714392118, 'Re-contextualized multi-tasking open system', 'Wynnie Raitie'),
(9784891047825, 'Devolved cohesive instruction set', 'Ada McCreagh'),
(9784912040538, 'Future-proofed discrete hardware', 'Berri Keedwell'),
(9785183793420, 'Synergized human-resource encryption', 'Rea Scola'),
(9785193430612, 'Open-source static encryption', 'Julian Silversmid'),
(9785441071390, 'Intuitive bandwidth-monitored groupware', 'Casey Glassman'),
(9785447565084, 'Realigned content-based ability', 'Hendrika Langdale'),
(9785454158934, 'Proactive fault-tolerant product', 'Noby Gryglewski'),
(9785479943256, 'Monitored tangible collaboration', 'Johnathan Flacke'),
(9785539106485, 'Intuitive regional frame', 'Derwin Eke'),
(9785676686536, 'Multi-channelled systematic access', 'Noreen Palk'),
(9785795409405, 'Enterprise-wide even-keeled structure', 'Atlante Grimley'),
(9785801368696, 'Configurable client-driven moderator', 'Nicolea Philson'),
(9785801741031, 'Triple-buffered incremental pricing structure', 'Forbes Spittal'),
(9785829958435, 'Programmable leading edge strategy', 'Morly Dahlback'),
(9786063908552, 'Front-line neutral ability', 'Ivett MacTimpany'),
(9786236957325, 'Customizable multimedia support', 'Frannie Bauman'),
(9786312524946, 'Quality-focused 4th generation challenge', 'Thalia Boss'),
(9786423591301, 'Multi-layered upward-trending collaboration', 'Brantley Purvess'),
(9786611630034, 'Quality-focused client-server Graphic Interface', 'Lissi Laborda'),
(9786612259425, 'Programmable impactful service-desk', 'Corinna Vollam'),
(9786710853709, 'Sharable hybrid monitoring', 'Herta Lodford'),
(9786776035699, 'Multi-lateral contextually-based artificial intelligence', 'Haley Murgatroyd'),
(9787106540494, 'User-centric uniform challenge', 'Sandy Leaman'),
(9787123608085, 'Adaptive tertiary knowledge user', 'Kenna Pentecost'),
(9787186423540, 'Reverse-engineered 4th generation array', 'Vania Limon'),
(9787229582555, 'Persevering motivating workforce', 'Carmelle Cornelisse'),
(9787309996883, 'Right-sized asynchronous policy', 'Kermie Chappelow'),
(9787320803672, 'Managed zero administration data-warehouse', 'Rhonda Lysons'),
(9787526921460, 'Up-sized context-sensitive emulation', 'Rodger Burgill'),
(9787627652638, 'Re-engineered client-driven protocol', 'Reba Pendlenton'),
(9787671863332, 'Organic optimizing flexibility', 'Honor Levick'),
(9787986119117, 'Open-architected radical task-force', 'Sonni Hrishanok'),
(9788055079196, 'User-friendly global core', 'Wallie Shillan'),
(9788298867406, 'Universal systemic standardization', 'Bourke Pearmain'),
(9788350834360, 'Switchable needs-based complexity', 'Babbie Iacopo'),
(9788354318897, 'Networked motivating customer loyalty', 'Raynell Atheis'),
(9788356828806, 'Horizontal multi-tasking capability', 'Anabel MacElane'),
(9788371138683, 'Automated zero tolerance moratorium', 'Clari Kennsley'),
(9788531235979, 'Right-sized high-level focus group', 'Emmalynne Loyd'),
(9788533015388, 'Versatile zero administration service-desk', 'Courtenay Dilleway'),
(9788632619708, 'Assimilated context-sensitive application', 'Cecilio Chainey'),
(9788916191715, 'Re-contextualized bandwidth-monitored complexity', 'Marcia Davitashvili'),
(9788979569520, 'Distributed attitude-oriented contingency', 'Ellie Gaywood'),
(9789097201552, 'Cross-group contextually-based instruction set', 'Sisile Willden'),
(9789134441453, 'Open-architected human-resource policy', 'Torre Berdale'),
(9789172881129, 'Visionary empowering frame', 'Shawna Kinforth'),
(9789237220801, 'Customer-focused optimizing project', 'Tonie MacFayden'),
(9789246174126, 'Organized hybrid migration', 'Bibi Prover'),
(9789252058939, 'Multi-tiered impactful paradigm', 'Ricky Rankling'),
(9789299917985, 'Advanced bandwidth-monitored portal', 'Gradey Klug'),
(9789430078834, 'Polarised national benchmark', 'Kial Spatoni'),
(9789509750982, 'Decentralized responsive frame', 'Madelin Abrahamian'),
(9789603808626, 'Switchable heuristic website', 'Frederich Crawshay'),
(9789662307092, 'Configurable needs-based structure', 'Leeanne Hultberg'),
(9789691298514, 'Triple-buffered modular benchmark', 'Jamesy Whitehorn');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `user_id` bigint(20) NOT NULL,
  `book_isbn` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`user_id`, `book_isbn`) VALUES
(100, 9781500311438),
(99, 9783205325529),
(98, 9789134441453),
(97, 9781882612765),
(96, 9787229582555),
(95, 9784467674967),
(94, 9784068010836),
(93, 9785193430612),
(92, 9788354318897),
(91, 9781558773554),
(90, 9785676686536),
(89, 9787320803672),
(88, 9785801741031),
(87, 9785454158934),
(86, 9780431225319),
(85, 9785479943256),
(84, 9782261290482),
(83, 9783039509768),
(82, 9784891047825),
(81, 9780961653064),
(80, 9787123608085),
(79, 9781409832225),
(78, 9789252058939),
(77, 9786776035699),
(76, 9786236957325),
(75, 9782706778131),
(74, 9780464576228),
(73, 9783249646796),
(72, 9782387558480),
(71, 9788371138683),
(70, 9789603808626),
(69, 9781894411813),
(68, 9789172881129),
(67, 9788531235979),
(66, 9785539106485),
(65, 9781016312141),
(64, 9785183793420),
(63, 9783204824924),
(62, 9781463092252),
(61, 9785795409405),
(60, 9786611630034),
(59, 9788350834360),
(58, 9788632619708),
(57, 9787309996883),
(56, 9782133711602),
(55, 9785441071390),
(54, 9780768034189),
(53, 9781545615393),
(52, 9788356828806),
(51, 9787986119117),
(50, 9780676293623),
(49, 9781517053321),
(48, 9780058315417),
(47, 9789097201552),
(46, 9786710853709),
(45, 9782130070047),
(44, 9786312524946),
(43, 9789246174126),
(42, 9783920079479),
(41, 9787106540494),
(40, 9783646368536),
(39, 9783032715357),
(38, 9789691298514),
(37, 9788916191715),
(36, 9784714392118),
(35, 9780025929814),
(34, 9781904415749),
(33, 9784912040538),
(32, 9789662307092),
(31, 9788533015388),
(30, 9783503307197),
(29, 9787627652638),
(28, 9786063908552),
(27, 9780048660732),
(26, 9786612259425),
(25, 9787186423540),
(24, 9785829958435),
(23, 9783328645801),
(22, 9782515777875),
(21, 9789237220801),
(20, 9789509750982),
(19, 9788979569520),
(18, 9780878674374),
(17, 9783097053067),
(16, 9788298867406),
(15, 9784415863726),
(14, 9789299917985),
(13, 9787526921460),
(12, 9785447565084),
(11, 9787671863332),
(10, 9784635809900),
(9, 9785801368696),
(8, 9786423591301),
(7, 9782330601393),
(6, 9781367898943),
(5, 9788055079196),
(4, 9789430078834),
(3, 9784675708850),
(2, 9781819640953),
(1, 9780165407210);

-- --------------------------------------------------------

--
-- Table structure for table `swap`
--

CREATE TABLE `swap` (
  `owner_id` bigint(20) NOT NULL,
  `recipient_id` bigint(20) NOT NULL,
  `book_isbn` bigint(20) NOT NULL,
  `owner_agreed` tinyint(1) DEFAULT NULL,
  `recipient_agreed` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `swap`
--

INSERT INTO `swap` (`owner_id`, `recipient_id`, `book_isbn`, `owner_agreed`, `recipient_agreed`) VALUES
(1, 100, 9781500311438, NULL, NULL),
(2, 99, 9783205325529, NULL, NULL),
(3, 98, 9789134441453, NULL, NULL),
(4, 97, 9781882612765, NULL, NULL),
(5, 96, 9787229582555, NULL, NULL),
(6, 95, 9784467674967, NULL, NULL),
(7, 94, 9784068010836, NULL, NULL),
(8, 93, 9785193430612, NULL, NULL),
(9, 92, 9788354318897, NULL, NULL),
(10, 91, 9781558773554, NULL, NULL),
(11, 90, 9785676686536, NULL, NULL),
(12, 89, 9787320803672, NULL, NULL),
(13, 88, 9785801741031, NULL, NULL),
(14, 87, 9785454158934, NULL, NULL),
(15, 86, 9780431225319, NULL, NULL),
(16, 85, 9785479943256, NULL, NULL),
(17, 84, 9782261290482, NULL, NULL),
(18, 83, 9783039509768, NULL, NULL),
(19, 82, 9784891047825, NULL, NULL),
(20, 81, 9780961653064, NULL, NULL),
(21, 80, 9787123608085, NULL, NULL),
(22, 79, 9781409832225, NULL, NULL),
(23, 78, 9789252058939, NULL, NULL),
(24, 77, 9786776035699, NULL, NULL),
(25, 76, 9786236957325, NULL, NULL),
(26, 75, 9782706778131, NULL, NULL),
(27, 74, 9780464576228, NULL, NULL),
(28, 73, 9783249646796, NULL, NULL),
(29, 72, 9782387558480, NULL, NULL),
(30, 71, 9788371138683, NULL, NULL),
(31, 70, 9789603808626, NULL, NULL),
(32, 69, 9781894411813, NULL, NULL),
(33, 68, 9789172881129, NULL, NULL),
(34, 67, 9788531235979, NULL, NULL),
(35, 66, 9785539106485, NULL, NULL),
(36, 65, 9781016312141, NULL, NULL),
(37, 64, 9785183793420, NULL, NULL),
(38, 63, 9783204824924, NULL, NULL),
(39, 62, 9781463092252, NULL, NULL),
(40, 61, 9785795409405, NULL, NULL),
(41, 60, 9786611630034, NULL, NULL),
(42, 59, 9788350834360, NULL, NULL),
(43, 58, 9788632619708, NULL, NULL),
(44, 57, 9787309996883, NULL, NULL),
(45, 56, 9782133711602, NULL, NULL),
(46, 55, 9785441071390, NULL, NULL),
(47, 54, 9780768034189, NULL, NULL),
(48, 53, 9781545615393, NULL, NULL),
(49, 52, 9788356828806, NULL, NULL),
(50, 51, 9787986119117, NULL, NULL),
(51, 50, 9780676293623, NULL, NULL),
(52, 49, 9781517053321, NULL, NULL),
(53, 48, 9780058315417, NULL, NULL),
(54, 47, 9789097201552, NULL, NULL),
(55, 46, 9786710853709, NULL, NULL),
(56, 45, 9782130070047, NULL, NULL),
(57, 44, 9786312524946, NULL, NULL),
(58, 43, 9789246174126, NULL, NULL),
(59, 42, 9783920079479, NULL, NULL),
(60, 41, 9787106540494, NULL, NULL),
(61, 40, 9783646368536, NULL, NULL),
(62, 39, 9783032715357, NULL, NULL),
(63, 38, 9789691298514, NULL, NULL),
(64, 37, 9788916191715, NULL, NULL),
(65, 36, 9784714392118, NULL, NULL),
(66, 35, 9780025929814, NULL, NULL),
(67, 34, 9781904415749, NULL, NULL),
(68, 33, 9784912040538, NULL, NULL),
(69, 32, 9789662307092, NULL, NULL),
(70, 31, 9788533015388, NULL, NULL),
(71, 30, 9783503307197, NULL, NULL),
(72, 29, 9787627652638, NULL, NULL),
(73, 28, 9786063908552, NULL, NULL),
(74, 27, 9780048660732, NULL, NULL),
(75, 26, 9786612259425, NULL, NULL),
(76, 25, 9787186423540, NULL, NULL),
(77, 24, 9785829958435, NULL, NULL),
(78, 23, 9783328645801, NULL, NULL),
(79, 22, 9782515777875, NULL, NULL),
(80, 21, 9789237220801, NULL, NULL),
(81, 20, 9789509750982, NULL, NULL),
(82, 19, 9788979569520, NULL, NULL),
(83, 18, 9780878674374, NULL, NULL),
(84, 17, 9783097053067, NULL, NULL),
(85, 16, 9788298867406, NULL, NULL),
(86, 15, 9784415863726, NULL, NULL),
(87, 14, 9789299917985, NULL, NULL),
(88, 13, 9787526921460, NULL, NULL),
(89, 12, 9785447565084, NULL, NULL),
(90, 11, 9787671863332, NULL, NULL),
(91, 10, 9784635809900, NULL, NULL),
(92, 9, 9785801368696, NULL, NULL),
(93, 8, 9786423591301, NULL, NULL),
(94, 7, 9782330601393, NULL, NULL),
(95, 6, 9781367898943, NULL, NULL),
(96, 5, 9788055079196, NULL, NULL),
(97, 4, 9789430078834, NULL, NULL),
(98, 3, 9784675708850, NULL, NULL),
(99, 2, 9781819640953, NULL, NULL),
(100, 1, 9780165407210, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password_hash`) VALUES
(1, 'gpopworth0@cam.ac.uk', 'HCKeCB02kQ'),
(2, 'tshimwall1@free.fr', '0JYelzAfku9'),
(3, 'hmesias2@hc360.com', '7SH6Haw'),
(4, 'ztipperton3@washington.edu', '6X0mHl73'),
(5, 'nfullwood4@theatlantic.com', 'AoMF9dFt9'),
(6, 'mhawe5@dropbox.com', 'fmd7Uco'),
(7, 'ulethbrig6@pinterest.com', 'oLHhsqB'),
(8, 'kbromhead7@ucla.edu', 'En5VZw8Ny'),
(9, 'ckob8@constantcontact.com', 'hVAQGAf'),
(10, 'mclewes9@moonfruit.com', 'gnU8sYk'),
(11, 'rnassia@mapquest.com', 'XgfQ67MNMY'),
(12, 'bmoutrayreadb@rediff.com', 'cPXNNjKERV'),
(13, 'ayakushkevc@jimdo.com', 'qTX95jgn'),
(14, 'jshrived@adobe.com', 'FCJ1eEB'),
(15, 'edowsinge@constantcontact.com', 'wO3yB4RCr6'),
(16, 'jpeschetf@sbwire.com', 'ar4g1gvBs'),
(17, 'tburburyg@apache.org', 'iGq0GSGF'),
(18, 'vtippertonh@npr.org', 'TknL5XhEpzn'),
(19, 'ostuttmani@homestead.com', 'po2gsRYkoIz'),
(20, 'swalklottj@w3.org', 'ZLerJ9n'),
(21, 'acroasdalek@cpanel.net', '5IOEB1xdus'),
(22, 'sleamingl@163.com', '54FltjEmt'),
(23, 'mbueym@g.co', 'ZZ4wYPT7'),
(24, 'amassern@cargocollective.com', 'ZzY7B35C'),
(25, 'usimenoto@quantcast.com', '2KkVeqlBsjwU'),
(26, 'ggwinnelp@artisteer.com', 'Y0hdrT'),
(27, 'amacounq@narod.ru', 'ssZFy6lwXz'),
(28, 'etriponr@seesaa.net', 'NofEI6'),
(29, 'wchesshyres@wordpress.org', 'yIfvNqTAP'),
(30, 'atitet@abc.net.au', 'dt8RRAO'),
(31, 'hpycocku@epa.gov', 'pCTTYs7oVY'),
(32, 'tbjorkanv@addtoany.com', '5kQ7bx'),
(33, 'ghulstromw@rambler.ru', 'KCopH3VY7'),
(34, 'dblackhamx@themeforest.net', 'eEtkrOlp'),
(35, 'stetty@a8.net', '2AeRY6r2'),
(36, 'cjosefsohnz@miitbeian.gov.cn', 'KALwmZNhJ12O'),
(37, 'mstather10@cbsnews.com', 'iTBHi9l2'),
(38, 'hvalder11@bbc.co.uk', 'N6JnK0'),
(39, 'mhattiff12@tripod.com', '4VxP55'),
(40, 'fyanez13@nba.com', 'XciDHtl'),
(41, 'cjeannet14@wix.com', '77ixYs2961'),
(42, 'blongstreet15@samsung.com', 'w39J0M1nbX'),
(43, 'cmcclure16@so-net.ne.jp', 'UDza64dBksix'),
(44, 'vrock17@prlog.org', 'DFTwUHVSlLs'),
(45, 'cdixon18@soundcloud.com', 'wXuPp0X4oZt'),
(46, 'mscreen19@privacy.gov.au', 'E11aI1U'),
(47, 'dberkley1a@trellian.com', 'u5AMpNCf'),
(48, 'joheyne1b@shutterfly.com', 'rXK7TIgr'),
(49, 'mbuttrey1c@marketwatch.com', '7zoPPuHiQ'),
(50, 'vcarrack1d@miibeian.gov.cn', 'KRwe8pF'),
(51, 'amadre1e@howstuffworks.com', 'xHEBgiRye'),
(52, 'jdowbekin1f@freewebs.com', '9sGMmGcq0X42'),
(53, 'cmewett1g@unesco.org', 'KQ8DBADkTD'),
(54, 'araiston1h@quantcast.com', 'U0zbHUGk'),
(55, 'ymarkson1i@nifty.com', 'wRpZ47gwTyQ'),
(56, 'rkelsow1j@dailymotion.com', 'xYFLjW8ZHJsE'),
(57, 'fzannelli1k@mac.com', 'jVMVZYOZVle'),
(58, 'cskewis1l@usda.gov', 'tWXvpkKmT2'),
(59, 'mmonkhouse1m@lulu.com', 'g6SmOORTfkvj'),
(60, 'ajervois1n@list-manage.com', 'WC3hfX'),
(61, 'rschroeder1o@yellowbook.com', 'pNiMlC'),
(62, 'chendricks1p@slate.com', 'Vyur3JB'),
(63, 'mbrogioni1q@newsvine.com', 'xEHjlDc4Fr'),
(64, 'sattril1r@example.com', 'Frm01if'),
(65, 'amiskelly1s@marriott.com', 'HLFJfX'),
(66, 'jbewsey1t@vk.com', 'ZfL6lxU'),
(67, 'eomalley1u@arstechnica.com', '0nA9d7y'),
(68, 'rdyzart1v@google.ca', 'RhMOIkH'),
(69, 'hkelwick1w@about.me', 'ZPz2jvkB'),
(70, 'agillebert1x@google.it', 'SddSGvaybX'),
(71, 'etwigger1y@ow.ly', 'T2D0CSfSOCVp'),
(72, 'lsheivels1z@unicef.org', 'dZAA12pAk'),
(73, 'mbrookwood20@printfriendly.com', '5LfPxoY0'),
(74, 'jgiacomazzo21@ucoz.ru', 'VpgWCyj'),
(75, 'jelintune22@omniture.com', 'jk6ETSc'),
(76, 'apotes23@umich.edu', '6v5FMskKL8CS'),
(77, 'cdurrans24@csmonitor.com', 'IVHGRIVP'),
(78, 'mcoxwell25@mozilla.org', 'g239NllQfi'),
(79, 'tledson26@stanford.edu', 'HIJjpHNI9B'),
(80, 'ejosum27@issuu.com', 'ZWmuFZ'),
(81, 'tmallabund28@jiathis.com', 'kQld4Z8nkRt'),
(82, 'sgowlett29@elpais.com', 'n0vcpHQg46'),
(83, 'jgrahame2a@weibo.com', 'waVyC8db'),
(84, 'bpetrichat2b@flickr.com', 'NkQtToe'),
(85, 'dcoulter2c@patch.com', '4GJsfX'),
(86, 'scoltart2d@state.gov', 'BwDiq9ZAh'),
(87, 'chardiman2e@creativecommons.org', '5OgFLQxrlT0'),
(88, 'fcastledine2f@eventbrite.com', 'zCfpOAA7vzOr'),
(89, 'cgages2g@alibaba.com', '5vIh703cLo'),
(90, 'bgammade2h@com.com', 'L5W6xi'),
(91, 'cebunoluwa2i@nifty.com', 'IY40f8C'),
(92, 'jrussi2j@infoseek.co.jp', 'RaubOQG0a'),
(93, 'uliddel2k@mit.edu', 'Ds8ZNLLuVy'),
(94, 'jcampelli2l@techcrunch.com', 'j5GGGeUeH'),
(95, 'lyakebovitch2m@macromedia.com', 'lTK8vi'),
(96, 'chenker2n@chron.com', 'jg1wuDUp'),
(97, 'ecastille2o@dion.ne.jp', '9BeyOkYvo6'),
(98, 'cwoodyer2p@icq.com', 'MB2dz1kU33yC'),
(99, 'crizzotto2q@mysql.com', 'xdYH64bxxiLt'),
(100, 'pcubbon2r@ameblo.jp', 'IwojgE');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `user_id` bigint(20) NOT NULL,
  `book_isbn` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`user_id`, `book_isbn`) VALUES
(1, 9781500311438),
(2, 9783205325529),
(3, 9789134441453),
(4, 9781882612765),
(5, 9787229582555),
(6, 9784467674967),
(7, 9784068010836),
(8, 9785193430612),
(9, 9788354318897),
(10, 9781558773554),
(11, 9785676686536),
(12, 9787320803672),
(13, 9785801741031),
(14, 9785454158934),
(15, 9780431225319),
(16, 9785479943256),
(17, 9782261290482),
(18, 9783039509768),
(19, 9784891047825),
(20, 9780961653064),
(21, 9787123608085),
(22, 9781409832225),
(23, 9789252058939),
(24, 9786776035699),
(25, 9786236957325),
(26, 9782706778131),
(27, 9780464576228),
(28, 9783249646796),
(29, 9782387558480),
(30, 9788371138683),
(31, 9789603808626),
(32, 9781894411813),
(33, 9789172881129),
(34, 9788531235979),
(35, 9785539106485),
(36, 9781016312141),
(37, 9785183793420),
(38, 9783204824924),
(39, 9781463092252),
(40, 9785795409405),
(41, 9786611630034),
(42, 9788350834360),
(43, 9788632619708),
(44, 9787309996883),
(45, 9782133711602),
(46, 9785441071390),
(47, 9780768034189),
(48, 9781545615393),
(49, 9788356828806),
(50, 9787986119117),
(51, 9780676293623),
(52, 9781517053321),
(53, 9780058315417),
(54, 9789097201552),
(55, 9786710853709),
(56, 9782130070047),
(57, 9786312524946),
(58, 9789246174126),
(59, 9783920079479),
(60, 9787106540494),
(61, 9783646368536),
(62, 9783032715357),
(63, 9789691298514),
(64, 9788916191715),
(65, 9784714392118),
(66, 9780025929814),
(67, 9781904415749),
(68, 9784912040538),
(69, 9789662307092),
(70, 9788533015388),
(71, 9783503307197),
(72, 9787627652638),
(73, 9786063908552),
(74, 9780048660732),
(75, 9786612259425),
(76, 9787186423540),
(77, 9785829958435),
(78, 9783328645801),
(79, 9782515777875),
(80, 9789237220801),
(81, 9789509750982),
(82, 9788979569520),
(83, 9780878674374),
(84, 9783097053067),
(85, 9788298867406),
(86, 9784415863726),
(87, 9789299917985),
(88, 9787526921460),
(89, 9785447565084),
(90, 9787671863332),
(91, 9784635809900),
(92, 9785801368696),
(93, 9786423591301),
(94, 9782330601393),
(95, 9781367898943),
(96, 9788055079196),
(97, 9789430078834),
(98, 9784675708850),
(99, 9781819640953),
(100, 9780165407210);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`isbn`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD KEY `inventory_fk0` (`user_id`),
  ADD KEY `inventory_fk1` (`book_isbn`);

--
-- Indexes for table `swap`
--
ALTER TABLE `swap`
  ADD UNIQUE KEY `swap_uniq_key` (`owner_id`,`recipient_id`,`book_isbn`),
  ADD KEY `swap_fk1` (`recipient_id`),
  ADD KEY `swap_fk2` (`book_isbn`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD KEY `wishlist_fk0` (`user_id`),
  ADD KEY `wishlist_fk1` (`book_isbn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_fk0` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `inventory_fk1` FOREIGN KEY (`book_isbn`) REFERENCES `book` (`isbn`);

--
-- Constraints for table `swap`
--
ALTER TABLE `swap`
  ADD CONSTRAINT `swap_fk0` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `swap_fk1` FOREIGN KEY (`recipient_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `swap_fk2` FOREIGN KEY (`book_isbn`) REFERENCES `book` (`isbn`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_fk0` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `wishlist_fk1` FOREIGN KEY (`book_isbn`) REFERENCES `book` (`isbn`);
