-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 26, 2019 at 07:08 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contest`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(2) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `title`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People\'s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People\'s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'North Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'SS', 'South Sudan'),
(203, 'ES', 'Spain'),
(204, 'LK', 'Sri Lanka'),
(205, 'SH', 'St. Helena'),
(206, 'PM', 'St. Pierre and Miquelon'),
(207, 'SD', 'Sudan'),
(208, 'SR', 'Suriname'),
(209, 'SJ', 'Svalbard and Jan Mayen Islands'),
(210, 'SZ', 'Swaziland'),
(211, 'SE', 'Sweden'),
(212, 'CH', 'Switzerland'),
(213, 'SY', 'Syrian Arab Republic'),
(214, 'TW', 'Taiwan'),
(215, 'TJ', 'Tajikistan'),
(216, 'TZ', 'Tanzania, United Republic of'),
(217, 'TH', 'Thailand'),
(218, 'TG', 'Togo'),
(219, 'TK', 'Tokelau'),
(220, 'TO', 'Tonga'),
(221, 'TT', 'Trinidad and Tobago'),
(222, 'TN', 'Tunisia'),
(223, 'TR', 'Turkey'),
(224, 'TM', 'Turkmenistan'),
(225, 'TC', 'Turks and Caicos Islands'),
(226, 'TV', 'Tuvalu'),
(227, 'UG', 'Uganda'),
(228, 'UA', 'Ukraine'),
(229, 'AE', 'United Arab Emirates'),
(230, 'GB', 'United Kingdom'),
(231, 'US', 'United States'),
(232, 'UM', 'United States minor outlying islands'),
(233, 'UY', 'Uruguay'),
(234, 'UZ', 'Uzbekistan'),
(235, 'VU', 'Vanuatu'),
(236, 'VA', 'Vatican City State'),
(237, 'VE', 'Venezuela'),
(238, 'VN', 'Vietnam'),
(239, 'VG', 'Virgin Islands (British)'),
(240, 'VI', 'Virgin Islands (U.S.)'),
(241, 'WF', 'Wallis and Futuna Islands'),
(242, 'EH', 'Western Sahara'),
(243, 'YE', 'Yemen'),
(244, 'ZR', 'Zaire'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `memberships`
--

DROP TABLE IF EXISTS `memberships`;
CREATE TABLE IF NOT EXISTS `memberships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `memberships`
--

INSERT INTO `memberships` (`id`, `title`) VALUES
(1, 'Member'),
(2, 'Non Member');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_name` varchar(20) NOT NULL,
  `menu_title` varchar(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `page_name` (`page_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_name`, `menu_title`, `title`, `content`, `published`, `date_created`) VALUES
(1, 'index', 'Home', 'Home', '<h2>Home Page</h2>\r\n\r\n<p><strong>Khalifa University has concluded the 13th annual Smart Mobile Application Contest (SMAC 2018) with an awards ceremony to recognize the winners of the innovative competition, which saw submissions from university teams from around the UAE.</strong></p>\r\n\r\n<p>The top three teams were ranked as follows:</p>\r\n\r\n<ul>\r\n	<li><strong>First place:</strong> Augmented Reality (AR) for Teaching UN Sustainability Goals</li>\r\n	<li><strong>Second place:</strong> Arbor: A New Museum Immersive Experience Using Augmented Reality</li>\r\n	<li><strong>Third place: </strong>Smart Container</li>\r\n</ul>\r\n\r\n<p>SMAC 2018 attracted 14 submissions from five UAE universities. The range of applications submitted was varied with many offering the use of IoT smart devices, AI, security, or Augmented Reality. The list of projects submitted are:</p>\r\n\r\n<ol>\r\n	<li>Wearable IoT-based Joint Flexion Sensing for Computer Aided Diagnosis of Motion Ailments</li>\r\n	<li>Ulcer Detection Device using Infrared Thermal Camera</li>\r\n	<li>Arbor: A New Museum Immersive Experience Using Augmented Reality</li>\r\n	<li>Water Measurement AI</li>\r\n	<li>A Food Wastage Reduction Mobile Application</li>\r\n	<li>Real-time Driver&rsquo;s Fatigue Detection System</li>\r\n	<li>Collaborative Mobile App for Crowd-Sourcing Deep Learning Data</li>\r\n	<li>LipTalk</li>\r\n	<li>Security Authentication using Image Steganography in Mobile Devices</li>\r\n	<li>AR for Teaching UN Sustainability Goals</li>\r\n	<li>Smart Container</li>\r\n	<li>University Violation Monitor</li>\r\n	<li>Game Simulation of Smart Taxis</li>\r\n	<li>InstaBlock</li>\r\n</ol>\r\n\r\n<p>This year&rsquo;s contest is sponsored by Khalifa University and organised by a team from the ECE Department. A steering committee is formed from top institutions in the UAE such as UAEU, AUS, UoS, ADU, AUD, UD, and KU and a member from the TRA (Telecommunications Regulatory Authority, UAE). This may change in future. Contact Dr Jamal Zemerly (<a href=\"mailto:jamal.zemerly@ku.ac.ae\">jamal.zemerly@ku.ac.ae</a> or <a href=\"mailto:smac@ku.ac.ae\">smac@ku.ac.ae</a>) if you would like to be involved.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>This Year the contest is extended to the Gulf and MENA region where submission will be accepted from undergraduate students from any higher education institution from these countries.</strong> Submissions will be shortlisted and these will be informed and have to participate and present their applications live at a presentation and ceremony day on 28th April 2019 at Khalifa University main campus in Abu Dhabi. A panel of judges will be formed from the local industry with one team member is selected from faculty of a university with no submission. Media and TV coverage will be available and VIP tour will be arranged in order for the teams to show their innovative apps to a wider audience. The winners will be announced on the same day and a ceremony to present them with the cash award (which is more than doubled from last year with this year a total of AED 70K: 40K, 20K and 10K for the 3 top winning teams respectively) will also be held on the same day. Partial cost of travel and accommodation will be covered for students attending from outside UAE.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/img1.jpg\" style=\"height:342px; width:512px\" /></p>\r\n\r\n<p>Photo: Top winners from last year SMAC 2018. Note that the awards this year have increased.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/image2-1-1024x682.jpg\" style=\"height:350px; width:525px\" /></p>\r\n\r\n<p>Photo: A shot of the VIP tour of SMAC 2018.</p>\r\n', 1, '2019-06-13 19:01:13'),
(2, 'about', 'About', 'About', '<h2>About Contest</h2>\r\n\r\n<p>The Smart Mobile Application Contest (SMAC) is a yearly competition event held in the United Arab Emirates at Khalifa University. The contest solicits submissions in the form of original and culturally focused applications designed to run on mobile devices such as smart phones, pads, and tablets. Participation in the contest is open to all University/College students (subject to an eligibility criterion) in the UAE. The contest is expanding and this year submission from the MENA/GCC regions are welcome.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Objectives</p>\r\n	The objectives of the competition are:\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<ul>\r\n		<li>To promote an environment which fosters the creation of innovative mobile applications in the UAE and the Gulf and MENA region.</li>\r\n		<li>To provide participants with an opportunity to develop and demonstrate their mobile computing skills.</li>\r\n		<li>To assist participants in the business development phase needed to transform selected applications into commercial products.</li>\r\n	</ul>\r\n\r\n	<p>The contest is also meant to be a good opportunity for students and academics in all computing and telecommunication related disciplines in the UAE to consider the local and regional market needs in this field. This Contest may actually bring to the market compelling mobile phones applications to meet the demands of todayï¿½s mobile customers.</p>\r\n\r\n	<p>&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Eligibility</p>\r\n	The contest calls for submissions from Colleges and Universities in the UAE and the Gulf and MENA region. An institution may submit a maximum of five entries. A representative of the sponsoring institution, typically a faculty member, must serve as an official contest contact. The faculty should also certify the eligibility of the contestants. A team of one to four students may be associated with each submission. Each contestant must be a student enrolled in a degree program at the sponsoring institution with at least a half-time load. This rule is not to be construed as disqualifying co-op students, exchange students, or students serving internships. A student may compete for only one institution during a contest year and in only one submission.\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p>All contestants must be at the undergraduate level or have just finished their degree in the previous semester of the contest. No contestant may hold a Bachelor Degree for more than one semester. Contestant eligibility is determined during the academic term ending closest to the date of submission as set by the Steering Committee.</p>\r\n\r\n	<p>Applications may fall in any type and category of services such as lifestyle, entertainment, business, professional, etc. Applications must however be original. Also applications focused to the UAE (or the country of the submission), Islamic, and/or Arabic cultures are encouraged. They may be programmed to run on all mobile devices or on specific phones using special APIs.</p>\r\n	</li>\r\n	<li>\r\n	<p>Assessment</p>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<table>\r\n		<tbody>\r\n			<tr>\r\n				<td><strong>Criteria</strong></td>\r\n				<td><strong>Grade</strong></td>\r\n			</tr>\r\n			<tr>\r\n				<td>Originality</td>\r\n				<td>30</td>\r\n			</tr>\r\n			<tr>\r\n				<td>Usability</td>\r\n				<td>30</td>\r\n			</tr>\r\n			<tr>\r\n				<td>Quality</td>\r\n				<td>30</td>\r\n			</tr>\r\n			<tr>\r\n				<td>Culturally focused</td>\r\n				<td>10</td>\r\n			</tr>\r\n			<tr>\r\n				<td><strong>Total</strong></td>\r\n				<td><strong>100</strong></td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n\r\n	<p>After the initial submission the steering committee will shortlist a number of applications and to participate in the contest on the contest day. Students of shortlisted applications are informed a week before the actual contest. At least one member per team must be present at the contest day in order to demonstrate and run the submitted application. It is the responsibility of the teams to bring and setup the required software and hardware needed to successfully present the various applications. There will be a presentation with powerpoint and a real demo of the app in front a public audience and the judges committee. The students are also asked to prepare an A1 Poster to display on a VIP tour.</p>\r\n\r\n	<p>The judges, selected by the steering committee, are solely responsible for evaluating and assessing the applications based on the specified rubrics below. The judges, ranks the entries and determines the first three winners of the contest. The judges are empowered to adjust for or adjudicate unforeseen events or conditions. Their decision is final and cannot be challenged. The judges will evaluate and grade each application based on the shown criteria in the table.</p>\r\n	</li>\r\n</ul>\r\n', 1, '2019-06-13 19:40:36'),
(3, 'committees', 'Committees', 'Committees', '<h2>Committees</h2>\r\n\r\n<p>A Contest Steering Committee is appointed to set the policy and general rules for the conduct of the contest. The Committee is solely responsible for interpreting the rules and for ruling on unforeseen situations. It also selects, every year, a judging committee consisting of at least three judges from local industries, Colleges and Universities. The judges are responsible for evaluating and grading the applications according to the criteria set by the Steering Committee.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Organizing Committee (From Khalifa University)</p>\r\n	Dr. Jamal Zemerly (Chair)\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p>Dr.Amjad Gawanmeh</p>\r\n\r\n	<p>Dr. Youssef Iraqi</p>\r\n\r\n	<p>Dr. Chan Yeob Yeun</p>\r\n\r\n	<p>Mr. Tarek ElFar</p>\r\n	</li>\r\n	<li>\r\n	<p>Steering Committee</p>\r\n	Dr. Jamal Zemerly (Chair) ï¿½ Khalifa University\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p>Dr. Wael Bazzi ï¿½ American University of Dubai</p>\r\n\r\n	<p>Mr. Saif Bin Ghelaita ï¿½ TRA, UAE</p>\r\n\r\n	<p>Dr. Ashraf Khalil ï¿½ University of Abu Dhabi</p>\r\n\r\n	<p>Prof. Wathiq Mansoor ï¿½ University of Dubai</p>\r\n\r\n	<p>Dr. Ghassan Qadah ï¿½ American University of Sharjah</p>\r\n\r\n	<p>Dr. Naveed Ahmed ï¿½ University of Sharjah</p>\r\n\r\n	<p>Dr. Saad Harous ï¿½ UAE University</p>\r\n	</li>\r\n	<li>\r\n	<p>Judging Committee</p>\r\n\r\n	<p>Mr. Saif Bin Ghelaita (Chief Judge) ï¿½ Director Technologies &amp; Standards, TRA</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Other members will be selected with the help of steering committee.</p>\r\n', 1, '2019-06-13 19:40:36'),
(4, 'submission', 'Submission', 'Submission', '<h1>SMAC 2020</h1>\r\n\r\n<p>Smart Mobile Application Contest</p>\r\n\r\n<p>You may contact Dr. Jamal Zemerly at jamal.zemerly@ku.ac.ae or <a href=\"mailto:smac2020@ku.ac.ae\">smac2020@ku.ac.ae</a> for consultation about submission.</p>\r\n\r\n<p>Applications Submission Deadline April 14, 2020.</p>\r\n\r\n<p>Contest Day is 28th April (9AM-5PM)</p>\r\n', 1, '2019-06-14 09:33:59'),
(5, 'venue', 'Venue', 'Venue', '<h2>Venue</h2>\r\n\r\n<p>Khalifa University of Science, Technology &amp; Research</p>\r\n\r\n<p>P.O. Box: 127788</p>\r\n\r\n<p>Abu Dhabi, UAE</p>\r\n\r\n<p>T: +9712-401 8224</p>\r\n\r\n<p>F: +9712-447 2442</p>\r\n\r\n<h2>Campus Direction</h2>\r\n\r\n<p><a href=\"https://www.google.com/maps/@24.447356,54.394909,14z/data=!4m2!7m1!2e1?hl=en\">https://www.google.com/maps/@24.447356,54.394909,14z/data=!4m2!7m1!2e1?hl=en</a></p>\r\n\r\n<p>To get to Khalifa University Abu Dhabi campus there are couple of roads to take. Specifically through the two bridges of Al Maqta and Mussafah leading into Abu Dhabi, Capital of the United Arab Emirates.</p>\r\n\r\n<p>To get to Khalifa Universityï¿½s Abu Dhabi campus the trip duration will usually take around 30 minutes from Abu Dhabi International Airport. However, if you are coming from Dubai the travel duration will be around 1 hour and 40 minutes by car.</p>\r\n\r\n<p>If you will take the bus from Abu Dhabi International Airport heading to campus it will take approximately 45 minutes. The trip will last for 2 hours and 15 minutes if you are taking the bus from Dubai International Airport to our Abu Dhabi campus.</p>\r\n', 1, '2019-06-14 09:35:24'),
(6, 'training', 'Training', 'Training', '<h2>Training</h2>\r\n\r\n<p>Many online courses exist on edx.org and coursera. Here are couple of examples:</p>\r\n\r\n<p>Android: <a href=\"https://www.edx.org/course/introduction-mobile-application-hkustx-comp107x-8\">https://www.edx.org/course/introduction-mobile-application-hkustx-comp107x-8</a></p>\r\n\r\n<p>IOS: <a href=\"https://www.edx.org/course/build-your-very-first-ios-app\">https://www.edx.org/course/build-your-very-first-ios-app</a></p>\r\n', 1, '2019-06-14 09:35:24'),
(7, 'participation', 'Participation', 'Call for Participation', '<h2>Call for Particpation</h2>\r\n\r\n<p><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/Screen-Shot-2019-03-05-at-4.24.07-PM.png\" /></p>\r\n', 1, '2019-06-14 09:35:24'),
(8, 'program', 'Program', 'Program', '<h2>Tentative Program</h2>\r\n\r\n<p><em>Sunday April 28, 2019</em></p>\r\n\r\n<p><a href=\"http://events.kustar.ac.ae/mac2015/venue/\"><em>Khalifa University (Main Campus), Abu Dhabi</em></a></p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>8:30 - 9:00 AM</strong></td>\r\n			<td>Registration and coffee break</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>9:00 - 11:00 AM</strong></td>\r\n			<td>Projects presentations/demos</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>11:00 - 11:30 AM</strong></td>\r\n			<td>Coffee Break</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>11:30 AM - 02:00 PM</strong></td>\r\n			<td>Projects presentations/demos</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2:00 - 3:00 PM</strong></td>\r\n			<td>Judges Meeting/VIP Tour/ and prayer</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>3:00 - 5:00 PM</strong></td>\r\n			<td>Award Ceremony and Lunch</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>3:00 PM</strong></td>\r\n			<td>Verses from Quran</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>3:05 PM</strong></td>\r\n			<td>Welcome Speech by Dr. Jamal Zemerly, Chair Steering Committee</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>3:10 PM</strong></td>\r\n			<td>Speech from Khalifa University Management</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>3:15 PM</strong></td>\r\n			<td>Presentation of certificates and trophies by KUSTAR Representatives<br />\r\n			Judging Committee (certificates and gifts)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>3:20 PM</strong></td>\r\n			<td>Presentation of awards by Chief Judge and KUSTAR Representatives<br />\r\n			3rd place, 2nd place and 1st place prizes</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>3:30 - 4:30 PM</strong></td>\r\n			<td>Lunch (buffet)</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Full Program will be available one or after 21st April 2019</p>\r\n', 1, '2019-06-14 09:35:24'),
(9, 'gallery', 'Gallery', 'Gallery', '<h2>Gallery</h2>\r\n\r\n<p><a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5123-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5123-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5121-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5121-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5115-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5115-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5107-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5107-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5105-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5105-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5102-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5102-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5096-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5096-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5091-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5091-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5086-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5086-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5084-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5084-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5080-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5080-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5078-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5078-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5070-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5070-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5060-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5060-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5059-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5059-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5054-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5054-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5048-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5048-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5039-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5039-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5033-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5033-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5032-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5032-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5030-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5030-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5004-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5004-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5009-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5009-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5017-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5017-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5021-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5021-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5024-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5024-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5026-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5026-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5002-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_5002-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4996-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4996-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4991-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4991-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4988-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4988-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4980-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4980-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4973-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4973-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4971-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4971-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4969-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4969-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4962-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4962-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4960-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4960-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4959-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4959-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4956-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4956-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4955-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4955-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4952-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4952-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4948-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4948-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4945-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4945-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4943-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4943-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4942-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4942-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4934-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4934-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4933-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4933-300x200.jpg\" /></a> <a href=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4921-1024x682.jpg\"><img alt=\"\" src=\"https://www.ku.ac.ae/wp-content/uploads/2019/03/PHM_4921-300x200.jpg\" /></a></p>\r\n', 1, '2019-06-14 09:39:45');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `e_mail` varchar(200) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `membership_id` int(11) NOT NULL DEFAULT '0',
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

DROP TABLE IF EXISTS `submissions`;
CREATE TABLE IF NOT EXISTS `submissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supervisor_name` varchar(50) NOT NULL,
  `supervisor_email` varchar(100) NOT NULL,
  `supervisor_phone` varchar(20) NOT NULL,
  `student1_name` varchar(50) NOT NULL,
  `student1_email` varchar(100) NOT NULL,
  `student1_phone` varchar(20) NOT NULL,
  `student2_name` varchar(50) NOT NULL,
  `student2_email` varchar(100) NOT NULL,
  `student2_phone` varchar(20) NOT NULL,
  `student3_name` varchar(50) NOT NULL,
  `student3_email` varchar(100) NOT NULL,
  `student3_phone` varchar(20) NOT NULL,
  `student4_name` varchar(50) NOT NULL,
  `student4_email` varchar(100) NOT NULL,
  `student4_phone` varchar(20) NOT NULL,
  `app_title` varchar(100) NOT NULL,
  `app_plateform` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `supervisor_id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `supervisor_id`, `full_name`, `email`, `phone`, `password`, `published`) VALUES
(1, 'admin', 0, 'Administrator', 'admin@local', '322423', '123456', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
