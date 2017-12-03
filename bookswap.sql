-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 03, 2017 at 05:50 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookswap`
--
DROP DATABASE IF EXISTS `bookswap`;
CREATE DATABASE IF NOT EXISTS `bookswap` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bookswap`;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `isbn` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `condition` varchar(255) NOT NULL,
  `type` enum('hardcover','softcover','other') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

ALTER TABLE `swap` ADD UNIQUE KEY `swap_uniq_key` (owner_id, recipient_id, book_isbn);