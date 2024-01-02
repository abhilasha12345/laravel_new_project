-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2024 at 07:42 AM
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
-- Database: `laravel_new_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `address` text NOT NULL,
  `dob` date DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `gender`, `address`, `dob`, `password`, `phone`, `image`, `city`, `state`, `country`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Amari Bergnaum', 'pollich.wilburn@hotmail.com', 'Male', '80388 Dora Parkway Apt. 388\nEast Camrynville, DE 80082', '2009-08-23', '7=_TKe]F8\"N', NULL, '43500.png', 'Monachester', 'South Dakota', 'Lithuania', 1, '2023-12-30 03:20:47', '2023-12-30 03:20:47'),
(2, 'Rhianna Herzog', 'hcronin@gmail.com', 'Male', '96492 Guillermo Common\nHalvorsonfurt, DE 02344', '1978-03-22', '=wgOEsdhZoG\\', NULL, '74406.png', 'Port Ezra', 'Indiana', 'Belize', 1, '2023-12-30 03:20:48', '2023-12-30 03:20:48'),
(3, 'Dr. Bradley Morissette DDS', 'schoen.fredrick@jones.com', 'Male', '11952 Weissnat Ville Apt. 284\nNorth Ruthie, VA 20642-3231', '1999-04-23', ')xh?d\\&V:2QX{F.wzy', NULL, '80903.png', 'Millerside', 'Alabama', 'Kiribati', 1, '2023-12-30 03:20:50', '2023-12-30 03:20:50'),
(4, 'Prof. Kaleb Lindgren', 'fwisoky@yahoo.com', 'Male', '3705 Wuckert Lodge Apt. 220\nWest Joshua, UT 02867', '1992-07-21', '$W-fj\\z[hL0]oqh0dC6', NULL, '94526.png', 'Lake Elisafort', 'Washington', 'Papua New Guinea', 1, '2023-12-30 03:20:51', '2023-12-30 03:20:51'),
(5, 'Matilda Little', 'lue31@yahoo.com', 'Male', '36098 Lorna Lodge\nNorth Gayleville, KS 97691-9732', '1976-09-26', 'u&xu/^CX2Ygf$dM', NULL, '13244.png', 'O\'Konberg', 'Ohio', 'San Marino', 1, '2023-12-30 03:20:52', '2023-12-30 03:20:52'),
(6, 'Cristal O\'Hara', 'hugh52@kautzer.com', 'Male', '4921 Marks Plain\nWest Noemi, DC 90900-3399', '2016-10-04', '2x6Q+EQ9EQl', NULL, '42070.png', 'Goldnerfurt', 'Kentucky', 'Mali', 1, '2023-12-30 03:20:54', '2023-12-30 03:20:54'),
(7, 'Deangelo Jacobs', 'creola.wilderman@grimes.biz', 'Male', '47691 Monroe Creek Suite 877\nRoobfort, WV 68079-2379', '1990-08-08', 'IPM(2iWx]5', NULL, '54768.png', 'South Tristinmouth', 'Arizona', 'Norway', 1, '2023-12-30 03:20:56', '2023-12-30 03:20:56'),
(8, 'Dolores Blick', 'tristian88@gmail.com', 'Male', '3609 Daniel Lake Suite 230\nPort Angelafort, VA 75375-7262', '2003-06-19', 'FvM9Ta/,SF,t_W|G^q>', NULL, '7247.png', 'West Corrine', 'New York', 'Puerto Rico', 1, '2023-12-30 03:20:57', '2023-12-30 03:20:57'),
(9, 'Reilly Torp', 'kirlin.stewart@shields.com', 'Male', '215 Elena Terrace\nMedhurstmouth, AZ 27891', '1976-10-22', ')grECx:^P', NULL, '20834.png', 'Gibsonside', 'Maryland', 'Suriname', 1, '2023-12-30 03:21:00', '2023-12-30 03:21:00'),
(10, 'Anika Hansen', 'carlee47@abshire.com', 'Male', '9616 Jacobs Mountains\nThurmanborough, GA 67248', '1984-11-13', 'y/R,86<Y/', NULL, '54375.png', 'Willstad', 'Alabama', 'Korea', 1, '2023-12-30 03:21:02', '2023-12-30 03:21:02'),
(11, 'Mr. Leopold Johns DDS', 'herman.sidney@blick.com', 'Male', '64814 Reymundo Ford\nTrompville, HI 17686', '1988-03-18', '^CtPj=TRDse:NR`3', NULL, '48108.png', 'Schowaltershire', 'New Hampshire', 'United States of America', 1, '2023-12-30 03:21:03', '2023-12-30 03:21:03'),
(12, 'Gage Beahan', 'arlene46@yahoo.com', 'Male', '9200 Laura Gardens\nLubowitztown, ID 98162', '1994-09-02', 'yjY(M|CnWQnTC{z^3', NULL, '8190.png', 'O\'Keefestad', 'Tennessee', 'Palestinian Territories', 1, '2023-12-30 03:21:05', '2023-12-30 03:21:05'),
(13, 'Mr. Miles McLaughlin', 'clemmie.parker@yahoo.com', 'Male', '19214 Hickle Divide Apt. 615\nLake Elenor, KY 23641-2633', '2010-05-28', 'v?pk^A', NULL, '39785.png', 'Swiftville', 'South Dakota', 'Central African Republic', 1, '2023-12-30 03:21:06', '2023-12-30 03:21:06'),
(14, 'Reina Adams DDS', 'hodkiewicz.arnulfo@hotmail.com', 'Male', '83718 Lincoln Burgs\nEast Rashad, UT 89237-8122', '2018-12-12', 'j/B=G5A:Q', NULL, '64487.png', 'New Bartholome', 'Virginia', 'Philippines', 1, '2023-12-30 03:21:07', '2023-12-30 03:21:07'),
(15, 'Mercedes Lueilwitz', 'ocole@gmail.com', 'Male', '50747 Beatty Court\nNew Jean, ME 53521-5188', '2002-12-02', 'nB}Gp(=68mKQciL8af9%', NULL, '58801.png', 'Mariotown', 'North Dakota', 'Micronesia', 1, '2023-12-30 03:21:09', '2023-12-30 03:21:09'),
(16, 'Lacy Zulauf', 'ethyl.schmidt@russel.com', 'Male', '630 Vivianne Fords Apt. 880\nNew Kurtis, ND 92639', '1999-04-24', '7S70]8TP(G\'', NULL, '79924.png', 'DuBuquemouth', 'Florida', 'Cape Verde', 1, '2023-12-30 03:21:10', '2023-12-30 03:21:10'),
(17, 'Eleanora Hermiston', 'roscoe.waelchi@powlowski.net', 'Male', '96839 Harris Crossing\nWest Avis, CA 71850-2963', '1975-11-27', '9X\'A(A/v>Jay4k<W=;(A', NULL, '51595.png', 'Wildermanbury', 'Illinois', 'Senegal', 1, '2023-12-30 03:21:12', '2023-12-30 03:21:12'),
(18, 'Prof. Haleigh Cummings MD', 'hconnelly@gmail.com', 'Male', '51516 Keenan Passage Suite 871\nHarveyberg, NH 12716', '2015-11-18', ',xcl>3k5', NULL, '44733.png', 'Lake Myriam', 'Alabama', 'Mozambique', 1, '2023-12-30 03:21:13', '2023-12-30 03:21:13'),
(19, 'Mr. Zander Emard', 'itzel.cormier@tremblay.com', 'Male', '26518 Irwin Island Suite 699\nCoralietown, KY 21202-3503', '2009-11-16', '&Jd!qFsx/~', NULL, '5933.png', 'Laurineville', 'Michigan', 'Nicaragua', 1, '2023-12-30 03:21:14', '2023-12-30 03:21:14'),
(20, 'Janessa Runte', 'jakayla91@rolfson.com', 'Male', '413 Garrison Junction Suite 056\nPort Neldafurt, OR 91883', '2016-11-24', 'Pr=xsl@@&R', NULL, '50990.png', 'North Irwin', 'Hawaii', 'Austria', 1, '2023-12-30 03:21:16', '2023-12-30 03:21:16'),
(21, 'Earl Koss', 'brannon.kautzer@yahoo.com', 'Male', '668 Ledner Course\nWest Mathilde, PA 41273-5526', '2022-11-23', '`G;Sam', NULL, '63468.png', 'Loismouth', 'Alaska', 'Andorra', 1, '2023-12-30 03:21:17', '2023-12-30 03:21:17'),
(22, 'Mr. Dax Smith V', 'lucinda41@hotmail.com', 'Male', '6616 Schuppe Points Apt. 962\nEast Tressie, AZ 75673-2788', '2015-01-22', 'R%O_V!$G-!j]P4kH(2', NULL, '99698.png', 'Fadelshire', 'California', 'Macedonia', 1, '2023-12-30 03:21:19', '2023-12-30 03:21:19'),
(23, 'Kianna Runte', 'axel.lemke@dibbert.com', 'Male', '3365 Roderick Courts\nEast Meggie, VA 12231', '1994-02-21', '=%}zL1oEt\\_', NULL, '78250.png', 'South Kiannashire', 'Colorado', 'Trinidad and Tobago', 1, '2023-12-30 03:21:20', '2023-12-30 03:21:20'),
(24, 'Mr. Arvel Ratke DVM', 'jrussel@metz.com', 'Male', '123 Oscar Rue Apt. 449\nSouth Tamia, TX 90058-5565', '1999-07-11', 'L$\"q*+??X*V]Hsbi#]P\'', NULL, '70711.png', 'Devontestad', 'New York', 'Saint Vincent and the Grenadines', 1, '2023-12-30 03:21:22', '2023-12-30 03:21:22'),
(25, 'Dallas Considine III', 'flavio.veum@gmail.com', 'Male', '3540 Trevor Alley Suite 683\nMandychester, AR 15437', '2007-09-07', ';0EbWMYarr{\\SFn', NULL, '24572.png', 'Port Mylene', 'Oklahoma', 'Bulgaria', 1, '2023-12-30 03:21:23', '2023-12-30 03:21:23'),
(26, 'Dr. Veronica Treutel', 'jarret.connelly@cronin.com', 'Male', '9833 Boyle Radial\nEast Timothystad, NV 95169', '1993-09-26', 'R&|d{\'N<C@9btW6[Yn3', NULL, '98628.png', 'Margretchester', 'New Hampshire', 'Greenland', 1, '2023-12-30 03:21:25', '2023-12-30 03:21:25'),
(27, 'Emmie Koch', 'istracke@yahoo.com', 'Male', '28242 Purdy Station\nLaurianehaven, ME 57719', '2007-02-05', '}+\\CL-Xc)2[E}l1', NULL, '55113.png', 'Towneside', 'Alaska', 'Zimbabwe', 1, '2023-12-30 03:21:26', '2023-12-30 03:21:26'),
(28, 'Dr. Trent Robel', 'ncummings@aufderhar.biz', 'Male', '696 Antoinette Locks\nHuelsfurt, DC 15871-7489', '1977-04-26', '{1/<xTGkf.', NULL, '12837.png', 'South Dejonhaven', 'Minnesota', 'Italy', 1, '2023-12-30 03:21:27', '2023-12-30 03:21:27'),
(29, 'Hoyt Ward', 'waylon17@altenwerth.org', 'Male', '48535 Wilfredo Passage Apt. 190\nMissouriton, SD 20303', '2016-02-14', '?&Z}G2[^yMn[8q0?Q', NULL, '54147.png', 'North Casper', 'Colorado', 'Yemen', 1, '2023-12-30 03:21:29', '2023-12-30 03:21:29'),
(30, 'Mara Will', 'green.jonas@gmail.com', 'Male', '764 Kenyon Pines Suite 412\nStiedemannhaven, IA 92974', '1978-09-26', '4=w.eOQ&2~0Zw', NULL, '15453.png', 'South Darrel', 'Wyoming', 'Palestinian Territories', 1, '2023-12-30 03:21:30', '2023-12-30 03:21:30'),
(31, 'Alize Raynor', 'scarlett.aufderhar@lakin.org', 'Male', '3171 August Heights Suite 277\nLake Margaretberg, RI 22089', '2006-12-14', '\"F6CR_&', NULL, '4226.png', 'West Beaulahshire', 'Arkansas', 'Malawi', 1, '2023-12-30 03:21:31', '2023-12-30 03:21:31'),
(32, 'Miss Laura Wisozk Jr.', 'jaida49@ortiz.com', 'Male', '487 Serena Glens\nWest Susanna, CA 43628-4294', '1988-04-28', 'uo]b/DK;@Idw.3JP7', NULL, '26613.png', 'Ernestbury', 'New Hampshire', 'Bhutan', 1, '2023-12-30 03:21:33', '2023-12-30 03:21:33'),
(33, 'Pearline Torp', 'stamm.selena@gmail.com', 'Male', '502 Emmerich Throughway\nEast Clotildemouth, NH 66017', '2013-08-06', '$^Nv)\"IGL', NULL, '64929.png', 'Daniellaside', 'Oklahoma', 'San Marino', 1, '2023-12-30 03:21:34', '2023-12-30 03:21:34'),
(34, 'Dr. Alivia Lowe Jr.', 'daugherty.rowland@jacobi.com', 'Male', '25202 Marilyne Underpass\nWittingshire, NV 22739', '1975-03-15', 'p>\'tbD\\}K', NULL, '7971.png', 'Daisychester', 'Pennsylvania', 'Lithuania', 1, '2023-12-30 03:21:36', '2023-12-30 03:21:36'),
(35, 'Federico Dickinson', 'reichert.carlo@beier.biz', 'Male', '7728 Streich Lodge Apt. 154\nWest Jenniferville, MS 34141-8093', '2012-01-26', '/\\[$KV', NULL, '22705.png', 'Danielport', 'Wyoming', 'Saint Kitts and Nevis', 1, '2023-12-30 03:21:37', '2023-12-30 03:21:37'),
(36, 'Alan Adams', 'cjakubowski@senger.com', 'Male', '576 Crooks Ways\nDanielborough, MN 40685-7997', '1993-12-11', 'SnPr1oTf@Y6fnHnz', NULL, '95531.png', 'Connton', 'Alabama', 'San Marino', 1, '2023-12-30 03:21:39', '2023-12-30 03:21:39'),
(37, 'Orpha Mohr', 'cormier.icie@larson.com', 'Male', '8952 Celestine Well\nOswaldburgh, MS 13530-8505', '2001-01-03', '|:Ib){]Gp', NULL, '16662.png', 'Margueritehaven', 'Connecticut', 'Cameroon', 1, '2023-12-30 03:21:40', '2023-12-30 03:21:40'),
(38, 'Marshall Johnston', 'janick.rowe@bradtke.biz', 'Male', '3418 Ullrich Ranch\nEulaliaview, TN 66234', '1986-12-18', 'IBS\',9', NULL, '3946.png', 'West Bianka', 'Pennsylvania', 'Andorra', 1, '2023-12-30 03:21:41', '2023-12-30 03:21:41'),
(39, 'Dereck Heidenreich', 'felton62@gmail.com', 'Male', '929 Veum Valley Apt. 396\nPort Gia, NM 58144-2218', '2013-02-21', 'G8$Qx(\"Jn#0V', NULL, '20129.png', 'Gusikowskiburgh', 'West Virginia', 'Tuvalu', 1, '2023-12-30 03:21:43', '2023-12-30 03:21:43'),
(40, 'Janiya Schuppe', 'hugh.jakubowski@gmail.com', 'Male', '591 Morar Brook\nTrantowhaven, MS 48303', '2012-05-09', '-g?H==;tqIYJ_$;(', NULL, '65173.png', 'Austenchester', 'New Mexico', 'Antigua and Barbuda', 1, '2023-12-30 03:21:44', '2023-12-30 03:21:44'),
(41, 'Mathilde Graham', 'curt47@gmail.com', 'Male', '44207 Torphy Summit Suite 715\nChazland, DC 29104-5591', '2004-09-13', 'olPu+g3YofD!', NULL, '59517.png', 'East Eloise', 'Vermont', 'Martinique', 1, '2023-12-30 03:21:46', '2023-12-30 03:21:46'),
(42, 'Elisabeth Roberts', 'egreenfelder@streich.net', 'Male', '482 Raphaelle Mall\nJohnathanland, ID 97404', '2009-11-17', 'r.S[G/(v.VgtP/}y^a', NULL, '84363.png', 'Simoneborough', 'Alaska', 'Bolivia', 1, '2023-12-30 03:21:47', '2023-12-30 03:21:47'),
(43, 'Ivory Wunsch', 'candido81@hotmail.com', 'Male', '955 Prohaska Port Suite 244\nOletamouth, AK 05309-7971', '1987-08-02', '7=dANf=g)mp?D', NULL, '19798.png', 'South Allene', 'Kansas', 'Mayotte', 1, '2023-12-30 03:21:48', '2023-12-30 03:21:48'),
(44, 'Cesar Schuppe III', 'janice45@kiehn.com', 'Male', '5785 Gerhold Port\nWest Lauryn, SD 75208', '1996-12-12', ',D^;\\e0ZoY5G\'gkFDY~', NULL, '46824.png', 'Jermaintown', 'Missouri', 'Montenegro', 1, '2023-12-30 03:21:50', '2023-12-30 03:21:50'),
(45, 'Dr. Ryan Terry', 'elwyn10@hotmail.com', 'Male', '421 Francesco View Apt. 715\nLake Yasmeen, IN 16574-8590', '2022-07-17', 'yiQ{\'p!z9FncZ', NULL, '82929.png', 'North Winnifred', 'New York', 'Western Sahara', 1, '2023-12-30 03:21:51', '2023-12-30 03:21:51'),
(46, 'Nora Lowe', 'bgislason@gmail.com', 'Male', '8209 Jermain Prairie\nNorth Bransonside, MN 65123', '1994-03-24', 't\'Q5sh$WeQ_/3%:_yB', NULL, '66179.png', 'New Robbie', 'Colorado', 'Korea', 1, '2023-12-30 03:21:52', '2023-12-30 03:21:52'),
(47, 'Annette Herzog Jr.', 'abshire.berry@hotmail.com', 'Male', '22732 Bednar Landing Suite 186\nEast Eduardo, NY 01563-4579', '2001-07-27', 'FTV>>s<#qgI', NULL, '76642.png', 'Oranchester', 'Delaware', 'Timor-Leste', 1, '2023-12-30 03:21:54', '2023-12-30 03:21:54'),
(48, 'Aleen Wiegand', 'pat.larson@ernser.info', 'Male', '5175 Lisandro Motorway Suite 448\nNorth Quincymouth, AK 74254-5119', '1971-05-13', '72@!Rz*oO}SKQ[lU', NULL, '94426.png', 'Robelborough', 'Texas', 'Costa Rica', 1, '2023-12-30 03:21:55', '2023-12-30 03:21:55'),
(49, 'Edyth Schneider', 'brendon77@hotmail.com', 'Male', '85604 Mac Squares\nPort Jeradfurt, CO 74513', '1976-04-16', 'cQTtL*GJ', NULL, '73539.png', 'Mariettachester', 'Texas', 'Paraguay', 1, '2023-12-30 03:21:57', '2023-12-30 03:21:57'),
(50, 'Allison Beier', 'drew.fisher@collins.org', 'Male', '135 Bernadine Rue Apt. 038\nSouth Eldridgeville, CA 84857', '1999-06-25', '`^\\V<`zJ', NULL, '90231.png', 'Lake Nestormouth', 'Washington', 'Syrian Arab Republic', 1, '2023-12-30 03:21:58', '2023-12-30 03:21:58'),
(51, 'Hayley Funk', 'iyundt@robel.info', 'Male', '16733 Lewis Keys\nDanielaview, KS 19443', '1986-10-23', 'HL\'c2(b*\"%wzk,l,7p', NULL, '51121.png', 'East Treyfurt', 'Vermont', 'Tonga', 1, '2023-12-30 03:21:59', '2023-12-30 03:21:59'),
(52, 'Prof. Isac Wyman', 'vbahringer@white.biz', 'Male', '5986 Rodrigo Lodge\nEulaberg, MN 70587-8672', '2023-04-27', '7\'z\\>D&.A4J3R2(J^x,', NULL, '77350.png', 'Ginaburgh', 'Maryland', 'Zimbabwe', 1, '2023-12-30 03:22:01', '2023-12-30 03:22:01'),
(53, 'Jordyn Gusikowski', 'lavern.west@oreilly.org', 'Male', '4525 Brown Orchard\nNorth Trinitychester, AK 55101', '1989-05-28', 'X}GA_fp7reBAD', NULL, '69447.png', 'South Bradstad', 'North Carolina', 'Morocco', 1, '2023-12-30 03:22:02', '2023-12-30 03:22:02'),
(54, 'Jacques Lemke', 'acrooks@stanton.com', 'Male', '891 Weimann Summit\nHermannfurt, HI 51321', '1971-03-02', 'n:$!^xGmV.', NULL, '95131.png', 'Marvinfort', 'South Dakota', 'Togo', 1, '2023-12-30 03:22:04', '2023-12-30 03:22:04'),
(55, 'Efrain Rice', 'murazik.kitty@gottlieb.com', 'Male', '602 Kertzmann Course\nWest Shania, WV 52791', '2017-11-22', '(,VVH1Bm96QH{tFIr>!', NULL, '82722.png', 'Gregtown', 'Washington', 'Saint Martin', 1, '2023-12-30 03:22:05', '2023-12-30 03:22:05'),
(56, 'Prof. Pansy Reichel DVM', 'jaida16@carroll.com', 'Male', '79762 Dale Mission Apt. 133\nLake Luigi, NV 04984-9348', '1978-02-15', '/c`v3^o}>@WP*C&', NULL, '40873.png', 'Kovacekfurt', 'Illinois', 'Czech Republic', 1, '2023-12-30 03:22:06', '2023-12-30 03:22:06'),
(57, 'Raymundo Daniel', 'ookuneva@osinski.com', 'Male', '9377 Littel Valleys Suite 557\nLake Duncanton, GA 63554-2507', '2003-06-12', '1fn~@p%tWlYU@+xw1,{', NULL, '87680.png', 'West Presley', 'Colorado', 'Dominican Republic', 1, '2023-12-30 03:22:08', '2023-12-30 03:22:08'),
(58, 'Dr. Amani Russel I', 'hbauch@yahoo.com', 'Male', '771 Myles Ferry\nCassinborough, MN 09475', '2004-01-12', 'a>je@a&%i&*a)a', NULL, '16154.png', 'Joelleburgh', 'Delaware', 'Eritrea', 1, '2023-12-30 03:22:09', '2023-12-30 03:22:09'),
(59, 'Domenica Fahey III', 'thalia.nicolas@hotmail.com', 'Male', '295 Brycen Bypass Apt. 336\nNew Ronaldo, AR 26956-4335', '2009-07-22', 'r\\8LTa<%\"}#', NULL, '94518.png', 'North Marlene', 'Alabama', 'Ecuador', 1, '2023-12-30 03:22:10', '2023-12-30 03:22:10'),
(60, 'Prof. Stevie Kohler II', 'chad07@crist.com', 'Male', '873 Miracle Stravenue\nNew Genestad, NC 48505-2977', '2006-04-15', '6mrKPFRc(.vE4', NULL, '90243.png', 'New Arianeville', 'North Carolina', 'New Caledonia', 1, '2023-12-30 03:22:12', '2023-12-30 03:22:12'),
(61, 'Bernadine Powlowski', 'reilly.lura@luettgen.net', 'Male', '76660 Luther Harbors\nEast Angelinemouth, VT 00277', '2007-11-20', '6d.H>$2Zzi6I7', NULL, '89307.png', 'East Delphiaborough', 'Maine', 'Gibraltar', 1, '2023-12-30 03:22:13', '2023-12-30 03:22:13'),
(62, 'Nikita Keebler', 'macejkovic.ian@gutkowski.com', 'Male', '648 Haag Circles Apt. 346\nWest Tommie, AL 58830', '2011-07-21', '%Yg=}PmPk', NULL, '30222.png', 'Laronmouth', 'Florida', 'Cook Islands', 1, '2023-12-30 03:22:15', '2023-12-30 03:22:15'),
(63, 'Sedrick Gutmann', 'trent.kub@hotmail.com', 'Male', '4713 Zackery Cliffs Suite 024\nLake Duncan, NC 10534', '2003-03-30', '~7plc4otn`INFE(k', NULL, '14688.png', 'North Kenyonshire', 'Tennessee', 'Netherlands Antilles', 1, '2023-12-30 03:22:16', '2023-12-30 03:22:16'),
(64, 'Mrs. Katheryn Cassin PhD', 'walter.conn@yahoo.com', 'Male', '2514 Crooks Light Apt. 538\nPort Rosa, AZ 57621', '1995-08-02', '?<(R\"Wm', NULL, '9865.png', 'West Marguerite', 'Hawaii', 'Belize', 1, '2023-12-30 03:22:17', '2023-12-30 03:22:17'),
(65, 'Ms. Marion Emard Jr.', 'chanel.kshlerin@blanda.com', 'Male', '8919 Harber Underpass Suite 757\nGorczanybury, TX 43924', '1970-03-27', 'n8Q6BSVi6Ad0n', NULL, '34968.png', 'New Evan', 'Georgia', 'Antigua and Barbuda', 1, '2023-12-30 03:22:18', '2023-12-30 03:22:18'),
(66, 'Waino Bradtke', 'haag.ludwig@moore.com', 'Male', '8256 Norwood Fall Suite 248\nConroybury, ME 51903', '2017-03-31', 'R]\"rR_3n8(<&Dy=n', NULL, '25140.png', 'Dockhaven', 'Montana', 'Western Sahara', 1, '2023-12-30 03:22:20', '2023-12-30 03:22:20'),
(67, 'Alexzander Gerlach', 'larkin.chanelle@gmail.com', 'Male', '10607 Katrina Mission\nNorth Timmystad, MN 76555-0251', '2020-07-02', '2?).n^dD%tT#$L&BeEx~', NULL, '70453.png', 'Bellefort', 'Louisiana', 'Austria', 1, '2023-12-30 03:22:21', '2023-12-30 03:22:21'),
(68, 'Deion Heathcote', 'steuber.vinnie@abernathy.org', 'Male', '185 Ava Prairie Apt. 153\nFloyton, OH 12293', '1990-09-03', 'Y:F!QxPS', NULL, '51247.png', 'North Laura', 'Georgia', 'Canada', 1, '2023-12-30 03:22:23', '2023-12-30 03:22:23'),
(69, 'Mavis Howell', 'pharris@schinner.net', 'Male', '422 Susie Port\nPort Amaniview, NM 33619', '1995-02-23', '0!9#,mDWWlxF', NULL, '99774.png', 'Trevabury', 'Maryland', 'Mauritius', 1, '2023-12-30 03:22:24', '2023-12-30 03:22:24'),
(70, 'Dr. Lonzo Kulas II', 'einar.hodkiewicz@hand.com', 'Male', '54541 Koch Terrace\nLemkemouth, GA 08326-9651', '2008-05-10', 'L#Zt+6)!+gI1', NULL, '47333.png', 'Christopherside', 'Alabama', 'Saint Lucia', 1, '2023-12-30 03:22:26', '2023-12-30 03:22:26'),
(71, 'Arely Gislason', 'rex25@witting.com', 'Male', '8122 Weimann Orchard Suite 760\nMireilletown, AL 17869', '2017-05-18', '.NR(:24aj1R@>jG^k}BS', NULL, '74462.png', 'Strackefort', 'Washington', 'Ireland', 1, '2023-12-30 03:22:27', '2023-12-30 03:22:27'),
(72, 'Lula Barrows', 'justyn.anderson@green.com', 'Male', '1343 Larkin Brook Suite 486\nEast Leola, UT 14478-2585', '1991-10-21', 'X>e(,F7gg?GEcq!', NULL, '28760.png', 'North Casper', 'Vermont', 'Niger', 1, '2023-12-30 03:22:28', '2023-12-30 03:22:28'),
(73, 'Omari Rau III', 'nterry@gmail.com', 'Male', '382 Verna Station\nLake Ricomouth, LA 25647-6971', '1989-11-29', 'GhfCWTA|+qh#Z~3', NULL, '31962.png', 'North Verdafurt', 'Louisiana', 'Kuwait', 1, '2023-12-30 03:22:30', '2023-12-30 03:22:30'),
(74, 'Ms. Emily Paucek MD', 'eulah.carter@gmail.com', 'Male', '7165 Dustin Village Apt. 265\nAdeliaside, WI 45511', '1988-10-03', '~fW8wYEI', NULL, '1262.png', 'Johnnieville', 'Nebraska', 'Sierra Leone', 1, '2023-12-30 03:22:32', '2023-12-30 03:22:32'),
(75, 'Terry Kunze', 'jerde.jamison@gmail.com', 'Male', '9146 Emery Plaza Suite 346\nMcCulloughburgh, CT 46164', '2018-07-25', '-v,@_-I/D6l', NULL, '48726.png', 'North Alisonburgh', 'Nevada', 'Ireland', 1, '2023-12-30 03:22:33', '2023-12-30 03:22:33'),
(76, 'Alice Simonis III', 'alexandrine.oberbrunner@hotmail.com', 'Male', '7231 Zboncak Ford\nNorth Hailie, NY 00346-4577', '2018-06-30', 'WR{_=`\';:2>dI~Q#-i', NULL, '4140.png', 'Port Jaycee', 'Maryland', 'Eritrea', 1, '2023-12-30 03:22:34', '2023-12-30 03:22:34'),
(77, 'Mrs. Pauline Gibson DVM', 'swintheiser@turcotte.com', 'Male', '6979 Boyer Crossing\nEloisehaven, ND 68360', '2000-10-19', 'lr^?I{k', NULL, '99888.png', 'Port Mariana', 'Tennessee', 'Djibouti', 1, '2023-12-30 03:22:36', '2023-12-30 03:22:36'),
(78, 'Ms. Priscilla Wilderman IV', 'volkman.ruthe@bauch.com', 'Male', '16797 Gia Hollow Apt. 958\nJerryburgh, SC 63873', '2018-09-22', '%cYT@\"Zsg', NULL, '62597.png', 'Port Elenaton', 'New Jersey', 'Bosnia and Herzegovina', 1, '2023-12-30 03:22:37', '2023-12-30 03:22:37'),
(79, 'Dr. Loraine O\'Reilly', 'cathrine.schaefer@haley.org', 'Male', '711 Ziemann Shores Apt. 120\nKundestad, NJ 86400', '2016-03-23', 'uY2~J[35]wEw', NULL, '4664.png', 'West Marleeland', 'Virginia', 'Indonesia', 1, '2023-12-30 03:22:39', '2023-12-30 03:22:39'),
(80, 'Marty Zulauf', 'adrian.mckenzie@osinski.com', 'Male', '6192 Hoeger Ville\nNew Elnora, KS 37478-0193', '1988-12-27', 'N5*|V=.x', NULL, '42287.png', 'Lake Milanland', 'District of Columbia', 'Somalia', 1, '2023-12-30 03:22:40', '2023-12-30 03:22:40'),
(81, 'Prof. Haley Considine II', 'hvandervort@gusikowski.com', 'Male', '66089 Botsford Highway\nJakubowskistad, DC 31995', '2001-12-01', '8Ajgv&MqA.^jF&}:hsh', NULL, '94768.png', 'Desireechester', 'Minnesota', 'Costa Rica', 1, '2023-12-30 03:22:41', '2023-12-30 03:22:41'),
(82, 'Treva Cartwright', 'brook31@hotmail.com', 'Male', '429 Sipes Locks Suite 782\nNew Celia, MS 91426-2301', '2009-11-13', '#Hrr}i:', NULL, '15334.png', 'Bodeside', 'Florida', 'Swaziland', 1, '2023-12-30 03:22:43', '2023-12-30 03:22:43'),
(83, 'Domenica Monahan', 'rhett.robel@hackett.com', 'Male', '3917 Schumm Roads Suite 079\nPowlowskiport, AK 19020-0298', '2019-10-10', '*Ncar_`', NULL, '72105.png', 'South Furman', 'Delaware', 'Korea', 1, '2023-12-30 03:22:44', '2023-12-30 03:22:44'),
(84, 'Krystal Bayer', 'clementina02@gmail.com', 'Male', '4949 Brakus Summit Apt. 894\nPort Theresia, NM 06268', '1989-07-16', 'Fm~Ar2', NULL, '53615.png', 'Bergstromtown', 'West Virginia', 'Guinea-Bissau', 1, '2023-12-30 03:22:45', '2023-12-30 03:22:45'),
(85, 'Dwight Gottlieb', 'bauch.hillary@weimann.org', 'Male', '50121 Mariano Gardens\nHerbertbury, UT 53402', '1993-09-27', 'B)s1.<$UrFN$7', NULL, '28318.png', 'West Ewellburgh', 'West Virginia', 'Ireland', 1, '2023-12-30 03:22:47', '2023-12-30 03:22:47'),
(86, 'Rocky Powlowski', 'edd.tillman@miller.biz', 'Male', '7195 Emmerich Circles Apt. 218\nLake Cassandra, HI 04274-5252', '1972-06-02', ',[A@.jc\"OyO', NULL, '859.png', 'South Sophiechester', 'North Dakota', 'Northern Mariana Islands', 1, '2023-12-30 03:22:48', '2023-12-30 03:22:48'),
(87, 'Melba Flatley', 'hessel.rogers@hotmail.com', 'Male', '42385 Bogan Port Apt. 312\nAlexandreafort, CA 28071', '2003-04-24', 'kKeAY])SH,KUD!)Kn}}`', NULL, '56768.png', 'West Leraton', 'New Hampshire', 'Belize', 1, '2023-12-30 03:22:49', '2023-12-30 03:22:49'),
(88, 'Nicolas Fahey PhD', 'ibrahim01@gmail.com', 'Male', '29042 Elouise Drive Suite 065\nEast Kristianville, ID 60073', '2000-07-07', 'Am3=C(', NULL, '56132.png', 'East Janaefurt', 'Utah', 'Syrian Arab Republic', 1, '2023-12-30 03:22:51', '2023-12-30 03:22:51'),
(89, 'Percy Harber', 'koelpin.nyasia@boehm.com', 'Male', '429 Terrell Inlet\nSmithchester, IL 05745-6821', '1979-08-08', 'mTYCr>|m<YACC', NULL, '28386.png', 'Port Elva', 'Nevada', 'Jersey', 1, '2023-12-30 03:22:52', '2023-12-30 03:22:52'),
(90, 'Alvina Hammes', 'ghomenick@gmail.com', 'Male', '1833 White Camp\nLake Scotchester, CA 60822', '2009-02-20', '3s3-,%9\\-(yF&`4\\gD', NULL, '33029.png', 'Swaniawskiton', 'Alaska', 'Solomon Islands', 1, '2023-12-30 03:22:54', '2023-12-30 03:22:54'),
(91, 'Khalil Schmitt', 'anya.gaylord@hotmail.com', 'Male', '912 Isabel Parks Suite 009\nKozeyside, DC 09678-1036', '1981-04-21', 's(za\";0Of>54', NULL, '81514.png', 'Port Karli', 'Louisiana', 'Montenegro', 1, '2023-12-30 03:22:55', '2023-12-30 03:22:55'),
(92, 'Clarissa Parker', 'dryan@gmail.com', 'Male', '6348 Dovie Island Suite 751\nKuvalisville, NV 98567-9978', '1990-12-27', 'aI<CTe', NULL, '63171.png', 'South Madilynfurt', 'Oklahoma', 'Netherlands', 1, '2023-12-30 03:22:56', '2023-12-30 03:22:56'),
(93, 'Deron Leffler', 'napoleon.kertzmann@cormier.com', 'Male', '1596 Mertz Brooks\nNorth Norene, IL 63721-3917', '2004-03-09', 'I{\'~P<b', NULL, '1330.png', 'Franzfort', 'Iowa', 'Saint Vincent and the Grenadines', 1, '2023-12-30 03:22:58', '2023-12-30 03:22:58'),
(94, 'Dr. Stan Kris DDS', 'opagac@gmail.com', 'Male', '582 Maribel Mission\nNorth Dustinberg, KY 56240-7861', '2002-09-18', 'Bh8KxMf5Dcu', NULL, '55380.png', 'Leannonchester', 'Connecticut', 'Bermuda', 1, '2023-12-30 03:22:59', '2023-12-30 03:22:59'),
(95, 'Jasen Ondricka MD', 'emmitt.ebert@hotmail.com', 'Male', '125 Oran Harbors\nWest Othaborough, FL 18288-5298', '1985-01-28', 'NB%-f:\\G}YLK&:O$NH`', NULL, '37601.png', 'Kulasport', 'North Carolina', 'Timor-Leste', 1, '2023-12-30 03:23:00', '2023-12-30 03:23:00'),
(96, 'Aiyana Mann', 'rice.pearl@yahoo.com', 'Male', '628 Welch Hills Apt. 942\nJamisontown, DE 69204-0599', '1972-03-28', '/0]br^;+&NQ[{', NULL, '58780.png', 'Jeremieland', 'Kentucky', 'Falkland Islands (Malvinas)', 1, '2023-12-30 03:23:02', '2023-12-30 03:23:02'),
(97, 'Ardith Renner', 'christophe42@hotmail.com', 'Male', '67207 Katrina Mountain\nNew Lorenberg, VT 49048', '2000-10-08', '0wfY<O\"ZKnwFE6j\\l', NULL, '89395.png', 'Junefort', 'Utah', 'Saint Helena', 1, '2023-12-30 03:23:03', '2023-12-30 03:23:03'),
(98, 'Dr. Sydni Mitchell', 'tre.williamson@gmail.com', 'Male', '3648 Bergstrom Hills Suite 092\nSchillerville, AL 56412', '1973-08-03', 'hbdW\"sFW]', NULL, '82727.png', 'New Monserratechester', 'Nebraska', 'Netherlands', 1, '2023-12-30 03:23:05', '2023-12-30 03:23:05'),
(99, 'Mr. Albert Hoppe', 'myrtle09@hotmail.com', 'Male', '41930 Conn Pine Suite 457\nSouth Ambroseville, AR 77690-3855', '1998-07-25', 'OoVY^Dh', NULL, '47939.png', 'New Abagail', 'Montana', 'United States of America', 1, '2023-12-30 03:23:06', '2023-12-30 03:23:06'),
(100, 'Carolanne Von DVM', 'chanelle28@swift.info', 'Male', '691 Dooley Shore Apt. 629\nNew Vernie, AL 34696', '2007-07-02', 'b5;Mbu', NULL, '12504.png', 'Lake Edward', 'Virginia', 'Cape Verde', 1, '2023-12-30 03:23:07', '2023-12-30 03:23:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_12_28_121559_create_sessions_table', 1),
(13, '2023_12_28_125203_create_customers_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('A1HqYCdJrNpATusjPHSOqPbI7nvhkwvrOtappGHL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVWVneGdDaWZGNzBYRFpTNm9kNkR4aFB5YUxuOE5yNmg2WWNvTmQ0YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9jdXN0b21lcnNfbGlzdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1704168085),
('gei3IeeMCb5jJnN7rQIp4ufI5c9jOZ4D2OHdZgAz', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidE9pWnl5VXR3ZHNkd012QUdYTzN3a05qUDJXaTltRTd0VDJEVmxCdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9jdXN0b21lcnNfbGlzdD9wYWdlPTEwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1703929398),
('NSL0cSSyr73G18k2SesoITaYHzlE309XhigCCQDZ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR1RlQW9ncUxJNzV2R25XWXRxdkozdzM1OG5IM3pPUHQzVVRpSnFJZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9jdXN0b21lcnNfbGlzdD9wYWdlPTEwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1704014809);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Abhilasha Sharma', 'abhilasha.s149@gmail.com', NULL, '$2y$12$mpPFBqt6nb/e7/w7e8MRTuUxoCYWffMvCN0KzOzI493m6OZgyd0pO', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-28 06:52:56', '2023-12-28 06:52:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
