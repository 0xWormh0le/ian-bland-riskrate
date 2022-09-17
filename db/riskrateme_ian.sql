-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 09, 2019 at 01:54 PM
-- Server version: 5.7.27-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `riskrateme`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_emailaddress`
--

CREATE TABLE `account_emailaddress` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_emailaddress`
--

INSERT INTO `account_emailaddress` (`id`, `email`, `verified`, `primary`, `user_id`) VALUES
(1, 'ian@securitytrain.me', 0, 1, 2),
(2, 'dimitarhero@yahoo.com', 0, 1, 3),
(3, 'jesus@riskrate.me', 0, 1, 4),
(4, 'jeff@bdsfx.com', 0, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `account_emailconfirmation`
--

CREATE TABLE `account_emailconfirmation` (
  `id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `sent` datetime(6) DEFAULT NULL,
  `key` varchar(64) NOT NULL,
  `email_address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `assessments_answer`
--

CREATE TABLE `assessments_answer` (
  `id` int(11) NOT NULL,
  `content` varchar(1024) NOT NULL,
  `score` int(10) UNSIGNED NOT NULL,
  `question_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assessments_answer`
--

INSERT INTO `assessments_answer` (`id`, `content`, `score`, `question_id`) VALUES
(1, 'Yes', 1, 1),
(2, 'No', 0, 1),
(3, 'Yes, our employees are trained on identifying phishing emails and our business has a plan in place regarding how to address them.', 3, 2),
(4, 'Yes, our employees are trained on identifying phishing emails.', 2, 2),
(5, 'Our employees have some knowledge on phishing emails.', 1, 2),
(6, 'No, our employees have not been trained to deal with phishing emails.', 0, 2),
(7, 'Only those who require access to the organization’s data for their job functions and who have received management approval to access the data may access the data.', 4, 3),
(8, 'Only individuals who have received management approval to access the data may access the data.', 3, 3),
(9, 'Only certain departments have access to the information.', 2, 3),
(10, 'Anyone currently employed by the organization has access to the information.', 1, 3),
(11, 'Anyone who has worked for the organization has access to the information.', 0, 3),
(12, 'The operating system is kept up to date with patches as soon as patches are made available.', 4, 4),
(13, 'The operating system is updated regularly.', 3, 4),
(14, 'Will only update the operating system when the old system is no longer patched and supported by its developer.', 2, 4),
(15, 'Will only update the operating system if all current business applications run on the newest version of the system.', 1, 4),
(16, 'Never update the operating system.', 0, 4),
(17, 'Yes', 1, 5),
(18, 'No', 0, 5),
(19, 'Yes', 1, 6),
(20, 'No', 0, 6),
(21, 'Yes', 1, 7),
(22, 'No', 0, 7),
(23, 'Yes', 1, 8),
(24, 'No', 0, 8),
(25, 'Yes', 1, 9),
(26, 'No', 0, 9),
(27, 'Yes', 1, 10),
(28, 'No', 0, 10),
(29, 'All users have their own logins.', 2, 11),
(30, 'Some systems use a common login', 1, 11),
(31, 'No logins in place/one shared login.', 0, 11),
(32, 'Multi-factor or 2-factor authentication is used.', 5, 12),
(33, 'At least 8 characters, contain Upper-Case Letters, Lower-Case Letters, Numbers, and Symbols.', 4, 12),
(34, 'At least 8 characters, contain Upper-Case Letters, Lower-Case Letters, and Numbers.', 3, 12),
(35, 'At least 8 characters, contain Upper-Case Letters and Lower-Case Letters.', 2, 12),
(36, 'At least 8 characters, contain only letters and numbers.', 1, 12),
(37, 'None of the above', 0, 12),
(38, 'More than twice a year', 3, 13),
(39, 'Twice a year', 2, 13),
(40, 'Once a year', 1, 13),
(41, 'Never', 0, 13),
(42, 'Yes', 1, 14),
(43, 'No', 0, 14),
(44, 'We have a hardware firewall built into our company’s network to protect our internal network structure.', 3, 15),
(45, 'We use a software firewall installed on our Windows or Apple computers.', 2, 15),
(46, 'We use both hardware and software firewalls.', 3, 15),
(47, 'We do not use firewalls.', 0, 15),
(48, 'They are trained on hire and annually thereafter.', 4, 16),
(49, 'They are trained annually.', 3, 16),
(50, 'They are trained one time when they are hired.', 2, 16),
(51, 'They are trained as-needed.', 1, 16),
(52, 'They are never trained.', 0, 16),
(53, 'No, we do NOT allow remote access of any files.', 3, 17),
(54, 'Yes, employees use a VPN to connect securely.', 2, 17),
(55, 'Yes, but employees cannot access sensitive information from remote locations.', 1, 17),
(56, 'None of the options apply.', 0, 17),
(57, 'Yes', 1, 18),
(58, 'No', 0, 18),
(59, 'Both data at rest and in transit are encrypted', 3, 19),
(60, 'Some data at rest and transit is encrypted', 2, 19),
(61, 'Only data in transit is encrypted', 1, 19),
(62, 'Only data at rest is encrypted', 1, 19),
(63, 'None of our data is encrypted', 0, 19),
(64, 'Data retention is documented and data is destroyed for all types of data', 3, 20),
(65, 'Data retention is documented and data is destroyed for our business confidential data only', 2, 20),
(66, 'Our data is never destroyed', 0, 20),
(67, 'We have incident response plans and business continuity plans in place', 4, 21),
(68, 'We have incident recovery and disaster recovery in place', 4, 21),
(69, 'We have only business continuity plan in place', 3, 21),
(70, 'We have only incident response plans in place', 3, 21),
(71, 'We have incident recovery in place', 1, 21),
(72, 'We have disaster recovery in place', 1, 21),
(73, 'We have no response or recovery plans at all', 0, 21),
(74, 'Yes', 1, 22),
(75, 'No', 0, 22),
(76, 'Yes', 1, 23),
(77, 'No', 0, 23),
(78, 'Yes', 1, 24),
(79, 'No', 0, 24),
(80, 'Yes', 1, 25),
(81, 'No', 0, 25),
(82, 'Yes, on all devices (desktops, laptops, tablets, phones, servers, etc.).', 3, 26),
(83, 'Yes, but only on some devices.', 2, 26),
(84, 'No, our devices do not have antivirus software installed.', 0, 26),
(85, 'I do not know.', 0, 26),
(86, 'Yes, on all devices (desktops, laptops, tablets, phones, servers, etc.).', 3, 27),
(87, 'Yes, but only on some devices.', 2, 27),
(88, 'No, our devices do not have malware protection.', 0, 27),
(89, 'I do not know.', 0, 27),
(90, 'Daily', 4, 28),
(91, '2-4 times per week', 3, 28),
(92, 'Once a week', 2, 28),
(93, 'Once a month', 1, 28),
(94, 'Never', 0, 28),
(95, 'Yes, our network is monitored to detect potential cybersecurity events.', 4, 29),
(96, 'Yes, our physical environment is monitored to detect potential cybersecurity events.', 3, 29),
(97, 'Yes, personnel activity is monitored to detect potential cybersecurity events.', 3, 29),
(98, 'No, we do not have the time to detect potential cybersecurity events.', 0, 29),
(99, 'No, we do not have the resources to do so.', 0, 29),
(100, 'Yes', 1, 30),
(101, 'No', 0, 30),
(102, 'Yes', 1, 31),
(103, 'No', 0, 31),
(104, 'Response processes and procedures are executed in a timely manner.', 1, 32),
(105, 'Response activities are coordinated with internal and external stakeholders, as appropriate, to include external support from law enforcement agencies.', 1, 32),
(106, 'Analysis is conducted to ensure adequate response and support recovery activities.', 1, 32),
(107, 'Activities are performed to prevent expansion of an event, mitigate its effects, and eradicate the incident.', 1, 32),
(108, 'Organizational response activities are improved by incorporating lessons learned from current and previous detection/response activities.', 1, 32),
(109, 'Recovery processes and procedures are executed to ensure timely restoration of systems or assets affected by cybersecurity events.', 1, 32),
(110, 'Recovery planning and processes are improved by incorporating lessons learned into future activities.', 1, 32),
(111, 'None of these', 0, 32),
(112, 'Yes, the necessary changes are made to the system(s) to stop future events.', 3, 33),
(113, 'Changes are made, but the cause has not been discovered.', 2, 33),
(114, 'An event has not occurred in the past.', 1, 33),
(115, 'No changes are made based on past events.', 0, 33),
(116, 'Yes, we have an individual or group readily available and well-trained in this area.', 3, 34),
(117, 'Yes, but the individual or group may not be readily available.', 2, 34),
(118, 'No, we do not currently have the resources to do this.', 0, 34),
(119, 'No, we would establish this after an event occurred.', 0, 34),
(120, 'Yes, we can quickly notify our customers.', 2, 35),
(121, 'No, our business does not keep any permanent records of customer information.', 2, 35),
(122, 'Yes, but it might take some time to notify customers.', 1, 35),
(123, 'Yes, but we would have to figure out how to notify our customers.', 1, 35),
(124, 'No, we do not know how to notify our customers.', 0, 35),
(125, 'Multiple times per day', 4, 36),
(126, 'Daily', 3, 36),
(127, 'Weekly', 2, 36),
(128, 'Monthly', 1, 36),
(129, 'Never', 0, 36),
(130, 'A legal agency which specializes in cyber crime', 1, 37),
(131, 'Law enforcement agency (police, FBI, etc.)', 1, 37),
(132, 'Internet service provider(s)', 1, 37),
(133, 'Coordinating centers – InfraGard, HITRUST, etc.', 1, 37),
(134, 'Public relations agency', 1, 37),
(135, 'List of software/hardware vendors who supplied your systems/devices', 1, 37),
(136, 'None of the above', 0, 37),
(137, 'We have a recovery plan in place that lists clear, comprehensive steps.', 2, 38),
(138, 'We have part of a recovery plan in place, but it may be short or vague.', 1, 38),
(139, 'We do not have a recovery plan in place.', 0, 38),
(140, 'Yes', 1, 39),
(141, 'No', 0, 39),
(142, 'Yes', 1, 40),
(143, 'No', 0, 40),
(144, 'Yes', 1, 41),
(145, 'No', 0, 41),
(146, 'Yes', 1, 42),
(147, 'No', 0, 42);

-- --------------------------------------------------------

--
-- Table structure for table `assessments_question`
--

CREATE TABLE `assessments_question` (
  `id` int(11) NOT NULL,
  `multiple` tinyint(1) NOT NULL,
  `max_score` int(10) UNSIGNED NOT NULL,
  `content` varchar(1024) NOT NULL,
  `recommendation` varchar(1024) NOT NULL,
  `topic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assessments_question`
--

INSERT INTO `assessments_question` (`id`, `multiple`, `max_score`, `content`, `recommendation`, `topic_id`) VALUES
(1, 0, 1, 'Have you identified the confidential data (credit card numbers, social security numbers, etc...) collected or stored by your company?', '', 1),
(2, 0, 3, 'Have your employees been trained to identify phishing emails?', '', 1),
(3, 0, 4, 'How do you restrict employee access to business confidential information?', '', 1),
(4, 0, 4, 'How often does your business update the operating system on devices that have access to business confidential information?', '', 1),
(5, 0, 1, 'Have you identified all devices that store or have access to business confidential information?', '', 1),
(6, 0, 1, 'Do you remove non-essential applications from business hardware?', '', 1),
(7, 0, 1, 'Are legal and regulatory requirements regarding cybersecurity, including privacy and civil liberties obligations, understood and managed?', '', 1),
(8, 0, 1, 'Do you receive and share threat and vulnerability information from/with internal and external sources?', '', 1),
(9, 0, 1, 'Are threats, vulnerabilities, likelihoods, and impacts used to determine risk?', '', 1),
(10, 0, 1, 'Is organizational risk tolerance determined and clearly expressed?', '', 1),
(11, 0, 2, 'How do you manage your employee’s passwords?', '', 1),
(12, 0, 5, 'How complex are your passwords?', '', 1),
(13, 0, 3, 'How often do you change your passwords?', '', 1),
(14, 0, 1, 'Do your computers automatically time-out after a duration of inactivity?', '', 2),
(15, 0, 3, 'How does your company utilize firewalls to block unauthorized access?', '', 2),
(16, 0, 4, 'How often do you train your employees on the company’s cybersecurity policy and procedures?', '', 2),
(17, 0, 3, 'Do you allow your employees to access company files remotely?', '', 2),
(18, 0, 1, 'Is physical access to assets managed and protected?', '', 2),
(19, 0, 3, 'Is data at rest and in transit encrypted?', '', 2),
(20, 0, 3, 'Is data retained recorded and is data destroyed according to policy?', '', 2),
(21, 0, 4, 'Do you have response and recovery plans in place and managed?', '', 2),
(22, 0, 1, 'Is cybersecurity included in human resources practices (e.g. personnel screening, locking/closing accounts, return of equipment, and granting/loss of access)?', '', 2),
(23, 0, 1, 'Do you have a vulnerability management plan that includes scanning for patch levels, scanning for functions, ports, protocols, and services that should not be accessible to users or devices, and scanning for improperly configured or incorrectly operating information flow control mechanisms?', '', 2),
(24, 0, 1, 'Are maintenance tools carried into the facility inspected for obvious improper modifications?', '', 2),
(25, 0, 1, 'Is remote maintenance approved, logged, and performed in a manner that prevents unauthorized access?', '', 2),
(26, 0, 3, 'Does your business have anti-virus software installed on all devices?', '', 3),
(27, 0, 3, 'Does your business have anti-malware protection installed on all devices?', '', 3),
(28, 0, 4, 'How often do you check your devices for malware?', '', 3),
(29, 0, 4, 'Is your business able to detect cybersecurity events (select all applicable responses)?', '', 3),
(30, 0, 1, 'Are system network security incidents tracked and used to correlated with other system log files?', '', 3),
(31, 0, 1, 'Are roles and responsibilities assigned and do all parties know what to do?', '', 4),
(32, 1, 7, 'In the event of a cybersecurity event, what response plan do you have in place (select all applicable responses)?', '', 4),
(33, 0, 3, 'If a cybersecurity event has occurred in the past, have you made changes to your system(s) to ensure that this same event will not occur again?', '', 4),
(34, 0, 3, 'Do you have an individual or group assigned to control the cybersecurity event and discover how or where the event occurred?', '', 4),
(35, 0, 2, 'Does your business have a customer notification plan in place if customer confidential information was or may have been stolen? Note that you may be required by law to notify your customers.', '', 4),
(36, 0, 4, 'How often do you backup your data?', '', 5),
(37, 1, 6, 'Do you have easy access to contact information for the following resources that can help you recover (select all that apply)?', '', 5),
(38, 0, 2, 'Does your recovery plan include actions you and your employees will take to bring your business back to normal operations following a cybersecurity event?', '', 5),
(39, 0, 1, 'Is there someone in your organization who is designated to manage recover after a cybersecurtity event?', '', 5),
(40, 0, 1, 'Do your recovery plans incorporate lessons learned?', '', 5),
(41, 0, 1, 'Are your recovery strategies updated as technology and/or plans change?', '', 5),
(42, 0, 1, 'Do you have cyber insurance?', '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `assessments_result`
--

CREATE TABLE `assessments_result` (
  `id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `assessments_topic`
--

CREATE TABLE `assessments_topic` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assessments_topic`
--

INSERT INTO `assessments_topic` (`id`, `name`, `description`) VALUES
(1, 'Identify', 'Have you identified the confidential data (credit card numbers, social security numbers, etc...) collected or stored by your company?'),
(2, 'Protect', 'The next set of questions will pertain to the NIST Cybersecurity Framework’s Protect category. These questions will help determine the basic practices you have in place to protect your systems.'),
(3, 'Detect', 'The next set of questions will pertain to the NIST Cybersecurity Framework’s Detect category.  These questions will help determine the basic practices you have in place to detect malicious activity in your systems.'),
(4, 'Respond', 'The next set of questions will pertain to the NIST Cybersecurity Framework’s Respond category. These questions will help determine the basic practices you have in place to respond and deal with a cybersecurity event when one occurs.'),
(5, 'Recover', 'The next set of questions will pertain to the NIST Cybersecurity Framework’s Recover category. These questions will help determine the basic practices you have in place to get your business back to normal after a cybersecurity event.');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add site', 7, 'add_site'),
(26, 'Can change site', 7, 'change_site'),
(27, 'Can delete site', 7, 'delete_site'),
(28, 'Can view site', 7, 'view_site'),
(29, 'Can add crontab', 8, 'add_crontabschedule'),
(30, 'Can change crontab', 8, 'change_crontabschedule'),
(31, 'Can delete crontab', 8, 'delete_crontabschedule'),
(32, 'Can view crontab', 8, 'view_crontabschedule'),
(33, 'Can add interval', 9, 'add_intervalschedule'),
(34, 'Can change interval', 9, 'change_intervalschedule'),
(35, 'Can delete interval', 9, 'delete_intervalschedule'),
(36, 'Can view interval', 9, 'view_intervalschedule'),
(37, 'Can add periodic task', 10, 'add_periodictask'),
(38, 'Can change periodic task', 10, 'change_periodictask'),
(39, 'Can delete periodic task', 10, 'delete_periodictask'),
(40, 'Can view periodic task', 10, 'view_periodictask'),
(41, 'Can add periodic tasks', 11, 'add_periodictasks'),
(42, 'Can change periodic tasks', 11, 'change_periodictasks'),
(43, 'Can delete periodic tasks', 11, 'delete_periodictasks'),
(44, 'Can view periodic tasks', 11, 'view_periodictasks'),
(45, 'Can add solar event', 12, 'add_solarschedule'),
(46, 'Can change solar event', 12, 'change_solarschedule'),
(47, 'Can delete solar event', 12, 'delete_solarschedule'),
(48, 'Can view solar event', 12, 'view_solarschedule'),
(49, 'Can add clocked', 13, 'add_clockedschedule'),
(50, 'Can change clocked', 13, 'change_clockedschedule'),
(51, 'Can delete clocked', 13, 'delete_clockedschedule'),
(52, 'Can view clocked', 13, 'view_clockedschedule'),
(53, 'Can add task result', 14, 'add_taskresult'),
(54, 'Can change task result', 14, 'change_taskresult'),
(55, 'Can delete task result', 14, 'delete_taskresult'),
(56, 'Can view task result', 14, 'view_taskresult'),
(57, 'Can add state log', 15, 'add_statelog'),
(58, 'Can change state log', 15, 'change_statelog'),
(59, 'Can delete state log', 15, 'delete_statelog'),
(60, 'Can view state log', 15, 'view_statelog'),
(61, 'Can add account', 16, 'add_account'),
(62, 'Can change account', 16, 'change_account'),
(63, 'Can delete account', 16, 'delete_account'),
(64, 'Can view account', 16, 'view_account'),
(65, 'Can add bank account', 17, 'add_bankaccount'),
(66, 'Can change bank account', 17, 'change_bankaccount'),
(67, 'Can delete bank account', 17, 'delete_bankaccount'),
(68, 'Can view bank account', 17, 'view_bankaccount'),
(69, 'Can add card', 18, 'add_card'),
(70, 'Can change card', 18, 'change_card'),
(71, 'Can delete card', 18, 'delete_card'),
(72, 'Can view card', 18, 'view_card'),
(73, 'Can add charge', 19, 'add_charge'),
(74, 'Can change charge', 19, 'change_charge'),
(75, 'Can delete charge', 19, 'delete_charge'),
(76, 'Can view charge', 19, 'view_charge'),
(77, 'Can add coupon', 20, 'add_coupon'),
(78, 'Can change coupon', 20, 'change_coupon'),
(79, 'Can delete coupon', 20, 'delete_coupon'),
(80, 'Can view coupon', 20, 'view_coupon'),
(81, 'Can add customer', 21, 'add_customer'),
(82, 'Can change customer', 21, 'change_customer'),
(83, 'Can delete customer', 21, 'delete_customer'),
(84, 'Can view customer', 21, 'view_customer'),
(85, 'Can add dispute', 22, 'add_dispute'),
(86, 'Can change dispute', 22, 'change_dispute'),
(87, 'Can delete dispute', 22, 'delete_dispute'),
(88, 'Can view dispute', 22, 'view_dispute'),
(89, 'Can add event', 23, 'add_event'),
(90, 'Can change event', 23, 'change_event'),
(91, 'Can delete event', 23, 'delete_event'),
(92, 'Can view event', 23, 'view_event'),
(93, 'Can add file upload', 24, 'add_fileupload'),
(94, 'Can change file upload', 24, 'change_fileupload'),
(95, 'Can delete file upload', 24, 'delete_fileupload'),
(96, 'Can view file upload', 24, 'view_fileupload'),
(97, 'Can add idempotency key', 25, 'add_idempotencykey'),
(98, 'Can change idempotency key', 25, 'change_idempotencykey'),
(99, 'Can delete idempotency key', 25, 'delete_idempotencykey'),
(100, 'Can view idempotency key', 25, 'view_idempotencykey'),
(101, 'Can add invoice', 26, 'add_invoice'),
(102, 'Can change invoice', 26, 'change_invoice'),
(103, 'Can delete invoice', 26, 'delete_invoice'),
(104, 'Can view invoice', 26, 'view_invoice'),
(105, 'Can add invoice item', 27, 'add_invoiceitem'),
(106, 'Can change invoice item', 27, 'change_invoiceitem'),
(107, 'Can delete invoice item', 27, 'delete_invoiceitem'),
(108, 'Can view invoice item', 27, 'view_invoiceitem'),
(109, 'Can add payout', 28, 'add_payout'),
(110, 'Can change payout', 28, 'change_payout'),
(111, 'Can delete payout', 28, 'delete_payout'),
(112, 'Can view payout', 28, 'view_payout'),
(113, 'Can add plan', 29, 'add_plan'),
(114, 'Can change plan', 29, 'change_plan'),
(115, 'Can delete plan', 29, 'delete_plan'),
(116, 'Can view plan', 29, 'view_plan'),
(117, 'Can add product', 30, 'add_product'),
(118, 'Can change product', 30, 'change_product'),
(119, 'Can delete product', 30, 'delete_product'),
(120, 'Can view product', 30, 'view_product'),
(121, 'Can add refund', 31, 'add_refund'),
(122, 'Can change refund', 31, 'change_refund'),
(123, 'Can delete refund', 31, 'delete_refund'),
(124, 'Can view refund', 31, 'view_refund'),
(125, 'Can add source', 32, 'add_source'),
(126, 'Can change source', 32, 'change_source'),
(127, 'Can delete source', 32, 'delete_source'),
(128, 'Can view source', 32, 'view_source'),
(129, 'Can add subscription', 33, 'add_subscription'),
(130, 'Can change subscription', 33, 'change_subscription'),
(131, 'Can delete subscription', 33, 'delete_subscription'),
(132, 'Can view subscription', 33, 'view_subscription'),
(133, 'Can add transfer', 34, 'add_transfer'),
(134, 'Can change transfer', 34, 'change_transfer'),
(135, 'Can delete transfer', 34, 'delete_transfer'),
(136, 'Can view transfer', 34, 'view_transfer'),
(137, 'Can add webhook event trigger', 35, 'add_webhookeventtrigger'),
(138, 'Can change webhook event trigger', 35, 'change_webhookeventtrigger'),
(139, 'Can delete webhook event trigger', 35, 'delete_webhookeventtrigger'),
(140, 'Can view webhook event trigger', 35, 'view_webhookeventtrigger'),
(141, 'Can add upcoming invoice', 36, 'add_upcominginvoice'),
(142, 'Can change upcoming invoice', 36, 'change_upcominginvoice'),
(143, 'Can delete upcoming invoice', 36, 'delete_upcominginvoice'),
(144, 'Can view upcoming invoice', 36, 'view_upcominginvoice'),
(145, 'Can add country spec', 37, 'add_countryspec'),
(146, 'Can change country spec', 37, 'change_countryspec'),
(147, 'Can delete country spec', 37, 'delete_countryspec'),
(148, 'Can view country spec', 37, 'view_countryspec'),
(149, 'Can add balance transaction', 38, 'add_balancetransaction'),
(150, 'Can change balance transaction', 38, 'change_balancetransaction'),
(151, 'Can delete balance transaction', 38, 'delete_balancetransaction'),
(152, 'Can view balance transaction', 38, 'view_balancetransaction'),
(153, 'Can add scheduled query run', 39, 'add_scheduledqueryrun'),
(154, 'Can change scheduled query run', 39, 'change_scheduledqueryrun'),
(155, 'Can delete scheduled query run', 39, 'delete_scheduledqueryrun'),
(156, 'Can view scheduled query run', 39, 'view_scheduledqueryrun'),
(157, 'Can add subscription item', 40, 'add_subscriptionitem'),
(158, 'Can change subscription item', 40, 'change_subscriptionitem'),
(159, 'Can delete subscription item', 40, 'delete_subscriptionitem'),
(160, 'Can view subscription item', 40, 'view_subscriptionitem'),
(161, 'Can add transfer reversal', 41, 'add_transferreversal'),
(162, 'Can change transfer reversal', 41, 'change_transferreversal'),
(163, 'Can delete transfer reversal', 41, 'delete_transferreversal'),
(164, 'Can view transfer reversal', 41, 'view_transferreversal'),
(165, 'Can add usage record', 42, 'add_usagerecord'),
(166, 'Can change usage record', 42, 'change_usagerecord'),
(167, 'Can delete usage record', 42, 'delete_usagerecord'),
(168, 'Can view usage record', 42, 'view_usagerecord'),
(169, 'Can add application fee', 43, 'add_applicationfee'),
(170, 'Can change application fee', 43, 'change_applicationfee'),
(171, 'Can delete application fee', 43, 'delete_applicationfee'),
(172, 'Can view application fee', 43, 'view_applicationfee'),
(173, 'Can add application fee refund', 44, 'add_applicationfeerefund'),
(174, 'Can change application fee refund', 44, 'change_applicationfeerefund'),
(175, 'Can delete application fee refund', 44, 'delete_applicationfeerefund'),
(176, 'Can view application fee refund', 44, 'view_applicationfeerefund'),
(177, 'Can add djstripe payment method', 45, 'add_djstripepaymentmethod'),
(178, 'Can change djstripe payment method', 45, 'change_djstripepaymentmethod'),
(179, 'Can delete djstripe payment method', 45, 'delete_djstripepaymentmethod'),
(180, 'Can view djstripe payment method', 45, 'view_djstripepaymentmethod'),
(181, 'Can add email address', 46, 'add_emailaddress'),
(182, 'Can change email address', 46, 'change_emailaddress'),
(183, 'Can delete email address', 46, 'delete_emailaddress'),
(184, 'Can view email address', 46, 'view_emailaddress'),
(185, 'Can add email confirmation', 47, 'add_emailconfirmation'),
(186, 'Can change email confirmation', 47, 'change_emailconfirmation'),
(187, 'Can delete email confirmation', 47, 'delete_emailconfirmation'),
(188, 'Can view email confirmation', 47, 'view_emailconfirmation'),
(189, 'Can add social account', 48, 'add_socialaccount'),
(190, 'Can change social account', 48, 'change_socialaccount'),
(191, 'Can delete social account', 48, 'delete_socialaccount'),
(192, 'Can view social account', 48, 'view_socialaccount'),
(193, 'Can add social application', 49, 'add_socialapp'),
(194, 'Can change social application', 49, 'change_socialapp'),
(195, 'Can delete social application', 49, 'delete_socialapp'),
(196, 'Can view social application', 49, 'view_socialapp'),
(197, 'Can add social application token', 50, 'add_socialtoken'),
(198, 'Can change social application token', 50, 'change_socialtoken'),
(199, 'Can delete social application token', 50, 'delete_socialtoken'),
(200, 'Can view social application token', 50, 'view_socialtoken'),
(201, 'Can add contact', 51, 'add_contact'),
(202, 'Can change contact', 51, 'change_contact'),
(203, 'Can delete contact', 51, 'delete_contact'),
(204, 'Can view contact', 51, 'view_contact'),
(205, 'Can add domain profile', 52, 'add_domainprofile'),
(206, 'Can change domain profile', 52, 'change_domainprofile'),
(207, 'Can delete domain profile', 52, 'delete_domainprofile'),
(208, 'Can view domain profile', 52, 'view_domainprofile'),
(209, 'Can add profile', 53, 'add_profile'),
(210, 'Can change profile', 53, 'change_profile'),
(211, 'Can delete profile', 53, 'delete_profile'),
(212, 'Can view profile', 53, 'view_profile'),
(213, 'Can add sector', 54, 'add_sector'),
(214, 'Can change sector', 54, 'change_sector'),
(215, 'Can delete sector', 54, 'delete_sector'),
(216, 'Can view sector', 54, 'view_sector'),
(217, 'Can add company', 55, 'add_company'),
(218, 'Can change company', 55, 'change_company'),
(219, 'Can delete company', 55, 'delete_company'),
(220, 'Can view company', 55, 'view_company'),
(221, 'Can add domain', 56, 'add_domain'),
(222, 'Can change domain', 56, 'change_domain'),
(223, 'Can delete domain', 56, 'delete_domain'),
(224, 'Can view domain', 56, 'view_domain'),
(225, 'Can add risk report', 57, 'add_riskreport'),
(226, 'Can change risk report', 57, 'change_riskreport'),
(227, 'Can delete risk report', 57, 'delete_riskreport'),
(228, 'Can view risk report', 57, 'view_riskreport'),
(229, 'Can add score item', 58, 'add_scoreitem'),
(230, 'Can change score item', 58, 'change_scoreitem'),
(231, 'Can delete score item', 58, 'delete_scoreitem'),
(232, 'Can view score item', 58, 'view_scoreitem'),
(233, 'Can add test definition', 59, 'add_testdefinition'),
(234, 'Can change test definition', 59, 'change_testdefinition'),
(235, 'Can delete test definition', 59, 'delete_testdefinition'),
(236, 'Can view test definition', 59, 'view_testdefinition'),
(237, 'Can add test result', 60, 'add_testresult'),
(238, 'Can change test result', 60, 'change_testresult'),
(239, 'Can delete test result', 60, 'delete_testresult'),
(240, 'Can view test result', 60, 'view_testresult'),
(241, 'Can add answer', 61, 'add_answer'),
(242, 'Can change answer', 61, 'change_answer'),
(243, 'Can delete answer', 61, 'delete_answer'),
(244, 'Can view answer', 61, 'view_answer'),
(245, 'Can add topic', 62, 'add_topic'),
(246, 'Can change topic', 62, 'change_topic'),
(247, 'Can delete topic', 62, 'delete_topic'),
(248, 'Can view topic', 62, 'view_topic'),
(249, 'Can add question', 63, 'add_question'),
(250, 'Can change question', 63, 'change_question'),
(251, 'Can delete question', 63, 'delete_question'),
(252, 'Can view question', 63, 'view_question'),
(253, 'Can add result', 64, 'add_result'),
(254, 'Can change result', 64, 'change_result'),
(255, 'Can delete result', 64, 'delete_result'),
(256, 'Can view result', 64, 'view_result');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$cYncOnojDrDu$ekfzuNzpefQ4XFgkALoGPd9q9mHiRDTAVV09Y+kCsn8=', '2019-11-07 16:58:58.305744', 1, 'root', '', '', 'root@securitytrain.me', 1, 1, '2019-10-01 22:21:03.000000'),
(2, 'pbkdf2_sha256$150000$pAd2vcSyzhiG$J04oj5NS/oeMuYw3TlyjrNo+WY65WRk15gh3QdaIF4w=', '2019-10-09 08:58:23.311631', 0, 'ian', 'Ian', 'Bland', 'ian@securitytrain.me', 0, 1, '2019-10-07 10:23:24.058844'),
(3, 'pbkdf2_sha256$150000$ASOKPGRsV5h5$642pIorSr+GHMJdQz28k1r5zbMnlvvhdYg85nY5Z7qg=', '2019-10-07 14:09:14.000000', 0, 'dimitar', 'Dimitar', 'Petkov', 'dimitarhero@securitytrain.me', 1, 1, '2019-10-07 14:06:08.000000'),
(4, 'pbkdf2_sha256$150000$8IIREhyGUbky$mtwGDvc6tRvWih/r+PF7LuCMgpQrWtG4i65vktGQDvY=', '2019-10-08 09:15:51.017768', 0, 'jesus', 'Jesus', 'Christ', 'jesus@riskrate.me', 0, 1, '2019-10-08 09:15:49.694826'),
(5, 'pbkdf2_sha256$150000$vi7wa1PO5cpt$wljLjE5p7Bn1gwdSzp2diu8J6zIV+yZZfkOhwVUF2KI=', '2019-10-08 09:44:30.104778', 0, 'jeff', 'jeff', 'bdsfx', 'jeff@bdsfx.com', 0, 1, '2019-10-08 09:43:00.317466');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-10-06 12:57:59.119224', '1', 'root', 2, '[{\"changed\": {\"name\": \"profile\", \"object\": \"root@example.com\", \"fields\": [\"domains\"]}}]', 4, 1),
(2, '2019-10-07 10:38:43.093781', '1', 'root', 2, '[{\"changed\": {\"fields\": [\"email\"]}}]', 4, 1),
(3, '2019-10-07 10:43:02.918235', '1', 'root', 2, '[{\"changed\": {\"name\": \"profile\", \"object\": \"root@securitytrain.me\", \"fields\": [\"company\"]}}]', 4, 1),
(4, '2019-10-07 10:52:51.757641', '2', 'ian@securitytrain.me on Free', 2, '[{\"changed\": {\"fields\": [\"metadata\"]}}, {\"changed\": {\"name\": \"subscription item\", \"object\": \"<id=si_FwmxnqZ7CEiHPl>\", \"fields\": [\"metadata\", \"plan\"]}}]', 33, 1),
(5, '2019-10-07 10:53:21.789973', '2', 'ian@securitytrain.me on Free', 2, '[{\"changed\": {\"fields\": [\"metadata\"]}}, {\"changed\": {\"name\": \"subscription item\", \"object\": \"<id=si_FwmxnqZ7CEiHPl>\", \"fields\": [\"metadata\", \"plan\"]}}]', 33, 1),
(6, '2019-10-07 14:13:06.598560', '3', 'dimitar', 2, '[{\"changed\": {\"fields\": [\"is_staff\"]}}]', 4, 1),
(7, '2019-10-07 14:42:45.544266', '3', 'dimitar', 2, '[{\"changed\": {\"name\": \"profile\", \"object\": \"dimitarhero@yahoo.com\", \"fields\": [\"domains\"]}}]', 4, 1),
(8, '2019-10-07 14:48:16.871599', '1', 'root', 2, '[{\"changed\": {\"name\": \"profile\", \"object\": \"root@securitytrain.me\", \"fields\": [\"company\"]}}]', 4, 1),
(9, '2019-10-07 14:48:32.722078', '1', 'root', 2, '[{\"changed\": {\"name\": \"profile\", \"object\": \"root@securitytrain.me\", \"fields\": [\"company\"]}}]', 4, 1),
(10, '2019-10-07 14:51:37.378908', '3', 'dimitar', 2, '[{\"changed\": {\"fields\": [\"email\"]}}]', 4, 1),
(11, '2019-10-08 08:53:42.701625', '3', 'spfrecordnottoopermissive', 2, '[{\"changed\": {\"fields\": [\"message_failed\", \"message_success\"]}}]', 59, 1),
(12, '2019-10-08 09:22:37.681849', '1', 'root', 2, '[{\"changed\": {\"name\": \"profile\", \"object\": \"root@securitytrain.me\", \"fields\": [\"domains\"]}}]', 4, 1),
(13, '2019-10-08 09:23:09.994615', '1', 'root', 2, '[{\"changed\": {\"name\": \"profile\", \"object\": \"root@securitytrain.me\", \"fields\": [\"domains\"]}}]', 4, 1),
(14, '2019-10-09 08:51:10.044746', '2', 'ian@securitytrain.me on Professional', 2, '[{\"changed\": {\"fields\": [\"metadata\", \"plan\"]}}, {\"changed\": {\"name\": \"subscription item\", \"object\": \"<id=si_FwmxnqZ7CEiHPl>\", \"fields\": [\"metadata\"]}}]', 33, 1),
(15, '2019-10-09 08:53:04.033963', '2', 'ian', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(16, '2019-10-09 08:57:50.482696', '2', 'ian@securitytrain.me on Professional', 2, '[{\"changed\": {\"fields\": [\"metadata\"]}}, {\"changed\": {\"name\": \"subscription item\", \"object\": \"<id=si_FwmxnqZ7CEiHPl>\", \"fields\": [\"metadata\", \"plan\"]}}]', 33, 1),
(17, '2019-10-09 08:58:45.337457', '2', 'ian@securitytrain.me on Free', 2, '[{\"changed\": {\"fields\": [\"metadata\", \"plan\"]}}, {\"changed\": {\"name\": \"subscription item\", \"object\": \"<id=si_FwmxnqZ7CEiHPl>\", \"fields\": [\"metadata\"]}}]', 33, 1),
(18, '2019-10-09 08:59:17.672268', '2', 'ian@securitytrain.me on Free', 2, '[{\"changed\": {\"fields\": [\"metadata\"]}}, {\"changed\": {\"name\": \"subscription item\", \"object\": \"<id=si_FwmxnqZ7CEiHPl>\", \"fields\": [\"metadata\", \"plan\"]}}]', 33, 1),
(19, '2019-10-09 09:00:00.416411', '2', 'ian@securitytrain.me on Enterprise (ACME Inc.)', 2, '[{\"changed\": {\"fields\": [\"metadata\", \"plan\"]}}, {\"changed\": {\"name\": \"subscription item\", \"object\": \"<id=si_FwmxnqZ7CEiHPl>\", \"fields\": [\"metadata\"]}}]', 33, 1),
(20, '2019-10-09 09:04:54.016825', '2', 'ian@securitytrain.me on Free', 2, '[{\"changed\": {\"fields\": [\"metadata\", \"plan\"]}}, {\"changed\": {\"name\": \"subscription item\", \"object\": \"<id=si_FwmxnqZ7CEiHPl>\", \"fields\": [\"metadata\", \"plan\"]}}]', 33, 1),
(21, '2019-10-10 16:21:14.572486', '28', 'smtpstarttlsisenabled', 2, '[{\"changed\": {\"fields\": [\"score_success\"]}}]', 59, 1),
(22, '2019-10-14 11:13:25.858116', '50', 'hostopenports', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1),
(23, '2019-10-14 12:44:40.941913', '50', 'hostopenports', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1),
(24, '2019-10-14 12:48:40.849094', '49', 'hosthaspotentialvulnerabilities', 2, '[{\"changed\": {\"fields\": [\"message_failed\", \"message_partial\"]}}]', 59, 1),
(25, '2019-10-14 12:53:42.678679', '28', 'smtpstarttlsisenabled', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1),
(26, '2019-10-14 13:03:11.080221', '10', 'dmarcrecordcounttest', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1),
(27, '2019-10-14 13:09:09.646996', '10', 'dmarcrecordcounttest', 2, '[{\"changed\": {\"fields\": [\"message_failed\", \"message_partial\"]}}]', 59, 1),
(28, '2019-10-14 13:15:39.032869', '15', 'dmarcpolicyisnotnone', 2, '[{\"changed\": {\"fields\": [\"message_failed\", \"message_success\"]}}]', 59, 1),
(29, '2019-10-14 13:17:05.792232', '1', 'spfrecordcount', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1),
(30, '2019-10-14 13:19:06.783408', '33', 'contentsecurityheadertest', 2, '[{\"changed\": {\"fields\": [\"failing_score\"]}}]', 59, 1),
(31, '2019-10-14 13:21:05.378996', '9', 'dkimrecordsexisttest', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1),
(32, '2019-10-14 13:23:29.786196', '28', 'smtpstarttlsisenabled', 2, '[{\"changed\": {\"fields\": [\"score_partial\"]}}]', 59, 1),
(33, '2019-10-14 13:31:33.277960', '28', 'smtpstarttlsisenabled', 2, '[{\"changed\": {\"fields\": [\"score_partial\", \"message_failed\"]}}]', 59, 1),
(34, '2019-10-14 13:33:54.019459', '50', 'hostopenports', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1),
(35, '2019-10-14 13:34:29.437720', '49', 'hosthaspotentialvulnerabilities', 2, '[{\"changed\": {\"fields\": [\"message_failed\", \"message_partial\"]}}]', 59, 1),
(36, '2019-10-14 13:34:56.614849', '1', 'spfrecordcount', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1),
(37, '2019-10-14 13:35:10.739226', '9', 'dkimrecordsexisttest', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1),
(38, '2019-10-14 13:35:34.594936', '10', 'dmarcrecordcounttest', 2, '[{\"changed\": {\"fields\": [\"message_failed\", \"message_partial\"]}}]', 59, 1),
(39, '2019-10-14 13:45:27.598979', '19', 'httpsenabledtest', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1),
(40, '2019-10-14 13:52:34.275478', '23', 'automatichttpsredirection', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1),
(41, '2019-10-15 08:55:47.052864', '46', 'nocookietest', 2, '[{\"changed\": {\"fields\": [\"score_failed\"]}}]', 59, 1),
(42, '2019-10-15 18:37:41.245508', '47', 'ipblocklist', 2, '[{\"changed\": {\"fields\": [\"description\", \"message_failed\", \"message_success\"]}}]', 59, 1),
(43, '2019-10-15 18:42:59.190573', '48', 'hostreputation', 2, '[{\"changed\": {\"fields\": [\"description\", \"message_failed\", \"message_success\"]}}]', 59, 1),
(44, '2019-10-15 18:48:06.007153', '48', 'hostreputation', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1),
(45, '2019-10-16 08:42:40.720513', '6', 'my_name', 3, '', 4, 1),
(46, '2019-10-16 09:57:20.720707', '51', 'emailleaks', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 59, 1),
(47, '2019-10-16 09:59:03.836532', '48', 'hostreputation', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1),
(48, '2019-10-16 09:59:36.112886', '46', 'nocookietest', 2, '[{\"changed\": {\"fields\": [\"message_error\"]}}]', 59, 1),
(49, '2019-10-16 11:22:28.820659', '31', 'xxssprotectionheadertest', 2, '[{\"changed\": {\"fields\": [\"message_failed\", \"message_partial\"]}}]', 59, 1),
(50, '2019-10-16 11:28:00.951124', '33', 'contentsecurityheadertest', 2, '[{\"changed\": {\"fields\": [\"message_failed\", \"message_partial\"]}}]', 59, 1),
(51, '2019-10-16 11:33:16.343076', '30', 'xframeoptionheadertest', 2, '[{\"changed\": {\"fields\": [\"failing_score\", \"score_partial\", \"message_failed\", \"message_partial\"]}}]', 59, 1),
(52, '2019-10-16 11:41:28.285296', '32', 'xcontenttypeoptionsheadertest', 2, '[{\"changed\": {\"fields\": [\"message_failed\", \"message_partial\"]}}]', 59, 1),
(53, '2019-10-16 11:47:11.946861', '34', 'referrerpolicyheadertest', 2, '[{\"changed\": {\"fields\": [\"score_failed\", \"score_partial\", \"message_failed\", \"message_partial\"]}}]', 59, 1),
(54, '2019-10-16 11:52:05.305106', '37', 'featurepolicyheadertest', 2, '[{\"changed\": {\"fields\": [\"score_failed\", \"score_partial\", \"message_failed\", \"message_partial\"]}}]', 59, 1),
(55, '2019-10-16 11:55:34.456364', '36', 'xpoweredbyheadertest', 2, '[{\"changed\": {\"fields\": [\"message_failed\", \"message_partial\"]}}]', 59, 1),
(56, '2019-10-16 11:59:16.408259', '35', 'serverheadertest', 2, '[{\"changed\": {\"fields\": [\"message_failed\", \"message_partial\"]}}]', 59, 1),
(57, '2019-10-17 11:56:16.709037', '1', 'spfrecordcount', 2, '[{\"changed\": {\"fields\": [\"message_partial\"]}}]', 59, 1),
(58, '2019-10-17 11:57:48.538714', '2', 'spfsyntaxisvalid', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1),
(59, '2019-10-17 12:02:40.459893', '3', 'spfrecordnottoopermissive', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1),
(60, '2019-10-17 12:03:38.145145', '4', 'spfvalidlookupcount', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1),
(61, '2019-10-17 12:07:43.265917', '5', 'spfvoidlookupscount', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1),
(62, '2019-10-17 12:12:08.906515', '6', 'spfrecordnotdeprecatedcheck', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1),
(63, '2019-10-17 12:19:29.282809', '8', 'spfrecordexpectedterminator', 2, '[{\"changed\": {\"fields\": [\"message_failed\", \"message_partial\"]}}]', 59, 1),
(64, '2019-10-17 12:21:13.890834', '9', 'dkimrecordsexisttest', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1),
(65, '2019-10-17 14:53:47.014854', '20', 'hstsenabledtest', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1),
(66, '2019-10-17 14:54:19.347987', '23', 'automatichttpsredirection', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1),
(67, '2019-10-20 19:23:55.959863', '1', 'Security Train Me', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 55, 1),
(68, '2019-10-20 19:26:03.563858', '1', 'root', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(69, '2019-11-07 17:46:06.824077', '14', 'google.com (2019-10-08 09:43:01.711332+00:00)', 3, '', 57, 1),
(70, '2019-11-07 17:46:06.829136', '13', 'vatican.va (2019-10-08 09:17:29.802669+00:00)', 3, '', 57, 1),
(71, '2019-11-07 17:46:06.832329', '12', 'vatican.va (2019-10-08 09:15:51.111274+00:00)', 3, '', 57, 1),
(72, '2019-11-07 17:47:05.016686', '62', 'British Chambers of Commerce', 3, '', 55, 1),
(73, '2019-11-07 17:47:05.019954', '60', 'Xhamster', 3, '', 55, 1),
(74, '2019-11-07 17:47:05.022582', '59', 'Porn Hub', 3, '', 55, 1),
(75, '2019-11-07 17:47:05.023955', '57', 'Stack Exchange', 3, '', 55, 1),
(76, '2019-11-07 17:47:05.026451', '55', 'Stack Exchange', 3, '', 55, 1),
(77, '2019-11-07 17:47:05.027794', '54', 'Serverfault', 3, '', 55, 1),
(78, '2019-11-07 17:47:05.031990', '52', 'Vanify', 3, '', 55, 1),
(79, '2019-11-07 17:47:05.034760', '50', 'Upwork', 3, '', 55, 1),
(80, '2019-11-07 17:47:05.036590', '48', 'European Consumer Centre for Services', 3, '', 55, 1),
(81, '2019-11-07 17:47:05.039595', '46', 'PLYMOUTH BRETHREN', 3, '', 55, 1),
(82, '2019-11-07 17:47:05.042538', '44', 'The Metal Store', 3, '', 55, 1),
(83, '2019-11-07 17:47:05.044384', '42', 'RailPoint', 3, '', 55, 1),
(84, '2019-11-07 17:47:05.047376', '40', 'Acme', 3, '', 55, 1),
(85, '2019-11-07 17:47:05.051026', '39', 'Acme', 3, '', 55, 1),
(86, '2019-11-07 17:47:05.053248', '37', 'Google', 3, '', 55, 1),
(87, '2019-11-07 17:47:05.055899', '36', 'Google', 3, '', 55, 1),
(88, '2019-11-07 17:47:05.058574', '34', 'The Vatican', 3, '', 55, 1),
(89, '2019-11-07 17:47:05.060407', '33', 'The Vatican', 3, '', 55, 1),
(90, '2019-11-07 17:47:05.063363', '32', 'The Vatican', 3, '', 55, 1),
(91, '2019-11-07 17:47:05.065143', '31', 'The Vatican', 3, '', 55, 1),
(92, '2019-11-07 17:47:05.068388', '29', 'Matex Holdings Pte Ltd', 3, '', 55, 1),
(93, '2019-11-07 17:47:05.071280', '27', 'Renesas Electronics Singapore Pt.e. Ltd.', 3, '', 55, 1),
(94, '2019-11-07 17:47:05.073406', '25', 'Design Format', 3, '', 55, 1),
(95, '2019-11-07 17:47:05.076249', '23', 'DP', 3, '', 55, 1),
(96, '2019-11-07 17:47:05.078527', '22', 'DP', 3, '', 55, 1),
(97, '2019-11-07 17:47:05.080212', '20', 'MOM', 3, '', 55, 1),
(98, '2019-11-07 17:47:05.083151', '18', 'GRP Group', 3, '', 55, 1),
(99, '2019-11-07 17:47:05.085445', '16', 'Security Train Me', 3, '', 55, 1),
(100, '2019-11-07 17:47:05.088874', '14', 'Alliance 21 Group', 3, '', 55, 1),
(101, '2019-11-07 17:47:05.091068', '12', 'EZ-Link Pte Ltd', 3, '', 55, 1),
(102, '2019-11-07 17:47:05.092985', '10', 'Equatorial Marine Fuel Management Services Pte Ltd', 3, '', 55, 1),
(103, '2019-11-07 17:47:05.095633', '8', 'Risk Rate Me', 3, '', 55, 1),
(104, '2019-11-07 17:47:05.098513', '5', 'Unknown Company (jec.com)', 3, '', 55, 1),
(105, '2019-11-07 17:47:05.100288', '4', 'Unknown Company (kadfire.com)', 3, '', 55, 1),
(106, '2019-11-07 17:47:05.102646', '2', 'Unknown Company (securitytrain.me)', 3, '', 55, 1),
(107, '2019-11-07 17:49:15.203165', '62', 'British Chambers of Commerce', 3, '', 55, 1),
(108, '2019-11-07 17:49:15.207641', '60', 'Xhamster', 3, '', 55, 1),
(109, '2019-11-07 17:49:15.211133', '59', 'Porn Hub', 3, '', 55, 1),
(110, '2019-11-07 17:49:15.213198', '57', 'Stack Exchange', 3, '', 55, 1),
(111, '2019-11-07 17:49:15.216163', '55', 'Stack Exchange', 3, '', 55, 1),
(112, '2019-11-07 17:49:15.219472', '54', 'Serverfault', 3, '', 55, 1),
(113, '2019-11-07 17:49:15.222640', '52', 'Vanify', 3, '', 55, 1),
(114, '2019-11-07 17:49:15.224360', '50', 'Upwork', 3, '', 55, 1),
(115, '2019-11-07 17:49:15.226898', '48', 'European Consumer Centre for Services', 3, '', 55, 1),
(116, '2019-11-07 17:49:15.228619', '46', 'PLYMOUTH BRETHREN', 3, '', 55, 1),
(117, '2019-11-07 17:49:15.231399', '44', 'The Metal Store', 3, '', 55, 1),
(118, '2019-11-07 17:49:15.232790', '42', 'RailPoint', 3, '', 55, 1),
(119, '2019-11-07 17:49:15.234911', '40', 'Acme', 3, '', 55, 1),
(120, '2019-11-07 17:49:15.236430', '39', 'Acme', 3, '', 55, 1),
(121, '2019-11-07 17:49:15.239188', '37', 'Google', 3, '', 55, 1),
(122, '2019-11-07 17:49:15.241208', '36', 'Google', 3, '', 55, 1),
(123, '2019-11-07 17:49:15.243690', '34', 'The Vatican', 3, '', 55, 1),
(124, '2019-11-07 17:49:15.246606', '33', 'The Vatican', 3, '', 55, 1),
(125, '2019-11-07 17:49:15.248272', '32', 'The Vatican', 3, '', 55, 1),
(126, '2019-11-07 17:49:15.251173', '31', 'The Vatican', 3, '', 55, 1),
(127, '2019-11-07 17:49:15.252997', '29', 'Matex Holdings Pte Ltd', 3, '', 55, 1),
(128, '2019-11-07 17:49:15.256334', '27', 'Renesas Electronics Singapore Pt.e. Ltd.', 3, '', 55, 1),
(129, '2019-11-07 17:49:15.259352', '25', 'Design Format', 3, '', 55, 1),
(130, '2019-11-07 17:49:15.261349', '23', 'DP', 3, '', 55, 1),
(131, '2019-11-07 17:49:15.264129', '22', 'DP', 3, '', 55, 1),
(132, '2019-11-07 17:49:15.266628', '20', 'MOM', 3, '', 55, 1),
(133, '2019-11-07 17:49:15.268337', '18', 'GRP Group', 3, '', 55, 1),
(134, '2019-11-07 17:49:15.270680', '16', 'Security Train Me', 3, '', 55, 1),
(135, '2019-11-07 17:49:15.272414', '14', 'Alliance 21 Group', 3, '', 55, 1),
(136, '2019-11-07 17:49:15.275079', '12', 'EZ-Link Pte Ltd', 3, '', 55, 1),
(137, '2019-11-07 17:49:15.276582', '10', 'Equatorial Marine Fuel Management Services Pte Ltd', 3, '', 55, 1),
(138, '2019-11-07 17:49:15.279131', '8', 'Risk Rate Me', 3, '', 55, 1),
(139, '2019-11-07 17:49:15.281179', '5', 'Unknown Company (jec.com)', 3, '', 55, 1),
(140, '2019-11-07 17:49:15.284620', '4', 'Unknown Company (kadfire.com)', 3, '', 55, 1),
(141, '2019-11-07 17:49:15.287066', '2', 'Unknown Company (securitytrain.me)', 3, '', 55, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_celery_beat_clockedschedule`
--

CREATE TABLE `django_celery_beat_clockedschedule` (
  `id` int(11) NOT NULL,
  `clocked_time` datetime(6) NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_celery_beat_crontabschedule`
--

CREATE TABLE `django_celery_beat_crontabschedule` (
  `id` int(11) NOT NULL,
  `minute` varchar(240) NOT NULL,
  `hour` varchar(96) NOT NULL,
  `day_of_week` varchar(64) NOT NULL,
  `day_of_month` varchar(124) NOT NULL,
  `month_of_year` varchar(64) NOT NULL,
  `timezone` varchar(63) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_celery_beat_intervalschedule`
--

CREATE TABLE `django_celery_beat_intervalschedule` (
  `id` int(11) NOT NULL,
  `every` int(11) NOT NULL,
  `period` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_celery_beat_periodictask`
--

CREATE TABLE `django_celery_beat_periodictask` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `task` varchar(200) NOT NULL,
  `args` longtext NOT NULL,
  `kwargs` longtext NOT NULL,
  `queue` varchar(200) DEFAULT NULL,
  `exchange` varchar(200) DEFAULT NULL,
  `routing_key` varchar(200) DEFAULT NULL,
  `expires` datetime(6) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `last_run_at` datetime(6) DEFAULT NULL,
  `total_run_count` int(10) UNSIGNED NOT NULL,
  `date_changed` datetime(6) NOT NULL,
  `description` longtext NOT NULL,
  `crontab_id` int(11) DEFAULT NULL,
  `interval_id` int(11) DEFAULT NULL,
  `solar_id` int(11) DEFAULT NULL,
  `one_off` tinyint(1) NOT NULL,
  `start_time` datetime(6) DEFAULT NULL,
  `priority` int(10) UNSIGNED DEFAULT NULL,
  `headers` longtext NOT NULL,
  `clocked_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_celery_beat_periodictasks`
--

CREATE TABLE `django_celery_beat_periodictasks` (
  `ident` smallint(6) NOT NULL,
  `last_update` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_celery_beat_solarschedule`
--

CREATE TABLE `django_celery_beat_solarschedule` (
  `id` int(11) NOT NULL,
  `event` varchar(24) NOT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_celery_results_taskresult`
--

CREATE TABLE `django_celery_results_taskresult` (
  `id` int(11) NOT NULL,
  `task_id` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `content_type` varchar(128) NOT NULL,
  `content_encoding` varchar(64) NOT NULL,
  `result` longtext,
  `date_done` datetime(6) NOT NULL,
  `traceback` longtext,
  `hidden` tinyint(1) NOT NULL,
  `meta` longtext,
  `task_args` longtext,
  `task_kwargs` longtext,
  `task_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(46, 'account', 'emailaddress'),
(47, 'account', 'emailconfirmation'),
(1, 'admin', 'logentry'),
(61, 'assessments', 'answer'),
(63, 'assessments', 'question'),
(64, 'assessments', 'result'),
(62, 'assessments', 'topic'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(13, 'django_celery_beat', 'clockedschedule'),
(8, 'django_celery_beat', 'crontabschedule'),
(9, 'django_celery_beat', 'intervalschedule'),
(10, 'django_celery_beat', 'periodictask'),
(11, 'django_celery_beat', 'periodictasks'),
(12, 'django_celery_beat', 'solarschedule'),
(14, 'django_celery_results', 'taskresult'),
(15, 'django_fsm_log', 'statelog'),
(16, 'djstripe', 'account'),
(43, 'djstripe', 'applicationfee'),
(44, 'djstripe', 'applicationfeerefund'),
(38, 'djstripe', 'balancetransaction'),
(17, 'djstripe', 'bankaccount'),
(18, 'djstripe', 'card'),
(19, 'djstripe', 'charge'),
(37, 'djstripe', 'countryspec'),
(20, 'djstripe', 'coupon'),
(21, 'djstripe', 'customer'),
(22, 'djstripe', 'dispute'),
(45, 'djstripe', 'djstripepaymentmethod'),
(23, 'djstripe', 'event'),
(24, 'djstripe', 'fileupload'),
(25, 'djstripe', 'idempotencykey'),
(26, 'djstripe', 'invoice'),
(27, 'djstripe', 'invoiceitem'),
(28, 'djstripe', 'payout'),
(29, 'djstripe', 'plan'),
(30, 'djstripe', 'product'),
(31, 'djstripe', 'refund'),
(39, 'djstripe', 'scheduledqueryrun'),
(32, 'djstripe', 'source'),
(33, 'djstripe', 'subscription'),
(40, 'djstripe', 'subscriptionitem'),
(34, 'djstripe', 'transfer'),
(41, 'djstripe', 'transferreversal'),
(36, 'djstripe', 'upcominginvoice'),
(42, 'djstripe', 'usagerecord'),
(35, 'djstripe', 'webhookeventtrigger'),
(55, 'reports', 'company'),
(56, 'reports', 'domain'),
(57, 'reports', 'riskreport'),
(58, 'reports', 'scoreitem'),
(54, 'reports', 'sector'),
(59, 'reports', 'testdefinition'),
(60, 'reports', 'testresult'),
(6, 'sessions', 'session'),
(7, 'sites', 'site'),
(48, 'socialaccount', 'socialaccount'),
(49, 'socialaccount', 'socialapp'),
(50, 'socialaccount', 'socialtoken'),
(51, 'users', 'contact'),
(52, 'users', 'domainprofile'),
(53, 'users', 'profile');

-- --------------------------------------------------------

--
-- Table structure for table `django_fsm_log_statelog`
--

CREATE TABLE `django_fsm_log_statelog` (
  `id` int(11) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `state` varchar(255) NOT NULL,
  `transition` varchar(255) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `by_id` int(11) DEFAULT NULL,
  `content_type_id` int(11) NOT NULL,
  `description` longtext,
  `source_state` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-10-01 22:19:31.797368'),
(2, 'auth', '0001_initial', '2019-10-01 22:19:31.943811'),
(3, 'account', '0001_initial', '2019-10-01 22:19:32.261458'),
(4, 'account', '0002_email_max_length', '2019-10-01 22:19:32.339413'),
(5, 'admin', '0001_initial', '2019-10-01 22:19:32.386613'),
(6, 'admin', '0002_logentry_remove_auto_add', '2019-10-01 22:19:32.465570'),
(7, 'admin', '0003_logentry_add_action_flag_choices', '2019-10-01 22:19:32.489333'),
(8, 'contenttypes', '0002_remove_content_type_name', '2019-10-01 22:19:32.579269'),
(9, 'auth', '0002_alter_permission_name_max_length', '2019-10-01 22:19:32.590117'),
(10, 'auth', '0003_alter_user_email_max_length', '2019-10-01 22:19:32.608751'),
(11, 'auth', '0004_alter_user_username_opts', '2019-10-01 22:19:32.625215'),
(12, 'auth', '0005_alter_user_last_login_null', '2019-10-01 22:19:32.670517'),
(13, 'auth', '0006_require_contenttypes_0002', '2019-10-01 22:19:32.674689'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2019-10-01 22:19:32.699186'),
(15, 'auth', '0008_alter_user_username_max_length', '2019-10-01 22:19:32.730934'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2019-10-01 22:19:32.762795'),
(17, 'auth', '0010_alter_group_name_max_length', '2019-10-01 22:19:32.792134'),
(18, 'auth', '0011_update_proxy_permissions', '2019-10-01 22:19:32.819234'),
(19, 'django_celery_beat', '0001_initial', '2019-10-01 22:19:32.919112'),
(20, 'django_celery_beat', '0002_auto_20161118_0346', '2019-10-01 22:19:33.051519'),
(21, 'django_celery_beat', '0003_auto_20161209_0049', '2019-10-01 22:19:33.118356'),
(22, 'django_celery_beat', '0004_auto_20170221_0000', '2019-10-01 22:19:33.131519'),
(23, 'django_celery_beat', '0005_add_solarschedule_events_choices', '2019-10-01 22:19:33.144380'),
(24, 'django_celery_beat', '0006_auto_20180322_0932', '2019-10-01 22:19:33.228319'),
(25, 'django_celery_beat', '0007_auto_20180521_0826', '2019-10-01 22:19:33.328623'),
(26, 'django_celery_beat', '0008_auto_20180914_1922', '2019-10-01 22:19:33.374630'),
(27, 'django_celery_beat', '0006_auto_20180210_1226', '2019-10-01 22:19:33.402149'),
(28, 'django_celery_beat', '0006_periodictask_priority', '2019-10-01 22:19:33.446804'),
(29, 'django_celery_beat', '0009_periodictask_headers', '2019-10-01 22:19:33.496482'),
(30, 'django_celery_beat', '0010_auto_20190429_0326', '2019-10-01 22:19:33.986817'),
(31, 'django_celery_beat', '0011_auto_20190508_0153', '2019-10-01 22:19:34.062051'),
(32, 'django_celery_results', '0001_initial', '2019-10-01 22:19:34.155420'),
(33, 'django_celery_results', '0002_add_task_name_args_kwargs', '2019-10-01 22:19:34.288981'),
(34, 'django_celery_results', '0003_auto_20181106_1101', '2019-10-01 22:19:34.302303'),
(35, 'django_celery_results', '0004_auto_20190516_0412', '2019-10-01 22:19:34.433980'),
(36, 'django_fsm_log', '0001_initial', '2019-10-01 22:19:34.482279'),
(37, 'django_fsm_log', '0002_auto_20151207_1521', '2019-10-01 22:19:34.608942'),
(38, 'django_fsm_log', '0003_statelog_description', '2019-10-01 22:19:34.738804'),
(39, 'django_fsm_log', '0004_add_source_state', '2019-10-01 22:19:34.743534'),
(40, 'django_fsm_log', '0005_description_null', '2019-10-01 22:19:34.747177'),
(41, 'djstripe', '0001_initial', '2019-10-01 22:19:37.876749'),
(42, 'djstripe', '0002_auto_20180627_1121', '2019-10-01 22:19:39.175467'),
(43, 'djstripe', '0003_auto_20181117_2328_squashed_0004_auto_20190227_2114', '2019-10-01 22:19:50.752386'),
(44, 'reports', '0001_initial', '2019-10-01 22:19:51.457160'),
(45, 'reports', '0002_auto_20191001_2219', '2019-10-01 22:19:52.186775'),
(46, 'sessions', '0001_initial', '2019-10-01 22:19:52.377242'),
(47, 'sites', '0001_initial', '2019-10-01 22:19:52.420766'),
(48, 'sites', '0002_alter_domain_unique', '2019-10-01 22:19:52.456935'),
(49, 'socialaccount', '0001_initial', '2019-10-01 22:19:52.832386'),
(50, 'socialaccount', '0002_token_max_lengths', '2019-10-01 22:19:53.163761'),
(51, 'socialaccount', '0003_extra_data_default_dict', '2019-10-01 22:19:53.249187'),
(52, 'users', '0001_initial', '2019-10-01 22:19:53.299015'),
(53, 'users', '0002_auto_20191001_2219', '2019-10-01 22:19:53.710790'),
(54, 'django_fsm_log', '0003_statelog_description_squashed_0005_description_null', '2019-10-01 22:19:53.882189'),
(55, 'assessments', '0001_initial', '2019-11-09 09:49:33.081482');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1ylnlwbglxzeclhnwijsjupv0zjmbc25', 'NTljY2ZiYjE3ODVhOTdjMjAwZjJiMDA1M2RmZGNlYmM2NDU0NjUwNzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTBmMmE4ZGQ5YTM5ZDNkNjU4ZDZlMzJhNTk1NWFlMjliOGYyNWY2ZSIsIl9zZXNzaW9uX2V4cGlyeSI6MTIwOTYwMH0=', '2019-10-23 08:58:23.321321'),
('4u8s2pr2u4soca4tn358yae75ujt9rs3', 'MjY3OTNkMzdjMThlNTI0MmJkNWIyYmY5YWY5MWNhYjk1MTkzZDBlMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTEyNjMzNzU1M2VhMTRlZmU1ZTEyZGUzMDRhYTM1MmQ3ZjkzNjczNSIsIl9zZXNzaW9uX2V4cGlyeSI6MTIwOTYwMH0=', '2019-10-18 04:56:53.515266'),
('74m6ff0hvxardooae6larabcfjtwtf4a', 'M2NmMjc3ZWJjMWY5ZTA4N2U0NGNkZjFiMmE4MzYwZGY3NTY0OGI5ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjAyMTA0OGRjMjdhNzYyNDEyYmM1ZTJlMDVhYmIzMzUwYTVhOGRmZCIsIl9zZXNzaW9uX2V4cGlyeSI6MTIwOTYwMH0=', '2019-11-03 19:26:31.705177'),
('919a7jcbksc7ws0kougnk806v85cbsah', 'M2NmMjc3ZWJjMWY5ZTA4N2U0NGNkZjFiMmE4MzYwZGY3NTY0OGI5ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjAyMTA0OGRjMjdhNzYyNDEyYmM1ZTJlMDVhYmIzMzUwYTVhOGRmZCIsIl9zZXNzaW9uX2V4cGlyeSI6MTIwOTYwMH0=', '2019-11-21 16:58:58.321663'),
('igw9lgs1j2sdy4vhpsgy0n2ukh0ts0ft', 'MjY3OTNkMzdjMThlNTI0MmJkNWIyYmY5YWY5MWNhYjk1MTkzZDBlMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTEyNjMzNzU1M2VhMTRlZmU1ZTEyZGUzMDRhYTM1MmQ3ZjkzNjczNSIsIl9zZXNzaW9uX2V4cGlyeSI6MTIwOTYwMH0=', '2019-11-03 08:09:25.054457'),
('ljxd90kua0ukd397xx0pyoip605s1pha', 'MGJiMTNlZGFmOTM0ODExZGE1MTBjM2I2NDQwNWZhMzgwNTBiMjg1ZDp7ImFjY291bnRfdmVyaWZpZWRfZW1haWwiOm51bGwsImFjY291bnRfdXNlciI6IjYiLCJfYXV0aF91c2VyX2lkIjoiNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFsbGF1dGguYWNjb3VudC5hdXRoX2JhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjM4OTA5ZDUwNjY1NWE5YTI3NDUwOTYyZjAyYTc2ZTc0NzljNzMyNWMifQ==', '2019-10-26 16:05:15.079082'),
('sssdi6tqppmb3af394r350v56y3ogpdo', 'ZDBkMzE0OGFjZTIwMzI2MTEyNTM3YTA0Mjc1MGJiNGZmODExYWVkODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMTI2MzM3NTUzZWExNGVmZTVlMTJkZTMwNGFhMzUyZDdmOTM2NzM1In0=', '2019-10-15 22:52:08.474925'),
('vtvrbpg0umvx5xpbp8kymqiipx53j54b', 'Mzg1MTg3NzA1NmQwNjkxODBmYTg0YmRlZDJjOTEwNDk5ZWVmYzNjNjp7ImFjY291bnRfdmVyaWZpZWRfZW1haWwiOm51bGwsIl9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTU4NmYyMjZkZjEzOWEyMmNkNDg2MTEyMzA1MjE2ZDdjZjNhMTE5NiIsIl9zZXNzaW9uX2V4cGlyeSI6MTIwOTYwMH0=', '2019-10-21 14:09:14.744652'),
('wcgx28zveg8b1qrnvuvjv3aba65u45ns', 'M2NmMjc3ZWJjMWY5ZTA4N2U0NGNkZjFiMmE4MzYwZGY3NTY0OGI5ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjAyMTA0OGRjMjdhNzYyNDEyYmM1ZTJlMDVhYmIzMzUwYTVhOGRmZCIsIl9zZXNzaW9uX2V4cGlyeSI6MTIwOTYwMH0=', '2019-11-04 06:00:36.532188'),
('y976u903ibm45a4unn1v9i5px5o5ygn4', 'M2NmMjc3ZWJjMWY5ZTA4N2U0NGNkZjFiMmE4MzYwZGY3NTY0OGI5ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjAyMTA0OGRjMjdhNzYyNDEyYmM1ZTJlMDVhYmIzMzUwYTVhOGRmZCIsIl9zZXNzaW9uX2V4cGlyeSI6MTIwOTYwMH0=', '2019-11-03 19:26:03.581984'),
('z7zedyr3mn4hv63ukisup56s1fhy0g70', 'NTcxZTQ1Nzc3NDc1MmNkZGMwMWZhZDg2MmU1Nzk1MTZmNGJiYzgxMTp7ImFjY291bnRfdmVyaWZpZWRfZW1haWwiOm51bGwsIl9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2QyOWEzNWQ3ZWMzMTkyMTBjOTIxM2EyM2JlYjk2NTc3Y2E5MDNiNiIsIl9zZXNzaW9uX2V4cGlyeSI6MTIwOTYwMH0=', '2019-10-22 09:44:30.110978');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Table structure for table `djstripe_account`
--

CREATE TABLE `djstripe_account` (
  `djstripe_id` bigint(20) NOT NULL,
  `id` varchar(255) NOT NULL,
  `livemode` tinyint(1) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `metadata` longtext,
  `description` longtext,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `business_name` varchar(255) NOT NULL,
  `business_primary_color` varchar(7) NOT NULL,
  `business_url` varchar(200) NOT NULL,
  `charges_enabled` tinyint(1) NOT NULL,
  `country` varchar(2) NOT NULL,
  `debit_negative_balances` tinyint(1) DEFAULT NULL,
  `decline_charge_on` longtext,
  `default_currency` varchar(3) NOT NULL,
  `details_submitted` tinyint(1) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `legal_entity` longtext,
  `payout_schedule` longtext,
  `payout_statement_descriptor` varchar(255) NOT NULL,
  `payouts_enabled` tinyint(1) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `statement_descriptor` varchar(255) NOT NULL,
  `support_email` varchar(255) NOT NULL,
  `support_phone` varchar(255) NOT NULL,
  `support_url` varchar(200) NOT NULL,
  `timezone` varchar(50) NOT NULL,
  `type` varchar(8) NOT NULL,
  `tos_acceptance` longtext,
  `verification` longtext,
  `business_logo_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `djstripe_applicationfee`
--

CREATE TABLE `djstripe_applicationfee` (
  `djstripe_id` bigint(20) NOT NULL,
  `id` varchar(255) NOT NULL,
  `livemode` tinyint(1) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `metadata` longtext,
  `description` longtext,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_refunded` int(11) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `refunded` tinyint(1) NOT NULL,
  `balance_transaction_id` bigint(20) NOT NULL,
  `charge_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `djstripe_applicationfeerefund`
--

CREATE TABLE `djstripe_applicationfeerefund` (
  `djstripe_id` bigint(20) NOT NULL,
  `id` varchar(255) NOT NULL,
  `livemode` tinyint(1) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `metadata` longtext,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `amount` int(11) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `balance_transaction_id` bigint(20) NOT NULL,
  `fee_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `djstripe_balancetransaction`
--

CREATE TABLE `djstripe_balancetransaction` (
  `djstripe_id` bigint(20) NOT NULL,
  `id` varchar(255) NOT NULL,
  `livemode` tinyint(1) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `metadata` longtext,
  `description` longtext,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `amount` int(11) NOT NULL,
  `available_on` datetime(6) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `exchange_rate` decimal(8,6) DEFAULT NULL,
  `fee` int(11) NOT NULL,
  `fee_details` longtext NOT NULL,
  `net` int(11) NOT NULL,
  `status` varchar(9) NOT NULL,
  `type` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `djstripe_bankaccount`
--

CREATE TABLE `djstripe_bankaccount` (
  `djstripe_id` bigint(20) NOT NULL,
  `id` varchar(255) NOT NULL,
  `livemode` tinyint(1) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `metadata` longtext,
  `description` longtext,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `account_holder_name` longtext NOT NULL,
  `account_holder_type` varchar(10) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `country` varchar(2) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `default_for_currency` tinyint(1) DEFAULT NULL,
  `fingerprint` varchar(16) NOT NULL,
  `last4` varchar(4) NOT NULL,
  `routing_number` varchar(255) NOT NULL,
  `status` varchar(19) NOT NULL,
  `account_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `djstripe_card`
--

CREATE TABLE `djstripe_card` (
  `djstripe_id` bigint(20) NOT NULL,
  `id` varchar(255) NOT NULL,
  `livemode` tinyint(1) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `metadata` longtext,
  `description` longtext,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `address_city` longtext NOT NULL,
  `address_country` longtext NOT NULL,
  `address_line1` longtext NOT NULL,
  `address_line1_check` varchar(11) NOT NULL,
  `address_line2` longtext NOT NULL,
  `address_state` longtext NOT NULL,
  `address_zip` longtext NOT NULL,
  `address_zip_check` varchar(11) NOT NULL,
  `brand` varchar(16) NOT NULL,
  `country` varchar(2) NOT NULL,
  `cvc_check` varchar(11) NOT NULL,
  `dynamic_last4` varchar(4) NOT NULL,
  `exp_month` int(11) NOT NULL,
  `exp_year` int(11) NOT NULL,
  `fingerprint` varchar(16) NOT NULL,
  `funding` varchar(7) NOT NULL,
  `last4` varchar(4) NOT NULL,
  `name` longtext NOT NULL,
  `tokenization_method` varchar(11) NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `djstripe_charge`
--

CREATE TABLE `djstripe_charge` (
  `djstripe_id` bigint(20) NOT NULL,
  `id` varchar(255) NOT NULL,
  `livemode` tinyint(1) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `metadata` longtext,
  `description` longtext,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `amount_refunded` decimal(8,2) NOT NULL,
  `captured` tinyint(1) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `failure_code` varchar(42) NOT NULL,
  `failure_message` longtext NOT NULL,
  `fraud_details` longtext NOT NULL,
  `outcome` longtext NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `receipt_email` longtext NOT NULL,
  `receipt_number` varchar(14) NOT NULL,
  `refunded` tinyint(1) NOT NULL,
  `shipping` longtext,
  `statement_descriptor` varchar(22) NOT NULL,
  `status` varchar(9) NOT NULL,
  `transfer_group` varchar(255) NOT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `dispute_id` bigint(20) DEFAULT NULL,
  `invoice_id` bigint(20) DEFAULT NULL,
  `source_id` varchar(255) DEFAULT NULL,
  `transfer_id` bigint(20) DEFAULT NULL,
  `balance_transaction_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `djstripe_countryspec`
--

CREATE TABLE `djstripe_countryspec` (
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `id` varchar(2) NOT NULL,
  `default_currency` varchar(3) NOT NULL,
  `supported_bank_account_currencies` longtext NOT NULL,
  `supported_payment_currencies` longtext NOT NULL,
  `supported_payment_methods` longtext NOT NULL,
  `supported_transfer_countries` longtext NOT NULL,
  `verification_fields` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `djstripe_coupon`
--

CREATE TABLE `djstripe_coupon` (
  `djstripe_id` bigint(20) NOT NULL,
  `livemode` tinyint(1) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `metadata` longtext,
  `description` longtext,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `id` varchar(500) NOT NULL,
  `amount_off` decimal(8,2) DEFAULT NULL,
  `currency` varchar(3) DEFAULT NULL,
  `duration` varchar(9) NOT NULL,
  `duration_in_months` int(10) UNSIGNED DEFAULT NULL,
  `max_redemptions` int(10) UNSIGNED DEFAULT NULL,
  `percent_off` decimal(5,2) DEFAULT NULL,
  `redeem_by` datetime(6) DEFAULT NULL,
  `times_redeemed` int(10) UNSIGNED NOT NULL,
  `name` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `djstripe_customer`
--

CREATE TABLE `djstripe_customer` (
  `djstripe_id` bigint(20) NOT NULL,
  `id` varchar(255) NOT NULL,
  `livemode` tinyint(1) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `metadata` longtext,
  `description` longtext,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `account_balance` int(11) NOT NULL,
  `business_vat_id` varchar(20) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `delinquent` tinyint(1) NOT NULL,
  `coupon_start` datetime(6) DEFAULT NULL,
  `coupon_end` datetime(6) DEFAULT NULL,
  `email` longtext NOT NULL,
  `shipping` longtext,
  `date_purged` datetime(6) DEFAULT NULL,
  `coupon_id` bigint(20) DEFAULT NULL,
  `default_source_id` varchar(255) DEFAULT NULL,
  `subscriber_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `djstripe_customer`
--

INSERT INTO `djstripe_customer` (`djstripe_id`, `id`, `livemode`, `created`, `metadata`, `description`, `djstripe_created`, `djstripe_updated`, `account_balance`, `business_vat_id`, `currency`, `delinquent`, `coupon_start`, `coupon_end`, `email`, `shipping`, `date_purged`, `coupon_id`, `default_source_id`, `subscriber_id`) VALUES
(1, 'cus_FujAQh80IYRwMU', 0, NULL, NULL, NULL, '2019-10-01 22:21:04.183303', '2019-10-01 22:21:04.183370', 0, '', '', 0, NULL, NULL, '', NULL, NULL, NULL, NULL, 1),
(2, 'cus_Fwmxo0AyXNGUgu', 0, NULL, NULL, NULL, '2019-10-07 10:23:24.816318', '2019-10-07 10:23:24.816393', 0, '', '', 0, NULL, NULL, '', NULL, NULL, NULL, NULL, 2),
(3, 'cus_FwqXg8lBnqvey9', 0, NULL, NULL, NULL, '2019-10-07 14:06:09.267508', '2019-10-07 14:06:09.267582', 0, '', '', 0, NULL, NULL, '', NULL, NULL, NULL, NULL, 3),
(4, 'cus_Fx95z1jpJK0d9d', 0, NULL, NULL, NULL, '2019-10-08 09:15:50.358402', '2019-10-08 09:15:50.358476', 0, '', '', 0, NULL, NULL, '', NULL, NULL, NULL, NULL, 4),
(5, 'cus_Fx9WZCSlbOUBBn', 0, NULL, NULL, NULL, '2019-10-08 09:43:00.857850', '2019-10-08 09:44:10.025659', 0, '', '', 0, NULL, NULL, '', NULL, NULL, NULL, 'src_1FRFEiJKWVx52XCjfp9TflKl', 5),
(6, 'cus_FykanrR2qS1mV4', 0, NULL, NULL, NULL, '2019-10-12 16:05:14.203431', '2019-10-16 08:42:41.380772', 0, '', '', 0, NULL, NULL, '', NULL, '2019-10-16 08:42:41.380399', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `djstripe_dispute`
--

CREATE TABLE `djstripe_dispute` (
  `djstripe_id` bigint(20) NOT NULL,
  `id` varchar(255) NOT NULL,
  `livemode` tinyint(1) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `metadata` longtext,
  `description` longtext,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `amount` int(11) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `evidence` longtext NOT NULL,
  `evidence_details` longtext NOT NULL,
  `is_charge_refundable` tinyint(1) NOT NULL,
  `reason` varchar(25) NOT NULL,
  `status` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `djstripe_djstripepaymentmethod`
--

CREATE TABLE `djstripe_djstripepaymentmethod` (
  `id` varchar(255) NOT NULL,
  `type` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `djstripe_djstripepaymentmethod`
--

INSERT INTO `djstripe_djstripepaymentmethod` (`id`, `type`) VALUES
('src_1FRFEiJKWVx52XCjfp9TflKl', 'source');

-- --------------------------------------------------------

--
-- Table structure for table `djstripe_event`
--

CREATE TABLE `djstripe_event` (
  `djstripe_id` bigint(20) NOT NULL,
  `id` varchar(255) NOT NULL,
  `livemode` tinyint(1) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `metadata` longtext,
  `description` longtext,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `api_version` varchar(15) NOT NULL,
  `data` longtext NOT NULL,
  `request_id` varchar(50) NOT NULL,
  `idempotency_key` longtext NOT NULL,
  `type` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `djstripe_fileupload`
--

CREATE TABLE `djstripe_fileupload` (
  `djstripe_id` bigint(20) NOT NULL,
  `id` varchar(255) NOT NULL,
  `livemode` tinyint(1) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `metadata` longtext,
  `description` longtext,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `purpose` varchar(24) NOT NULL,
  `size` int(11) NOT NULL,
  `type` varchar(4) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `djstripe_idempotencykey`
--

CREATE TABLE `djstripe_idempotencykey` (
  `uuid` char(32) NOT NULL,
  `action` varchar(100) NOT NULL,
  `livemode` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `djstripe_idempotencykey`
--

INSERT INTO `djstripe_idempotencykey` (`uuid`, `action`, `livemode`, `created`) VALUES
('0ae13351d32a49e7ab425f765288c97e', 'customer:create:1', 0, '2019-10-01 22:21:03.893162'),
('2f69b9352356454cb71cf3af3d7ae2bd', 'customer:create:2', 0, '2019-10-07 10:23:24.455165'),
('4a0a09b8afa84c70a533e9ff3afc5019', 'customer:create:4', 0, '2019-10-08 09:15:49.967056'),
('6c2d715af8e44a8a88a9def3a0f33307', 'customer:create:3', 0, '2019-10-07 14:06:08.986517'),
('e301192c999d4169a4ac1edab8f21339', 'customer:create:6', 0, '2019-10-12 16:05:13.735861'),
('e7fb3a6e180149438066e98c9046da6d', 'customer:create:5', 0, '2019-10-08 09:43:00.568961');

-- --------------------------------------------------------

--
-- Table structure for table `djstripe_invoice`
--

CREATE TABLE `djstripe_invoice` (
  `djstripe_id` bigint(20) NOT NULL,
  `id` varchar(255) NOT NULL,
  `livemode` tinyint(1) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `metadata` longtext,
  `description` longtext,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `amount_due` decimal(8,2) NOT NULL,
  `amount_paid` decimal(8,2) DEFAULT NULL,
  `amount_remaining` decimal(8,2) DEFAULT NULL,
  `application_fee` decimal(8,2) DEFAULT NULL,
  `attempt_count` int(11) NOT NULL,
  `attempted` tinyint(1) NOT NULL,
  `billing` varchar(20) DEFAULT NULL,
  `closed` tinyint(1) DEFAULT NULL,
  `currency` varchar(3) NOT NULL,
  `date` datetime(6) NOT NULL,
  `due_date` datetime(6) DEFAULT NULL,
  `ending_balance` int(11) DEFAULT NULL,
  `forgiven` tinyint(1) DEFAULT NULL,
  `hosted_invoice_url` longtext NOT NULL,
  `invoice_pdf` longtext NOT NULL,
  `next_payment_attempt` datetime(6) DEFAULT NULL,
  `number` varchar(64) NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `period_end` datetime(6) NOT NULL,
  `period_start` datetime(6) NOT NULL,
  `receipt_number` varchar(64) DEFAULT NULL,
  `starting_balance` int(11) NOT NULL,
  `statement_descriptor` varchar(22) NOT NULL,
  `subscription_proration_date` datetime(6) DEFAULT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `tax` decimal(8,2) DEFAULT NULL,
  `tax_percent` decimal(5,2) DEFAULT NULL,
  `total` decimal(8,2) NOT NULL,
  `webhooks_delivered_at` datetime(6) DEFAULT NULL,
  `charge_id` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) NOT NULL,
  `subscription_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `djstripe_invoiceitem`
--

CREATE TABLE `djstripe_invoiceitem` (
  `djstripe_id` bigint(20) NOT NULL,
  `id` varchar(255) NOT NULL,
  `livemode` tinyint(1) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `metadata` longtext,
  `description` longtext,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `date` datetime(6) NOT NULL,
  `discountable` tinyint(1) NOT NULL,
  `period` longtext NOT NULL,
  `period_end` datetime(6) NOT NULL,
  `period_start` datetime(6) NOT NULL,
  `proration` tinyint(1) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `customer_id` bigint(20) NOT NULL,
  `invoice_id` bigint(20) DEFAULT NULL,
  `plan_id` bigint(20) DEFAULT NULL,
  `subscription_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `djstripe_payout`
--

CREATE TABLE `djstripe_payout` (
  `djstripe_id` bigint(20) NOT NULL,
  `id` varchar(255) NOT NULL,
  `livemode` tinyint(1) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `metadata` longtext,
  `description` longtext,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `arrival_date` datetime(6) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `failure_code` varchar(23) NOT NULL,
  `failure_message` longtext NOT NULL,
  `method` varchar(8) NOT NULL,
  `statement_descriptor` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(12) NOT NULL,
  `destination_id` bigint(20) DEFAULT NULL,
  `balance_transaction_id` bigint(20) DEFAULT NULL,
  `failure_balance_transaction_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `djstripe_plan`
--

CREATE TABLE `djstripe_plan` (
  `djstripe_id` bigint(20) NOT NULL,
  `id` varchar(255) NOT NULL,
  `livemode` tinyint(1) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `metadata` longtext,
  `description` longtext,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `aggregate_usage` varchar(18) NOT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `billing_scheme` varchar(8) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `interval` varchar(5) NOT NULL,
  `interval_count` int(11) DEFAULT NULL,
  `nickname` longtext NOT NULL,
  `tiers` longtext,
  `tiers_mode` varchar(9) DEFAULT NULL,
  `transform_usage` longtext,
  `trial_period_days` int(11) DEFAULT NULL,
  `usage_type` varchar(8) NOT NULL,
  `name` longtext,
  `statement_descriptor` varchar(22) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `djstripe_plan`
--

INSERT INTO `djstripe_plan` (`djstripe_id`, `id`, `livemode`, `created`, `metadata`, `description`, `djstripe_created`, `djstripe_updated`, `aggregate_usage`, `amount`, `billing_scheme`, `currency`, `interval`, `interval_count`, `nickname`, `tiers`, `tiers_mode`, `transform_usage`, `trial_period_days`, `usage_type`, `name`, `statement_descriptor`, `product_id`, `active`) VALUES
(1, 'plan_ent01', 0, '2019-07-29 04:44:14.000000', '{}', '', '2019-10-01 22:20:32.733596', '2019-10-01 22:20:32.733638', '', '69.99', 'per_unit', 'usd', 'month', 1, 'Enterprise (ACME Inc.)', '\"\"', '', '\"\"', 5, 'licensed', '', '', 1, 1),
(2, 'plan_pro01', 0, '2019-07-27 20:35:15.000000', '{}', '', '2019-10-01 22:20:32.744415', '2019-10-01 22:20:32.744483', '', '149.99', 'per_unit', 'usd', 'year', 1, 'Professional', '\"\"', '', '\"\"', 3, 'licensed', '', '', 1, 1),
(3, 'plan_free01', 0, '2019-07-27 16:28:51.000000', '{}', '', '2019-10-01 22:20:32.755655', '2019-10-01 22:20:32.755704', '', '0.00', 'per_unit', 'usd', 'year', 1, 'Free', '\"\"', '', '\"\"', NULL, 'licensed', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `djstripe_product`
--

CREATE TABLE `djstripe_product` (
  `djstripe_id` bigint(20) NOT NULL,
  `id` varchar(255) NOT NULL,
  `livemode` tinyint(1) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `metadata` longtext,
  `description` longtext,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `name` longtext NOT NULL,
  `type` varchar(7) NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `attributes` longtext,
  `caption` longtext NOT NULL,
  `deactivate_on` longtext,
  `images` longtext,
  `package_dimensions` longtext,
  `shippable` tinyint(1) DEFAULT NULL,
  `url` varchar(799) DEFAULT NULL,
  `statement_descriptor` varchar(22) NOT NULL,
  `unit_label` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `djstripe_product`
--

INSERT INTO `djstripe_product` (`djstripe_id`, `id`, `livemode`, `created`, `metadata`, `description`, `djstripe_created`, `djstripe_updated`, `name`, `type`, `active`, `attributes`, `caption`, `deactivate_on`, `images`, `package_dimensions`, `shippable`, `url`, `statement_descriptor`, `unit_label`) VALUES
(1, 'prod_FTKB77gmW6dLxG', 0, '2019-07-20 18:44:01.000000', '{}', '', '2019-10-01 22:20:32.730936', '2019-10-01 22:20:32.730986', 'Riskrate.me Subscription', 'service', 1, '[]', '', '[]', '[]', '\"\"', NULL, '', 'Riskrate.me Sub', '');

-- --------------------------------------------------------

--
-- Table structure for table `djstripe_refund`
--

CREATE TABLE `djstripe_refund` (
  `djstripe_id` bigint(20) NOT NULL,
  `id` varchar(255) NOT NULL,
  `livemode` tinyint(1) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `metadata` longtext,
  `description` longtext,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `amount` int(11) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `failure_reason` varchar(24) NOT NULL,
  `reason` varchar(21) NOT NULL,
  `receipt_number` varchar(9) NOT NULL,
  `status` varchar(24) NOT NULL,
  `charge_id` bigint(20) NOT NULL,
  `balance_transaction_id` bigint(20) DEFAULT NULL,
  `failure_balance_transaction_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `djstripe_scheduledqueryrun`
--

CREATE TABLE `djstripe_scheduledqueryrun` (
  `djstripe_id` bigint(20) NOT NULL,
  `id` varchar(255) NOT NULL,
  `livemode` tinyint(1) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `metadata` longtext,
  `description` longtext,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `data_load_time` datetime(6) NOT NULL,
  `error` longtext,
  `result_available_until` datetime(6) NOT NULL,
  `sql` longtext NOT NULL,
  `status` varchar(9) NOT NULL,
  `title` longtext NOT NULL,
  `file_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `djstripe_source`
--

CREATE TABLE `djstripe_source` (
  `djstripe_id` bigint(20) NOT NULL,
  `id` varchar(255) NOT NULL,
  `livemode` tinyint(1) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `metadata` longtext,
  `description` longtext,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `client_secret` varchar(255) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `flow` varchar(17) NOT NULL,
  `owner` longtext NOT NULL,
  `statement_descriptor` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `usage` varchar(10) NOT NULL,
  `code_verification` longtext,
  `receiver` longtext,
  `redirect` longtext,
  `source_data` longtext NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `djstripe_source`
--

INSERT INTO `djstripe_source` (`djstripe_id`, `id`, `livemode`, `created`, `metadata`, `description`, `djstripe_created`, `djstripe_updated`, `amount`, `client_secret`, `currency`, `flow`, `owner`, `statement_descriptor`, `status`, `type`, `usage`, `code_verification`, `receiver`, `redirect`, `source_data`, `customer_id`) VALUES
(1, 'src_1FRFEiJKWVx52XCjfp9TflKl', 0, '2019-10-08 09:44:08.000000', '{}', '', '2019-10-08 09:44:10.016268', '2019-10-08 09:44:10.016313', NULL, 'src_client_secret_Fx9XSa4TzfebTpZwBCe6IeIs', '', 'none', '{\"address\":{\"city\":null,\"country\":null,\"line1\":null,\"line2\":null,\"postal_code\":\"12345\",\"state\":null},\"email\":null,\"name\":null,\"phone\":null,\"verified_address\":null,\"verified_email\":null,\"verified_name\":null,\"verified_phone\":null}', '', 'chargeable', 'card', 'reusable', '\"\"', '\"\"', '\"\"', '{\"exp_month\":1,\"exp_year\":2020,\"last4\":\"4242\",\"country\":\"US\",\"brand\":\"Visa\",\"address_zip_check\":\"pass\",\"cvc_check\":\"pass\",\"funding\":\"credit\",\"fingerprint\":\"vxapVMMXludxSdcM\",\"three_d_secure\":\"optional\",\"name\":null,\"address_line1_check\":null,\"tokenization_method\":null,\"dynamic_last4\":null}', 5);

-- --------------------------------------------------------

--
-- Table structure for table `djstripe_subscription`
--

CREATE TABLE `djstripe_subscription` (
  `djstripe_id` bigint(20) NOT NULL,
  `id` varchar(255) NOT NULL,
  `livemode` tinyint(1) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `metadata` longtext,
  `description` longtext,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `application_fee_percent` decimal(5,2) DEFAULT NULL,
  `billing` varchar(20) NOT NULL,
  `billing_cycle_anchor` datetime(6) DEFAULT NULL,
  `cancel_at_period_end` tinyint(1) NOT NULL,
  `canceled_at` datetime(6) DEFAULT NULL,
  `current_period_end` datetime(6) NOT NULL,
  `current_period_start` datetime(6) NOT NULL,
  `days_until_due` int(11) DEFAULT NULL,
  `ended_at` datetime(6) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `start` datetime(6) NOT NULL,
  `status` varchar(8) NOT NULL,
  `tax_percent` decimal(5,2) DEFAULT NULL,
  `trial_end` datetime(6) DEFAULT NULL,
  `trial_start` datetime(6) DEFAULT NULL,
  `customer_id` bigint(20) NOT NULL,
  `plan_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `djstripe_subscription`
--

INSERT INTO `djstripe_subscription` (`djstripe_id`, `id`, `livemode`, `created`, `metadata`, `description`, `djstripe_created`, `djstripe_updated`, `application_fee_percent`, `billing`, `billing_cycle_anchor`, `cancel_at_period_end`, `canceled_at`, `current_period_end`, `current_period_start`, `days_until_due`, `ended_at`, `quantity`, `start`, `status`, `tax_percent`, `trial_end`, `trial_start`, `customer_id`, `plan_id`) VALUES
(1, 'sub_FujA8nH4zRYj7v', 0, '2019-10-01 22:21:04.000000', '{}', '', '2019-10-01 22:21:04.698629', '2019-10-01 22:21:04.698674', NULL, 'charge_automatically', '2019-10-01 22:21:04.000000', 0, NULL, '2020-10-01 22:21:04.000000', '2019-10-01 22:21:04.000000', NULL, NULL, 1, '2019-10-01 22:21:04.000000', 'active', NULL, NULL, NULL, 1, 3),
(2, 'sub_Fwmx9rwGbjdT8N', 0, '2019-10-07 10:23:24.000000', '{}', '', '2019-10-07 10:23:25.349227', '2019-10-09 09:04:54.004356', NULL, 'charge_automatically', '2019-10-07 10:23:24.000000', 0, NULL, '2020-10-07 10:23:24.000000', '2019-10-07 10:23:24.000000', NULL, NULL, 1, '2019-10-07 10:23:24.000000', 'active', NULL, NULL, NULL, 2, 3),
(3, 'sub_FwqXId2drZz1EW', 0, '2019-10-07 14:06:09.000000', '{}', '', '2019-10-07 14:06:09.851861', '2019-10-07 14:06:09.851905', NULL, 'charge_automatically', '2019-10-07 14:06:09.000000', 0, NULL, '2020-10-07 14:06:09.000000', '2019-10-07 14:06:09.000000', NULL, NULL, 1, '2019-10-07 14:06:09.000000', 'active', NULL, NULL, NULL, 3, 3),
(4, 'sub_Fx95QY5bQJcXA0', 0, '2019-10-08 09:15:50.000000', '{}', '', '2019-10-08 09:15:50.916059', '2019-10-08 09:15:50.916111', NULL, 'charge_automatically', '2019-10-08 09:15:50.000000', 0, NULL, '2020-10-08 09:15:50.000000', '2019-10-08 09:15:50.000000', NULL, NULL, 1, '2019-10-08 09:15:50.000000', 'active', NULL, NULL, NULL, 4, 3),
(5, 'sub_Fx9W60NB3udKhU', 0, '2019-10-08 09:43:00.000000', '{}', '', '2019-10-08 09:43:01.484849', '2019-10-08 09:44:10.511612', NULL, 'charge_automatically', '2019-10-08 09:43:00.000000', 0, NULL, '2020-10-08 09:43:00.000000', '2019-10-08 09:43:00.000000', NULL, NULL, 1, '2019-10-08 09:44:10.000000', 'active', NULL, NULL, NULL, 5, 3),
(6, 'sub_FykakKXUT120dQ', 0, '2019-10-12 16:05:14.000000', '{}', '', '2019-10-12 16:05:14.975901', '2019-10-12 16:05:14.975956', NULL, 'charge_automatically', '2019-10-12 16:05:14.000000', 0, NULL, '2020-10-12 16:05:14.000000', '2019-10-12 16:05:14.000000', NULL, NULL, 1, '2019-10-12 16:05:14.000000', 'active', NULL, NULL, NULL, 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `djstripe_subscriptionitem`
--

CREATE TABLE `djstripe_subscriptionitem` (
  `djstripe_id` bigint(20) NOT NULL,
  `id` varchar(255) NOT NULL,
  `livemode` tinyint(1) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `metadata` longtext,
  `description` longtext,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `plan_id` bigint(20) NOT NULL,
  `subscription_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `djstripe_subscriptionitem`
--

INSERT INTO `djstripe_subscriptionitem` (`djstripe_id`, `id`, `livemode`, `created`, `metadata`, `description`, `djstripe_created`, `djstripe_updated`, `quantity`, `plan_id`, `subscription_id`) VALUES
(1, 'si_FujAkBxUVsoLZA', NULL, '2019-10-01 22:21:04.000000', '{}', '', '2019-10-01 22:21:04.713228', '2019-10-01 22:21:04.713272', 1, 3, 1),
(2, 'si_FwmxnqZ7CEiHPl', NULL, '2019-10-07 10:23:25.000000', '{}', '', '2019-10-07 10:23:25.365621', '2019-10-09 09:04:54.007802', 1, 3, 2),
(3, 'si_FwqXllwfnwh7Hl', NULL, '2019-10-07 14:06:09.000000', '{}', '', '2019-10-07 14:06:09.869257', '2019-10-07 14:06:09.869311', 1, 3, 3),
(4, 'si_Fx95CjQhDHOFrS', NULL, '2019-10-08 09:15:50.000000', '{}', '', '2019-10-08 09:15:50.926795', '2019-10-08 09:15:50.926836', 1, 3, 4),
(5, 'si_Fx9WACFxYsgOdc', NULL, '2019-10-08 09:43:01.000000', '{}', '', '2019-10-08 09:43:01.506701', '2019-10-08 09:43:01.507033', 1, 3, 5),
(6, 'si_FykaoDaYQkGrf1', NULL, '2019-10-12 16:05:14.000000', '{}', '', '2019-10-12 16:05:14.987042', '2019-10-12 16:05:14.987084', 1, 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `djstripe_transfer`
--

CREATE TABLE `djstripe_transfer` (
  `djstripe_id` bigint(20) NOT NULL,
  `id` varchar(255) NOT NULL,
  `livemode` tinyint(1) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `metadata` longtext,
  `description` longtext,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `amount_reversed` decimal(8,2) DEFAULT NULL,
  `currency` varchar(3) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `destination_payment` varchar(255) DEFAULT NULL,
  `reversed` tinyint(1) NOT NULL,
  `source_transaction` varchar(255) DEFAULT NULL,
  `source_type` varchar(16) NOT NULL,
  `transfer_group` varchar(255) NOT NULL,
  `balance_transaction_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `djstripe_transferreversal`
--

CREATE TABLE `djstripe_transferreversal` (
  `djstripe_id` bigint(20) NOT NULL,
  `id` varchar(255) NOT NULL,
  `livemode` tinyint(1) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `metadata` longtext,
  `description` longtext,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `amount` int(11) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `balance_transaction_id` bigint(20) DEFAULT NULL,
  `transfer_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `djstripe_upcominginvoice`
--

CREATE TABLE `djstripe_upcominginvoice` (
  `invoice_ptr_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `djstripe_usagerecord`
--

CREATE TABLE `djstripe_usagerecord` (
  `djstripe_id` bigint(20) NOT NULL,
  `id` varchar(255) NOT NULL,
  `livemode` tinyint(1) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `metadata` longtext,
  `description` longtext,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `subscription_item_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `djstripe_webhookeventtrigger`
--

CREATE TABLE `djstripe_webhookeventtrigger` (
  `id` bigint(20) NOT NULL,
  `remote_ip` char(39) NOT NULL,
  `headers` longtext NOT NULL,
  `body` longtext NOT NULL,
  `valid` tinyint(1) NOT NULL,
  `processed` tinyint(1) NOT NULL,
  `exception` varchar(128) NOT NULL,
  `traceback` longtext NOT NULL,
  `djstripe_version` varchar(32) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `event_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reports_company`
--

CREATE TABLE `reports_company` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `other_names` longtext NOT NULL,
  `website` varchar(200) NOT NULL,
  `sector_id` int(11) DEFAULT NULL,
  `city` varchar(128) NOT NULL,
  `country` varchar(2) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `region` varchar(128) NOT NULL,
  `street_1` varchar(128) NOT NULL,
  `street_2` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports_company`
--

INSERT INTO `reports_company` (`id`, `name`, `other_names`, `website`, `sector_id`, `city`, `country`, `postal_code`, `region`, `street_1`, `street_2`) VALUES
(1, 'Security Train Me', '', '', 1, '', '', '', '', '', ''),
(3, 'kadfire', '', '', 1, '', '', '', '', '', ''),
(6, 'JEC', '', '', 1, '', '', '', '', '', ''),
(7, 'Risk Rate Me', '', '', 1, '', '', '', '', '', ''),
(9, 'Equatorial Marine Fuel Management Services Pte Ltd', '', '', 1, '', '', '', '', '', ''),
(11, 'EZ-Link Pte Ltd', '', '', 1, '', '', '', '', '', ''),
(13, 'Alliance 21 Group', '', '', 1, '', '', '', '', '', ''),
(15, 'Security Train Me', '', 'https://securitytrain.me', NULL, '', '', '', '', '', ''),
(17, 'GRP Group Ltd', '', 'http://www.grpgroup.co.uk', 69, '', '', '', '', '', ''),
(19, 'MOM', '', '', 1, '', '', '', '', '', ''),
(21, 'DP', '', 'https://dp.com', NULL, '', '', '', '', '', ''),
(24, 'Design Format', '', '', 1, '', '', '', '', '', ''),
(26, 'Renesas Electronics Singapore Pt.e. Ltd.', '', '', 1, '', '', '', '', '', ''),
(28, 'Matex Holdings Pte Ltd', '', '', 1, '', '', '', '', '', ''),
(30, 'The Vatican', '', 'http://w2.vatican.va', NULL, '', '', '', '', '', ''),
(35, 'Google', '', 'https://google.com', NULL, '', '', '', '', '', ''),
(38, 'Acme', '', 'https://cartus.com', NULL, '', '', '', '', '', ''),
(41, 'RailPoint', '', '', 1, '', '', '', '', '', ''),
(43, 'The Metal Store', '', '', 1, '', '', '', '', '', ''),
(45, 'PLYMOUTH BRETHREN', '', '', 1, '', '', '', '', '', ''),
(47, 'European Consumer Centre for Services', '', '', 1, '', '', '', '', '', ''),
(49, 'Upwork', '', '', 1, '', '', '', '', '', ''),
(51, 'Vanify', '', '', 1, '', '', '', '', '', ''),
(53, 'Serverfault', '', '', 1, '', '', '', '', '', ''),
(56, 'Stack Exchange', '', '', 1, '', '', '', '', '', ''),
(58, 'Porn Hub', '', '', 1, '', '', '', '', '', ''),
(61, 'Xhamster', '', '', 1, '', '', '', '', '', ''),
(63, 'British Chambers of Commerce', '', '', 1, '', '', '', '', '', ''),
(64, 'Kadfire Ltd', '', 'http://www.kadfire.com', 68, '', '', '', '', '', ''),
(65, 'Sirva', '', 'http://www.sirva.com', 122, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `reports_domain`
--

CREATE TABLE `reports_domain` (
  `id` int(11) NOT NULL,
  `domain` varchar(255) NOT NULL,
  `tags` longtext NOT NULL,
  `company_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports_domain`
--

INSERT INTO `reports_domain` (`id`, `domain`, `tags`, `company_id`) VALUES
(1, 'securitytrain.me', '', NULL),
(2, 'kadfire.com', '', 64),
(3, 'jec.com', '', 6),
(4, 'emf.com.sg', '', 9),
(5, 'ezlink.com.sg', '', 11),
(6, 'alex.world', '', NULL),
(7, 'grpgroup.co.uk', '', 17),
(8, 'mom.gov.sg', '', 19),
(9, 'dezignformat.com', '', NULL),
(10, 'renesas.com', '', NULL),
(11, 'matex.com.sg', '', NULL),
(12, 'vatican.va', '', NULL),
(13, 'google.com', '', NULL),
(14, 'cartus.com', '', NULL),
(15, 'railpoint.co.uk', '', NULL),
(16, 'themetalstore.co.uk', '', NULL),
(17, 'plymouthbrethrenchristianchurch.org', '', NULL),
(18, 'ukecc-services.net', '', NULL),
(19, 'upwork.com', '', 49),
(20, 'vanify.co.uk', '', 51),
(21, 'serverfault.com', '', NULL),
(22, 'stackexchange.com', '', 56),
(23, 'Pornhub.com', '', NULL),
(24, 'xhamster.com', '', 61),
(25, 'britishchambers.org.uk', '', 63),
(26, 'sirva.com', '', 65),
(27, 'akaraka.org.sg', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reports_riskreport`
--

CREATE TABLE `reports_riskreport` (
  `id` int(11) NOT NULL,
  `generated_on` datetime(6) NOT NULL,
  `latest` tinyint(1) NOT NULL,
  `domain_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports_riskreport`
--

INSERT INTO `reports_riskreport` (`id`, `generated_on`, `latest`, `domain_id`) VALUES
(1, '2019-10-06 14:25:25.804675', 1, 1),
(2, '2019-10-06 14:25:46.580915', 1, 2),
(3, '2019-10-06 14:26:10.953829', 1, 3),
(4, '2019-10-07 09:13:56.721562', 1, 4),
(5, '2019-10-07 09:14:36.547577', 1, 5),
(6, '2019-10-07 09:14:59.256396', 1, 6),
(7, '2019-10-07 10:46:18.875777', 1, 7),
(8, '2019-10-07 12:26:00.758537', 1, 8),
(9, '2019-10-08 08:31:09.805427', 1, 9),
(10, '2019-10-08 08:50:42.716780', 1, 10),
(11, '2019-10-08 08:58:51.653467', 1, 11),
(15, '2019-10-12 16:05:15.168463', 0, 14),
(16, '2019-10-14 13:21:43.228617', 1, 15),
(17, '2019-10-14 13:36:57.132759', 1, 16),
(18, '2019-10-15 08:46:16.645599', 1, 17),
(19, '2019-10-15 14:59:05.282582', 1, 18),
(20, '2019-10-16 12:00:12.456357', 1, 19),
(21, '2019-10-17 08:50:06.371953', 0, 20),
(22, '2019-10-17 09:05:20.306760', 1, 21),
(23, '2019-10-17 09:09:19.305052', 1, 22),
(24, '2019-10-20 19:34:21.570905', 1, 23),
(25, '2019-10-20 19:36:36.274022', 1, 24),
(26, '2019-10-22 09:44:11.555137', 1, 25),
(27, '2019-11-07 17:53:58.938830', 1, 20),
(28, '2019-11-07 19:03:12.817161', 1, 26),
(29, '2019-11-07 19:05:47.475654', 1, 14),
(30, '2019-11-08 18:26:21.752900', 1, 27);

-- --------------------------------------------------------

--
-- Table structure for table `reports_scoreitem`
--

CREATE TABLE `reports_scoreitem` (
  `id` int(11) NOT NULL,
  `label` varchar(64) NOT NULL,
  `score` decimal(7,4) NOT NULL,
  `rating` varchar(1) NOT NULL,
  `report_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports_scoreitem`
--

INSERT INTO `reports_scoreitem` (`id`, `label`, `score`, `rating`, `report_id`) VALUES
(1, 'score_overall', '0.3000', 'E', 1),
(2, 'score_email_security', '3.0000', 'A', 1),
(3, 'score_web_security', '0.0000', 'F', 1),
(4, 'score_web_application', '0.0000', 'F', 1),
(5, 'score_infrastructure', '3.0000', 'A', 1),
(6, 'score_spf', '1.5000', 'A', 1),
(7, 'score_dkim', '0.0000', 'F', 1),
(8, 'score_dmarc', '0.0000', 'F', 1),
(9, 'score_mail_agents', '1.0000', 'A', 1),
(10, 'score_dnssec', '0.0000', 'F', 1),
(11, 'score_https', '0.0000', 'F', 1),
(12, 'score_http_headers', '0.0571', 'F', 1),
(13, 'score_http_cookies', '1.0000', 'A', 1),
(14, 'score_reputation', '1.3000', 'A', 1),
(15, 'score_ports', '0.0000', 'F', 1),
(16, 'score_cves', '0.0000', 'F', 1),
(17, 'score_leaks', '1.0000', 'A', 1),
(18, 'score_overall', '0.4000', 'E', 2),
(19, 'score_email_security', '3.0000', 'A', 2),
(20, 'score_web_security', '0.0000', 'F', 2),
(21, 'score_web_application', '0.0000', 'F', 2),
(22, 'score_infrastructure', '5.0000', 'A', 2),
(23, 'score_spf', '1.5000', 'A', 2),
(24, 'score_dkim', '1.0000', 'A', 2),
(25, 'score_dmarc', '0.0000', 'F', 2),
(26, 'score_mail_agents', '0.0000', 'F', 2),
(27, 'score_dnssec', '0.0000', 'F', 2),
(28, 'score_https', '0.0000', 'F', 2),
(29, 'score_http_headers', '0.0571', 'F', 2),
(30, 'score_http_cookies', '1.0000', 'A', 2),
(31, 'score_reputation', '1.0000', 'A', 2),
(32, 'score_ports', '1.0000', 'A', 2),
(33, 'score_cves', '1.0000', 'A', 2),
(34, 'score_leaks', '0.0000', 'F', 2),
(35, 'score_overall', '0.4000', 'E', 3),
(36, 'score_email_security', '3.0000', 'A', 3),
(37, 'score_web_security', '0.0000', 'F', 3),
(38, 'score_web_application', '0.0000', 'F', 3),
(39, 'score_infrastructure', '5.0000', 'A', 3),
(40, 'score_spf', '0.0000', 'F', 3),
(41, 'score_dkim', '1.0000', 'A', 3),
(42, 'score_dmarc', '0.0000', 'F', 3),
(43, 'score_mail_agents', '0.0000', 'F', 3),
(44, 'score_dnssec', '0.0000', 'F', 3),
(45, 'score_https', '0.0000', 'F', 3),
(46, 'score_http_headers', '0.0571', 'F', 3),
(47, 'score_http_cookies', '1.0000', 'A', 3),
(48, 'score_reputation', '1.0000', 'A', 3),
(49, 'score_ports', '1.0000', 'A', 3),
(50, 'score_cves', '1.0000', 'A', 3),
(51, 'score_leaks', '0.0000', 'F', 3),
(52, 'score_overall', '0.3000', 'E', 4),
(53, 'score_email_security', '3.0000', 'A', 4),
(54, 'score_web_security', '0.0000', 'F', 4),
(55, 'score_web_application', '0.0000', 'F', 4),
(56, 'score_infrastructure', '3.0000', 'A', 4),
(57, 'score_spf', '1.5000', 'A', 4),
(58, 'score_dkim', '0.0000', 'F', 4),
(59, 'score_dmarc', '0.0000', 'F', 4),
(60, 'score_mail_agents', '1.0000', 'A', 4),
(61, 'score_dnssec', '0.0000', 'F', 4),
(62, 'score_https', '0.0000', 'F', 4),
(63, 'score_http_headers', '0.0571', 'F', 4),
(64, 'score_http_cookies', '0.0000', 'F', 4),
(65, 'score_reputation', '1.0000', 'A', 4),
(66, 'score_ports', '0.0000', 'F', 4),
(67, 'score_cves', '1.0000', 'A', 4),
(68, 'score_leaks', '0.0000', 'F', 4),
(69, 'score_overall', '0.3000', 'E', 5),
(70, 'score_email_security', '3.0000', 'A', 5),
(71, 'score_web_security', '0.0000', 'F', 5),
(72, 'score_web_application', '0.0000', 'F', 5),
(73, 'score_infrastructure', '3.0000', 'A', 5),
(74, 'score_spf', '1.5000', 'A', 5),
(75, 'score_dkim', '1.0000', 'A', 5),
(76, 'score_dmarc', '0.0000', 'F', 5),
(77, 'score_mail_agents', '1.0000', 'A', 5),
(78, 'score_dnssec', '0.0000', 'F', 5),
(79, 'score_https', '0.0000', 'F', 5),
(80, 'score_http_headers', '0.2571', 'E', 5),
(81, 'score_http_cookies', '0.0000', 'F', 5),
(82, 'score_reputation', '1.0000', 'A', 5),
(83, 'score_ports', '0.0000', 'F', 5),
(84, 'score_cves', '0.0000', 'F', 5),
(85, 'score_leaks', '0.0000', 'F', 5),
(86, 'score_overall', '0.1500', 'F', 6),
(87, 'score_email_security', '0.0000', 'F', 6),
(88, 'score_web_security', '0.0000', 'F', 6),
(89, 'score_web_application', '0.0000', 'F', 6),
(90, 'score_infrastructure', '3.0000', 'A', 6),
(91, 'score_spf', '0.3000', 'E', 6),
(92, 'score_dkim', '0.0000', 'F', 6),
(93, 'score_dmarc', '0.0000', 'F', 6),
(94, 'score_mail_agents', '1.0000', 'A', 6),
(95, 'score_dnssec', '0.0000', 'F', 6),
(96, 'score_https', '0.0000', 'F', 6),
(97, 'score_http_headers', '0.4571', 'D', 6),
(98, 'score_http_cookies', '0.0000', 'F', 6),
(99, 'score_reputation', '1.3000', 'A', 6),
(100, 'score_ports', '0.1000', 'F', 6),
(101, 'score_cves', '1.0000', 'A', 6),
(102, 'score_leaks', '1.0000', 'A', 6),
(103, 'score_overall', '0.7000', 'B', 7),
(104, 'score_email_security', '3.0000', 'A', 7),
(105, 'score_web_security', '3.0000', 'A', 7),
(106, 'score_web_application', '3.0000', 'A', 7),
(107, 'score_infrastructure', '5.0000', 'A', 7),
(108, 'score_spf', '1.5000', 'A', 7),
(109, 'score_dkim', '1.0000', 'A', 7),
(110, 'score_dmarc', '0.0000', 'F', 7),
(111, 'score_mail_agents', '1.0000', 'A', 7),
(112, 'score_dnssec', '0.0000', 'F', 7),
(113, 'score_https', '1.0000', 'A', 7),
(114, 'score_http_headers', '0.7571', 'B', 7),
(115, 'score_http_cookies', '1.0000', 'A', 7),
(116, 'score_reputation', '1.3000', 'A', 7),
(117, 'score_ports', '1.0000', 'A', 7),
(118, 'score_cves', '1.0000', 'A', 7),
(119, 'score_leaks', '0.7000', 'B', 7),
(120, 'score_overall', '0.6000', 'C', 8),
(121, 'score_email_security', '3.0000', 'A', 8),
(122, 'score_web_security', '3.0000', 'A', 8),
(123, 'score_web_application', '3.0000', 'A', 8),
(124, 'score_infrastructure', '3.0000', 'A', 8),
(125, 'score_spf', '1.5000', 'A', 8),
(126, 'score_dkim', '1.0000', 'A', 8),
(127, 'score_dmarc', '0.0000', 'F', 8),
(128, 'score_mail_agents', '1.0000', 'A', 8),
(129, 'score_dnssec', '0.0000', 'F', 8),
(130, 'score_https', '1.0000', 'A', 8),
(131, 'score_http_headers', '0.6571', 'B', 8),
(132, 'score_http_cookies', '0.0000', 'F', 8),
(133, 'score_reputation', '1.3000', 'A', 8),
(134, 'score_ports', '0.0000', 'F', 8),
(135, 'score_cves', '1.0000', 'A', 8),
(136, 'score_leaks', '0.0000', 'F', 8),
(137, 'score_overall', '0.3000', 'E', 9),
(138, 'score_email_security', '3.0000', 'A', 9),
(139, 'score_web_security', '0.0000', 'F', 9),
(140, 'score_web_application', '0.0000', 'F', 9),
(141, 'score_infrastructure', '3.0000', 'A', 9),
(142, 'score_spf', '1.5000', 'A', 9),
(143, 'score_dkim', '1.0000', 'A', 9),
(144, 'score_dmarc', '0.0000', 'F', 9),
(145, 'score_mail_agents', '0.0000', 'F', 9),
(146, 'score_dnssec', '0.0000', 'F', 9),
(147, 'score_https', '0.0000', 'F', 9),
(148, 'score_http_headers', '0.0571', 'F', 9),
(149, 'score_http_cookies', '0.0000', 'F', 9),
(150, 'score_reputation', '1.3000', 'A', 9),
(151, 'score_ports', '0.0000', 'F', 9),
(152, 'score_cves', '0.7000', 'B', 9),
(153, 'score_leaks', '1.0000', 'A', 9),
(154, 'score_overall', '0.4000', 'E', 10),
(155, 'score_email_security', '3.0000', 'A', 10),
(156, 'score_web_security', '0.0000', 'F', 10),
(157, 'score_web_application', '0.0000', 'F', 10),
(158, 'score_infrastructure', '5.0000', 'A', 10),
(159, 'score_spf', '0.5000', 'D', 10),
(160, 'score_dkim', '0.0000', 'F', 10),
(161, 'score_dmarc', '0.0000', 'F', 10),
(162, 'score_mail_agents', '1.0000', 'A', 10),
(163, 'score_dnssec', '0.0000', 'F', 10),
(164, 'score_https', '0.0000', 'F', 10),
(165, 'score_http_headers', '0.0571', 'F', 10),
(166, 'score_http_cookies', '0.0000', 'F', 10),
(167, 'score_reputation', '1.3000', 'A', 10),
(168, 'score_ports', '1.0000', 'A', 10),
(169, 'score_cves', '0.7000', 'B', 10),
(170, 'score_leaks', '0.0000', 'F', 10),
(171, 'score_overall', '0.1500', 'F', 11),
(172, 'score_email_security', '0.0000', 'F', 11),
(173, 'score_web_security', '0.0000', 'F', 11),
(174, 'score_web_application', '0.0000', 'F', 11),
(175, 'score_infrastructure', '3.0000', 'A', 11),
(176, 'score_spf', '0.0000', 'F', 11),
(177, 'score_dkim', '0.0000', 'F', 11),
(178, 'score_dmarc', '0.0000', 'F', 11),
(179, 'score_mail_agents', '1.0000', 'A', 11),
(180, 'score_dnssec', '0.0000', 'F', 11),
(181, 'score_https', '0.0000', 'F', 11),
(182, 'score_http_headers', '0.0571', 'F', 11),
(183, 'score_http_cookies', '1.0000', 'A', 11),
(184, 'score_reputation', '1.3000', 'A', 11),
(185, 'score_ports', '0.0000', 'F', 11),
(186, 'score_cves', '1.0000', 'A', 11),
(187, 'score_leaks', '0.0000', 'F', 11),
(239, 'score_overall', '0.5500', 'C', 15),
(240, 'score_email_security', '3.0000', 'A', 15),
(241, 'score_web_security', '0.0000', 'F', 15),
(242, 'score_web_application', '3.0000', 'A', 15),
(243, 'score_infrastructure', '5.0000', 'A', 15),
(244, 'score_spf', '1.5000', 'A', 15),
(245, 'score_dkim', '1.0000', 'A', 15),
(246, 'score_dmarc', '0.0000', 'F', 15),
(247, 'score_mail_agents', '2.0000', 'A', 15),
(248, 'score_dnssec', '0.0000', 'F', 15),
(249, 'score_https', '0.0000', 'F', 15),
(250, 'score_http_headers', '0.2571', 'E', 15),
(251, 'score_http_cookies', '0.6000', 'C', 15),
(252, 'score_reputation', '1.3000', 'A', 15),
(253, 'score_ports', '1.0000', 'A', 15),
(254, 'score_cves', '0.0000', 'F', 15),
(255, 'score_leaks', '0.0000', 'F', 15),
(256, 'score_overall', '0.4000', 'E', 16),
(257, 'score_email_security', '3.0000', 'A', 16),
(258, 'score_web_security', '0.0000', 'F', 16),
(259, 'score_web_application', '0.0000', 'F', 16),
(260, 'score_infrastructure', '5.0000', 'A', 16),
(261, 'score_spf', '1.5000', 'A', 16),
(262, 'score_dkim', '0.0000', 'F', 16),
(263, 'score_dmarc', '0.0000', 'F', 16),
(264, 'score_mail_agents', '0.5000', 'D', 16),
(265, 'score_dnssec', '0.0000', 'F', 16),
(266, 'score_https', '0.0000', 'F', 16),
(267, 'score_http_headers', '0.0571', 'F', 16),
(268, 'score_http_cookies', '1.0000', 'A', 16),
(269, 'score_reputation', '1.3000', 'A', 16),
(270, 'score_ports', '0.5500', 'C', 16),
(271, 'score_cves', '1.0000', 'A', 16),
(272, 'score_leaks', '1.0000', 'A', 16),
(273, 'score_overall', '0.5500', 'C', 17),
(274, 'score_email_security', '3.0000', 'A', 17),
(275, 'score_web_security', '0.0000', 'F', 17),
(276, 'score_web_application', '3.0000', 'A', 17),
(277, 'score_infrastructure', '5.0000', 'A', 17),
(278, 'score_spf', '1.5000', 'A', 17),
(279, 'score_dkim', '0.0000', 'F', 17),
(280, 'score_dmarc', '0.0000', 'F', 17),
(281, 'score_mail_agents', '2.0000', 'A', 17),
(282, 'score_dnssec', '0.0000', 'F', 17),
(283, 'score_https', '0.0000', 'F', 17),
(284, 'score_http_headers', '0.6571', 'B', 17),
(285, 'score_http_cookies', '0.2000', 'F', 17),
(286, 'score_reputation', '1.3000', 'A', 17),
(287, 'score_ports', '1.0000', 'A', 17),
(288, 'score_cves', '1.0000', 'A', 17),
(289, 'score_leaks', '0.6000', 'C', 17),
(290, 'score_overall', '0.3000', 'E', 18),
(291, 'score_email_security', '3.0000', 'A', 18),
(292, 'score_web_security', '0.0000', 'F', 18),
(293, 'score_web_application', '0.0000', 'F', 18),
(294, 'score_infrastructure', '3.0000', 'A', 18),
(295, 'score_spf', '1.5000', 'A', 18),
(296, 'score_dkim', '0.0000', 'F', 18),
(297, 'score_dmarc', '0.0000', 'F', 18),
(298, 'score_mail_agents', '2.0000', 'A', 18),
(299, 'score_dnssec', '0.0000', 'F', 18),
(300, 'score_https', '0.0000', 'F', 18),
(301, 'score_http_headers', '0.4571', 'D', 18),
(302, 'score_http_cookies', '0.0000', 'F', 18),
(303, 'score_reputation', '1.3000', 'A', 18),
(304, 'score_ports', '0.0000', 'F', 18),
(305, 'score_cves', '0.0000', 'F', 18),
(306, 'score_leaks', '0.5000', 'D', 18),
(307, 'score_overall', '0.1500', 'F', 19),
(308, 'score_email_security', '0.0000', 'F', 19),
(309, 'score_web_security', '0.0000', 'F', 19),
(310, 'score_web_application', '0.0000', 'F', 19),
(311, 'score_infrastructure', '3.0000', 'A', 19),
(312, 'score_spf', '0.0000', 'F', 19),
(313, 'score_dkim', '0.0000', 'F', 19),
(314, 'score_dmarc', '0.0000', 'F', 19),
(315, 'score_mail_agents', '0.0000', 'F', 19),
(316, 'score_dnssec', '0.0000', 'F', 19),
(317, 'score_https', '0.0000', 'F', 19),
(318, 'score_http_headers', '0.0571', 'F', 19),
(319, 'score_http_cookies', '1.0000', 'A', 19),
(320, 'score_reputation', '1.3000', 'A', 19),
(321, 'score_ports', '0.0000', 'F', 19),
(322, 'score_cves', '0.0000', 'F', 19),
(323, 'score_leaks', '1.0000', 'A', 19),
(324, 'score_overall', '0.8000', 'B', 20),
(325, 'score_email_security', '5.0000', 'A', 20),
(326, 'score_web_security', '3.0000', 'A', 20),
(327, 'score_web_application', '3.0000', 'A', 20),
(328, 'score_infrastructure', '5.0000', 'A', 20),
(329, 'score_spf', '1.5000', 'A', 20),
(330, 'score_dkim', '1.0000', 'A', 20),
(331, 'score_dmarc', '1.0000', 'A', 20),
(332, 'score_mail_agents', '2.0000', 'A', 20),
(333, 'score_dnssec', '0.0000', 'F', 20),
(334, 'score_https', '1.0000', 'A', 20),
(335, 'score_http_headers', '0.8000', 'B', 20),
(336, 'score_http_cookies', '0.0000', 'F', 20),
(337, 'score_reputation', '1.3000', 'A', 20),
(338, 'score_ports', '0.4000', 'E', 20),
(339, 'score_cves', '1.0000', 'A', 20),
(340, 'score_leaks', '0.0000', 'F', 20),
(341, 'score_overall', '0.3000', 'E', 21),
(342, 'score_email_security', '3.0000', 'A', 21),
(343, 'score_web_security', '0.0000', 'F', 21),
(344, 'score_web_application', '0.0000', 'F', 21),
(345, 'score_infrastructure', '3.0000', 'A', 21),
(346, 'score_spf', '0.0000', 'F', 21),
(347, 'score_dkim', '1.0000', 'A', 21),
(348, 'score_dmarc', '0.0000', 'F', 21),
(349, 'score_mail_agents', '2.0000', 'A', 21),
(350, 'score_dnssec', '0.0000', 'F', 21),
(351, 'score_https', '0.0000', 'F', 21),
(352, 'score_http_headers', '0.2000', 'F', 21),
(353, 'score_http_cookies', '0.0000', 'F', 21),
(354, 'score_reputation', '1.3000', 'A', 21),
(355, 'score_ports', '0.0000', 'F', 21),
(356, 'score_cves', '1.0000', 'A', 21),
(357, 'score_leaks', '1.0000', 'A', 21),
(358, 'score_overall', '0.4000', 'E', 22),
(359, 'score_email_security', '3.0000', 'A', 22),
(360, 'score_web_security', '0.0000', 'F', 22),
(361, 'score_web_application', '0.0000', 'F', 22),
(362, 'score_infrastructure', '5.0000', 'A', 22),
(363, 'score_spf', '1.5000', 'A', 22),
(364, 'score_dkim', '1.0000', 'A', 22),
(365, 'score_dmarc', '0.0000', 'F', 22),
(366, 'score_mail_agents', '0.0000', 'F', 22),
(367, 'score_dnssec', '0.0000', 'F', 22),
(368, 'score_https', '0.0000', 'F', 22),
(369, 'score_http_headers', '0.5000', 'D', 22),
(370, 'score_http_cookies', '0.0000', 'F', 22),
(371, 'score_reputation', '1.0000', 'A', 22),
(372, 'score_ports', '1.0000', 'A', 22),
(373, 'score_cves', '1.0000', 'A', 22),
(374, 'score_leaks', '0.8000', 'B', 22),
(375, 'score_overall', '0.5000', 'D', 23),
(376, 'score_email_security', '5.0000', 'A', 23),
(377, 'score_web_security', '0.0000', 'F', 23),
(378, 'score_web_application', '0.0000', 'F', 23),
(379, 'score_infrastructure', '5.0000', 'A', 23),
(380, 'score_spf', '1.5000', 'A', 23),
(381, 'score_dkim', '1.0000', 'A', 23),
(382, 'score_dmarc', '1.0000', 'A', 23),
(383, 'score_mail_agents', '2.0000', 'A', 23),
(384, 'score_dnssec', '0.0000', 'F', 23),
(385, 'score_https', '0.0000', 'F', 23),
(386, 'score_http_headers', '0.4000', 'E', 23),
(387, 'score_http_cookies', '0.0000', 'F', 23),
(388, 'score_reputation', '1.0000', 'A', 23),
(389, 'score_ports', '1.0000', 'A', 23),
(390, 'score_cves', '1.0000', 'A', 23),
(391, 'score_leaks', '0.0000', 'F', 23),
(392, 'score_overall', '0.5500', 'C', 25),
(393, 'score_email_security', '3.0000', 'A', 25),
(394, 'score_web_security', '3.0000', 'A', 25),
(395, 'score_web_application', '0.0000', 'F', 25),
(396, 'score_infrastructure', '5.0000', 'A', 25),
(397, 'score_spf', '1.5000', 'A', 25),
(398, 'score_dkim', '1.0000', 'A', 25),
(399, 'score_dmarc', '0.0000', 'F', 25),
(400, 'score_mail_agents', '2.0000', 'A', 25),
(401, 'score_dnssec', '0.0000', 'F', 25),
(402, 'score_https', '0.5000', 'D', 25),
(403, 'score_http_headers', '0.2000', 'F', 25),
(404, 'score_http_cookies', '0.0000', 'F', 25),
(405, 'score_reputation', '1.3000', 'A', 25),
(406, 'score_ports', '1.0000', 'A', 25),
(407, 'score_cves', '1.0000', 'A', 25),
(408, 'score_leaks', '0.0000', 'F', 25),
(409, 'score_overall', '0.4500', 'D', 26),
(410, 'score_email_security', '3.0000', 'A', 26),
(411, 'score_web_security', '0.0000', 'F', 26),
(412, 'score_web_application', '3.0000', 'A', 26),
(413, 'score_infrastructure', '3.0000', 'A', 26),
(414, 'score_spf', '1.5000', 'A', 26),
(415, 'score_dkim', '1.0000', 'A', 26),
(416, 'score_dmarc', '0.0000', 'F', 26),
(417, 'score_mail_agents', '2.0000', 'A', 26),
(418, 'score_dnssec', '0.0000', 'F', 26),
(419, 'score_https', '0.0000', 'F', 26),
(420, 'score_http_headers', '0.6000', 'C', 26),
(421, 'score_http_cookies', '0.0000', 'F', 26),
(422, 'score_reputation', '1.3000', 'A', 26),
(423, 'score_ports', '0.2500', 'F', 26),
(424, 'score_cves', '1.0000', 'A', 26),
(425, 'score_leaks', '0.0000', 'F', 26),
(426, 'score_overall', '0.2500', 'E', 27),
(427, 'score_email_security', '0.0000', 'F', 27),
(428, 'score_web_security', '0.0000', 'F', 27),
(429, 'score_web_application', '0.0000', 'F', 27),
(430, 'score_infrastructure', '5.0000', 'A', 27),
(431, 'score_spf', '0.0000', 'F', 27),
(432, 'score_dkim', '1.0000', 'A', 27),
(433, 'score_dmarc', '0.0000', 'F', 27),
(434, 'score_mail_agents', '2.0000', 'A', 27),
(435, 'score_dnssec', '0.0000', 'F', 27),
(436, 'score_https', '0.0000', 'F', 27),
(437, 'score_http_headers', '0.2000', 'E', 27),
(438, 'score_http_cookies', '0.0000', 'F', 27),
(439, 'score_reputation', '1.3000', 'A', 27),
(440, 'score_ports', '0.0000', 'F', 27),
(441, 'score_cves', '0.0000', 'F', 27),
(442, 'score_leaks', '1.0000', 'A', 27),
(443, 'score_overall', '0.7000', 'C', 28),
(444, 'score_email_security', '2.0000', 'A', 28),
(445, 'score_web_security', '5.0000', 'A', 28),
(446, 'score_web_application', '2.0000', 'A', 28),
(447, 'score_infrastructure', '5.0000', 'A', 28),
(448, 'score_spf', '1.5000', 'A', 28),
(449, 'score_dkim', '1.0000', 'A', 28),
(450, 'score_dmarc', '0.0000', 'F', 28),
(451, 'score_mail_agents', '2.0000', 'A', 28),
(452, 'score_dnssec', '0.0000', 'F', 28),
(453, 'score_https', '1.0000', 'A', 28),
(454, 'score_http_headers', '0.6000', 'C', 28),
(455, 'score_http_cookies', '1.0000', 'A', 28),
(456, 'score_reputation', '1.3000', 'A', 28),
(457, 'score_ports', '1.0000', 'A', 28),
(458, 'score_cves', '1.0000', 'A', 28),
(459, 'score_leaks', '0.0000', 'F', 28),
(460, 'score_overall', '0.4500', 'D', 29),
(461, 'score_email_security', '2.0000', 'A', 29),
(462, 'score_web_security', '0.0000', 'F', 29),
(463, 'score_web_application', '2.0000', 'A', 29),
(464, 'score_infrastructure', '5.0000', 'A', 29),
(465, 'score_spf', '1.5000', 'A', 29),
(466, 'score_dkim', '1.0000', 'A', 29),
(467, 'score_dmarc', '0.0000', 'F', 29),
(468, 'score_mail_agents', '2.0000', 'A', 29),
(469, 'score_dnssec', '0.0000', 'F', 29),
(470, 'score_https', '0.0000', 'F', 29),
(471, 'score_http_headers', '0.4000', 'D', 29),
(472, 'score_http_cookies', '0.6000', 'C', 29),
(473, 'score_reputation', '1.3000', 'A', 29),
(474, 'score_ports', '1.0000', 'A', 29),
(475, 'score_cves', '0.0000', 'F', 29),
(476, 'score_leaks', '0.0000', 'F', 29),
(477, 'score_overall', '0.2500', 'E', 30),
(478, 'score_email_security', '0.0000', 'F', 30),
(479, 'score_web_security', '0.0000', 'F', 30),
(480, 'score_web_application', '0.0000', 'F', 30),
(481, 'score_infrastructure', '5.0000', 'A', 30),
(482, 'score_spf', '0.5000', 'D', 30),
(483, 'score_dkim', '0.0000', 'F', 30),
(484, 'score_dmarc', '0.0000', 'F', 30),
(485, 'score_mail_agents', '2.0000', 'A', 30),
(486, 'score_dnssec', '0.0000', 'F', 30),
(487, 'score_https', '0.0000', 'F', 30),
(488, 'score_http_headers', '0.2000', 'E', 30),
(489, 'score_http_cookies', '0.0000', 'F', 30),
(490, 'score_reputation', '1.3000', 'A', 30),
(491, 'score_ports', '0.0000', 'F', 30),
(492, 'score_cves', '0.0000', 'F', 30),
(493, 'score_leaks', '0.6000', 'C', 30);

-- --------------------------------------------------------

--
-- Table structure for table `reports_sector`
--

CREATE TABLE `reports_sector` (
  `id` int(11) NOT NULL,
  `code` varchar(5) NOT NULL,
  `name` varchar(96) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports_sector`
--

INSERT INTO `reports_sector` (`id`, `code`, `name`) VALUES
(1, 'NA', 'Not Available'),
(2, 'ACC', 'Accounting'),
(3, 'ADE', 'Aerospace and Defense'),
(4, 'AGR', 'Agriculture'),
(5, 'AIR', 'Airlines'),
(6, 'ALM', 'Alternative Medicine'),
(7, 'ANI', 'Animation'),
(8, 'APF', 'Apparel and Footwear'),
(9, 'ARC', 'Architecture'),
(10, 'ART', 'Arts'),
(11, 'ACR', 'Arts and Crafts'),
(12, 'AMG', 'Asset Management'),
(13, 'AUD', 'Audio'),
(14, 'ATM', 'Automation'),
(15, 'AUTO', 'Automotive'),
(16, 'BANK', 'Banking and Mortgages'),
(17, 'BEV', 'Beverages'),
(18, 'BIO', 'Biotechnology'),
(19, 'BRO', 'Broadcasting'),
(20, 'BMAT', 'Building Materials'),
(21, 'BSUP', 'Business Supplies'),
(22, 'CHE', 'Chemicals'),
(23, 'CIV', 'Civil Engineering'),
(24, 'CLOUD', 'Cloud Services'),
(25, 'COMM', 'Communications'),
(26, 'CHARD', 'Computer Hardware'),
(27, 'CON', 'Construction'),
(28, 'CCS', 'Construction Contractors and Services'),
(29, 'CPS', 'Consulting and Professional Services'),
(30, 'CDI', 'Consumer Discretionary'),
(31, 'CELE', 'Consumer Electronics'),
(32, 'CGOOD', 'Consumer Goods'),
(33, 'CSA', 'Consumer Staples'),
(34, 'CORP', 'Corporate and Business'),
(35, 'COSM', 'Cosmetics'),
(36, 'DSIGN', 'Design'),
(37, 'ECOM', 'E-Commerce and Marketplaces'),
(38, 'LEARN', 'E-Learning'),
(39, 'EDU', 'Education'),
(40, 'ELCT', 'Electrical'),
(41, 'ENE', 'Energy'),
(42, 'ENERU', 'Energy and Utilities'),
(43, 'ENTR', 'Entertainment and Recreation'),
(44, 'EVENT', 'Events'),
(45, 'EYE', 'Eyewear'),
(46, 'FAC', 'Facilities'),
(47, 'FAMS', 'Family Services'),
(48, 'FIN', 'Finance'),
(49, 'FSVC', 'Financial Services'),
(50, 'FART', 'Fine Art'),
(51, 'FIRE', 'Firearms'),
(52, 'FISH', 'Fishery'),
(53, 'FOOD', 'Food'),
(54, 'FPROD', 'Food Production'),
(55, 'FORUM', 'Forums'),
(56, 'FUND', 'Fundraising'),
(57, 'GAMB', 'Gambling and Casinos'),
(58, 'GOV', 'Government'),
(59, 'GTRAN', 'Ground Transportation'),
(60, 'HWELL', 'Health and Wellness'),
(61, 'HCARE', 'Health Care'),
(62, 'HEDU', 'Higher Education'),
(63, 'FURN', 'Home and Furniture'),
(64, 'HIMPR', 'Home Improvement'),
(65, 'HR', 'Human Resources'),
(66, 'IMEX', 'Import and Export'),
(67, 'INMA', 'Industrials and Manufacturing'),
(68, 'ITS', 'Information Technology and Services'),
(69, 'INS', 'Insurance'),
(70, 'INTR', 'International Relations'),
(71, 'ITRAD', 'International Trade'),
(72, 'INET', 'Internet'),
(73, 'INV', 'Investment'),
(74, 'INVBK', 'Investment Banking'),
(75, 'INVMG', 'Investment Management'),
(76, 'JWL', 'Jewelry, Watches and Luxury Goods'),
(77, 'JUST', 'Judiciary'),
(78, 'LAW', 'Law Enforcement'),
(79, 'LEGAL', 'Legal Services'),
(80, 'LIB', 'Libraries'),
(81, 'MACH', 'Machinery'),
(82, 'MAR', 'Maritime'),
(83, 'MKTR', 'Market Research'),
(84, 'MKTA', 'Marketing and Advertising'),
(85, 'MENG', 'Mechanical Engineering'),
(86, 'MEDIA', 'Media'),
(87, 'MED', 'Medicine'),
(88, 'MIL', 'Military'),
(89, 'MINE', 'Mining and Metals'),
(90, 'MTV', 'Movies and TV'),
(91, 'MUSE', 'Museums'),
(92, 'MUSIC', 'Music'),
(93, 'NANO', 'Nanotechnology'),
(94, 'NET', 'Networking'),
(95, 'NGO', 'Non-Profit and Philanthropy'),
(96, 'GAS', 'Oil and Gas'),
(97, 'OUTS', 'Outsourcing'),
(98, 'PACK', 'Packaging and Containers'),
(99, 'PAPER', 'Paper Goods'),
(100, 'PAY', 'Payments'),
(101, 'PART', 'Performing Arts'),
(102, 'PHARM', 'Pharmaceuticals'),
(103, 'PHA', 'Pharmacy'),
(104, 'PHOTO', 'Photography'),
(105, 'PLA', 'Plastics'),
(106, 'PLUM', 'Plumbing'),
(107, 'POL', 'Political Organization'),
(108, 'PORN', 'Pornography'),
(109, 'PEDU', 'Primary and Secondary Education'),
(110, 'PRINT', 'Printing'),
(111, 'PR', 'Public Relations'),
(112, 'PUB', 'Publishing'),
(113, 'RAN', 'Ranching'),
(114, 'REALE', 'Real Estate'),
(115, 'REL', 'Religion'),
(116, 'RENER', 'Renewables and Environment'),
(117, 'RESTO', 'Restaurants'),
(118, 'RET', 'Retail'),
(119, 'SAN', 'Sanitization Services'),
(120, 'SCI', 'Scientific and Academic Research'),
(121, 'SEC', 'Security'),
(122, 'SVCS', 'Services'),
(123, 'SHIP', 'Shipbuilding'),
(124, 'SHILO', 'Shipping and Logistics'),
(125, 'SOC', 'Society'),
(126, 'SPORT', 'Sporting Goods'),
(127, 'SPOFI', 'Sports and Fitness'),
(128, 'STORE', 'Stores'),
(129, 'TAL', 'Talent Agencies'),
(130, 'TECH', 'Technology'),
(131, 'TELCO', 'Telecommunications'),
(132, 'TEXT', 'Textiles'),
(133, 'TOBAC', 'Tobacco'),
(134, 'TOOL', 'Tools'),
(135, 'TRANS', 'Translation'),
(136, 'TSPOR', 'Transportation'),
(137, 'TRAVE', 'Travel and Leisure'),
(138, 'UTI', 'Utilities'),
(139, 'VCAP', 'Venture Capital'),
(140, 'VET', 'Veterinary'),
(141, 'VIDEG', 'Video Games'),
(142, 'WAREH', 'Warehousing'),
(143, 'WEB', 'Web Services and Apps'),
(144, 'WSALE', 'Wholesale');

-- --------------------------------------------------------

--
-- Table structure for table `reports_testdefinition`
--

CREATE TABLE `reports_testdefinition` (
  `id` int(11) NOT NULL,
  `label` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` longtext NOT NULL,
  `category` longtext NOT NULL,
  `keywords` longtext NOT NULL,
  `weight` decimal(7,4) NOT NULL,
  `passing_score` decimal(7,4) NOT NULL,
  `failing_score` decimal(7,4) NOT NULL,
  `information_only` tinyint(1) NOT NULL,
  `score_failed` decimal(7,4) NOT NULL,
  `score_partial` decimal(7,4) NOT NULL,
  `score_success` decimal(7,4) NOT NULL,
  `score_error` decimal(7,4) NOT NULL,
  `score_na` decimal(7,4) NOT NULL,
  `message_failed` longtext NOT NULL,
  `message_partial` longtext NOT NULL,
  `message_success` longtext NOT NULL,
  `message_error` longtext NOT NULL,
  `message_na` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports_testdefinition`
--

INSERT INTO `reports_testdefinition` (`id`, `label`, `name`, `description`, `category`, `keywords`, `weight`, `passing_score`, `failing_score`, `information_only`, `score_failed`, `score_partial`, `score_success`, `score_error`, `score_na`, `message_failed`, `message_partial`, `message_success`, `message_error`, `message_na`) VALUES
(1, 'spfrecordcount', 'Single SPF Exists', 'This test verifies if more than one SPF records exists for your domain.', 'email_security', 'email,dns,spf', '1.0000', '0.0000', '-1.0000', 0, '-1.0000', '0.0000', '0.0000', '0.0000', '0.0000', 'No SPF record is defined for your domain.\r\n</br></br>\r\nSPF is an email authentication method designed to detect forged sender addresses in emails (email spoofing), a technique often used in phishing and email spam.\r\n</br></br>\r\nSPF allows the receiver to check that an email claiming to come from a specific domain comes from an IP address authorised by that domain\'s administrators. The list of authorised sending hosts and IP addresses for a domain is published in the DNS records for that domain.', 'More than one (1) SPF record is defined for your domain. Having multiple records by definition of the RFCs should result in a permanent error.</br></br>Multiple SPF records are easily resolved by merging the records into a single statement.', 'A single SPF record is defined for your domain.', 'This test needs manual review.', 'The result of this test is not available.'),
(2, 'spfsyntaxisvalid', 'SPF Record Syntax', 'This test validate the syntax of your SPF record.', 'email_security', 'email,dns,spf', '1.0000', '0.0000', '-1.0000', 0, '-1.0000', '0.0000', '0.0000', '0.0000', '0.0000', 'The syntax of your SPF record is invalid.  Review your SPF record and ensure it conforms to RFC specifications.', 'Minor issues were found in the syntax of your SPF record.', 'The syntax of your SPF record is valid.', '', ''),
(3, 'spfrecordnottoopermissive', 'SPF Record Policy', 'Verifies if the record restricts usage of the domain by using the proper qualifier for \'all\'.', 'email_security', 'email,dns,spf', '1.0000', '0.0000', '-1.0000', 0, '-1.0000', '-0.5000', '0.0000', '0.0000', '0.0000', 'Your SPF record is too permissive. An SPF record can be overly permissive is if you terminate your SPF record in “+all”. This essentially causes your record to include the entire Internet as permitted to send mail on your behalf. </br></br>The record should terminate with \"~all\" or \"-all\".', 'Your SPF record is too permissive.', 'Your SPF record prevents unrestricted use of the domain.', '', ''),
(4, 'spfvalidlookupcount', 'SPF Valid Lookup Count', 'This test verifies that the number of lookup mechanisms does not exceed 10.', 'email_security', 'email,dns,spf', '1.0000', '0.0000', '-1.0000', 0, '-1.0000', '0.0000', '0.0000', '0.0000', '0.0000', 'The SPF records uses less than ten (10) lookup mechanisms. it is against RFC specifications to cause more than ten DNS look-ups in your record. This limit is designed to prevent denial of service attacks and infinite DNS loops. If you have more than ten lookups in your record, a permanent error could be returned during the SPF authentication process.', '', 'The SPF records uses less than ten (10) lookup mechanisms.', '', ''),
(5, 'spfvoidlookupscount', 'Void Lookups Count', 'Verifies if the count of void lookups is below or equal to 2.', 'email_security', 'email,dns,spf', '1.0000', '0.0000', '-1.0000', 0, '-0.5000', '0.0000', '0.0000', '0.0000', '0.0000', 'The count of void lookups is greater than 2. This  refers to DNS lookups which either return an empty response (NOERROR with no answers) or an NXDOMAIN response. This is a separate count from the 10 DNS lookup overall count.\r\n</br></br>SPF implementations SHOULD limit \"void lookups\" to two, exceeding the limit produces a \"permerror\" result.', '', 'The count of void lookups is below or equal to 2.', '', ''),
(6, 'spfrecordnotdeprecatedcheck', 'Not using deprecated SPF records', 'This test verifies the SPF records uses a deprecated record type.', 'email_security', 'email,dns,spf', '1.0000', '0.0000', '-0.1000', 0, '-0.2000', '0.0000', '0.0000', '0.0000', '0.0000', 'Update your SPF record to use TXT records instead of SPF records. </br></br>\r\nThe use of alternative DNS RR types that was formerly supported during the experimental phase of SPF was discontinued in 2014. SPF records must now only be published as a DNS TXT (type 16) Resource Records.', '', 'Your SPF record is using the the proper TXT record type.', '', ''),
(7, 'spfrecorddontuseptr', 'Avoidance of the PTR Mechanism', 'Verifies if the record makes use of the PTR mechanism.', 'email_security', 'email,dns,spf', '0.5000', '0.5000', '0.0000', 0, '0.5000', '0.0000', '1.0000', '0.0000', '0.0000', 'The record uses the PTR mechanism.', '', 'The record does not use the PTR mechanism.', '', ''),
(8, 'spfrecordexpectedterminator', 'Standard SPF Record Termination', 'Confirms that the record ends with the \'all\' mechanism.', 'email_security', 'email,dns,spf', '1.0000', '0.0000', '-0.1000', 0, '-0.2000', '0.0000', '0.0000', '0.0000', '0.0000', 'Some data was found following the \'all\' mechanism. Data after the \"all\" tag will be ignored by mail servers.', 'Some data was found following the \'all\' mechanism. Data after the \"all\" tag will be ignored by mail servers.', 'There is no trailing data after the \'all\' mechanism.', '', ''),
(9, 'dkimrecordsexisttest', 'DKIM Record', 'Attempts to confirm the existence of one or more DKIM records.', 'email_security', 'email,dns,dkim', '1.0000', '0.0000', '-1.0000', 0, '-1.0000', '0.0000', '0.0000', '0.0000', '0.0000', 'There is no indication that DKIM records exist for the given domain.\r\n</br></br>\r\nDKIM is an authentication protocol that links a domain name to a message. The purpose of the DKIM protocol is not only to prove that the domain name has not been usurped, but also that the message has not been altered during transmission.\r\n</br></br>This test cannot definitively detect a record without the exact identifier, and is weighted accordingly in the scoring.', '', 'DKIM records are supported for your domain.', '', ''),
(10, 'dmarcrecordcounttest', 'DMARC Record', 'Verifies if one or more DMARC records exists for a specific domain.', 'email_security', 'email,dns,dmarc', '1.0000', '0.0000', '-1.0000', 0, '-1.0000', '0.5000', '0.0000', '0.0000', '0.0000', 'No DMARC record was found. \r\n</br></br>\r\nSPF and DKIM on their own (or even together) contain various weaknesses. When both are combined with DMARC, they create an enhanced layer of security and sender identification. Part of the DMARC requirements involves the concept of domain alignment, so it makes it much more difficult for fraudsters to spoof a domain.', 'Multiple DMARC records were found for a single domain. You should only have one DMARC record for your domain.  \r\n</br></br>\r\nWhen multiple records are found policy discovery terminates and DMARC processing is not applied.', 'A DMARC record was found for your domain.', '', ''),
(11, 'dmarcsyntaxisvalid', 'DMARC Record Syntax', 'Verifies if the syntax of the DMARC record is valid.', 'email_security', 'email,dns,dmarc', '1.0000', '0.0000', '-1.0000', 0, '-1.0000', '0.5000', '0.0000', '0.0000', '0.0000', 'The syntax of yourDMARC record is invalid.', 'Minor issues were detected with your DMARC record.', 'The syntax of your DMARC record is valid.', '', ''),
(12, 'dmarcexternalreportstest', 'DMARC External Reporting', 'If you want to send your DMARC reports to a domain other than the one that the record is for, then the receiving domain needs to configure a DNS record so that Email Service Providers know that the recipient is authorizing the the reports.', 'email_security', 'email,dns,dmarc', '1.0000', '0.0000', '-0.3000', 0, '-0.3000', '-0.1000', '0.0000', '0.0000', '0.0000', 'The destination domain is not setup to receive your reports.', '', 'The destination domain has the proper TXT record to receive domains.', '', ''),
(13, 'dnskeyandrrsigrecordsexists', 'DNSSEC Records', 'Verifies if a DNSKEY and RRSIG records exist for the domain.', 'web_security', 'dns,dnssec,integrity', '1.0000', '0.0000', '-1.0000', 0, '-1.0000', '0.0000', '0.0000', '0.0000', '0.0000', 'No DNSKEY and RRSIG records or invalid records were returned.', '', 'Your domain returned DNSKEY and RRSIG records.', '', ''),
(14, 'dnssecrecordisvalid', 'DNSSEC Validation', 'Verifies if the DNSSEC record is valid.', 'web_security', 'dns,dnssec,integrity', '1.0000', '0.0000', '-1.0000', 0, '-1.0000', '0.0000', '0.0000', '0.0000', '0.0000', 'The DNSSEC record failed validation.', '', 'The DNSSEC record has validated successfully.', '', ''),
(15, 'dmarcpolicyisnotnone', 'DMARC Policy', 'Verifies if the DMARC policy is set to none.', 'email_security', 'email,dns,dmarc', '1.0000', '0.0000', '-1.0000', 0, '-1.0000', '-0.5000', '0.0000', '0.0000', '0.0000', 'The DMARC policy is set to none. \r\n\r\nWith the DMARC policy none, no action will be taken against email that fails the DMARC check. The email just goes into the inbox / folder of the receiver. This DMARC policy can be used to start monitoring who is sending emails on behalf of a domain.', 'Your DMARC policy could be set to a more strict policy.', 'The DMARC policy is configured to quarantine or reject invalid emails.', '', ''),
(16, 'dmarcpctis100', 'DMARC Full Reporting', 'Verifies what percentage of emails are being filtered.', 'email_security', 'email,dns,dmarc', '1.0000', '0.0000', '-0.5000', 0, '-1.0000', '-0.2500', '0.0000', '0.0000', '0.0000', 'No emails are being validated by your DMARC installation.', 'Not all emails are being authenticated via DMARC.', 'All emails are being vetted by DMARC.', '', ''),
(17, 'dmarcruaisset', 'DMARC Aggregate Reporting', 'Checks if an email address has been set for DMARC aggregate reporting.', 'email_security', 'email,dns,dmarc', '1.0000', '0.0000', '-1.0000', 0, '-1.0000', '-0.5000', '0.0000', '0.0000', '0.0000', 'You are not receiving aggregate reports from your DMARC setup.', 'The email set to receive aggregate reports is invalid.', 'You are receiving aggregate reports for your domain.', '', ''),
(18, 'dmarcrufisset', 'DMARC Forensics Reporting', 'Checks if an email address have been set for DMARC forensics reporting.', 'email_security', 'email,dmarc,dns', '1.0000', '0.0000', '-0.1000', 0, '-0.1000', '-0.0500', '0.0000', '0.0000', '0.0000', 'You are not receiving forensics reports for your domain.', 'The email address for receiving forensics reports is invalid.', 'You are receiving forensics reports for your domain.', '', ''),
(19, 'httpsenabledtest', 'Secure Web Communications', 'Verifies if HTTPS is enabled for the website linked to the domain.', 'web_security', 'web,https,encryption,confidentiality', '1.0000', '0.0000', '-1.0000', 0, '-1.0000', '-0.5000', '0.0000', '0.0000', '0.0000', 'Unable to connect to the website via HTTPS.  HTTPS prevents attackers from reading and modifying data sent between a website and a user\'s browser. \r\n\r\nHTTPS should be considered a minimum security requirement for all websites.', '', 'A successful connection to the website was established using secure HTTP.', '', ''),
(20, 'hstsenabledtest', 'HTTP Strict-Transport-Security Header', 'Verifies if the Strict-Transport-Security mechanism is enabled.', 'web_security', 'web,server,https', '1.0000', '0.0000', '-1.0000', 0, '-1.0000', '-0.5000', '0.0000', '0.0000', '0.0000', 'A HSTS header was not provided by the server. HSTS is a response header that forces your browser to only be able to access the HTTPS version of a  website and any resources on it.</br></br>\r\nEnabling HSTS will stop SSL protocol attacks and cookie hijacking, two vulnerabilities in SSL-enabled websites. And in addition to making a website more secure, HSTS makes sites load quicker by removing a step in the loading procedure.', '', 'A HSTS header was provided from the server.', '', ''),
(21, 'httpscertificateisvalid', 'SSL Certificate Validation', 'Validates the SSL certificate for the web server.', 'web_security', 'ssl,web,https,encryption,integrity', '1.0000', '0.0000', '-0.5000', 0, '-1.0000', '-0.5000', '0.0000', '0.0000', '0.0000', 'The certificate is invalid.', '', 'The certificate is valid.', '', ''),
(22, 'httpscertificatecipherstrength', 'Cipher Suites', 'Tests to confirm that the website is using a strong and modern cipher.', 'web_security', 'web,ssl,https,encryption,integrity', '1.0000', '0.0000', '-0.5000', 0, '-1.0000', '-0.5000', '0.0000', '0.0000', '0.0000', 'Your webserver is advertising weak encryption protocols.', '', 'The HTTPS server is using strong and modern encryption.', '', ''),
(23, 'automatichttpsredirection', 'Automatic Redirection to Secure Website', 'Verifies if a request to the unsecure version of a website redirects to HTTPS.', 'web_security', 'web,https,encryption,confidentiality', '1.0000', '0.0000', '-1.0000', 0, '-1.0000', '0.0000', '0.0000', '0.0000', '0.0000', 'The request was not redirected to the HTTPS version. Even though this site has HTTPS enabled visitors can still access the site over insecure  HTTP. \r\n</br><br>\r\nYou should ensure that all visitors to your site are automatically redirected to the secure HTTPS connection. Implementing HTTPS is of no use if visitors can still access your site via HTTP.', '', 'Request is redirected to the HTTPS version.', '', ''),
(24, 'smtpserverfoundtest', 'Mail Servers', 'Checks if the application was able to find to at least one SMTP server.', 'email_security', 'email,mail-agent', '1.0000', '0.0000', '-1.0000', 0, '-1.0000', '0.0000', '0.0000', '0.0000', '0.0000', 'No SMTP server was found based on the given domain.', '', 'One or more SMTP server(s) were found.', '', ''),
(25, 'smtpcertificatecn', 'Certificate Common Name', 'This test verifies if your certificate appears legitimate to outside agents by having it signed for your mail servers only.', 'email_security', 'email,mail-agent-cipher,encryption,mail-agent', '1.0000', '0.0000', '-1.0000', 0, '-1.0000', '-0.5000', '0.0000', '0.0000', '0.0000', 'The certificate is invalid.', '', 'The certificate is valid.', '', ''),
(26, 'smtpprotocols', 'TLS Version', 'Verifies if the server(s) offer secure versions of the TLS protocol.', 'email_security', 'email,mail-agent-cipher,encryption,mail-agent', '1.0000', '0.0000', '-1.0000', 0, '-1.0000', '-0.5000', '0.0000', '0.0000', '0.0000', 'All servers only support weak TLS versions.', 'One or more servers provided support for weaker TLS versions.', 'All servers support only TLS v1.0 or higher only.', '', ''),
(27, 'smtpciphers', 'SSL Cipher Suite', 'This verifies the certificate used to encrypt SMTP traffic is legitimate by confirming the name and domain of the certificate.', 'email_security', 'email,mail-agent-cipher,encryption,mail-agent', '1.0000', '0.0000', '-1.0000', 0, '-1.0000', '-0.5000', '0.0000', '0.0000', '0.0000', 'The certificate is invalid.', '', 'The certificate is valid.', '', ''),
(28, 'smtpstarttlsisenabled', 'STARTTLS Support', 'Verifies if STARTTLS is enabled on the remote SMTP server.', 'email_security', 'email,mail-agent,mail-agent-starttls,encryption,confidentiality', '1.0000', '1.0000', '0.0000', 0, '-1.0000', '1.0000', '1.0000', '0.0000', '0.0000', 'STARTLS is disabled on the remote SMTP server. It’s important to use TLS as unsecured email is a common attack vector. </br><br/>\r\n\r\nEncryption in transit helps protect your emails from being snooped on while they travel between you and your intended recipients. Without encryption they present a prime target for eavesdropping and mass interception as they cross dozens of optical fibres and routers.', '', 'STARTTLS is enabled on the remote SMTP server.', '', ''),
(29, 'smtpisclosedrelay', 'Closed Relay', 'Verifies if the SMTP server acts as open-relay.', 'email_security', 'email,mail-agent,mail-agent-relay', '1.0000', '0.0000', '-1.0000', 0, '-1.0000', '0.0000', '0.0000', '0.0000', '0.0000', 'Your SMTP server(s) can be used by malicious actors for spoofing purposes.', '', 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '', ''),
(30, 'xframeoptionheadertest', 'X-Frame-Options Header', 'Verifies if the X-Frame-Options header is defined in responses from the web server.', 'web_application', 'web,headers,application', '1.0000', '0.0000', '-0.1600', 0, '-0.2000', '-0.1500', '0.0000', '0.0000', '0.0000', 'The X-Frame-Options header is not sent by the server. This header protects web applications against clickjacking. This is  a malicious technique of tricking a user into clicking on something different from what the user perceives, thus potentially revealing confidential information or allowing others to take control of their computer.', 'The X-Frame-Options header is returnedbut is not properly configured. This header protects web applications against clickjacking. This is  a malicious technique of tricking a user into clicking on something different from what the user perceives, thus potentially revealing confidential information or allowing others to take control of their computer.', 'The X-Frame-Options header is returned and is properly configured.', '', ''),
(31, 'xxssprotectionheadertest', 'X-XSS-Protection Header', 'Verifies if the X-XSS-Protection header is properly defined in responses from the web server.', 'web_application', 'web,headers,application', '1.0000', '0.0000', '-0.0100', 0, '-0.2000', '-0.1000', '0.0000', '0.0000', '0.0000', 'The X-XSS-Protection header was not sent by the server. This header is designed to defend against Cross Site Scripting that is one of the most widespread and critical weaknesses that can lead to serious vulnerabilities. It\'s easy and simple to implement, see link for details.', 'The X-XSS-Protection header is returned but is not properly configured. This header is designed to defend against Cross Site Scripting that is one of the most widespread and critical weaknesses that can lead to serious vulnerabilities. It\'s easy and simple to implement, see link for details.', 'The X-XSS-Protection header is returned and is properly configured.', '', ''),
(32, 'xcontenttypeoptionsheadertest', 'X-Content-Type-Options Header', 'Verifies if the X-Content-Type-Options header is properly defined in responses from the web server.', 'web_application', 'web,headers,application', '0.0000', '0.0000', '-0.0100', 0, '-0.2000', '-0.1000', '0.0000', '0.0000', '0.0000', 'The X-Content-Type-Options header is not sent by the server. This header  helps to protect against attacks such as Drive by Downloads - that is any download that happens without a person\'s knowledge, often a computer virus, spyware, malware, or crimeware.', 'The X-Content-Type-Options header is returned but is not properly configured.  This header  helps to protect against attacks such as Drive by Downloads - that is any download that happens without a person\'s knowledge, often a computer virus, spyware, malware, or crimeware.', 'The X-Content-Type-Options header is returned and is properly configured.', '', ''),
(33, 'contentsecurityheadertest', 'Content Security Policy Header', 'Verifies if the Content Security Policy header is properly defined in responses from the web server.', 'web_application', 'web,headers,application', '1.0000', '0.0000', '-0.1500', 0, '-0.2000', '-0.1000', '0.0000', '0.0000', '0.0000', 'The Content Security Policy (CSP) was not sent by the server. This header can be considered as an improved version of the X-XSS-Protection header. It adds another layer of security to protect against cross site scripting, one of the most widespread and critical weaknesses that can lead to serious vulnerabilities.', 'The Content Security Policy header is returned but is not properly configured. This header can be considered as an improved version of the X-XSS-Protection header. It adds another layer of security to protect against cross site scripting, one of the most widespread and critical weaknesses that can lead to serious vulnerabilities.', 'The Content Security Policy header is returned and is properly configured.', '', ''),
(34, 'referrerpolicyheadertest', 'Referrer-Policy Header', 'Verifies if the Referrer-Policy header is properly defined in responses from the web server.', 'web_application', 'web,headers,application', '1.0000', '0.0000', '-0.0100', 0, '-0.1000', '-0.0500', '0.0000', '0.0000', '0.0000', 'The Referrer-Policy header is not sent by the server. This header enables you to specify when the browser should set Referer headers. The use of this header can be considered as “optional”, but is advised to protect the privacy of your visitors.', 'The Referrer-Policy header is returned but is not properly configured. This header enables you to specify when the browser should set Referer headers. The use of this header can be considered as “optional”, but is advised to protect the privacy of your visitors.', 'The Referrer-Policy header is returned and is properly configured.', '', ''),
(35, 'serverheadertest', 'Server Header', 'Verifies if the Server header is returned by the server.', 'web_application', 'web,headers,application', '1.0000', '0.0000', '-0.0100', 1, '-0.1429', '-0.7145', '0.0000', '0.0000', '0.0000', 'The Server header is sent by the server. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence. Server values should be avoided as they potentially reveal internal implementation details that might make it  easier for attackers to find and exploit known security holes.', 'The Server header is sent by the server. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence. Server values should be avoided as they potentially reveal internal implementation details that might make it  easier for attackers to find and exploit known security holes.', 'The Server header is not returned by the server.', 'This test requires manual review.', 'No result available for this test.'),
(36, 'xpoweredbyheadertest', 'X-Powered-By Header', 'Verifies if the X-Powered-By header is returned by the server.', 'web_application', 'web,headers,application', '1.0000', '1.0000', '0.0000', 1, '0.0000', '0.5000', '1.0000', '0.0000', '1.0000', 'The X-Powered-By header is returned and contains the details of the web framework or programming language used in the web application. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence.', 'The X-Powered-By header is returned and contains product information, but no version data was found. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence.', 'The X-Powered-By header is not returned by the server.', '', ''),
(37, 'featurepolicyheadertest', 'Feature-Policy Header', 'Verifies if the Feature-Policy header is returned by the server.', 'web_application', 'web,headers,application', '1.0000', '0.0000', '-0.0100', 0, '-0.1000', '-0.0500', '0.0000', '0.0000', '0.0000', 'The Feature-Policy header was not returned by the server. This header can help protect your site from third parties using APIs that have security and privacy implications', 'The Feature-Policy header is returned, but appears to be misconfigured. This header can help protect your site from third parties using APIs that have security and privacy implications.', 'The Feature-Policy header is returned by the server.', '', ''),
(38, 'cookiesyntaxisvalid', 'Cookie Syntax', 'Verifies the lexical syntax of a cookie.', 'web_application', 'web,cookies,application', '1.0000', '0.0000', '-0.0100', 0, '-0.4000', '-0.3000', '0.0000', '0.0000', '0.0000', 'None of the cookie found has a valid syntax.', 'At least one cookie had an invalid syntax.', 'All cookies found had a valid syntax.', 'This test requires manual review.', ''),
(39, 'httpcookienoprefix', 'Unsecure Cookies Prefix', 'Confirms that HTTP cookies sent via unsecure HTTP do no use secure prefixes.', 'web_application', 'web,cookies,application', '1.0000', '0.0000', '-0.0100', 0, '-0.4000', '-0.3000', '0.0000', '0.0000', '0.0000', 'All cookies sent via unsecure HTTP uses a secure prefix.', 'At least one cookie sent via unsecure HTTP uses a secure prefix.', 'None of the cookies sent via unsecure HTTP are prefixed.', '', ''),
(40, 'httpcookiehttponly', 'Usage of HttpOnly Flag', 'Confirms that cookies sent via unsecure HTTP have the \'HttpOnly\' flag set.', 'web_application', 'web,cookie,application', '1.0000', '0.0000', '-0.0100', 0, '-0.4000', '-0.3000', '0.0000', '0.0000', '0.0000', 'None of the cookies found had the \'HttpOnly\' flag.', 'At least one cookie did not have the \'HttpOnly\' flag.', 'All of the cookies sent via HTTP uses the \'HttpOnly\'.', '', ''),
(41, 'httpcookieisnotsecure', 'Improper use of the \'Secure\' Flag', 'Verifies that none of the cookies sent via unsecure HTTP has the \'Secure\' flag set.', 'web_application', 'web, application,cookies', '1.0000', '0.0000', '-0.0100', 0, '-0.4000', '-0.3000', '0.0000', '0.0000', '0.0000', 'All of the cookies sent via unsecure HTTP had the \'Secure\' flag enabled.', 'At least one cookie sent via unsecure HTTP had the \'Secure\' flag enabled.', 'None of the cookies sent via unsecure HTTP had the \'Secure\' flag enabled.', '', ''),
(42, 'cookiesamesite', 'Usage of the \'SameSite\' Flag', 'Verifies if cookies are set with the Samesite flag.', 'web_application', 'web,application,cookies', '1.0000', '0.0000', '-0.0100', 0, '-0.4000', '-0.3000', '0.0000', '0.0000', '0.0000', 'At least one cookie did not have the \'SameSite\' flag set.', 'All cookies had the SameSite flag set at least to \'lax\'.', 'All cookies had the SameSite flag set to strict.', '', ''),
(43, 'httpscookieissecure', 'Usage of the \'Secure\' Flag for Secure Cookies', 'Verifies that all cookies sent via encrypted HTTP has the \'Secure\' flag set.', 'web_application', 'web,cookies,application', '1.0000', '0.0000', '-0.0100', 0, '-0.4000', '-0.3000', '0.0000', '0.0000', '0.0000', 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', 'At least one cookie sent via secure HTTP did not have the \'Secure\' flag enabled.', 'All of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '', ''),
(44, 'httpscookiehostprefixisvalid', 'Usage of the \'__Host\' Prefix', 'Verifies that all cookies enforces usage of the \'__Host\' prefix.', 'web_application', 'web,cookies,application', '1.0000', '0.0000', '-0.0100', 0, '-0.4000', '-0.2000', '0.0000', '0.0000', '0.0000', 'None of the cookies sent via secure HTTP had the \'__Host\' prefix.', 'At least one cookie sent via secure HTTP did not have the \'__Host\' prefix.', 'All of the cookies sent via secure HTTP had the \'__Host\' prefix.', '', ''),
(45, 'httpscookiesecureprefixisvalid', 'Usage of the \'__Secure\' Prefix', 'Verifies that all cookies enforces usage of the \'__Secure\' prefix.', 'web_application', 'web,cookies,application', '1.0000', '0.0000', '-0.0100', 0, '-0.4000', '-0.4000', '0.0000', '0.0000', '0.0000', 'At least one cookie prefixed with \'__Secure-\' does not have the \'secure\' flag.', 'At least one cookie prefixed with \'__Secure-\' does not have the \'secure\' flag.', 'All cookies prefixed with \'__Secure-\' do not have the \'secure\' flag.', '', ''),
(46, 'nocookietest', 'Website is Using Cookies', 'Verifies if the target website sends one or more cookies.', 'web_application', 'web,cookies,application', '1.0000', '0.0000', '-0.0100', 0, '-0.1000', '0.0000', '0.0000', '0.0000', '0.0000', 'The target website sent one or more cookies.', 'The target website is not sending any cookies.', 'The target website is not sending any cookies.', 'This test requires manual review.', ''),
(47, 'ipblocklist', 'Malicious Activity from IP', 'Verifies if IP addresses relating to the domain are involved in any malicious activity.', 'infrastructure', 'ip,reputation', '1.0000', '0.7000', '0.0000', 1, '-2.0000', '0.0000', '0.7000', '0.0000', '0.0000', 'Your IP address is associated with malicious activity.', '', 'Your IP address is not associated with any malicious activity.', '', ''),
(48, 'hostreputation', 'Unsolicited Communications', 'Verifies if IP addresses relating to the domain are on any Domain Name System Blacklists (DNSBL)', 'infrastructure', 'infrastructure,reputation,ip', '1.0000', '0.3000', '0.0000', 0, '-2.0000', '0.0000', '0.3000', '0.0000', '0.0000', 'Your host is listed on a DNSBL. A domain name system based list (DNSBL) is an anti-spam technique used to track IP addresses that send spam. DNSBL is a database of IP addresses that includes the addresses of known spammers, open relays, proxy servers and computers compromised by crackers and malicious code, also known as zombie computers.', '', 'Your host is not listed on any DNSBL', 'This test requires manual review.', ''),
(49, 'hosthaspotentialvulnerabilities', 'Potential Vulnerabilities Detected', 'Verifies if the host exposes potentially vulnerable services.', 'infrastructure', 'vulnerabilities,cves', '1.0000', '1.0000', '0.0000', 0, '0.0000', '1.0000', '1.0000', '0.0000', '0.0000', 'One of more hosts may expose services with known vulnerabilities. See the links below for information on each specific item. \r\n</br></br>\r\nCVE Vulnerabilities are identified by passive fingerprinting of server software and version. The vulnerabilities are implied based on the software and version. This is a passive test and so the server may not be impacted by all of the issues detected.\r\n</br></br>\r\nYou can request an ACTIVE vulnerability scan by following the remediation link below.', 'Some vulnerabilities were potentially identified. See the links below for information on each specific item. \r\n</br></br>\r\nCVE Vulnerabilities are identified by passive fingerprinting of server software and version. The vulnerabilities are implied based on the software and version. This is a passive test and so the server may not be impacted by all of the issues detected.\r\n</br></br>\r\nYou can request an ACTIVE vulnerability scan by following the remediation link below.', 'No known vulnerability has been found for your host.', 'This test requires manual review.', ''),
(50, 'hostopenports', 'Open Ports', 'Enumerates ports opened on the target host.', 'infrastructure', 'ports,vulnerabilities', '1.0000', '1.0000', '0.0000', 1, '0.0000', '1.0000', '1.0000', '0.0000', '0.0000', 'A large number of services are exposed to the Internet. An open port is an attack surface. An important principle in security is reducing your attack surface, and ensure that servers have the minimum number of exposed services. \r\n</br></br>\r\nCheck to make sure that only necessary ports are open. Our scan uses PASSIVE identification of open ports - active scans on remote systems are not allowed without prior permission. A full ACTIVE scan can be requested by following the remediation link below.', '', 'No or few ports are exposed to the Internet.', 'This test requires manual review.', ''),
(51, 'emailleaks', 'Emails Leaked Online', 'Searches for email credentials relating to a given domain from public data leaks.', 'infrastructure', 'confidentiality,leaks,trust,privacy', '1.0000', '1.0000', '0.0000', 1, '0.0000', '1.0000', '1.0000', '0.0000', '0.0000', 'Your domain was found at least once in known, public data leaks.', '', 'Your domain was not found in any known public leaks.', 'This test requires manual review.', '');

-- --------------------------------------------------------

--
-- Table structure for table `reports_testresult`
--

CREATE TABLE `reports_testresult` (
  `id` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `score` double NOT NULL,
  `message` longtext NOT NULL,
  `data` longtext NOT NULL,
  `definition_id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports_testresult`
--

INSERT INTO `reports_testresult` (`id`, `state`, `score`, `message`, `data`, `definition_id`, `report_id`) VALUES
(1, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 include:_spf.protonmail.ch mx ~all\']}', 1, 1),
(2, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 1),
(3, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 1),
(4, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 0}', 4, 1),
(5, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 1),
(6, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 1),
(7, 'success', 0, 'Your SPF record is too permissive.', '{\'policy\': \'~all\'}', 3, 1),
(8, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 include:_spf.protonmail.ch mx ~all\'}', 8, 1),
(9, 'failed', -1, 'There is no indication that DKIM records exist for the given domain.', '', 9, 1),
(10, 'success', 0, 'A DMARC record was found for your domain.', '{\'record\': [\'v=DMARC1; p=none; rua=mailto:dmarc@bdsfx.com\']}', 10, 1),
(11, 'success', 0, 'The syntax of your DMARC record is valid.', '{\'record\': \'v=DMARC1; p=none; rua=mailto:dmarc@bdsfx.com\'}', 11, 1),
(12, 'failed', -1, 'The DMARC policy is set to none. No message is filtered.', '{\'policy\': \'none\'}', 15, 1),
(13, 'success', 0, 'All emails are being vetted by DMARC.', '', 16, 1),
(14, 'failed', -0.3, 'The destination domain is not setup to receive your reports.', '{\'RAF\': \'The domain used for reporting does not appear to have a DMARC record.\', \'RUF\': \'Forensics reporting is properly setup for your domain.\'}', 12, 1),
(15, 'success', 0, 'You are receiving aggregate reports for your domain.', '{\'rua\': \'mailto:dmarc@bdsfx.com\'}', 17, 1),
(16, 'failed', -0.1, 'You are not receiving forensics reports for your domain.', '', 18, 1),
(17, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'mail.protonmail.ch\', \'data\': \'success\'}, {\'host\': \'mailsec.protonmail.ch\', \'data\': \'success\'}]', 24, 1),
(18, 'failed', 0, 'STARTLS is disabled on the remote SMTP server.', '[{\'host\': \'mail.protonmail.ch\', \'data\': \'success\'}, {\'host\': \'mailsec.protonmail.ch\', \'data\': \'success\'}]', 28, 1),
(19, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mail.protonmail.ch\', \'data\': \'success\'}, {\'host\': \'mailsec.protonmail.ch\', \'data\': \'success\'}]', 25, 1),
(20, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'mail.protonmail.ch\', \'data\': \'success\'}, {\'host\': \'mailsec.protonmail.ch\', \'data\': \'success\'}]', 26, 1),
(21, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mail.protonmail.ch\', \'data\': \'success\'}, {\'host\': \'mailsec.protonmail.ch\', \'data\': \'success\'}]', 27, 1),
(22, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'mail.protonmail.ch\', \'data\': \'success\'}, {\'host\': \'mailsec.protonmail.ch\', \'data\': \'success\'}]', 29, 1),
(23, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 1),
(24, 'not_available', 0, '', '', 14, 1),
(25, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.securitytrain.me\'}', 19, 1),
(26, 'success', 0, 'The certificate is valid.', '', 21, 1),
(27, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 1),
(28, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.securitytrain.me\'}', 23, 1),
(29, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 1),
(30, 'failed', -0.2, 'The X-Frame-Options header is not sent by the server.', '', 30, 1),
(31, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server.', '', 31, 1),
(32, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 1),
(33, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server.', '', 33, 1),
(34, 'failed', -0.2, 'The Referrer-Policy header is not sent by the server.', '', 34, 1),
(35, 'failed', -0.1429, 'The Server header is sent by the server.', '{\'header\': \'Server\', \'value\': \'Apache/2.4.29\'}', 35, 1),
(36, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 1),
(37, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 1),
(38, 'success', 0, 'The target website is not sending any cookies.', '', 46, 1),
(39, 'not_available', 0, '', '', 38, 1),
(40, 'not_available', 0, '', '', 39, 1),
(41, 'not_available', 0, '', '', 40, 1),
(42, 'not_available', 0, '', '', 41, 1),
(43, 'not_available', 0, '', '', 42, 1),
(44, 'not_available', 0, '', '', 43, 1),
(45, 'not_available', 0, '', '', 44, 1),
(46, 'not_available', 0, '', '', 45, 1),
(47, 'success', 0.7, 'Your IP address(es) are not listed on any blacklist.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'159.65.115.59\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 1),
(48, 'success', 0.3, 'Your host has not been associated with malicious activities.', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 158, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 803, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 702, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 718, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 5008, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 600, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 277, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 281, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 287, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 52, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 48, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 51, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 51, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 50, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 4, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 79, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 48, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 498, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 701, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 274, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 257, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 258, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 275, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 766, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 609, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 628, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 620, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'securitytrain.me\', \'is-listed\': False}', 48, 1),
(49, 'not_available', 0, '', '', 49, 1),
(50, 'error', 0, 'This test requires manual review.', '{\'error\': \"Invalid response received from \'https://api.shodan.io/shodan/host/159.65.115.59?key=ggGl4i0SG48tnlp5ZjziW6c3vttQ7zfc\': 404\"}', 50, 1),
(51, 'success', 1, 'Your domain was not found in any known public leaks.', '{\'total\': 0, \'groups\': [], \'query\': \'securitytrain.me\'}', 51, 1),
(52, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 a:support.kadfire.com include:spf.messagelabs.com include:spf.protection.outlook.com include:spf.mandrillapp.com -all\']}', 1, 2),
(53, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 2),
(54, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 2),
(55, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 6}', 4, 2),
(56, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 2),
(57, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 2),
(58, 'success', 0, 'Your SPF record is too permissive.', '{\'policy\': \'-all\'}', 3, 2),
(59, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 a:support.kadfire.com include:spf.messagelabs.com include:spf.protection.outlook.com include:spf.mandrillapp.com -all\'}', 8, 2),
(60, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 2),
(61, 'failed', -1, 'No DMARC record was found.', '{\'records\': 0}', 10, 2),
(62, 'not_available', 0, '', '{\'records\': 0}', 11, 2),
(63, 'not_available', 0, '', '{\'records\': 0}', 12, 2),
(64, 'not_available', 0, '', '{\'records\': 0}', 15, 2),
(65, 'not_available', 0, '', '{\'records\': 0}', 16, 2),
(66, 'not_available', 0, '', '{\'records\': 0}', 17, 2),
(67, 'not_available', 0, '', '{\'records\': 0}', 18, 2),
(68, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[]', 29, 2),
(69, 'failed', -1, 'STARTLS is disabled on the remote SMTP server.', '[{\'host\': \'cluster8.eu.messagelabs.com\', \'data\': \'failed\'}, {\'host\': \'cluster8a.eu.messagelabs.com\', \'data\': \'failed\'}]', 28, 2),
(70, 'partial', -0.5, '', '[{\'host\': \'cluster8.eu.messagelabs.com\', \'data\': \'partial\'}, {\'host\': \'cluster8a.eu.messagelabs.com\', \'data\': \'not_available\'}]', 25, 2),
(71, 'not_available', 0, '', '[{\'host\': \'cluster8.eu.messagelabs.com\', \'data\': \'not_available\'}, {\'host\': \'cluster8a.eu.messagelabs.com\', \'data\': \'not_available\'}]', 26, 2),
(72, 'not_available', 0, '', '[{\'host\': \'cluster8.eu.messagelabs.com\', \'data\': \'not_available\'}, {\'host\': \'cluster8a.eu.messagelabs.com\', \'data\': \'not_available\'}]', 27, 2),
(73, 'success', 0, 'One or more SMTP server(s) were found.', '[\'cluster8.eu.messagelabs.com\', \'cluster8a.eu.messagelabs.com\']', 24, 2),
(74, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 2),
(75, 'not_available', 0, '', '', 14, 2),
(76, 'failed', -1, 'Unable to connect to the website via HTTPS.', '{\'website\': \'https://www.kadfire.com\'}', 19, 2),
(77, 'not_available', 0, '', '', 21, 2),
(78, 'not_available', 0, '', '', 22, 2),
(79, 'not_available', 0, '', '', 23, 2),
(80, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 2),
(81, 'failed', -0.2, 'The X-Frame-Options header is not sent by the server.', '', 30, 2),
(82, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server.', '', 31, 2),
(83, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 2),
(84, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server.', '', 33, 2),
(85, 'failed', -0.2, 'The Referrer-Policy header is not sent by the server.', '', 34, 2),
(86, 'failed', -0.1429, 'The Server header is sent by the server.', '{\'header\': \'Server\', \'value\': \'Microsoft-IIS/8.5\'}', 35, 2),
(87, 'partial', 0.5, 'The X-Powered-By header is returned and contains product information, but no version data was found.', '{\'header\': \'X-Powered-By\', \'value\': \'ASP.NET\'}', 36, 2),
(88, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 2),
(89, 'not_available', 0, '', '', 38, 2),
(90, 'not_available', 0, '', '', 39, 2),
(91, 'not_available', 0, '', '', 40, 2),
(92, 'not_available', 0, '', '', 41, 2),
(93, 'not_available', 0, '', '', 42, 2),
(94, 'not_available', 0, '', '', 43, 2),
(95, 'not_available', 0, '', '', 44, 2),
(96, 'not_available', 0, '', '', 45, 2),
(97, 'success', 0.7, 'Your IP address(es) are not listed on any blacklist.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'217.69.38.186\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 2),
(98, 'error', 0, 'This test requires manual review.', '{\'error\': \"HTTPSConnectionPool(host=\'neutrinoapi.com\', port=443): Read timed out. (read timeout=5.5)\"}', 48, 2),
(99, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 2),
(100, 'success', 1, 'No or few ports are exposed to the Internet.', '[80, 21, 445]', 50, 2),
(101, 'failed', -4.7, 'Your domain was found at least once in known, public data leaks.', '{\'total\': 57, \'groups\': [{\'leak\': \'adobe\', \'count\': 2}, {\'leak\': \'dropbox\', \'count\': 5}, {\'leak\': \'verificationsio\', \'count\': 18}, {\'leak\': \'customerslive\', \'count\': 2}, {\'leak\': \'the-collections\', \'count\': 9}, {\'leak\': \'data-contacts\', \'count\': 4}, {\'leak\': \'linkedin\', \'count\': 3}, {\'leak\': \'pdlcollection\', \'count\': 1}, {\'leak\': \'breachcompilation\', \'count\': 4}, {\'leak\': \'exploitin\', \'count\': 4}, {\'leak\': \'myfitnesspal\', \'count\': 2}, {\'leak\': \'antipublic\', \'count\': 1}, {\'leak\': \'badoo\', \'count\': 1}, {\'leak\': \'pcrai\', \'count\': 1}], \'query\': \'kadfire.com\'}', 51, 2),
(102, 'failed', -1, 'More than one (1) SPF record is defined for your domain.', '', 1, 3),
(103, 'not_available', 0, '', '', 6, 3),
(104, 'not_available', 0, '', '', 4, 3),
(105, 'not_available', 0, '', '', 2, 3),
(106, 'not_available', 0, '', '', 7, 3),
(107, 'not_available', 0, '', '', 5, 3),
(108, 'not_available', 0, '', '', 3, 3),
(109, 'not_available', 0, '', '', 8, 3),
(110, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 3),
(111, 'failed', -1, 'No DMARC record was found.', '{\'records\': 0}', 10, 3),
(112, 'not_available', 0, '', '{\'records\': 0}', 11, 3),
(113, 'not_available', 0, '', '{\'records\': 0}', 12, 3),
(114, 'not_available', 0, '', '{\'records\': 0}', 15, 3),
(115, 'not_available', 0, '', '{\'records\': 0}', 16, 3),
(116, 'not_available', 0, '', '{\'records\': 0}', 17, 3),
(117, 'not_available', 0, '', '{\'records\': 0}', 18, 3),
(118, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[]', 29, 3),
(119, 'failed', -1, 'STARTLS is disabled on the remote SMTP server.', '[{\'host\': \'cluster5.us.messagelabs.com\', \'data\': \'failed\'}, {\'host\': \'cluster5a.us.messagelabs.com\', \'data\': \'failed\'}]', 28, 3),
(120, 'partial', -0.5, '', '[{\'host\': \'cluster5.us.messagelabs.com\', \'data\': \'partial\'}, {\'host\': \'cluster5a.us.messagelabs.com\', \'data\': \'not_available\'}]', 25, 3),
(121, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'cluster5.us.messagelabs.com\', \'data\': \'success\'}, {\'host\': \'cluster5a.us.messagelabs.com\', \'data\': \'not_available\'}]', 26, 3),
(122, 'not_available', 0, '', '[{\'host\': \'cluster5.us.messagelabs.com\', \'data\': \'not_available\'}, {\'host\': \'cluster5a.us.messagelabs.com\', \'data\': \'not_available\'}]', 27, 3),
(123, 'success', 0, 'One or more SMTP server(s) were found.', '[\'cluster5.us.messagelabs.com\', \'cluster5a.us.messagelabs.com\', \'mime.jec.com\']', 24, 3),
(124, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 3),
(125, 'not_available', 0, '', '', 14, 3),
(126, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.jec.com\'}', 19, 3),
(127, 'success', 0, 'The certificate is valid.', '', 21, 3),
(128, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 3),
(129, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.jec.com\'}', 23, 3),
(130, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 3),
(131, 'failed', -0.2, 'The X-Frame-Options header is not sent by the server.', '', 30, 3),
(132, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server.', '', 31, 3),
(133, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 3),
(134, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server.', '', 33, 3),
(135, 'failed', -0.2, 'The Referrer-Policy header is not sent by the server.', '', 34, 3),
(136, 'failed', -0.1429, 'The Server header is sent by the server.', '{\'header\': \'Server\', \'value\': \'Microsoft-IIS/8.5\'}', 35, 3),
(137, 'partial', 0.5, 'The X-Powered-By header is returned and contains product information, but no version data was found.', '{\'header\': \'X-Powered-By\', \'value\': \'ASP.NET\'}', 36, 3),
(138, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 3),
(139, 'success', 0, 'The target website is not sending any cookies.', '', 46, 3),
(140, 'not_available', 0, '', '', 38, 3),
(141, 'not_available', 0, '', '', 39, 3),
(142, 'not_available', 0, '', '', 40, 3),
(143, 'not_available', 0, '', '', 41, 3),
(144, 'not_available', 0, '', '', 42, 3),
(145, 'not_available', 0, '', '', 43, 3),
(146, 'not_available', 0, '', '', 44, 3),
(147, 'not_available', 0, '', '', 45, 3),
(148, 'success', 0.7, 'Your IP address(es) are not listed on any blacklist.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'118.143.65.136\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 3),
(149, 'error', 0, 'This test requires manual review.', '{\'error\': \"HTTPSConnectionPool(host=\'neutrinoapi.com\', port=443): Read timed out. (read timeout=5.5)\"}', 48, 3),
(150, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 3),
(151, 'success', 1, 'No or few ports are exposed to the Internet.', '[443, 80]', 50, 3),
(152, 'failed', -55.900000000000006, 'Your domain was found at least once in known, public data leaks.', '{\'total\': 569, \'groups\': [{\'leak\': \'the-collections\', \'count\': 103}, {\'leak\': \'breachcompilation\', \'count\': 96}, {\'leak\': \'exploitin\', \'count\': 55}, {\'leak\': \'dropbox\', \'count\': 30}, {\'leak\': \'verificationsio\', \'count\': 64}, {\'leak\': \'linkedin\', \'count\': 96}, {\'leak\': \'antipublic\', \'count\': 62}, {\'leak\': \'pdlcollection\', \'count\': 23}, {\'leak\': \'adobe\', \'count\': 7}, {\'leak\': \'customerslive\', \'count\': 12}, {\'leak\': \'pcrai\', \'count\': 4}, {\'leak\': \'myfitnesspal\', \'count\': 3}, {\'leak\': \'datanleads\', \'count\': 2}, {\'leak\': \'badoo\', \'count\': 1}, {\'leak\': \'fling\', \'count\': 1}, {\'leak\': \'myspace\', \'count\': 4}, {\'leak\': \'tumblr\', \'count\': 2}, {\'leak\': \'data-contacts\', \'count\': 1}, {\'leak\': \'7k7k\', \'count\': 1}, {\'leak\': \'imesh\', \'count\': 1}, {\'leak\': \'disqus\', \'count\': 1}], \'query\': \'jec.com\'}', 51, 3),
(153, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 include:spf.protection.outlook.com -all\']}', 1, 4),
(154, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 4),
(155, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 4),
(156, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 1}', 4, 4),
(157, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 4),
(158, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 4),
(159, 'success', 0, 'Your SPF record is too permissive.', '{\'policy\': \'-all\'}', 3, 4),
(160, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 include:spf.protection.outlook.com -all\'}', 8, 4),
(161, 'failed', -1, 'There is no indication that DKIM records exist for the given domain.', '', 9, 4),
(162, 'failed', -1, 'No DMARC record was found.', '{\'records\': 0}', 10, 4),
(163, 'not_available', 0, '', '{\'records\': 0}', 11, 4),
(164, 'not_available', 0, '', '{\'records\': 0}', 12, 4),
(165, 'not_available', 0, '', '{\'records\': 0}', 15, 4),
(166, 'not_available', 0, '', '{\'records\': 0}', 16, 4),
(167, 'not_available', 0, '', '{\'records\': 0}', 17, 4),
(168, 'not_available', 0, '', '{\'records\': 0}', 18, 4),
(169, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'emf-com-sg.mail.protection.outlook.com\', \'data\': \'success\'}]', 24, 4),
(170, 'failed', 0, 'STARTLS is disabled on the remote SMTP server.', '[{\'host\': \'emf-com-sg.mail.protection.outlook.com\', \'data\': \'success\'}]', 28, 4),
(171, 'success', 0, 'The certificate is valid.', '[{\'host\': \'emf-com-sg.mail.protection.outlook.com\', \'data\': \'success\'}]', 25, 4),
(172, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'emf-com-sg.mail.protection.outlook.com\', \'data\': \'success\'}]', 26, 4),
(173, 'success', 0, 'The certificate is valid.', '[{\'host\': \'emf-com-sg.mail.protection.outlook.com\', \'data\': \'success\'}]', 27, 4),
(174, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'emf-com-sg.mail.protection.outlook.com\', \'data\': \'success\'}]', 29, 4),
(175, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 4),
(176, 'not_available', 0, '', '', 14, 4),
(177, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.emf.com.sg\'}', 19, 4),
(178, 'success', 0, 'The certificate is valid.', '', 21, 4),
(179, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 4),
(180, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.emf.com.sg\'}', 23, 4),
(181, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 4),
(182, 'failed', -0.2, 'The X-Frame-Options header is not sent by the server.', '', 30, 4),
(183, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server.', '', 31, 4),
(184, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 4),
(185, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server.', '', 33, 4),
(186, 'failed', -0.2, 'The Referrer-Policy header is not sent by the server.', '', 34, 4),
(187, 'failed', -0.7145, 'The Server header is sent by the server.', '{\'header\': \'Server\', \'value\': \'Apache\'}', 35, 4),
(188, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 4),
(189, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 4),
(190, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 2}', 46, 4),
(191, 'failed', -0.8, 'None of the cookie found has a valid syntax.', '[{\'invalid\': [{\'cookie\': \'qtrans_front_language\', \'value\': 1601975665, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}, {\'invalid\': [{\'cookie\': \'qtrans_front_language\', \'value\': 1601975666, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}]', 38, 4),
(192, 'failed', -0.8, 'None of the cookies found had the \'HttpOnly\' flag.', '[{\'unsecure\': [\'qtrans_front_language\']}, {\'unsecure\': [\'qtrans_front_language\']}]', 40, 4),
(193, 'failed', -0.8, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 4),
(194, 'success', 0, 'None of the cookies sent via unsecure HTTP had the \'Secure\' flag enabled.', '', 41, 4),
(195, 'success', 0, 'None of the cookies sent via unsecure HTTP are prefixed.', '', 39, 4),
(196, 'failed', -0.4, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'qtrans_front_language\']}', 43, 4),
(197, 'not_available', 0, '', '', 44, 4),
(198, 'not_available', 0, '', '', 45, 4),
(199, 'success', 0.7, 'Your IP address(es) are not listed on any blacklist.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'103.9.100.52\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 4),
(200, 'error', 0, 'This test requires manual review.', '{\'error\': \"HTTPSConnectionPool(host=\'neutrinoapi.com\', port=443): Read timed out. (read timeout=5.5)\"}', 48, 4),
(201, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 4),
(202, 'failed', -1, 'A large number of services are exposed to the Internet.', '[443, 2096, 80, 110, 26, 465, 2082, 143, 3306, 2086, 995, 2077, 993, 2087, 2095, 21, 2083]', 50, 4),
(203, 'failed', -2, 'Your domain was found at least once in known, public data leaks.', '{\'total\': 30, \'groups\': [{\'leak\': \'adobe\', \'count\': 1}, {\'leak\': \'antipublic\', \'count\': 5}, {\'leak\': \'breachcompilation\', \'count\': 6}, {\'leak\': \'neopets\', \'count\': 4}, {\'leak\': \'the-collections\', \'count\': 5}, {\'leak\': \'linkedin\', \'count\': 3}, {\'leak\': \'customerslive\', \'count\': 2}, {\'leak\': \'dropbox\', \'count\': 3}, {\'leak\': \'pdlcollection\', \'count\': 1}], \'query\': \'emf.com.sg\'}', 51, 4),
(204, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 a mx ip4:3.1.152.20 ip4:203.142.17.222 ip4:13.228.127.53 ip4:173.243.134.66 ip4:203.92.80.204 -all\']}', 1, 5),
(205, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 5),
(206, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 5),
(207, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 0}', 4, 5),
(208, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 5),
(209, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 1}', 5, 5),
(210, 'success', 0, 'Your SPF record is too permissive.', '{\'policy\': \'-all\'}', 3, 5),
(211, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 a mx ip4:3.1.152.20 ip4:203.142.17.222 ip4:13.228.127.53 ip4:173.243.134.66 ip4:203.92.80.204 -all\'}', 8, 5),
(212, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 5),
(213, 'failed', -1, 'No DMARC record was found.', '{\'records\': 0}', 10, 5),
(214, 'not_available', 0, '', '{\'records\': 0}', 11, 5),
(215, 'not_available', 0, '', '{\'records\': 0}', 12, 5),
(216, 'not_available', 0, '', '{\'records\': 0}', 15, 5),
(217, 'not_available', 0, '', '{\'records\': 0}', 16, 5),
(218, 'not_available', 0, '', '{\'records\': 0}', 17, 5),
(219, 'not_available', 0, '', '{\'records\': 0}', 18, 5),
(220, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'gw4066.fortimail.com\', \'data\': \'success\'}]', 24, 5),
(221, 'failed', 0, 'STARTLS is disabled on the remote SMTP server.', '[{\'host\': \'gw4066.fortimail.com\', \'data\': \'success\'}]', 28, 5),
(222, 'success', 0, 'The certificate is valid.', '[{\'host\': \'gw4066.fortimail.com\', \'data\': \'success\'}]', 25, 5),
(223, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'gw4066.fortimail.com\', \'data\': \'success\'}]', 26, 5),
(224, 'success', 0, 'The certificate is valid.', '[{\'host\': \'gw4066.fortimail.com\', \'data\': \'success\'}]', 27, 5),
(225, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'gw4066.fortimail.com\', \'data\': \'success\'}]', 29, 5),
(226, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 5),
(227, 'not_available', 0, '', '', 14, 5),
(228, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.ezlink.com.sg\'}', 19, 5),
(229, 'failed', -1, 'The certificate is invalid.', '{\'self-signed\': False, \'is-expired\': False, \'invalid-cn\': True}', 21, 5),
(230, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 5),
(231, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.ezlink.com.sg\'}', 23, 5),
(232, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 5),
(233, 'failed', -0.2, 'The X-Frame-Options header is not sent by the server.', '', 30, 5),
(234, 'success', 0, 'The X-XSS-Protection header is returned and is properly configured.', '{\'header\': \'X-Xss-Protection\', \'value\': \'1; mode=block\'}', 31, 5),
(235, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '{\'header\': \'X-Content-Type-Options\', \'value\': \'nosniffâ\\x80\\x9d\'}', 32, 5),
(236, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server.', '', 33, 5),
(237, 'failed', -0.2, 'The Referrer-Policy header is not sent by the server.', '', 34, 5),
(238, 'failed', -0.7145, 'The Server header is sent by the server.', '{\'header\': \'Server\', \'value\': \'Apache\'}', 35, 5),
(239, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 5),
(240, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 5),
(241, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 6}', 46, 5),
(242, 'failed', -0.6, 'None of the cookie found has a valid syntax.', '[{\'invalid\': [{\'cookie\': \'visid_incap_1848920\', \'value\': 1601891106, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}, {\'invalid\': [{\'cookie\': \'visid_incap_1848920\', \'value\': 1601891105, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}, {\'cookie\': \'wYv\', \'value\': 1570450490, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}]', 38, 5),
(243, 'failed', -0.8, 'None of the cookies found had the \'HttpOnly\' flag.', '[{\'unsecure\': [\'incap_ses_220_1848920\', \'visid_incap_1848920\']}, {\'unsecure\': [\'incap_ses_220_1848920\', \'visid_incap_1848920\', \'PHPSESSID\', \'wYv\']}]', 40, 5),
(244, 'failed', -0.8, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 5),
(245, 'success', 0, 'None of the cookies sent via unsecure HTTP had the \'Secure\' flag enabled.', '', 41, 5),
(246, 'success', 0, 'None of the cookies sent via unsecure HTTP are prefixed.', '', 39, 5),
(247, 'failed', -0.4, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'incap_ses_220_1848920\', \'visid_incap_1848920\', \'PHPSESSID\', \'wYv\']}', 43, 5),
(248, 'not_available', 0, '', '', 44, 5),
(249, 'not_available', 0, '', '', 45, 5),
(250, 'error', 0, '', '{\'error\': \"\'NoneType\' object has no attribute \'split\'\"}', 47, 5),
(251, 'error', 0, 'This test requires manual review.', '{\'error\': \"HTTPSConnectionPool(host=\'neutrinoapi.com\', port=443): Read timed out. (read timeout=5.5)\"}', 48, 5),
(252, 'error', 0, 'This test requires manual review.', '{\'error\': \"Failed to resolve host \'ezlink.com.sg\' to an IP address.\"}', 49, 5),
(253, 'error', 0, 'This test requires manual review.', '{\'error\': \"Failed to resolve host \'ezlink.com.sg\' to an IP address.\"}', 50, 5),
(254, 'failed', -1.1, 'Your domain was found at least once in known, public data leaks.', '{\'total\': 21, \'groups\': [{\'leak\': \'myfitnesspal\', \'count\': 1}, {\'leak\': \'the-collections\', \'count\': 9}, {\'leak\': \'linkedin\', \'count\': 3}, {\'leak\': \'pdlcollection\', \'count\': 1}, {\'leak\': \'antipublic\', \'count\': 1}, {\'leak\': \'breachcompilation\', \'count\': 2}, {\'leak\': \'exploitin\', \'count\': 1}, {\'leak\': \'verificationsio\', \'count\': 1}, {\'leak\': \'customerslive\', \'count\': 2}], \'query\': \'ezlink.com.sg\'}', 51, 5),
(255, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 include:_spf.m1net.com.sg\']}', 1, 6),
(256, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 6),
(257, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 6),
(258, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 0}', 4, 6),
(259, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 6),
(260, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 6),
(261, 'failed', -1, 'Your SPF record prevents unrestricted use of the domain.', '', 3, 6),
(262, 'failed', -0.2, 'Some data was found following the \'all\' mechanism.', '{\'record\': \'v=spf1 include:_spf.m1net.com.sg\'}', 8, 6),
(263, 'failed', -1, 'There is no indication that DKIM records exist for the given domain.', '', 9, 6),
(264, 'failed', -1, 'No DMARC record was found.', '{\'records\': 0}', 10, 6),
(265, 'not_available', 0, '', '{\'records\': 0}', 11, 6),
(266, 'not_available', 0, '', '{\'records\': 0}', 12, 6),
(267, 'not_available', 0, '', '{\'records\': 0}', 15, 6),
(268, 'not_available', 0, '', '{\'records\': 0}', 16, 6),
(269, 'not_available', 0, '', '{\'records\': 0}', 17, 6),
(270, 'not_available', 0, '', '{\'records\': 0}', 18, 6),
(271, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'mxgate.m1net.com.sg\', \'data\': \'success\'}]', 24, 6),
(272, 'failed', 0, 'STARTLS is disabled on the remote SMTP server.', '[{\'host\': \'mxgate.m1net.com.sg\', \'data\': \'success\'}]', 28, 6),
(273, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mxgate.m1net.com.sg\', \'data\': \'success\'}]', 25, 6),
(274, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'mxgate.m1net.com.sg\', \'data\': \'success\'}]', 26, 6),
(275, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mxgate.m1net.com.sg\', \'data\': \'success\'}]', 27, 6),
(276, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'mxgate.m1net.com.sg\', \'data\': \'success\'}]', 29, 6),
(277, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 6),
(278, 'not_available', 0, '', '', 14, 6),
(279, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.alex.world\'}', 19, 6),
(280, 'failed', -1, 'The certificate is invalid.', '{\'self-signed\': False, \'is-expired\': False, \'invalid-cn\': True}', 21, 6),
(281, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 6),
(282, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.alex.world\'}', 23, 6),
(283, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 6),
(284, 'success', 0, 'The X-Frame-Options header is returned and is properly configured.', '{\'header\': \'X-Frame-Options\', \'value\': \'SAMEORIGIN\'}', 30, 6),
(285, 'success', 0, 'The X-XSS-Protection header is returned and is properly configured.', '{\'header\': \'X-Xss-Protection\', \'value\': \'1; mode=block\'}', 31, 6),
(286, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '{\'header\': \'X-Content-Type-Options\', \'value\': \'nosniff\'}', 32, 6),
(287, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server.', '', 33, 6),
(288, 'failed', -0.2, 'The Referrer-Policy header is not sent by the server.', '', 34, 6),
(289, 'failed', -0.7145, 'The Server header is sent by the server.', '{\'header\': \'Server\', \'value\': \'cloudflare\'}', 35, 6),
(290, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 6),
(291, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 6),
(292, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 2}', 46, 6),
(293, 'failed', -0.3, 'None of the cookie found has a valid syntax.', '[\'\', {\'invalid\': [{\'cookie\': \'__cfduid\', \'value\': 1601975708, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}]', 38, 6),
(294, 'success', 0, 'All of the cookies sent via HTTP uses the \'HttpOnly\'.', '[\'\', \'\']', 40, 6),
(295, 'failed', -0.4, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 6),
(296, 'not_available', 0, '', '', 41, 6),
(297, 'not_available', 0, '', '', 39, 6),
(298, 'failed', -0.3, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'_alex_session\']}', 43, 6),
(299, 'not_available', 0, '', '', 44, 6),
(300, 'not_available', 0, '', '', 45, 6),
(301, 'success', 0.7, 'Your IP address(es) are not listed on any blacklist.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'104.31.84.4\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 6),
(302, 'success', 0.3, 'Your host has not been associated with malicious activities.', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 298, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 624, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 280, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 784, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 799, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 592, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 146, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 144, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 143, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 139, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 139, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 138, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 135, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 135, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 599, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 578, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 571, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 5018, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 271, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 768, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 768, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 765, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 765, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 1142, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 66, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 255, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 224, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'alex.world\', \'is-listed\': False}', 48, 6),
(303, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 6),
(304, 'partial', 0.10000000000000009, '', '[443, 80, 2083, 8443, 2086, 8880, 2082, 8080, 2052]', 50, 6),
(305, 'success', 1, 'Your domain was not found in any known public leaks.', '{\'total\': 0, \'groups\': [], \'query\': \'alex.world\'}', 51, 6),
(306, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 ip4:93.191.26.224/29 include:spf.protection.outlook.com include:spf.sotaconnect.net ~all\']}', 1, 7),
(307, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 7),
(308, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 7),
(309, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 2}', 4, 7),
(310, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 7),
(311, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 7),
(312, 'success', 0, 'Your SPF record is too permissive.', '{\'policy\': \'~all\'}', 3, 7),
(313, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 ip4:93.191.26.224/29 include:spf.protection.outlook.com include:spf.sotaconnect.net ~all\'}', 8, 7),
(314, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 7),
(315, 'failed', -1, 'No DMARC record was found.', '{\'records\': 0}', 10, 7),
(316, 'not_available', 0, '', '{\'records\': 0}', 11, 7),
(317, 'not_available', 0, '', '{\'records\': 0}', 12, 7),
(318, 'not_available', 0, '', '{\'records\': 0}', 15, 7),
(319, 'not_available', 0, '', '{\'records\': 0}', 16, 7),
(320, 'not_available', 0, '', '{\'records\': 0}', 17, 7),
(321, 'not_available', 0, '', '{\'records\': 0}', 18, 7),
(322, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'mx-es2.sotaconnect.net\', \'data\': \'success\'}, {\'host\': \'mx-es1.sotaconnect.net\', \'data\': \'success\'}]', 24, 7),
(323, 'failed', 0, 'STARTLS is disabled on the remote SMTP server.', '[{\'host\': \'mx-es2.sotaconnect.net\', \'data\': \'success\'}, {\'host\': \'mx-es1.sotaconnect.net\', \'data\': \'success\'}]', 28, 7),
(324, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mx-es2.sotaconnect.net\', \'data\': \'success\'}, {\'host\': \'mx-es1.sotaconnect.net\', \'data\': \'success\'}]', 25, 7),
(325, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'mx-es2.sotaconnect.net\', \'data\': \'success\'}, {\'host\': \'mx-es1.sotaconnect.net\', \'data\': \'success\'}]', 26, 7),
(326, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mx-es2.sotaconnect.net\', \'data\': \'success\'}, {\'host\': \'mx-es1.sotaconnect.net\', \'data\': \'success\'}]', 27, 7),
(327, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'mx-es2.sotaconnect.net\', \'data\': \'success\'}, {\'host\': \'mx-es1.sotaconnect.net\', \'data\': \'success\'}]', 29, 7),
(328, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 7),
(329, 'not_available', 0, '', '', 14, 7),
(330, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.grpgroup.co.uk\'}', 19, 7),
(331, 'success', 0, 'The certificate is valid.', '', 21, 7),
(332, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 7),
(333, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.grpgroup.co.uk\'}', 23, 7),
(334, 'success', 0, 'A HSTS header was provided from the server.', '{\'header\': \'Strict-Transport-Security\', \'value\': \'max-age=31536000; includeSubDomains\'}', 20, 7);
INSERT INTO `reports_testresult` (`id`, `state`, `score`, `message`, `data`, `definition_id`, `report_id`) VALUES
(335, 'success', 0, 'The X-Frame-Options header is returned and is properly configured.', '{\'header\': \'X-Frame-Options\', \'value\': \'SAMEORIGIN\'}', 30, 7),
(336, 'success', 0, 'The X-XSS-Protection header is returned and is properly configured.', '{\'header\': \'X-Xss-Protection\', \'value\': \'1; mode=block\'}', 31, 7),
(337, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '{\'header\': \'X-Content-Type-Options\', \'value\': \'nosniff\'}', 32, 7),
(338, 'failed', -0.1, 'The Content Security Policy (CSP) was not sent by the server.', '{\'header\': \'Content-Security-Policy\', \'value\': \"block-all-mixed-content; base-uri \'none\'; default-src \'none\'; frame-ancestors \'none\'; frame-src player.vimeo.com www.google.com www.youtube.com; object-src \'self\'; media-src \'self\'; form-action \'self\'; script-src \'self\' \'nonce-78nNfsFCoSMymhNlvK1rQOGge0HoG75QbSHS8/2GluA=\' bam.nr-data.net js-agent.newrelic.com vimeo.com player.vimeo.com maps.googleapis.com ssl.google-analytics.com www.googleadservices.com www.google-analytics.com www.google.com/recaptcha/ www.googletagmanager.com www.gstatic.com/recaptcha/; connect-src \'self\' our.umbraco.com skyfire.vimeocdn.com maps.googleapis.com; img-src * data:; style-src \'self\' \'unsafe-inline\' maps.googleapis.com fonts.googleapis.com; font-src \'self\' fonts.gstatic.com fonts.googleapis.com data:;\"}', 33, 7),
(339, 'success', 0, 'The Referrer-Policy header is returned and is properly configured.', '{\'header\': \'Referrer-Policy\', \'value\': \'strict-origin-when-cross-origin\'}', 34, 7),
(340, 'failed', -0.7145, 'The Server header is sent by the server.', '{\'header\': \'Server\', \'value\': \'nginx\'}', 35, 7),
(341, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 7),
(342, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 7),
(343, 'success', 0, 'The target website is not sending any cookies.', '', 46, 7),
(344, 'not_available', 0, '', '', 38, 7),
(345, 'not_available', 0, '', '', 39, 7),
(346, 'not_available', 0, '', '', 40, 7),
(347, 'not_available', 0, '', '', 41, 7),
(348, 'not_available', 0, '', '', 42, 7),
(349, 'not_available', 0, '', '', 43, 7),
(350, 'not_available', 0, '', '', 44, 7),
(351, 'not_available', 0, '', '', 45, 7),
(352, 'success', 0.7, 'Your IP address(es) are not listed on any blacklist.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'35.246.91.140\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 7),
(353, 'success', 0.3, 'Your host has not been associated with malicious activities.', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 410, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 560, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 1115, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 299, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 243, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 536, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1731, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1729, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1727, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 225, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 225, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 224, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 224, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 223, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 231, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 269, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 262, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 747, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 214, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 228, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 227, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 226, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 226, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 509, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 99, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 209, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 208, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'grpgroup.co.uk\', \'is-listed\': False}', 48, 7),
(354, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 7),
(355, 'success', 1, 'No or few ports are exposed to the Internet.', '[80, 443]', 50, 7),
(356, 'partial', 0.7, '', '{\'total\': 3, \'groups\': [{\'leak\': \'myfitnesspal\', \'count\': 1}, {\'leak\': \'verificationsio\', \'count\': 1}, {\'leak\': \'customerslive\', \'count\': 1}], \'query\': \'grpgroup.co.uk\'}', 51, 7),
(357, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 include:support.gov.sg include:spf2.mom.gov.sg include:spf.mandrillapp.com -all\']}', 1, 8),
(358, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 8),
(359, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 8),
(360, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 9}', 4, 8),
(361, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 8),
(362, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 8),
(363, 'success', 0, 'Your SPF record is too permissive.', '{\'policy\': \'-all\'}', 3, 8),
(364, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 include:support.gov.sg include:spf2.mom.gov.sg include:spf.mandrillapp.com -all\'}', 8, 8),
(365, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 8),
(366, 'failed', -1, 'No DMARC record was found.', '{\'records\': 0}', 10, 8),
(367, 'not_available', 0, '', '{\'records\': 0}', 11, 8),
(368, 'not_available', 0, '', '{\'records\': 0}', 12, 8),
(369, 'not_available', 0, '', '{\'records\': 0}', 15, 8),
(370, 'not_available', 0, '', '{\'records\': 0}', 16, 8),
(371, 'not_available', 0, '', '{\'records\': 0}', 17, 8),
(372, 'not_available', 0, '', '{\'records\': 0}', 18, 8),
(373, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'mx2.sgict.gov.sg\', \'data\': \'success\'}, {\'host\': \'mx1.sgict.gov.sg\', \'data\': \'success\'}, {\'host\': \'mx4.sgict.gov.sg\', \'data\': \'success\'}]', 24, 8),
(374, 'failed', 0, 'STARTLS is disabled on the remote SMTP server.', '[{\'host\': \'mx2.sgict.gov.sg\', \'data\': \'success\'}, {\'host\': \'mx1.sgict.gov.sg\', \'data\': \'success\'}, {\'host\': \'mx4.sgict.gov.sg\', \'data\': \'success\'}]', 28, 8),
(375, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mx2.sgict.gov.sg\', \'data\': \'success\'}, {\'host\': \'mx1.sgict.gov.sg\', \'data\': \'success\'}, {\'host\': \'mx4.sgict.gov.sg\', \'data\': \'success\'}]', 25, 8),
(376, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'mx2.sgict.gov.sg\', \'data\': \'success\'}, {\'host\': \'mx1.sgict.gov.sg\', \'data\': \'success\'}, {\'host\': \'mx4.sgict.gov.sg\', \'data\': \'success\'}]', 26, 8),
(377, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mx2.sgict.gov.sg\', \'data\': \'success\'}, {\'host\': \'mx1.sgict.gov.sg\', \'data\': \'success\'}, {\'host\': \'mx4.sgict.gov.sg\', \'data\': \'success\'}]', 27, 8),
(378, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'mx2.sgict.gov.sg\', \'data\': \'success\'}, {\'host\': \'mx1.sgict.gov.sg\', \'data\': \'success\'}, {\'host\': \'mx4.sgict.gov.sg\', \'data\': \'success\'}]', 29, 8),
(379, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 8),
(380, 'not_available', 0, '', '', 14, 8),
(381, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.mom.gov.sg\'}', 19, 8),
(382, 'success', 0, 'The certificate is valid.', '', 21, 8),
(383, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 8),
(384, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.mom.gov.sg\'}', 23, 8),
(385, 'success', 0, 'A HSTS header was provided from the server.', '{\'header\': \'Strict-Transport-Security\', \'value\': \'max-age=31536000; includeSubDomains;, max-age=31536000; includeSubDomains;\'}', 20, 8),
(386, 'success', 0, 'The X-Frame-Options header is returned and is properly configured.', '{\'header\': \'X-Frame-Options\', \'value\': \'SAMEORIGIN, SAMEORIGIN\'}', 30, 8),
(387, 'success', 0, 'The X-XSS-Protection header is returned and is properly configured.', '{\'header\': \'X-Xss-Protection\', \'value\': \'1; mode=block\'}', 31, 8),
(388, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '{\'header\': \'X-Content-Type-Options\', \'value\': \'nosniff\'}', 32, 8),
(389, 'success', 0, 'The Content Security Policy header is returned and is properly configured.', '{\'header\': \'Content-Security-Policy\', \'value\': \"default-src \'self\'; style-src \'self\' \'unsafe-inline\' fonts.googleapis.com https://*.cloudfront.net; script-src \'self\' \'unsafe-inline\' www.google-analytics.com ajax.googleapis.com *.webengage.com https://www.googletagmanager.com *.amazonaws.com assets.adobedtm.com wogadobeanalytics.sc.omtrdc.net *.facebook.net *.bizographics.com https://va.ecitizen.gov.sg https://www.facebook.com https://*.cloudfront.net https://px.ads.linkedin.com \'unsafe-eval\'; connect-src \'self\' https://www.google-analytics.com *.webengage.com *.webengage.co https://www.googletagmanager.com *.amazonaws.com dpm.demdex.net wogadobeanalytics.sc.omtrdc.net *.facebook.net *.bizographics.com https://stats.g.doubleclick.net https://www.facebook.com https://*.cloudfront.net https://px.ads.linkedin.com; img-src * data:; media-src *; font-src * data: ; frame-src *\"}', 33, 8),
(390, 'failed', -0.2, 'The Referrer-Policy header is not sent by the server.', '', 34, 8),
(391, 'success', 0, 'The Server header is not returned by the server.', '', 35, 8),
(392, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 8),
(393, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 8),
(394, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 6}', 46, 8),
(395, 'failed', -0.3, 'None of the cookie found has a valid syntax.', '[\'\', {\'invalid\': [{\'cookie\': \'visid_incap_130760\', \'value\': 1601978686, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}, {\'cookie\': \'SC_ANALYTICS_GLOBAL_COOKIE\', \'value\': 1885811172, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}]', 38, 8),
(396, 'failed', -0.3, 'None of the cookies found had the \'HttpOnly\' flag.', '[\'\', {\'unsecure\': [\'incap_ses_488_130760\', \'visid_incap_130760\']}]', 40, 8),
(397, 'failed', -0.4, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 8),
(398, 'not_available', 0, '', '', 41, 8),
(399, 'not_available', 0, '', '', 39, 8),
(400, 'failed', -0.3, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'incap_ses_488_130760\', \'visid_incap_130760\', \'BIGipServerPOOL_T00189BENW006_80\']}', 43, 8),
(401, 'not_available', 0, '', '', 44, 8),
(402, 'not_available', 0, '', '', 45, 8),
(403, 'success', 0.7, 'Your IP address(es) are not listed on any blacklist.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'103.28.249.191\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 8),
(404, 'success', 0.3, 'Your host has not been associated with malicious activities.', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 1175, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 1600, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 1169, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 1164, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 1163, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 1161, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1160, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1150, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1143, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 1142, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 1139, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 1139, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 1138, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 1138, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 1290, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 1282, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 1274, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 2038, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 1121, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 1121, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 1117, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 1116, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 1116, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 1801, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 512, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 1110, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 1108, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'mom.gov.sg\', \'is-listed\': False}', 48, 8),
(405, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 8),
(406, 'failed', -1, 'A large number of services are exposed to the Internet.', '[81, 8009, 2083, 25, 5269, 9009, 10443, 1935, 5901, 7779, 9100, 389, 9001, 7777, 2222, 8080, 1024, 9002, 8098, 1234, 1111, 8086, 3299, 8081, 12345, 9080, 9000, 82, 6001, 8888, 8443, 80, 4022, 6000, 9443, 5007, 2087, 7001]', 50, 8),
(407, 'failed', -55.5, 'Your domain was found at least once in known, public data leaks.', '{\'total\': 565, \'groups\': [{\'leak\': \'verificationsio\', \'count\': 83}, {\'leak\': \'customerslive\', \'count\': 13}, {\'leak\': \'adobe\', \'count\': 5}, {\'leak\': \'breachcompilation\', \'count\': 94}, {\'leak\': \'linkedin\', \'count\': 107}, {\'leak\': \'pdlcollection\', \'count\': 26}, {\'leak\': \'the-collections\', \'count\': 68}, {\'leak\': \'antipublic\', \'count\': 45}, {\'leak\': \'exploitin\', \'count\': 26}, {\'leak\': \'disqus\', \'count\': 13}, {\'leak\': \'adaptio\', \'count\': 36}, {\'leak\': \'dropbox\', \'count\': 35}, {\'leak\': \'badoo\', \'count\': 6}, {\'leak\': \'myfitnesspal\', \'count\': 2}, {\'leak\': \'neopets\', \'count\': 2}, {\'leak\': \'bitly\', \'count\': 1}, {\'leak\': \'myspace\', \'count\': 1}, {\'leak\': \'pastebin\', \'count\': 2}], \'query\': \'mom.gov.sg\'}', 51, 8),
(408, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 ip4:119.81.118.5 +a +mx +ip4:119.81.8.68 +ip4:119.81.118.6 +ip4:132.147.96.140 +ip4:119.81.111.94 ~all\']}', 1, 9),
(409, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 9),
(410, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 9),
(411, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 0}', 4, 9),
(412, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 9),
(413, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 9),
(414, 'success', 0, 'Your SPF record is too permissive.', '{\'policy\': \'~all\'}', 3, 9),
(415, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 ip4:119.81.118.5 +a +mx +ip4:119.81.8.68 +ip4:119.81.118.6 +ip4:132.147.96.140 +ip4:119.81.111.94 ~all\'}', 8, 9),
(416, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 9),
(417, 'failed', -1, 'No DMARC record was found.', '{\'records\': 0}', 10, 9),
(418, 'not_available', 0, '', '{\'records\': 0}', 11, 9),
(419, 'not_available', 0, '', '{\'records\': 0}', 12, 9),
(420, 'not_available', 0, '', '{\'records\': 0}', 15, 9),
(421, 'not_available', 0, '', '{\'records\': 0}', 16, 9),
(422, 'not_available', 0, '', '{\'records\': 0}', 17, 9),
(423, 'not_available', 0, '', '{\'records\': 0}', 18, 9),
(424, 'failed', -1, 'No SMTP server was found based on the given domain.', '', 24, 9),
(425, 'not_available', 0, '', '', 28, 9),
(426, 'not_available', 0, '', '', 25, 9),
(427, 'not_available', 0, '', '', 26, 9),
(428, 'not_available', 0, '', '', 27, 9),
(429, 'not_available', 0, '', '', 29, 9),
(430, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 9),
(431, 'not_available', 0, '', '', 14, 9),
(432, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.dezignformat.com\'}', 19, 9),
(433, 'error', 0, '', '{\'error\': \'[SSL: CERTIFICATE_VERIFY_FAILED] certificate verify failed (_ssl.c:852)\'}', 21, 9),
(434, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 9),
(435, 'failed', -1, 'The request was not redirected to the HTTPS version.', '{\'website\': \'http://www.dezignformat.com\'}', 23, 9),
(436, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 9),
(437, 'failed', -0.2, 'The X-Frame-Options header is not sent by the server.', '', 30, 9),
(438, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server.', '', 31, 9),
(439, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 9),
(440, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server.', '', 33, 9),
(441, 'failed', -0.2, 'The Referrer-Policy header is not sent by the server.', '', 34, 9),
(442, 'failed', -0.7145, 'The Server header is sent by the server.', '{\'header\': \'Server\', \'value\': \'nginx\'}', 35, 9),
(443, 'partial', 0.5, 'The X-Powered-By header is returned and contains product information, but no version data was found.', '{\'header\': \'X-Powered-By\', \'value\': \'PleskLin\'}', 36, 9),
(444, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 9),
(445, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 2}', 46, 9),
(446, 'failed', -0.8, 'None of the cookie found has a valid syntax.', '[{\'invalid\': [{\'cookie\': \'wfvt_70024754\', \'value\': 1570525283, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}, {\'invalid\': [{\'cookie\': \'wfvt_2522718761\', \'value\': 1570525284, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}]', 38, 9),
(447, 'success', 0, 'All of the cookies sent via HTTP uses the \'HttpOnly\'.', '[\'\', \'\']', 40, 9),
(448, 'failed', -0.8, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 9),
(449, 'success', 0, 'None of the cookies sent via unsecure HTTP had the \'Secure\' flag enabled.', '', 41, 9),
(450, 'success', 0, 'None of the cookies sent via unsecure HTTP are prefixed.', '', 39, 9),
(451, 'failed', -0.4, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'wfvt_2522718761\']}', 43, 9),
(452, 'not_available', 0, '', '', 44, 9),
(453, 'not_available', 0, '', '', 45, 9),
(454, 'success', 0.7, 'Your IP address(es) are not listed on any blacklist.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'103.26.40.75\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 9),
(455, 'success', 0.3, 'Your host has not been associated with malicious activities.', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 165, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 692, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 703, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 314, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 267, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 484, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1715, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1712, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1760, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 102, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 101, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 98, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 98, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 97, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 558, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 558, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 538, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 622, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 1118, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 236, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 237, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 233, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 232, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 463, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 209, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 1106, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 1098, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'dezignformat.com\', \'is-listed\': False}', 48, 9),
(456, 'partial', 0.7000000000000001, 'Some vulnerabilities were potentially identified.', '[\'CVE-2018-15919\', \'CVE-2017-15906\']', 49, 9),
(457, 'failed', -1, 'A large number of services are exposed to the Internet.', '[2002, 25, 993, 143, 53, 80, 443, 21, 8880, 587, 3306, 8443]', 50, 9),
(458, 'success', 1, 'Your domain was not found in any known public leaks.', '{\'total\': 0, \'groups\': [], \'query\': \'dezignformat.com\'}', 51, 9),
(459, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 +ip4:210.160.252.171 +ip4:210.160.252.172 +ip4:192.157.179.201 +ip4:192.157.179.202 +ip4:192.91.135.107\" \" +ip4:155.56.221.13 +ip4:155.56.221.14 +ip4:1.1.114.0/25 +ip4:124.109.181.7 +ip4:219.106.250.246 include:spf.protection.outlook.com +ip4:52.23.49.7 +ip4:34.192.86.36 include:spf.messagelabs.com ?all\']}', 1, 10),
(460, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 10),
(461, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 10),
(462, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 4}', 4, 10),
(463, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 10),
(464, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 10),
(465, 'failed', -1, 'Your SPF record prevents unrestricted use of the domain.', '{\'policy\': \'?all\'}', 3, 10),
(466, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 +ip4:210.160.252.171 +ip4:210.160.252.172 +ip4:192.157.179.201 +ip4:192.157.179.202 +ip4:192.91.135.107\" \" +ip4:155.56.221.13 +ip4:155.56.221.14 +ip4:1.1.114.0/25 +ip4:124.109.181.7 +ip4:219.106.250.246 include:spf.protection.outlook.com +ip4:52.23.49.7 +ip4:34.192.86.36 include:spf.messagelabs.com ?all\'}', 8, 10),
(467, 'failed', -1, 'There is no indication that DKIM records exist for the given domain.', '', 9, 10),
(468, 'failed', -1, 'No DMARC record was found.', '{\'records\': 0}', 10, 10),
(469, 'not_available', 0, '', '{\'records\': 0}', 11, 10),
(470, 'not_available', 0, '', '{\'records\': 0}', 12, 10),
(471, 'not_available', 0, '', '{\'records\': 0}', 15, 10),
(472, 'not_available', 0, '', '{\'records\': 0}', 16, 10),
(473, 'not_available', 0, '', '{\'records\': 0}', 17, 10),
(474, 'not_available', 0, '', '{\'records\': 0}', 18, 10),
(475, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'renesas-com.mail.protection.outlook.com\', \'data\': \'success\'}]', 24, 10),
(476, 'failed', 0, 'STARTLS is disabled on the remote SMTP server.', '[{\'host\': \'renesas-com.mail.protection.outlook.com\', \'data\': \'success\'}]', 28, 10),
(477, 'success', 0, 'The certificate is valid.', '[{\'host\': \'renesas-com.mail.protection.outlook.com\', \'data\': \'success\'}]', 25, 10),
(478, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'renesas-com.mail.protection.outlook.com\', \'data\': \'success\'}]', 26, 10),
(479, 'success', 0, 'The certificate is valid.', '[{\'host\': \'renesas-com.mail.protection.outlook.com\', \'data\': \'success\'}]', 27, 10),
(480, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'renesas-com.mail.protection.outlook.com\', \'data\': \'success\'}]', 29, 10),
(481, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 10),
(482, 'not_available', 0, '', '', 14, 10),
(483, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.renesas.com\'}', 19, 10),
(484, 'success', 0, 'The certificate is valid.', '', 21, 10),
(485, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 10),
(486, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.renesas.com\'}', 23, 10),
(487, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 10),
(488, 'failed', -0.2, 'The X-Frame-Options header is not sent by the server.', '', 30, 10),
(489, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server.', '', 31, 10),
(490, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 10),
(491, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server.', '', 33, 10),
(492, 'failed', -0.2, 'The Referrer-Policy header is not sent by the server.', '', 34, 10),
(493, 'failed', -0.7145, 'The Server header is sent by the server.', '{\'header\': \'Server\', \'value\': \'Apache\'}', 35, 10),
(494, 'failed', 0, 'The X-Powered-By header is returned and contains product and information data.', '{\'header\': \'X-Powered-By\', \'value\': \'Jetty(9.2.9.v20150224)\'}', 36, 10),
(495, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 10),
(496, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 4}', 46, 10),
(497, 'failed', -0.8, 'None of the cookie found has a valid syntax.', '[{\'invalid\': [{\'cookie\': \'_abck\', \'value\': 1602060662, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}, {\'cookie\': \'bm_sz\', \'value\': 1570539059, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}, {\'invalid\': [{\'cookie\': \'_abck\', \'value\': 1602060664, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}, {\'cookie\': \'bm_sz\', \'value\': 1570539062, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}]', 38, 10),
(498, 'failed', -0.6, 'None of the cookies found had the \'HttpOnly\' flag.', '[{\'unsecure\': [\'_abck\']}, {\'unsecure\': [\'_abck\']}]', 40, 10),
(499, 'failed', -0.8, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 10),
(500, 'success', 0, 'None of the cookies sent via unsecure HTTP had the \'Secure\' flag enabled.', '', 41, 10),
(501, 'success', 0, 'None of the cookies sent via unsecure HTTP are prefixed.', '', 39, 10),
(502, 'failed', -0.3, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'bm_sz\']}', 43, 10),
(503, 'not_available', 0, '', '', 44, 10),
(504, 'not_available', 0, '', '', 45, 10),
(505, 'success', 0.7, 'Your IP address(es) are not listed on any blacklist.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'210.248.164.218\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 10),
(506, 'success', 0.3, 'Your host has not been associated with malicious activities.', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 7, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 805, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 73, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 405, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 161, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 173, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1150, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1130, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 3564, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 220, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 212, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 205, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 206, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 214, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 2, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 305, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 193, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 986, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 187, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 278, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 277, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 277, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 277, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 161, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 3, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 245, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 179, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'renesas.com\', \'is-listed\': False}', 48, 10),
(507, 'partial', 0.7000000000000001, 'Some vulnerabilities were potentially identified.', '[\'CVE-2015-0204\', \'CVE-2015-4000\']', 49, 10),
(508, 'success', 1, 'No or few ports are exposed to the Internet.', '[443, 80]', 50, 10),
(509, 'failed', -621.4000000000001, 'Your domain was found at least once in known, public data leaks.', '{\'total\': 6224, \'groups\': [{\'leak\': \'verificationsio\', \'count\': 1971}, {\'leak\': \'adaptio\', \'count\': 652}, {\'leak\': \'breachcompilation\', \'count\': 526}, {\'leak\': \'datanleads\', \'count\': 699}, {\'leak\': \'linkedin\', \'count\': 622}, {\'leak\': \'pdlcollection\', \'count\': 276}, {\'leak\': \'exploitin\', \'count\': 158}, {\'leak\': \'the-collections\', \'count\': 490}, {\'leak\': \'adobe\', \'count\': 190}, {\'leak\': \'antipublic\', \'count\': 233}, {\'leak\': \'data-contacts\', \'count\': 101}, {\'leak\': \'pcrai\', \'count\': 49}, {\'leak\': \'dropbox\', \'count\': 154}, {\'leak\': \'badoo\', \'count\': 6}, {\'leak\': \'zoosk\', \'count\': 4}, {\'leak\': \'customerslive\', \'count\': 36}, {\'leak\': \'lastfm\', \'count\': 4}, {\'leak\': \'unknown-btc\', \'count\': 2}, {\'leak\': \'neopets\', \'count\': 3}, {\'leak\': \'tumblr\', \'count\': 2}, {\'leak\': \'myfitnesspal\', \'count\': 8}, {\'leak\': \'pastebin\', \'count\': 8}, {\'leak\': \'tianya\', \'count\': 5}, {\'leak\': \'myspace\', \'count\': 7}, {\'leak\': \'bitly\', \'count\': 8}, {\'leak\': \'disqus\', \'count\': 5}, {\'leak\': \'8tracks\', \'count\': 2}, {\'leak\': \'edmodo\', \'count\': 1}, {\'leak\': \'7k7k\', \'count\': 1}, {\'leak\': \'moneybookers\', \'count\': 1}], \'query\': \'renesas.com\'}', 51, 10),
(510, 'failed', -1, 'More than one (1) SPF record is defined for your domain.', '', 1, 11),
(511, 'not_available', 0, '', '', 6, 11),
(512, 'not_available', 0, '', '', 4, 11),
(513, 'not_available', 0, '', '', 2, 11),
(514, 'not_available', 0, '', '', 7, 11),
(515, 'not_available', 0, '', '', 5, 11),
(516, 'not_available', 0, '', '', 3, 11),
(517, 'not_available', 0, '', '', 8, 11),
(518, 'failed', -1, 'There is no indication that DKIM records exist for the given domain.', '', 9, 11),
(519, 'failed', -1, 'No DMARC record was found.', '{\'records\': 0}', 10, 11),
(520, 'not_available', 0, '', '{\'records\': 0}', 11, 11),
(521, 'not_available', 0, '', '{\'records\': 0}', 12, 11),
(522, 'not_available', 0, '', '{\'records\': 0}', 15, 11),
(523, 'not_available', 0, '', '{\'records\': 0}', 16, 11),
(524, 'not_available', 0, '', '{\'records\': 0}', 17, 11),
(525, 'not_available', 0, '', '{\'records\': 0}', 18, 11),
(526, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}]', 24, 11),
(527, 'failed', 0, 'STARTLS is disabled on the remote SMTP server.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}]', 28, 11),
(528, 'success', 0, 'The certificate is valid.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}]', 25, 11),
(529, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}]', 26, 11),
(530, 'success', 0, 'The certificate is valid.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}]', 27, 11),
(531, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}]', 29, 11),
(532, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 11),
(533, 'not_available', 0, '', '', 14, 11);
INSERT INTO `reports_testresult` (`id`, `state`, `score`, `message`, `data`, `definition_id`, `report_id`) VALUES
(534, 'failed', -1, 'Unable to connect to the website via HTTPS.', '{\'website\': \'https://www.matex.com.sg\'}', 19, 11),
(535, 'not_available', 0, '', '', 21, 11),
(536, 'not_available', 0, '', '', 22, 11),
(537, 'not_available', 0, '', '', 23, 11),
(538, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 11),
(539, 'failed', -0.2, 'The X-Frame-Options header is not sent by the server.', '', 30, 11),
(540, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server.', '', 31, 11),
(541, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 11),
(542, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server.', '', 33, 11),
(543, 'failed', -0.2, 'The Referrer-Policy header is not sent by the server.', '', 34, 11),
(544, 'failed', -0.7145, 'The Server header is sent by the server.', '{\'header\': \'Server\', \'value\': \'nginx\'}', 35, 11),
(545, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 11),
(546, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 11),
(547, 'not_available', 0, '', '', 38, 11),
(548, 'not_available', 0, '', '', 39, 11),
(549, 'not_available', 0, '', '', 40, 11),
(550, 'not_available', 0, '', '', 41, 11),
(551, 'not_available', 0, '', '', 42, 11),
(552, 'not_available', 0, '', '', 43, 11),
(553, 'not_available', 0, '', '', 44, 11),
(554, 'not_available', 0, '', '', 45, 11),
(555, 'success', 0.7, 'Your IP address(es) are not listed on any blacklist.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'116.12.54.94\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 11),
(556, 'success', 0.3, 'Your host has not been associated with malicious activities.', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 10, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 114, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 9, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 93, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 85, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 106, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 2861, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 2857, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 2856, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 42, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 42, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 40, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 37, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 36, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 39, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 46, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 105, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 512, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 95, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 157, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 157, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 140, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 142, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 113, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 18, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 89, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 37, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'matex.com.sg\', \'is-listed\': False}', 48, 11),
(557, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 11),
(558, 'failed', -1, 'A large number of services are exposed to the Internet.', '[110, 995, 465, 80, 3306, 53, 25, 143, 8083, 587]', 50, 11),
(559, 'failed', -1.9000000000000004, 'Your domain was found at least once in known, public data leaks.', '{\'total\': 29, \'groups\': [{\'leak\': \'linkedin\', \'count\': 7}, {\'leak\': \'breachcompilation\', \'count\': 5}, {\'leak\': \'verificationsio\', \'count\': 4}, {\'leak\': \'edmodo\', \'count\': 1}, {\'leak\': \'the-collections\', \'count\': 6}, {\'leak\': \'dropbox\', \'count\': 1}, {\'leak\': \'antipublic\', \'count\': 2}, {\'leak\': \'exploitin\', \'count\': 2}, {\'leak\': \'pdlcollection\', \'count\': 1}], \'query\': \'matex.com.sg\'}', 51, 11),
(711, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 ip4:198.175.38.172 ip4:168.143.175.116 ip4:168.143.175.117 ip4:167.182.124.33 ip4:67.192.203.103 ip4:167.182.124.98 ip4:216.71.147.73 include:realogy.com -all\']}', 1, 15),
(712, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 15),
(713, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 15),
(714, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 1}', 4, 15),
(715, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 15),
(716, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 15),
(717, 'success', 0, 'Your SPF record prevents unrestricted use of the domain.', '{\'policy\': \'-all\'}', 3, 15),
(718, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 ip4:198.175.38.172 ip4:168.143.175.116 ip4:168.143.175.117 ip4:167.182.124.33 ip4:67.192.203.103 ip4:167.182.124.98 ip4:216.71.147.73 include:realogy.com -all\'}', 8, 15),
(719, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 15),
(720, 'success', 0, 'A DMARC record was found for your domain.', '{\'record\': [\'v=DMARC1; p=none; rua=mailto:dmarcadmin@cartus.com; ruf=mailto:dmarcadmin@cartus.com; fo=1;\']}', 10, 15),
(721, 'failed', -1, 'The syntax of yourDMARC record is invalid.', '{\'record\': \'v=DMARC1; p=none; rua=mailto:dmarcadmin@cartus.com; ruf=mailto:dmarcadmin@cartus.com; fo=1;\'}', 11, 15),
(722, 'failed', -1, 'The DMARC policy is set to none. No message is filtered.', '{\'policy\': \'none\'}', 15, 15),
(723, 'success', 0, 'All emails are being vetted by DMARC.', '', 16, 15),
(724, 'success', 0, 'The destination domain has the proper TXT record to receive domains.', '', 12, 15),
(725, 'success', 0, 'You are receiving aggregate reports for your domain.', '{\'rua\': \'mailto:dmarcadmin@cartus.com\'}', 17, 15),
(726, 'success', 0, 'You are receiving forensics reports for your domain.', '{\'ruf\': \'mailto:dmarcadmin@cartus.com\'}', 18, 15),
(727, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'mailin3.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin5.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin4.cartus.com\', \'data\': \'success\'}]', 24, 15),
(728, 'success', 1, 'STARTTLS is enabled on the remote SMTP server.', '[{\'host\': \'mailin3.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin5.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin4.cartus.com\', \'data\': \'success\'}]', 28, 15),
(729, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mailin3.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin5.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin4.cartus.com\', \'data\': \'success\'}]', 25, 15),
(730, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'mailin3.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin5.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin4.cartus.com\', \'data\': \'success\'}]', 26, 15),
(731, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mailin3.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin5.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin4.cartus.com\', \'data\': \'success\'}]', 27, 15),
(732, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'mailin3.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin5.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin4.cartus.com\', \'data\': \'success\'}]', 29, 15),
(733, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 15),
(734, 'not_available', 0, '', '', 14, 15),
(735, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.cartus.com\'}', 19, 15),
(736, 'success', 0, 'The certificate is valid.', '', 21, 15),
(737, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 15),
(738, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.cartus.com\'}', 23, 15),
(739, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 15),
(740, 'success', 0, 'The X-Frame-Options header is returned and is properly configured.', '{\'header\': \'X-Frame-Options\', \'value\': \'SAMEORIGIN\'}', 30, 15),
(741, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server.', '', 31, 15),
(742, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 15),
(743, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server.', '', 33, 15),
(744, 'failed', -0.2, 'The Referrer-Policy header is not sent by the server.', '', 34, 15),
(745, 'failed', -0.7145, 'The Server header is sent by the server.', '{\'header\': \'Server\', \'value\': \'Apache\'}', 35, 15),
(746, 'failed', 0, 'The X-Powered-By header is returned and contains product and information data.', '{\'header\': \'X-Powered-By\', \'value\': \'PHP/5.5.38\'}', 36, 15),
(747, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 15),
(748, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 1}', 46, 15),
(749, 'success', 0, 'All cookies found had a valid syntax.', '[\'\', \'\']', 38, 15),
(750, 'success', 0, 'All of the cookies sent via HTTP uses the \'HttpOnly\'.', '[\'\', \'\']', 40, 15),
(751, 'failed', -0.4, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 15),
(752, 'not_available', 0, '', '', 41, 15),
(753, 'not_available', 0, '', '', 39, 15),
(754, 'success', 0, 'All of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '', 43, 15),
(755, 'not_available', 0, '', '', 44, 15),
(756, 'not_available', 0, '', '', 45, 15),
(757, 'success', 0.7, 'Your IP address(es) are not listed on any blacklist.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'204.232.226.18\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 15),
(758, 'success', 0.3, 'Your host has not been associated with malicious activities.', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 522, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 795, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 517, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 514, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 667, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 1118, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1424, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1423, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1421, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 502, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 502, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 500, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 499, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 498, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 632, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 494, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 441, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 955, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 489, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 489, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 488, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 483, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 483, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 482, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 510, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 516, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 515, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'cartus.com\', \'is-listed\': False}', 48, 15),
(759, 'failed', -1, 'One of more hosts may expose many services with known vulnerabilities.', '[\'CVE-2018-10549\', \'CVE-2018-10548\', \'CVE-2018-10545\', \'CVE-2018-10547\', \'CVE-2018-10546\', \'CVE-2019-9641\', \'CVE-2018-19520\', \'CVE-2018-19396\', \'CVE-2018-19395\', \'CVE-2018-19935\', \'CVE-2018-17082\', \'CVE-2019-9639\', \'CVE-2019-9638\', \'CVE-2019-9637\', \'CVE-2018-14883\', \'CVE-2017-12868\', \'CVE-2018-20783\', \'CVE-2019-6977\', \'CVE-2019-9023\', \'CVE-2019-9020\', \'CVE-2019-9021\', \'CVE-2017-16642\', \'CVE-2019-9024\', \'CVE-2018-15132\']', 49, 15),
(760, 'success', 1, 'No or few ports are exposed to the Internet.', '[443, 80]', 50, 15),
(761, 'failed', -647.7, 'Your domain was found at least once in known, public data leaks.', '{\'total\': 6487, \'groups\': [{\'leak\': \'verificationsio\', \'count\': 2393}, {\'leak\': \'datanleads\', \'count\': 73}, {\'leak\': \'pdlcollection\', \'count\': 1619}, {\'leak\': \'the-collections\', \'count\': 620}, {\'leak\': \'adaptio\', \'count\': 190}, {\'leak\': \'antipublic\', \'count\': 239}, {\'leak\': \'breachcompilation\', \'count\': 425}, {\'leak\': \'exploitin\', \'count\': 181}, {\'leak\': \'linkedin\', \'count\': 450}, {\'leak\': \'customerslive\', \'count\': 75}, {\'leak\': \'myfitnesspal\', \'count\': 82}, {\'leak\': \'myspace\', \'count\': 15}, {\'leak\': \'edmodo\', \'count\': 5}, {\'leak\': \'adobe\', \'count\': 14}, {\'leak\': \'dropbox\', \'count\': 17}, {\'leak\': \'data-contacts\', \'count\': 47}, {\'leak\': \'ashleymadison\', \'count\': 1}, {\'leak\': \'mate1\', \'count\': 2}, {\'leak\': \'pcrai\', \'count\': 11}, {\'leak\': \'tumblr\', \'count\': 1}, {\'leak\': \'modernbusinesssolutions\', \'count\': 10}, {\'leak\': \'unknown-btc\', \'count\': 1}, {\'leak\': \'disqus\', \'count\': 5}, {\'leak\': \'experian\', \'count\': 2}, {\'leak\': \'myheritage\', \'count\': 1}, {\'leak\': \'gawker\', \'count\': 1}, {\'leak\': \'lastfm\', \'count\': 1}, {\'leak\': \'apexsms\', \'count\': 2}, {\'leak\': \'forbes\', \'count\': 2}, {\'leak\': \'bitly\', \'count\': 2}], \'query\': \'cartus.com\'}', 51, 15),
(762, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 include:spf.messagelabs.com include:mailgun.org include:spf.mandrillapp.com include:spf.protection.outlook.com -all\']}', 1, 16),
(763, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 16),
(764, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 16),
(765, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 8}', 4, 16),
(766, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 16),
(767, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 16),
(768, 'success', 0, 'Your SPF record prevents unrestricted use of the domain.', '{\'policy\': \'-all\'}', 3, 16),
(769, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 include:spf.messagelabs.com include:mailgun.org include:spf.mandrillapp.com include:spf.protection.outlook.com -all\'}', 8, 16),
(770, 'failed', -1, 'There is no indication that DKIM records exist for the given domain.\r\n\r\nDKIM is an authentication protocol that links a domain name to a message. The protocol allows you to sign your email with your domain name. The purpose of the DKIM protocol is not only to prove that the domain name has not been usurped, but also that the message has not been altered during transmission.', '', 9, 16),
(771, 'failed', -1, 'No DMARC record was found. \r\n\r\nSPF and DKIM on their own (or even together) contain various weaknesses. When both are combined with DMARC, they create an enhanced layer of security and sender identification. Part of the DMARC requirements involves the concept of domain alignment, so it makes it much more difficult for fraudsters to spoof a domain.', '{\'records\': 0}', 10, 16),
(772, 'not_available', 0, '', '{\'records\': 0}', 11, 16),
(773, 'not_available', 0, '', '{\'records\': 0}', 12, 16),
(774, 'not_available', 0, '', '{\'records\': 0}', 15, 16),
(775, 'not_available', 0, '', '{\'records\': 0}', 16, 16),
(776, 'not_available', 0, '', '{\'records\': 0}', 17, 16),
(777, 'not_available', 0, '', '{\'records\': 0}', 18, 16),
(778, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[]', 29, 16),
(779, 'failed', 0, 'STARTLS is disabled on the remote SMTP server. It’s important to use TLS as unsecured email is a common attack vector. \r\n\r\nEncryption in transit helps protect your emails from being snooped on while they travel between you and your intended recipients. Without encryption they present a prime target for eavesdropping and mass interception as they cross dozens of optical fibres and routers.', '[{\'host\': \'cluster8.eu.messagelabs.com\', \'data\': \'success\'}, {\'host\': \'cluster8a.eu.messagelabs.com\', \'data\': \'failed\'}]', 28, 16),
(780, 'partial', -0.5, '', '[{\'host\': \'cluster8.eu.messagelabs.com\', \'data\': \'partial\'}, {\'host\': \'cluster8a.eu.messagelabs.com\', \'data\': \'not_available\'}]', 25, 16),
(781, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'cluster8.eu.messagelabs.com\', \'data\': \'success\'}, {\'host\': \'cluster8a.eu.messagelabs.com\', \'data\': \'not_available\'}]', 26, 16),
(782, 'not_available', 0, '', '[{\'host\': \'cluster8.eu.messagelabs.com\', \'data\': \'not_available\'}, {\'host\': \'cluster8a.eu.messagelabs.com\', \'data\': \'not_available\'}]', 27, 16),
(783, 'success', 0, 'One or more SMTP server(s) were found.', '[\'cluster8.eu.messagelabs.com\', \'cluster8a.eu.messagelabs.com\']', 24, 16),
(784, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 16),
(785, 'not_available', 0, '', '', 14, 16),
(786, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.railpoint.co.uk\'}', 19, 16),
(787, 'error', 0, '', '{\'error\': \'[SSL: CERTIFICATE_VERIFY_FAILED] certificate verify failed (_ssl.c:852)\'}', 21, 16),
(788, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 16),
(789, 'failed', -1, 'The request was not redirected to the HTTPS version.', '{\'website\': \'http://www.railpoint.co.uk\'}', 23, 16),
(790, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 16),
(791, 'failed', -0.2, 'The X-Frame-Options header is not sent by the server.', '', 30, 16),
(792, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server.', '', 31, 16),
(793, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 16),
(794, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server.', '', 33, 16),
(795, 'failed', -0.2, 'The Referrer-Policy header is not sent by the server.', '', 34, 16),
(796, 'failed', -0.7145, 'The Server header is sent by the server.', '{\'header\': \'Server\', \'value\': \'Apache\'}', 35, 16),
(797, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 16),
(798, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 16),
(799, 'success', 0, 'The target website is not sending any cookies.', '', 46, 16),
(800, 'not_available', 0, '', '', 38, 16),
(801, 'not_available', 0, '', '', 39, 16),
(802, 'not_available', 0, '', '', 40, 16),
(803, 'not_available', 0, '', '', 41, 16),
(804, 'not_available', 0, '', '', 42, 16),
(805, 'not_available', 0, '', '', 43, 16),
(806, 'not_available', 0, '', '', 44, 16),
(807, 'not_available', 0, '', '', 45, 16),
(808, 'success', 0.7, 'Your IP address(es) are not listed on any blacklist.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'77.92.74.100\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 16),
(809, 'success', 0.3, 'Your host has not been associated with malicious activities.', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 504, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 847, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 376, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 253, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 290, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 1349, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 243, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 239, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 238, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 238, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 237, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 238, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 237, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 235, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 61, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 233, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 98, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 764, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 246, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 233, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 231, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 231, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 230, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 1116, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 221, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 238, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 228, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'railpoint.co.uk\', \'is-listed\': False}', 48, 16),
(810, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 16),
(811, 'partial', 0.55, '', '[3306, 443, 2083, 21, 2096, 2082]', 50, 16),
(812, 'success', 1, 'Your domain was not found in any known public leaks.', '{\'total\': 0, \'groups\': [], \'query\': \'railpoint.co.uk\'}', 51, 16),
(813, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 include:mailgun.org include:spf.cloudplatform1.com mx a ~all\']}', 1, 17),
(814, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 17),
(815, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 17),
(816, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 4}', 4, 17),
(817, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 17),
(818, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 17),
(819, 'success', 0, 'Your SPF record prevents unrestricted use of the domain.', '{\'policy\': \'~all\'}', 3, 17),
(820, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 include:mailgun.org include:spf.cloudplatform1.com mx a ~all\'}', 8, 17),
(821, 'failed', -1, 'There is no indication that DKIM records exist for the given domain.\r\n</br></br>\r\nDKIM is an authentication protocol that links a domain name to a message. The protocol allows you to sign your email with your domain name. The purpose of the DKIM protocol is not only to prove that the domain name has not been usurped, but also that the message has not been altered during transmission.', '', 9, 17),
(822, 'failed', -1, 'No DMARC record was found. \r\n</br></br>\r\nSPF and DKIM on their own (or even together) contain various weaknesses. When both are combined with DMARC, they create an enhanced layer of security and sender identification. Part of the DMARC requirements involves the concept of domain alignment, so it makes it much more difficult for fraudsters to spoof a domain.', '{\'records\': 0}', 10, 17),
(823, 'not_available', 0, '', '{\'records\': 0}', 11, 17),
(824, 'not_available', 0, '', '{\'records\': 0}', 12, 17),
(825, 'not_available', 0, '', '{\'records\': 0}', 15, 17),
(826, 'not_available', 0, '', '{\'records\': 0}', 16, 17),
(827, 'not_available', 0, '', '{\'records\': 0}', 17, 17),
(828, 'not_available', 0, '', '{\'records\': 0}', 18, 17),
(829, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'inboundcluster1.cloudplatform1.com\', \'data\': \'success\'}, {\'host\': \'inboundcluster2.cloudplatform1.com\', \'data\': \'success\'}, {\'host\': \'inboundcluster3.cloudplatform1.com\', \'data\': \'success\'}]', 24, 17),
(830, 'success', 1, 'STARTTLS is enabled on the remote SMTP server.', '[{\'host\': \'inboundcluster1.cloudplatform1.com\', \'data\': \'success\'}, {\'host\': \'inboundcluster2.cloudplatform1.com\', \'data\': \'success\'}, {\'host\': \'inboundcluster3.cloudplatform1.com\', \'data\': \'success\'}]', 28, 17),
(831, 'success', 0, 'The certificate is valid.', '[{\'host\': \'inboundcluster1.cloudplatform1.com\', \'data\': \'success\'}, {\'host\': \'inboundcluster2.cloudplatform1.com\', \'data\': \'success\'}, {\'host\': \'inboundcluster3.cloudplatform1.com\', \'data\': \'success\'}]', 25, 17),
(832, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'inboundcluster1.cloudplatform1.com\', \'data\': \'success\'}, {\'host\': \'inboundcluster2.cloudplatform1.com\', \'data\': \'success\'}, {\'host\': \'inboundcluster3.cloudplatform1.com\', \'data\': \'success\'}]', 26, 17),
(833, 'success', 0, 'The certificate is valid.', '[{\'host\': \'inboundcluster1.cloudplatform1.com\', \'data\': \'success\'}, {\'host\': \'inboundcluster2.cloudplatform1.com\', \'data\': \'success\'}, {\'host\': \'inboundcluster3.cloudplatform1.com\', \'data\': \'success\'}]', 27, 17),
(834, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'inboundcluster1.cloudplatform1.com\', \'data\': \'success\'}, {\'host\': \'inboundcluster2.cloudplatform1.com\', \'data\': \'success\'}, {\'host\': \'inboundcluster3.cloudplatform1.com\', \'data\': \'success\'}]', 29, 17),
(835, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 17),
(836, 'not_available', 0, '', '', 14, 17),
(837, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.themetalstore.co.uk\'}', 19, 17),
(838, 'success', 0, 'The certificate is valid.', '', 21, 17),
(839, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 17),
(840, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.themetalstore.co.uk\'}', 23, 17),
(841, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 17),
(842, 'success', 0, 'The X-Frame-Options header is returned and is properly configured.', '{\'header\': \'X-Frame-Options\', \'value\': \'SAMEORIGIN\'}', 30, 17),
(843, 'success', 0, 'The X-XSS-Protection header is returned and is properly configured.', '{\'header\': \'X-Xss-Protection\', \'value\': \'1; mode=block\'}', 31, 17),
(844, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '{\'header\': \'X-Content-Type-Options\', \'value\': \'nosniff\'}', 32, 17),
(845, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server.', '', 33, 17),
(846, 'success', 0, 'The Referrer-Policy header is returned and is properly configured.', '{\'header\': \'Referrer-Policy\', \'value\': \'strict-origin-when-cross-origin\'}', 34, 17),
(847, 'failed', -0.1429, 'The Server header is sent by the server.', '{\'header\': \'Server\', \'value\': \'nginx/1.17.3 + Phusion Passenger 6.0.3\'}', 35, 17),
(848, 'failed', 0, 'The X-Powered-By header is returned and contains product and information data.', '{\'header\': \'X-Powered-By\', \'value\': \'Phusion Passenger 6.0.3\'}', 36, 17),
(849, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 17),
(850, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 1}', 46, 17),
(851, 'success', 0, 'All cookies found had a valid syntax.', '[\'\', \'\']', 38, 17),
(852, 'success', 0, 'All of the cookies sent via HTTP uses the \'HttpOnly\'.', '[\'\', \'\']', 40, 17),
(853, 'failed', -0.4, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 17),
(854, 'not_available', 0, '', '', 41, 17),
(855, 'not_available', 0, '', '', 39, 17),
(856, 'failed', -0.4, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'_zmey_session\']}', 43, 17),
(857, 'not_available', 0, '', '', 44, 17),
(858, 'not_available', 0, '', '', 45, 17),
(859, 'success', 0.7, 'Your IP address(es) are not listed on any blacklist.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'67.207.69.39\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 17),
(860, 'success', 0.3, 'Your host has not been associated with malicious activities.', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 140, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 137, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 173, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 340, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 247, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 134, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 237, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 233, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 234, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 155, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 154, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 154, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 152, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 152, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 350, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 351, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 346, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 678, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 139, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 153, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 152, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 150, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 151, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 123, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 128, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 309, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 308, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'themetalstore.co.uk\', \'is-listed\': False}', 48, 17),
(861, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 17),
(862, 'success', 1, 'No or few ports are exposed to the Internet.', '[8080, 80, 22]', 50, 17),
(863, 'partial', 0.6, '', '{\'total\': 4, \'groups\': [{\'leak\': \'antipublic\', \'count\': 1}, {\'leak\': \'breachcompilation\', \'count\': 1}, {\'leak\': \'exploitin\', \'count\': 1}, {\'leak\': \'the-collections\', \'count\': 1}], \'query\': \'themetalstore.co.uk\'}', 51, 17),
(864, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 a mx include:_spf.servercontrol.com.au include:spf.protection.outlook.com ~all\']}', 1, 18),
(865, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 18),
(866, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 18),
(867, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 1}', 4, 18),
(868, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 18),
(869, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 18),
(870, 'success', 0, 'Your SPF record prevents unrestricted use of the domain.', '{\'policy\': \'~all\'}', 3, 18),
(871, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 a mx include:_spf.servercontrol.com.au include:spf.protection.outlook.com ~all\'}', 8, 18),
(872, 'failed', -1, 'There is no indication that DKIM records exist for the given domain.\r\n</br></br>\r\nDKIM is an authentication protocol that links a domain name to a message. The protocol allows you to sign your email with your domain name. The purpose of the DKIM protocol is not only to prove that the domain name has not been usurped, but also that the message has not been altered during transmission.', '', 9, 18),
(873, 'failed', -1, 'No DMARC record was found. \r\n</br></br>\r\nSPF and DKIM on their own (or even together) contain various weaknesses. When both are combined with DMARC, they create an enhanced layer of security and sender identification. Part of the DMARC requirements involves the concept of domain alignment, so it makes it much more difficult for fraudsters to spoof a domain.', '{\'records\': 0}', 10, 18),
(874, 'not_available', 0, '', '{\'records\': 0}', 11, 18),
(875, 'not_available', 0, '', '{\'records\': 0}', 12, 18),
(876, 'not_available', 0, '', '{\'records\': 0}', 15, 18),
(877, 'not_available', 0, '', '{\'records\': 0}', 16, 18),
(878, 'not_available', 0, '', '{\'records\': 0}', 17, 18),
(879, 'not_available', 0, '', '{\'records\': 0}', 18, 18),
(880, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'mx1.servercontrol.com.au\', \'data\': \'success\'}, {\'host\': \'mx2.servercontrol.com.au\', \'data\': \'success\'}]', 24, 18),
(881, 'success', 1, 'STARTTLS is enabled on the remote SMTP server.', '[{\'host\': \'mx1.servercontrol.com.au\', \'data\': \'success\'}, {\'host\': \'mx2.servercontrol.com.au\', \'data\': \'success\'}]', 28, 18),
(882, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mx1.servercontrol.com.au\', \'data\': \'success\'}, {\'host\': \'mx2.servercontrol.com.au\', \'data\': \'success\'}]', 25, 18);
INSERT INTO `reports_testresult` (`id`, `state`, `score`, `message`, `data`, `definition_id`, `report_id`) VALUES
(883, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'mx1.servercontrol.com.au\', \'data\': \'success\'}, {\'host\': \'mx2.servercontrol.com.au\', \'data\': \'success\'}]', 26, 18),
(884, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mx1.servercontrol.com.au\', \'data\': \'success\'}, {\'host\': \'mx2.servercontrol.com.au\', \'data\': \'success\'}]', 27, 18),
(885, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'mx1.servercontrol.com.au\', \'data\': \'success\'}, {\'host\': \'mx2.servercontrol.com.au\', \'data\': \'success\'}]', 29, 18),
(886, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 18),
(887, 'not_available', 0, '', '', 14, 18),
(888, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.plymouthbrethrenchristianchurch.org\'}', 19, 18),
(889, 'failed', -1, 'The certificate is invalid.', '{\'self-signed\': False, \'is-expired\': False, \'invalid-cn\': True}', 21, 18),
(890, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 18),
(891, 'failed', -1, 'The request was not redirected to the HTTPS version. Even though this site has HTTPS enabled visitors can still access the site over insecure  HTTP. \r\n\r\nYou should ensure that all visitors to your site are automatically redirected to the secure HTTPS connection. Implementing HTTPS is of no use if visitors can still access your site via HTTP.', '{\'website\': \'http://www.plymouthbrethrenchristianchurch.org\'}', 23, 18),
(892, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 18),
(893, 'success', 0, 'The X-Frame-Options header is returned and is properly configured.', '{\'header\': \'X-Frame-Options\', \'value\': \'SAMEORIGIN\'}', 30, 18),
(894, 'success', 0, 'The X-XSS-Protection header is returned and is properly configured.', '{\'header\': \'X-Xss-Protection\', \'value\': \'1; mode=block\'}', 31, 18),
(895, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '{\'header\': \'X-Content-Type-Options\', \'value\': \'nosniff\'}', 32, 18),
(896, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server.', '', 33, 18),
(897, 'failed', -0.2, 'The Referrer-Policy header is not sent by the server.', '', 34, 18),
(898, 'failed', -0.7145, 'The Server header is sent by the server.', '{\'header\': \'Server\', \'value\': \'cloudflare\'}', 35, 18),
(899, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 18),
(900, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 18),
(901, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 2}', 46, 18),
(902, 'failed', -0.8, 'None of the cookie found has a valid syntax.', '[{\'invalid\': [{\'cookie\': \'__cfduid\', \'value\': 1602665192, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}, {\'invalid\': [{\'cookie\': \'__cfduid\', \'value\': 1602665194, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}]', 38, 18),
(903, 'success', 0, 'All of the cookies sent via HTTP uses the \'HttpOnly\'.', '[\'\', \'\']', 40, 18),
(904, 'failed', -0.8, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 18),
(905, 'success', 0, 'None of the cookies sent via unsecure HTTP had the \'Secure\' flag enabled.', '', 41, 18),
(906, 'success', 0, 'None of the cookies sent via unsecure HTTP are prefixed.', '', 39, 18),
(907, 'failed', -0.4, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'__cfduid\']}', 43, 18),
(908, 'not_available', 0, '', '', 44, 18),
(909, 'not_available', 0, '', '', 45, 18),
(910, 'success', 0.7, 'Your IP address(es) are not listed on any blacklist.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'104.18.38.209\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 18),
(911, 'success', 0.3, 'Your host has not been associated with malicious activities.', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 134, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 512, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 130, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 134, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 231, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 3005, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1060, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1059, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1057, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 142, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 141, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 137, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 135, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 134, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 6, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 106, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 27, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 654, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 175, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 243, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 242, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 242, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 240, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 110, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 128, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 129, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 125, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'plymouthbrethrenchristianchurch.org\', \'is-listed\': False}', 48, 18),
(912, 'failed', -1, 'One of more hosts may expose services with known vulnerabilities. See the links below for information on each specific item. \r\n</br></br>\r\nCVE Vulnerabilities are identified by passive fingerprinting of server software and version. The vulnerabilities are implied based on the software and version. This is a passive test and so the server may not be impacted by all of the issues detected.\r\n</br></br>\r\nYou can request an ACTIVE vulnerability scan by following the remediation link below.', '[\'CVE-2018-1000773\', \'CVE-2019-8942\', \'CVE-2018-20148\', \'CVE-2018-20149\', \'CVE-2018-20151\', \'CVE-2018-20150\', \'CVE-2018-20153\', \'CVE-2018-20152\', \'CVE-2018-20147\', \'CVE-2019-9787\']', 49, 18),
(913, 'failed', -1, 'A large number of services are exposed to the Internet. An open port is an attack surface. An important principle in security is reducing your attack surface, and ensure that servers have the minimum number of exposed services. \r\n</br></br>\r\nCheck to make sure that only necessary ports are open. Our scan uses PASSIVE identification of open ports - active scans on remote systems are not allowed without prior permission. A full ACTIVE scan can be requested by following the remediation link below.', '[8443, 8080, 443, 80, 2083, 2087, 8880, 2053, 2082, 2086]', 50, 18),
(914, 'partial', 0.5, '', '{\'total\': 5, \'groups\': [{\'leak\': \'verificationsio\', \'count\': 3}, {\'leak\': \'the-collections\', \'count\': 2}], \'query\': \'plymouthbrethrenchristianchurch.org\'}', 51, 18),
(915, 'failed', -1, 'No SPF record is defined for your domain.\r\n</br></br>\r\nSPF is an email authentication method designed to detect forged sender addresses in emails (email spoofing), a technique often used in phishing and email spam.\r\n</br></br>\r\nSPF allows the receiver to check that an email claiming to come from a specific domain comes from an IP address authorised by that domain\'s administrators. The list of authorised sending hosts and IP addresses for a domain is published in the DNS records for that domain.', '', 1, 19),
(916, 'not_available', 0, '', '', 6, 19),
(917, 'not_available', 0, '', '', 4, 19),
(918, 'not_available', 0, '', '', 2, 19),
(919, 'not_available', 0, '', '', 7, 19),
(920, 'not_available', 0, '', '', 5, 19),
(921, 'not_available', 0, '', '', 3, 19),
(922, 'not_available', 0, '', '', 8, 19),
(923, 'failed', -1, 'There is no indication that DKIM records exist for the given domain.\r\n</br></br>\r\nDKIM is an authentication protocol that links a domain name to a message. The protocol allows you to sign your email with your domain name. The purpose of the DKIM protocol is not only to prove that the domain name has not been usurped, but also that the message has not been altered during transmission.', '', 9, 19),
(924, 'failed', -1, 'No DMARC record was found. \r\n</br></br>\r\nSPF and DKIM on their own (or even together) contain various weaknesses. When both are combined with DMARC, they create an enhanced layer of security and sender identification. Part of the DMARC requirements involves the concept of domain alignment, so it makes it much more difficult for fraudsters to spoof a domain.', '{\'records\': 0}', 10, 19),
(925, 'not_available', 0, '', '{\'records\': 0}', 11, 19),
(926, 'not_available', 0, '', '{\'records\': 0}', 12, 19),
(927, 'not_available', 0, '', '{\'records\': 0}', 15, 19),
(928, 'not_available', 0, '', '{\'records\': 0}', 16, 19),
(929, 'not_available', 0, '', '{\'records\': 0}', 17, 19),
(930, 'not_available', 0, '', '{\'records\': 0}', 18, 19),
(931, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[]', 29, 19),
(932, 'failed', -1, 'STARTLS is disabled on the remote SMTP server. It’s important to use TLS as unsecured email is a common attack vector.\r\n\r\nEncryption in transit helps protect your emails from being snooped on while they travel between you and your intended recipients. Without encryption they present a prime target for eavesdropping and mass interception as they cross dozens of optical fibres and routers.', '[{\'host\': \'ukecc-services.net\', \'data\': \'failed\'}]', 28, 19),
(933, 'not_available', 0, '', '[{\'host\': \'ukecc-services.net\', \'data\': \'not_available\'}]', 25, 19),
(934, 'not_available', 0, '', '[{\'host\': \'ukecc-services.net\', \'data\': \'not_available\'}]', 26, 19),
(935, 'not_available', 0, '', '[{\'host\': \'ukecc-services.net\', \'data\': \'not_available\'}]', 27, 19),
(936, 'success', 0, 'One or more SMTP server(s) were found.', '[\'ukecc-services.net\']', 24, 19),
(937, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 19),
(938, 'not_available', 0, '', '', 14, 19),
(939, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.ukecc-services.net\'}', 19, 19),
(940, 'success', 0, 'The certificate is valid.', '', 21, 19),
(941, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 19),
(942, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.ukecc-services.net\'}', 23, 19),
(943, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 19),
(944, 'failed', -0.2, 'The X-Frame-Options header is not sent by the server.', '', 30, 19),
(945, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server.', '', 31, 19),
(946, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 19),
(947, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server.', '', 33, 19),
(948, 'failed', -0.2, 'The Referrer-Policy header is not sent by the server.', '', 34, 19),
(949, 'success', 0, 'The Server header is not returned by the server.', '', 35, 19),
(950, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 19),
(951, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 19),
(952, 'success', 0, 'The target website is not sending any cookies.', '', 46, 19),
(953, 'not_available', 0, '', '', 38, 19),
(954, 'not_available', 0, '', '', 39, 19),
(955, 'not_available', 0, '', '', 40, 19),
(956, 'not_available', 0, '', '', 41, 19),
(957, 'not_available', 0, '', '', 42, 19),
(958, 'not_available', 0, '', '', 43, 19),
(959, 'not_available', 0, '', '', 44, 19),
(960, 'not_available', 0, '', '', 45, 19),
(961, 'success', 0.7, 'Your IP address(es) are not listed on any blacklist.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'194.176.69.43\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 19),
(962, 'success', 0.3, 'Your host has not been associated with malicious activities.', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 155, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 514, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 349, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 197, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 195, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 263, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 962, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 960, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 959, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 141, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 140, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 139, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 138, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 137, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 525, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 533, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 525, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 659, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 120, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 150, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 148, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 147, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 143, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 396, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 121, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 123, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 122, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'ukecc-services.net\', \'is-listed\': False}', 48, 19),
(963, 'not_available', 0, '', '', 49, 19),
(964, 'error', 0, 'This test requires manual review.', '{\'error\': \"Invalid response received from \'https://api.shodan.io/shodan/host/194.176.69.43?key=ggGl4i0SG48tnlp5ZjziW6c3vttQ7zfc\': 404\"}', 50, 19),
(965, 'success', 1, 'Your domain was not found in any known public leaks.', '{\'total\': 0, \'groups\': [], \'query\': \'ukecc-services.net\'}', 51, 19),
(966, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 include:upwork.com._nspf.vali.email include:%{i}._ip.%{h}._ehlo.%{d}._spf.vali.email include:mail.clinchtalent.com ~all\']}', 1, 20),
(967, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 20),
(968, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 20),
(969, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 4}', 4, 20),
(970, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 20),
(971, 'error', 0, '', '{\'error\': \'All nameservers failed to answer the query %{i}._ip.%{h}._ehlo.%{d}._spf.vali.email. IN TXT: Server 208.67.222.222 TCP port 53 answered SERVFAIL; Server 208.67.220.220 TCP port 53 answered SERVFAIL\'}', 5, 20),
(972, 'success', 0, 'Your SPF record prevents unrestricted use of the domain.', '{\'policy\': \'~all\'}', 3, 20),
(973, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 include:upwork.com._nspf.vali.email include:%{i}._ip.%{h}._ehlo.%{d}._spf.vali.email include:mail.clinchtalent.com ~all\'}', 8, 20),
(974, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 20),
(975, 'success', 0, 'A DMARC record was found for your domain.', '{\'record\': [\'v=DMARC1; p=reject; rua=mailto:dmarc_agg@vali.email,mailto:upwork@rua.agari.com; ruf=mailto:upwork@ruf.agari.com\']}', 10, 20),
(976, 'success', 0, 'The syntax of your DMARC record is valid.', '{\'record\': \'v=DMARC1; p=reject; rua=mailto:dmarc_agg@vali.email,mailto:upwork@rua.agari.com; ruf=mailto:upwork@ruf.agari.com\'}', 11, 20),
(977, 'success', 0, 'The DMARC policy is configured to quarantine or reject invalid emails.', '{\'policy\': \'reject\'}', 15, 20),
(978, 'success', 0, 'All emails are being vetted by DMARC.', '', 16, 20),
(979, 'success', 0, 'The destination domain has the proper TXT record to receive domains.', '', 12, 20),
(980, 'success', 0, 'You are receiving aggregate reports for your domain.', '{\'rua\': \'mailto:dmarc_agg@vali.email,mailto:upwork@rua.agari.com\'}', 17, 20),
(981, 'success', 0, 'You are receiving forensics reports for your domain.', '{\'ruf\': \'mailto:upwork@ruf.agari.com\'}', 18, 20),
(982, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 24, 20),
(983, 'success', 1, 'STARTTLS is enabled on the remote SMTP server.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 28, 20),
(984, 'success', 0, 'The certificate is valid.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 25, 20),
(985, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 26, 20),
(986, 'success', 0, 'The certificate is valid.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 27, 20),
(987, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 29, 20),
(988, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 20),
(989, 'not_available', 0, '', '', 14, 20),
(990, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.upwork.com\'}', 19, 20),
(991, 'success', 0, 'The certificate is valid.', '', 21, 20),
(992, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 20),
(993, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.upwork.com\'}', 23, 20),
(994, 'success', 0, 'A HSTS header was provided from the server.', '{\'header\': \'Strict-Transport-Security\', \'value\': \'max-age=15552000; includeSubDomains; preload\'}', 20, 20),
(995, 'success', 0, 'The X-Frame-Options header is returned and is properly configured.', '{\'header\': \'X-Frame-Options\', \'value\': \'SAMEORIGIN\'}', 30, 20),
(996, 'success', 0, 'The X-XSS-Protection header is returned and is properly configured.', '{\'header\': \'X-Xss-Protection\', \'value\': \'1; mode=block\'}', 31, 20),
(997, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '{\'header\': \'X-Content-Type-Options\', \'value\': \'nosniff\'}', 32, 20),
(998, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server. This header can be considered as an improved version of the X-XSS-Protection header. It adds another layer of security to protect against cross site scripting, one of the most widespread and critical weaknesses that can lead to serious vulnerabilities.', '', 33, 20),
(999, 'success', 0, 'The Referrer-Policy header is returned and is properly configured.', '{\'header\': \'Referrer-Policy\', \'value\': \'origin-when-cross-origin\'}', 34, 20),
(1000, 'failed', -0.7145, 'The Server header is sent by the server. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence. Server values should be avoided as they potentially reveal internal implementation details that might make it  easier for attackers to find and exploit known security holes.', '{\'header\': \'Server\', \'value\': \'cloudflare\'}', 35, 20),
(1001, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 20),
(1002, 'success', 0, 'The Feature-Policy header is returned by the server.', '{\'header\': \'Feature-Policy\', \'value\': \"camera \'self\'; display-capture \'self\'; microphone \'self\'; speaker \'self\'; geolocation \'self\'\"}', 37, 20),
(1003, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 4}', 46, 20),
(1004, 'failed', -0.3, 'None of the cookie found has a valid syntax.', '[\'\', {\'invalid\': [{\'cookie\': \'__cfduid\', \'value\': 1602763217, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}, {\'cookie\': \'_pxhd\', \'value\': 1602763217, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}]', 38, 20),
(1005, 'failed', -0.3, 'None of the cookies found had the \'HttpOnly\' flag.', '[\'\', {\'unsecure\': [\'_pxhd\']}]', 40, 20),
(1006, 'failed', -0.8, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 20),
(1007, 'success', 0, 'None of the cookies sent via unsecure HTTP had the \'Secure\' flag enabled.', '', 41, 20),
(1008, 'success', 0, 'None of the cookies sent via unsecure HTTP are prefixed.', '', 39, 20),
(1009, 'failed', -0.4, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'__cfduid\', \'__cfruid\', \'_pxhd\']}', 43, 20),
(1010, 'not_available', 0, '', '', 44, 20),
(1011, 'not_available', 0, '', '', 45, 20),
(1012, 'success', 0.7, 'Your IP address is not associated with any malicious activity.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'104.18.90.237\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 20),
(1013, 'success', 0.3, 'Your host is not listed on any DNSBL', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 262, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 860, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 347, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 251, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 246, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 548, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 961, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 955, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1778, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 205, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 203, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 202, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 201, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 200, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 510, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 508, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 502, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 760, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 191, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 208, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 200, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 200, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 202, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 626, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 34, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 205, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 204, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'upwork.com\', \'is-listed\': False}', 48, 20),
(1014, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 20),
(1015, 'partial', 0.4, '', '[443, 80, 2087, 2082, 8080, 2083, 8443]', 50, 20),
(1016, 'failed', -165.60000000000002, 'Your domain was found at least once in known, public data leaks.', '{\'total\': 1666, \'groups\': [{\'leak\': \'adaptio\', \'count\': 1547}, {\'leak\': \'the-collections\', \'count\': 5}, {\'leak\': \'pdlcollection\', \'count\': 98}, {\'leak\': \'customerslive\', \'count\': 9}, {\'leak\': \'antipublic\', \'count\': 1}, {\'leak\': \'breachcompilation\', \'count\': 1}, {\'leak\': \'exploitin\', \'count\': 1}, {\'leak\': \'modernbusinesssolutions\', \'count\': 1}, {\'leak\': \'bulgaria\', \'count\': 1}, {\'leak\': \'gootkit\', \'count\': 1}, {\'leak\': \'data-contacts\', \'count\': 1}], \'query\': \'upwork.com\'}', 51, 20),
(1017, 'failed', -1, 'No SPF record is defined for your domain.\r\n</br></br>\r\nSPF is an email authentication method designed to detect forged sender addresses in emails (email spoofing), a technique often used in phishing and email spam.\r\n</br></br>\r\nSPF allows the receiver to check that an email claiming to come from a specific domain comes from an IP address authorised by that domain\'s administrators. The list of authorised sending hosts and IP addresses for a domain is published in the DNS records for that domain.', '', 1, 21),
(1018, 'not_available', 0, '', '', 6, 21),
(1019, 'not_available', 0, '', '', 4, 21),
(1020, 'not_available', 0, '', '', 2, 21),
(1021, 'not_available', 0, '', '', 7, 21),
(1022, 'not_available', 0, '', '', 5, 21),
(1023, 'not_available', 0, '', '', 3, 21),
(1024, 'not_available', 0, '', '', 8, 21),
(1025, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 21),
(1026, 'failed', -1, 'No DMARC record was found. \r\n</br></br>\r\nSPF and DKIM on their own (or even together) contain various weaknesses. When both are combined with DMARC, they create an enhanced layer of security and sender identification. Part of the DMARC requirements involves the concept of domain alignment, so it makes it much more difficult for fraudsters to spoof a domain.', '{\'records\': 0}', 10, 21),
(1027, 'not_available', 0, '', '{\'records\': 0}', 11, 21),
(1028, 'not_available', 0, '', '{\'records\': 0}', 12, 21),
(1029, 'not_available', 0, '', '{\'records\': 0}', 15, 21),
(1030, 'not_available', 0, '', '{\'records\': 0}', 16, 21),
(1031, 'not_available', 0, '', '{\'records\': 0}', 17, 21),
(1032, 'not_available', 0, '', '{\'records\': 0}', 18, 21),
(1033, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'smx1.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx2.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx3.web-hosting.com\', \'data\': \'success\'}]', 24, 21),
(1034, 'success', 1, 'STARTTLS is enabled on the remote SMTP server.', '[{\'host\': \'smx1.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx2.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx3.web-hosting.com\', \'data\': \'success\'}]', 28, 21),
(1035, 'success', 0, 'The certificate is valid.', '[{\'host\': \'smx1.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx2.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx3.web-hosting.com\', \'data\': \'success\'}]', 25, 21),
(1036, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'smx1.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx2.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx3.web-hosting.com\', \'data\': \'success\'}]', 26, 21),
(1037, 'success', 0, 'The certificate is valid.', '[{\'host\': \'smx1.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx2.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx3.web-hosting.com\', \'data\': \'success\'}]', 27, 21),
(1038, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'smx1.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx2.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx3.web-hosting.com\', \'data\': \'success\'}]', 29, 21),
(1039, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 21),
(1040, 'not_available', 0, '', '', 14, 21),
(1041, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.vanify.co.uk\'}', 19, 21),
(1042, 'failed', -1, 'The certificate is invalid.', '{\'issue\': \"hostname \'www.vanify.co.uk\' doesn\'t match either of \'*.registrar-servers.com\', \'registrar-servers.com\'\"}', 21, 21),
(1043, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 21),
(1044, 'failed', -1, 'The request was not redirected to the HTTPS version. Even though this site has HTTPS enabled visitors can still access the site over insecure  HTTP. \r\n\r\nYou should ensure that all visitors to your site are automatically redirected to the secure HTTPS connection. Implementing HTTPS is of no use if visitors can still access your site via HTTP.', '{\'website\': \'http://www.vanify.co.uk\'}', 23, 21),
(1045, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 21),
(1046, 'failed', -0.2, 'The X-Frame-Options header is not sent by the server. This header protects web applications against clickjacking. This is  a malicious technique of tricking a user into clicking on something different from what the user perceives, thus potentially revealing confidential information or allowing others to take control of their computer.', '', 30, 21),
(1047, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server. This header is designed to defend against Cross Site Scripting that is one of the most widespread and critical weaknesses that can lead to serious vulnerabilities. It\'s easy and simple to implement, see link for details.', '', 31, 21),
(1048, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 21),
(1049, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server. This header can be considered as an improved version of the X-XSS-Protection header. It adds another layer of security to protect against cross site scripting, one of the most widespread and critical weaknesses that can lead to serious vulnerabilities.', '', 33, 21),
(1050, 'failed', -0.1, 'The Referrer-Policy header is not sent by the server. This header enables you to specify when the browser should set Referer headers. The use of this header can be considered as “optional”, but is advised to protect the privacy of your visitors.', '', 34, 21),
(1051, 'failed', -0.7145, 'The Server header is sent by the server. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence. Server values should be avoided as they potentially reveal internal implementation details that might make it  easier for attackers to find and exploit known security holes.', '{\'header\': \'Server\', \'value\': \'Apache\'}', 35, 21),
(1052, 'failed', 0, 'The X-Powered-By header is returned and contains the details of the web framework or programming language used in the web application. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence.', '{\'header\': \'X-Powered-By\', \'value\': \'PHP/7.2.23\'}', 36, 21),
(1053, 'failed', -0.1, 'The Feature-Policy header was not returned by the server. This header can help protect your site from third parties using APIs that have security and privacy implications', '', 37, 21),
(1054, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 2}', 46, 21),
(1055, 'success', 0, 'All cookies found had a valid syntax.', '[\'\', \'\']', 38, 21),
(1056, 'failed', -0.8, 'None of the cookies found had the \'HttpOnly\' flag.', '[{\'unsecure\': [\'PHPSESSID\']}, {\'unsecure\': [\'PHPSESSID\']}]', 40, 21),
(1057, 'failed', -0.8, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 21),
(1058, 'success', 0, 'None of the cookies sent via unsecure HTTP had the \'Secure\' flag enabled.', '', 41, 21),
(1059, 'success', 0, 'None of the cookies sent via unsecure HTTP are prefixed.', '', 39, 21),
(1060, 'failed', -0.4, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'PHPSESSID\']}', 43, 21),
(1061, 'not_available', 0, '', '', 44, 21),
(1062, 'not_available', 0, '', '', 45, 21),
(1063, 'success', 0.7, 'Your IP address is not associated with any malicious activity.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'185.61.152.51\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 21);
INSERT INTO `reports_testresult` (`id`, `state`, `score`, `message`, `data`, `definition_id`, `report_id`) VALUES
(1064, 'success', 0.3, 'Your host is not listed on any DNSBL', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 618, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 1685, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 1563, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 1877, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 1244, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 623, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 603, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 617, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 599, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 970, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 965, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 963, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 964, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 962, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 211, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 584, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 211, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 610, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 1032, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 1030, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 1029, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 1029, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 1030, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 902, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 1087, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 980, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 968, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'vanify.co.uk\', \'is-listed\': False}', 48, 21),
(1065, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 21),
(1066, 'failed', -1, 'A large number of services are exposed to the Internet. An open port is an attack surface. An important principle in security is reducing your attack surface, and ensure that servers have the minimum number of exposed services. \r\n</br></br>\r\nCheck to make sure that only necessary ports are open. Our scan uses PASSIVE identification of open ports - active scans on remote systems are not allowed without prior permission. A full ACTIVE scan can be requested by following the remediation link below.', '[2083, 443, 2096, 2082, 587, 53, 143, 2086, 21, 2077, 80, 2087, 26, 993, 465, 110, 995]', 50, 21),
(1067, 'success', 1, 'Your domain was not found in any known public leaks.', '{\'total\': 0, \'groups\': [], \'query\': \'vanify.co.uk\'}', 51, 21),
(1068, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 -all\']}', 1, 22),
(1069, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 22),
(1070, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 22),
(1071, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 0}', 4, 22),
(1072, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 22),
(1073, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 22),
(1074, 'success', 0, 'Your SPF record prevents unrestricted use of the domain.', '{\'policy\': \'-all\'}', 3, 22),
(1075, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 -all\'}', 8, 22),
(1076, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 22),
(1077, 'failed', -1, 'No DMARC record was found. \r\n</br></br>\r\nSPF and DKIM on their own (or even together) contain various weaknesses. When both are combined with DMARC, they create an enhanced layer of security and sender identification. Part of the DMARC requirements involves the concept of domain alignment, so it makes it much more difficult for fraudsters to spoof a domain.', '{\'records\': 0}', 10, 22),
(1078, 'not_available', 0, '', '{\'records\': 0}', 11, 22),
(1079, 'not_available', 0, '', '{\'records\': 0}', 12, 22),
(1080, 'not_available', 0, '', '{\'records\': 0}', 15, 22),
(1081, 'not_available', 0, '', '{\'records\': 0}', 16, 22),
(1082, 'not_available', 0, '', '{\'records\': 0}', 17, 22),
(1083, 'not_available', 0, '', '{\'records\': 0}', 18, 22),
(1084, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[]', 29, 22),
(1085, 'failed', -1, 'STARTLS is disabled on the remote SMTP server. It’s important to use TLS as unsecured email is a common attack vector. </br><br/>\r\n\r\nEncryption in transit helps protect your emails from being snooped on while they travel between you and your intended recipients. Without encryption they present a prime target for eavesdropping and mass interception as they cross dozens of optical fibres and routers.', '[{\'host\': \'serverfault.com\', \'data\': \'failed\'}]', 28, 22),
(1086, 'not_available', 0, '', '[{\'host\': \'serverfault.com\', \'data\': \'not_available\'}]', 25, 22),
(1087, 'not_available', 0, '', '[{\'host\': \'serverfault.com\', \'data\': \'not_available\'}]', 26, 22),
(1088, 'not_available', 0, '', '[{\'host\': \'serverfault.com\', \'data\': \'not_available\'}]', 27, 22),
(1089, 'success', 0, 'One or more SMTP server(s) were found.', '[\'serverfault.com\']', 24, 22),
(1090, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 22),
(1091, 'not_available', 0, '', '', 14, 22),
(1092, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.serverfault.com\'}', 19, 22),
(1093, 'failed', -1, 'The certificate is invalid.', '{\'self-signed\': False, \'is-expired\': False, \'invalid-cn\': True}', 21, 22),
(1094, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 22),
(1095, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.serverfault.com\'}', 23, 22),
(1096, 'success', 0, 'A HSTS header was provided from the server.', '{\'header\': \'Strict-Transport-Security\', \'value\': \'max-age=15552000\'}', 20, 22),
(1097, 'success', 0, 'The X-Frame-Options header is returned and is properly configured.', '{\'header\': \'X-Frame-Options\', \'value\': \'SAMEORIGIN\'}', 30, 22),
(1098, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server. This header is designed to defend against Cross Site Scripting that is one of the most widespread and critical weaknesses that can lead to serious vulnerabilities. It\'s easy and simple to implement, see link for details.', '', 31, 22),
(1099, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 22),
(1100, 'partial', -0.1, 'The Content Security Policy header is returned but is not properly configured. This header can be considered as an improved version of the X-XSS-Protection header. It adds another layer of security to protect against cross site scripting, one of the most widespread and critical weaknesses that can lead to serious vulnerabilities.', '{\'header\': \'Content-Security-Policy\', \'value\': \"upgrade-insecure-requests; frame-ancestors \'self\' https://stackexchange.com\"}', 33, 22),
(1101, 'failed', -0.1, 'The Referrer-Policy header is not sent by the server. This header enables you to specify when the browser should set Referer headers. The use of this header can be considered as “optional”, but is advised to protect the privacy of your visitors.', '', 34, 22),
(1102, 'success', 0, 'The Server header is not returned by the server.', '', 35, 22),
(1103, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 22),
(1104, 'failed', -0.1, 'The Feature-Policy header was not returned by the server. This header can help protect your site from third parties using APIs that have security and privacy implications', '', 37, 22),
(1105, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 2}', 46, 22),
(1106, 'failed', -0.8, 'None of the cookie found has a valid syntax.', '[{\'invalid\': [{\'cookie\': \'prov\', \'value\': 2682374400, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}, {\'invalid\': [{\'cookie\': \'prov\', \'value\': 2682374400, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}]', 38, 22),
(1107, 'success', 0, 'All of the cookies sent via HTTP uses the \'HttpOnly\'.', '[\'\', \'\']', 40, 22),
(1108, 'failed', -0.8, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 22),
(1109, 'success', 0, 'None of the cookies sent via unsecure HTTP had the \'Secure\' flag enabled.', '', 41, 22),
(1110, 'success', 0, 'None of the cookies sent via unsecure HTTP are prefixed.', '', 39, 22),
(1111, 'failed', -0.4, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'prov\']}', 43, 22),
(1112, 'not_available', 0, '', '', 44, 22),
(1113, 'not_available', 0, '', '', 45, 22),
(1114, 'success', 0.7, 'Your IP address is not associated with any malicious activity.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'151.101.193.69\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 22),
(1115, 'error', 0, 'This test requires manual review.', '{\'error\': \'An exception occured while requesting resources at \\\'https://neutrinoapi.com/host-reputation\\\': {\"api-error\":2,\"api-error-msg\":\"DAILY API LIMIT EXCEEDED\"}.\'}', 48, 22),
(1116, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 22),
(1117, 'success', 1, 'No or few ports are exposed to the Internet.', '[443]', 50, 22),
(1118, 'partial', 0.7999999999999999, '', '{\'total\': 2, \'groups\': [{\'leak\': \'verificationsio\', \'count\': 2}], \'query\': \'serverfault.com\'}', 51, 22),
(1119, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 ip4:198.252.206.0/24 ip4:192.111.0.0/24 ip4:52.38.191.241 ip4:35.190.247.0/24 ip4:64.233.160.0/19 ip4:66.102.0.0/20 ip4:66.249.80.0/20 ip4:72.14.192.0/18 ip4:74.125.0.0/16 ip4:108.177.8.0/21 ip4:173.194.0.0/16 include:_spf1.stackexchange.com ~all\']}', 1, 23),
(1120, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 23),
(1121, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 23),
(1122, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 0}', 4, 23),
(1123, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 23),
(1124, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 23),
(1125, 'success', 0, 'Your SPF record prevents unrestricted use of the domain.', '{\'policy\': \'~all\'}', 3, 23),
(1126, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 ip4:198.252.206.0/24 ip4:192.111.0.0/24 ip4:52.38.191.241 ip4:35.190.247.0/24 ip4:64.233.160.0/19 ip4:66.102.0.0/20 ip4:66.249.80.0/20 ip4:72.14.192.0/18 ip4:74.125.0.0/16 ip4:108.177.8.0/21 ip4:173.194.0.0/16 include:_spf1.stackexchange.com ~all\'}', 8, 23),
(1127, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 23),
(1128, 'success', 0, 'A DMARC record was found for your domain.', '{\'record\': [\'v=DMARC1;p=reject;sp=reject;pct=100;rua=mailto:dmarc-aggregates@stackexchange.com;ruf=mailto:dmarc-forensics@stackexchange.com;fo=1\']}', 10, 23),
(1129, 'success', 0, 'The syntax of your DMARC record is valid.', '{\'record\': \'v=DMARC1;p=reject;sp=reject;pct=100;rua=mailto:dmarc-aggregates@stackexchange.com;ruf=mailto:dmarc-forensics@stackexchange.com;fo=1\'}', 11, 23),
(1130, 'success', 0, 'The DMARC policy is configured to quarantine or reject invalid emails.', '{\'policy\': \'reject\'}', 15, 23),
(1131, 'success', 0, 'All emails are being vetted by DMARC.', '{\'pct\': \'100\'}', 16, 23),
(1132, 'success', 0, 'The destination domain has the proper TXT record to receive domains.', '', 12, 23),
(1133, 'success', 0, 'You are receiving aggregate reports for your domain.', '{\'rua\': \'mailto:dmarc-aggregates@stackexchange.com\'}', 17, 23),
(1134, 'success', 0, 'You are receiving forensics reports for your domain.', '{\'ruf\': \'mailto:dmarc-forensics@stackexchange.com\'}', 18, 23),
(1135, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 24, 23),
(1136, 'success', 1, 'STARTTLS is enabled on the remote SMTP server.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 28, 23),
(1137, 'success', 0, 'The certificate is valid.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 25, 23),
(1138, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 26, 23),
(1139, 'success', 0, 'The certificate is valid.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 27, 23),
(1140, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 29, 23),
(1141, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 23),
(1142, 'not_available', 0, '', '', 14, 23),
(1143, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.stackexchange.com\'}', 19, 23),
(1144, 'success', 0, 'The certificate is valid.', '', 21, 23),
(1145, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 23),
(1146, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.stackexchange.com\'}', 23, 23),
(1147, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 23),
(1148, 'success', 0, 'The X-Frame-Options header is returned and is properly configured.', '{\'header\': \'X-Frame-Options\', \'value\': \'SAMEORIGIN\'}', 30, 23),
(1149, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server. This header is designed to defend against Cross Site Scripting that is one of the most widespread and critical weaknesses that can lead to serious vulnerabilities. It\'s easy and simple to implement, see link for details.', '', 31, 23),
(1150, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 23),
(1151, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server. This header can be considered as an improved version of the X-XSS-Protection header. It adds another layer of security to protect against cross site scripting, one of the most widespread and critical weaknesses that can lead to serious vulnerabilities.', '', 33, 23),
(1152, 'failed', -0.1, 'The Referrer-Policy header is not sent by the server. This header enables you to specify when the browser should set Referer headers. The use of this header can be considered as “optional”, but is advised to protect the privacy of your visitors.', '', 34, 23),
(1153, 'success', 0, 'The Server header is not returned by the server.', '', 35, 23),
(1154, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 23),
(1155, 'failed', -0.1, 'The Feature-Policy header was not returned by the server. This header can help protect your site from third parties using APIs that have security and privacy implications', '', 37, 23),
(1156, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 2}', 46, 23),
(1157, 'failed', -0.8, 'None of the cookie found has a valid syntax.', '[{\'invalid\': [{\'cookie\': \'prov\', \'value\': 2682374400, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}, {\'invalid\': [{\'cookie\': \'prov\', \'value\': 2682374400, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}]', 38, 23),
(1158, 'success', 0, 'All of the cookies sent via HTTP uses the \'HttpOnly\'.', '[\'\', \'\']', 40, 23),
(1159, 'failed', -0.8, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 23),
(1160, 'success', 0, 'None of the cookies sent via unsecure HTTP had the \'Secure\' flag enabled.', '', 41, 23),
(1161, 'success', 0, 'None of the cookies sent via unsecure HTTP are prefixed.', '', 39, 23),
(1162, 'failed', -0.4, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'prov\']}', 43, 23),
(1163, 'not_available', 0, '', '', 44, 23),
(1164, 'not_available', 0, '', '', 45, 23),
(1165, 'success', 0.7, 'Your IP address is not associated with any malicious activity.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'151.101.1.69\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 23),
(1166, 'error', 0, 'This test requires manual review.', '{\'error\': \'An exception occured while requesting resources at \\\'https://neutrinoapi.com/host-reputation\\\': {\"api-error\":2,\"api-error-msg\":\"DAILY API LIMIT EXCEEDED\"}.\'}', 48, 23),
(1167, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 23),
(1168, 'success', 1, 'No or few ports are exposed to the Internet.', '[443]', 50, 23),
(1169, 'failed', -29.8, 'Your domain was found at least once in known, public data leaks.', '{\'total\': 308, \'groups\': [{\'leak\': \'disqus\', \'count\': 2}, {\'leak\': \'dropbox\', \'count\': 7}, {\'leak\': \'verificationsio\', \'count\': 142}, {\'leak\': \'pdlcollection\', \'count\': 54}, {\'leak\': \'datanleads\', \'count\': 52}, {\'leak\': \'adaptio\', \'count\': 30}, {\'leak\': \'data-contacts\', \'count\': 16}, {\'leak\': \'bitly\', \'count\': 1}, {\'leak\': \'pcrai\', \'count\': 2}, {\'leak\': \'the-collections\', \'count\': 1}, {\'leak\': \'tumblr\', \'count\': 1}], \'query\': \'stackexchange.com\'}', 51, 23),
(1170, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 mx a:smtp2.shopify.com ip4:94.199.255.10/32 ip4:208.91.206.64/26 ip4:66.254.113.78/32 ip4:66.254.119.174 ip4:66.254.113.78 ip4:66.254.112.72/30 -all\']}', 1, 24),
(1171, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 24),
(1172, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 24),
(1173, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 1}', 4, 24),
(1174, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 24),
(1175, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 24),
(1176, 'success', 0, 'Your SPF record prevents unrestricted use of the domain.', '{\'policy\': \'-all\'}', 3, 24),
(1177, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 mx a:smtp2.shopify.com ip4:94.199.255.10/32 ip4:208.91.206.64/26 ip4:66.254.113.78/32 ip4:66.254.119.174 ip4:66.254.113.78 ip4:66.254.112.72/30 -all\'}', 8, 24),
(1178, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 24),
(1179, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'mxa-002a0701.gslb.pphosted.com\', \'data\': \'success\'}, {\'host\': \'mxb-002a0701.gslb.pphosted.com\', \'data\': \'success\'}]', 24, 24),
(1180, 'success', 1, 'STARTTLS is enabled on the remote SMTP server.', '[{\'host\': \'mxa-002a0701.gslb.pphosted.com\', \'data\': \'success\'}, {\'host\': \'mxb-002a0701.gslb.pphosted.com\', \'data\': \'success\'}]', 28, 24),
(1181, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mxa-002a0701.gslb.pphosted.com\', \'data\': \'success\'}, {\'host\': \'mxb-002a0701.gslb.pphosted.com\', \'data\': \'success\'}]', 25, 24),
(1182, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'mxa-002a0701.gslb.pphosted.com\', \'data\': \'success\'}, {\'host\': \'mxb-002a0701.gslb.pphosted.com\', \'data\': \'success\'}]', 26, 24),
(1183, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mxa-002a0701.gslb.pphosted.com\', \'data\': \'success\'}, {\'host\': \'mxb-002a0701.gslb.pphosted.com\', \'data\': \'success\'}]', 27, 24),
(1184, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'mxa-002a0701.gslb.pphosted.com\', \'data\': \'success\'}, {\'host\': \'mxb-002a0701.gslb.pphosted.com\', \'data\': \'success\'}]', 29, 24),
(1185, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.Pornhub.com\'}', 19, 24),
(1186, 'failed', -1, 'The certificate is invalid.', '{\'self-signed\': False, \'is-expired\': False, \'invalid-cn\': True}', 21, 24),
(1187, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 24),
(1188, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.Pornhub.com\'}', 23, 24),
(1189, 'failed', -1, 'A HSTS header was not provided by the server. HSTS is a response header that forces your browser to only be able to access the HTTPS version of a  website and any resources on it.</br></br>\r\nEnabling HSTS will stop SSL protocol attacks and cookie hijacking, two vulnerabilities in SSL-enabled websites. And in addition to making a website more secure, HSTS makes sites load quicker by removing a step in the loading procedure.', '', 20, 24),
(1190, 'success', 0, 'The X-Frame-Options header is returned and is properly configured.', '{\'header\': \'X-Frame-Options\', \'value\': \'SAMEORIGIN\'}', 30, 24),
(1191, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server. This header is designed to defend against Cross Site Scripting that is one of the most widespread and critical weaknesses that can lead to serious vulnerabilities. It\'s easy and simple to implement, see link for details.', '', 31, 24),
(1192, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 24),
(1193, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server. This header can be considered as an improved version of the X-XSS-Protection header. It adds another layer of security to protect against cross site scripting, one of the most widespread and critical weaknesses that can lead to serious vulnerabilities.', '', 33, 24),
(1194, 'failed', -0.1, 'The Referrer-Policy header is not sent by the server. This header enables you to specify when the browser should set Referer headers. The use of this header can be considered as “optional”, but is advised to protect the privacy of your visitors.', '', 34, 24),
(1195, 'failed', -0.7145, 'The Server header is sent by the server. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence. Server values should be avoided as they potentially reveal internal implementation details that might make it  easier for attackers to find and exploit known security holes.', '{\'header\': \'Server\', \'value\': \'openresty\'}', 35, 24),
(1196, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 24),
(1197, 'failed', -0.1, 'The Feature-Policy header was not returned by the server. This header can help protect your site from third parties using APIs that have security and privacy implications', '', 37, 24),
(1198, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 5}', 46, 24),
(1199, 'failed', -0.3, 'None of the cookie found has a valid syntax.', '[\'\', {\'invalid\': [{\'cookie\': \'bs\', \'value\': 3458560134, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}, {\'cookie\': \'platform\', \'value\': 3143286534, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}, {\'cookie\': \'ss\', \'value\': 1603136067, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}, {\'cookie\': \'ua\', \'value\': 3143286534, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}]', 38, 24),
(1200, 'failed', -0.4, 'None of the cookies found had the \'HttpOnly\' flag.', '[\'\', {\'unsecure\': [\'bs\', \'platform\', \'ss\', \'ua\', \'RNLBSERVERID\']}]', 40, 24),
(1201, 'failed', -0.4, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 24),
(1202, 'not_available', 0, '', '', 41, 24),
(1203, 'not_available', 0, '', '', 39, 24),
(1204, 'failed', -0.4, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'bs\', \'platform\', \'ss\', \'ua\', \'RNLBSERVERID\']}', 43, 24),
(1205, 'not_available', 0, '', '', 44, 24),
(1206, 'not_available', 0, '', '', 45, 24),
(1207, 'error', 0, '', '', 47, 24),
(1208, 'error', 0, 'This test requires manual review.', '', 48, 24),
(1209, 'error', 0, 'This test requires manual review.', '', 49, 24),
(1210, 'error', 0, 'This test requires manual review.', '', 50, 24),
(1211, 'error', 0, 'This test requires manual review.', '', 51, 24),
(1212, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 include:_spf.google.com include:_spf.smtp.advancedhosters.com -all\']}', 1, 25),
(1213, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 25),
(1214, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 25),
(1215, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 0}', 4, 25),
(1216, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 25),
(1217, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 25),
(1218, 'success', 0, 'Your SPF record prevents unrestricted use of the domain.', '{\'policy\': \'-all\'}', 3, 25),
(1219, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 include:_spf.google.com include:_spf.smtp.advancedhosters.com -all\'}', 8, 25),
(1220, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 25),
(1221, 'success', 0, 'A DMARC record was found for your domain.', '{\'record\': [\'v=DMARC1; p=none; sp=none; rua=mailto:postmaster@xhamster.com\']}', 10, 25),
(1222, 'success', 0, 'The syntax of your DMARC record is valid.', '{\'record\': \'v=DMARC1; p=none; sp=none; rua=mailto:postmaster@xhamster.com\'}', 11, 25),
(1223, 'failed', -1, 'The DMARC policy is set to none. \r\n\r\nWith the DMARC policy none, no action will be taken against email that fails the DMARC check. The email just goes into the inbox / folder of the receiver. This DMARC policy can be used to start monitoring who is sending emails on behalf of a domain.', '{\'policy\': \'none\'}', 15, 25),
(1224, 'success', 0, 'All emails are being vetted by DMARC.', '', 16, 25),
(1225, 'success', 0, 'The destination domain has the proper TXT record to receive domains.', '', 12, 25),
(1226, 'success', 0, 'You are receiving aggregate reports for your domain.', '{\'rua\': \'mailto:postmaster@xhamster.com\'}', 17, 25),
(1227, 'failed', -0.1, 'You are not receiving forensics reports for your domain.', '', 18, 25),
(1228, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}]', 24, 25),
(1229, 'success', 1, 'STARTTLS is enabled on the remote SMTP server.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}]', 28, 25),
(1230, 'success', 0, 'The certificate is valid.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}]', 25, 25),
(1231, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}]', 26, 25),
(1232, 'success', 0, 'The certificate is valid.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}]', 27, 25),
(1233, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}]', 29, 25),
(1234, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 25),
(1235, 'not_available', 0, '', '', 14, 25),
(1236, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.xhamster.com\'}', 19, 25),
(1237, 'success', 0, 'The certificate is valid.', '', 21, 25),
(1238, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 25),
(1239, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.xhamster.com\'}', 23, 25),
(1240, 'partial', -0.5, '', '{\'header\': \'Strict-Transport-Security\', \'value\': \'max-age=86400; preload\'}', 20, 25),
(1241, 'failed', -0.2, 'The X-Frame-Options header is not sent by the server. This header protects web applications against clickjacking. This is  a malicious technique of tricking a user into clicking on something different from what the user perceives, thus potentially revealing confidential information or allowing others to take control of their computer.', '', 30, 25),
(1242, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server. This header is designed to defend against Cross Site Scripting that is one of the most widespread and critical weaknesses that can lead to serious vulnerabilities. It\'s easy and simple to implement, see link for details.', '', 31, 25),
(1243, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 25),
(1244, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server. This header can be considered as an improved version of the X-XSS-Protection header. It adds another layer of security to protect against cross site scripting, one of the most widespread and critical weaknesses that can lead to serious vulnerabilities.', '', 33, 25),
(1245, 'failed', -0.1, 'The Referrer-Policy header is not sent by the server. This header enables you to specify when the browser should set Referer headers. The use of this header can be considered as “optional”, but is advised to protect the privacy of your visitors.', '', 34, 25),
(1246, 'failed', -0.7145, 'The Server header is sent by the server. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence. Server values should be avoided as they potentially reveal internal implementation details that might make it  easier for attackers to find and exploit known security holes.', '{\'header\': \'Server\', \'value\': \'nginx\'}', 35, 25),
(1247, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 25),
(1248, 'failed', -0.1, 'The Feature-Policy header was not returned by the server. This header can help protect your site from third parties using APIs that have security and privacy implications', '', 37, 25),
(1249, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 3}', 46, 25),
(1250, 'failed', -0.8, 'None of the cookie found has a valid syntax.', '[{\'invalid\': [{\'cookie\': \'stats_id\', \'value\': 1572205007, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}, {\'invalid\': [{\'cookie\': \'prs\', \'value\': 1571686608, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}, {\'cookie\': \'stats_id\', \'value\': 1572205007, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}]', 38, 25),
(1251, 'failed', -0.8, 'None of the cookies found had the \'HttpOnly\' flag.', '[{\'unsecure\': [\'stats_id\']}, {\'unsecure\': [\'prs\', \'stats_id\']}]', 40, 25),
(1252, 'failed', -0.8, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 25),
(1253, 'success', 0, 'None of the cookies sent via unsecure HTTP had the \'Secure\' flag enabled.', '', 41, 25),
(1254, 'success', 0, 'None of the cookies sent via unsecure HTTP are prefixed.', '', 39, 25),
(1255, 'failed', -0.4, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'prs\', \'stats_id\']}', 43, 25),
(1256, 'not_available', 0, '', '', 44, 25),
(1257, 'not_available', 0, '', '', 45, 25),
(1258, 'success', 0.7, 'Your IP address is not associated with any malicious activity.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'88.208.60.136\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 25),
(1259, 'success', 0.3, 'Your host is not listed on any DNSBL', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 386, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 1329, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 876, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 435, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 243, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 459, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 3322, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 3315, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 3316, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 232, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 231, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 230, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 226, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 230, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 693, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 695, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 687, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 604, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 899, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 973, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 973, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 973, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 973, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 1159, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 45, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 382, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 356, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'xhamster.com\', \'is-listed\': False}', 48, 25),
(1260, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 25),
(1261, 'success', 1, 'No or few ports are exposed to the Internet.', '[443, 80]', 50, 25),
(1262, 'failed', -9.700000000000001, 'Your domain was found at least once in known, public data leaks.', '{\'total\': 107, \'groups\': [{\'leak\': \'the-collections\', \'count\': 33}, {\'leak\': \'verificationsio\', \'count\': 12}, {\'leak\': \'antipublic\', \'count\': 16}, {\'leak\': \'breachcompilation\', \'count\': 18}, {\'leak\': \'fling\', \'count\': 5}, {\'leak\': \'ashleymadison\', \'count\': 4}, {\'leak\': \'myspace\', \'count\': 6}, {\'leak\': \'exploitin\', \'count\': 6}, {\'leak\': \'blackhatworld\', \'count\': 1}, {\'leak\': \'xat\', \'count\': 1}, {\'leak\': \'pastebin\', \'count\': 1}, {\'leak\': \'adultfriendfinder\', \'count\': 1}, {\'leak\': \'mate1\', \'count\': 1}, {\'leak\': \'modernbusinesssolutions\', \'count\': 1}, {\'leak\': \'twitter\', \'count\': 1}], \'query\': \'xhamster.com\'}', 51, 25),
(1263, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 include:spf.protection.outlook.com include:eu._netblocks.mimecast.com include:amazonses.com  -all\']}', 1, 26),
(1264, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 26),
(1265, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 26),
(1266, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 2}', 4, 26),
(1267, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 26),
(1268, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 26),
(1269, 'success', 0, 'Your SPF record prevents unrestricted use of the domain.', '{\'policy\': \'-all\'}', 3, 26),
(1270, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 include:spf.protection.outlook.com include:eu._netblocks.mimecast.com include:amazonses.com  -all\'}', 8, 26),
(1271, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 26),
(1272, 'failed', -1, 'No DMARC record was found. \r\n</br></br>\r\nSPF and DKIM on their own (or even together) contain various weaknesses. When both are combined with DMARC, they create an enhanced layer of security and sender identification. Part of the DMARC requirements involves the concept of domain alignment, so it makes it much more difficult for fraudsters to spoof a domain.', '{\'records\': 0}', 10, 26),
(1273, 'not_available', 0, '', '{\'records\': 0}', 11, 26),
(1274, 'not_available', 0, '', '{\'records\': 0}', 12, 26),
(1275, 'not_available', 0, '', '{\'records\': 0}', 15, 26),
(1276, 'not_available', 0, '', '{\'records\': 0}', 16, 26),
(1277, 'not_available', 0, '', '{\'records\': 0}', 17, 26),
(1278, 'not_available', 0, '', '{\'records\': 0}', 18, 26),
(1279, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'eu-smtp-inbound-1.mimecast.com\', \'data\': \'success\'}, {\'host\': \'eu-smtp-inbound-2.mimecast.com\', \'data\': \'success\'}]', 24, 26),
(1280, 'success', 1, 'STARTTLS is enabled on the remote SMTP server.', '[{\'host\': \'eu-smtp-inbound-1.mimecast.com\', \'data\': \'success\'}, {\'host\': \'eu-smtp-inbound-2.mimecast.com\', \'data\': \'success\'}]', 28, 26),
(1281, 'success', 0, 'The certificate is valid.', '[{\'host\': \'eu-smtp-inbound-1.mimecast.com\', \'data\': \'success\'}, {\'host\': \'eu-smtp-inbound-2.mimecast.com\', \'data\': \'success\'}]', 25, 26),
(1282, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'eu-smtp-inbound-1.mimecast.com\', \'data\': \'success\'}, {\'host\': \'eu-smtp-inbound-2.mimecast.com\', \'data\': \'success\'}]', 26, 26),
(1283, 'success', 0, 'The certificate is valid.', '[{\'host\': \'eu-smtp-inbound-1.mimecast.com\', \'data\': \'success\'}, {\'host\': \'eu-smtp-inbound-2.mimecast.com\', \'data\': \'success\'}]', 27, 26),
(1284, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'eu-smtp-inbound-1.mimecast.com\', \'data\': \'success\'}, {\'host\': \'eu-smtp-inbound-2.mimecast.com\', \'data\': \'success\'}]', 29, 26),
(1285, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 26),
(1286, 'not_available', 0, '', '', 14, 26),
(1287, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.britishchambers.org.uk\'}', 19, 26),
(1288, 'failed', -1, 'The certificate is invalid.', '{\'self-signed\': False, \'is-expired\': False, \'invalid-cn\': True}', 21, 26),
(1289, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 26),
(1290, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.britishchambers.org.uk\'}', 23, 26),
(1291, 'failed', -1, 'A HSTS header was not provided by the server. HSTS is a response header that forces your browser to only be able to access the HTTPS version of a  website and any resources on it.</br></br>\r\nEnabling HSTS will stop SSL protocol attacks and cookie hijacking, two vulnerabilities in SSL-enabled websites. And in addition to making a website more secure, HSTS makes sites load quicker by removing a step in the loading procedure.', '', 20, 26),
(1292, 'success', 0, 'The X-Frame-Options header is returned and is properly configured.', '{\'header\': \'X-Frame-Options\', \'value\': \'SAMEORIGIN\'}', 30, 26),
(1293, 'success', 0, 'The X-XSS-Protection header is returned and is properly configured.', '{\'header\': \'X-Xss-Protection\', \'value\': \'1; mode=block\'}', 31, 26),
(1294, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '{\'header\': \'X-Content-Type-Options\', \'value\': \'nosniff\'}', 32, 26),
(1295, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server. This header can be considered as an improved version of the X-XSS-Protection header. It adds another layer of security to protect against cross site scripting, one of the most widespread and critical weaknesses that can lead to serious vulnerabilities.', '', 33, 26);
INSERT INTO `reports_testresult` (`id`, `state`, `score`, `message`, `data`, `definition_id`, `report_id`) VALUES
(1296, 'failed', -0.1, 'The Referrer-Policy header is not sent by the server. This header enables you to specify when the browser should set Referer headers. The use of this header can be considered as “optional”, but is advised to protect the privacy of your visitors.', '', 34, 26),
(1297, 'failed', -0.7145, 'The Server header is sent by the server. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence. Server values should be avoided as they potentially reveal internal implementation details that might make it  easier for attackers to find and exploit known security holes.', '{\'header\': \'Server\', \'value\': \'cloudflare\'}', 35, 26),
(1298, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 26),
(1299, 'failed', -0.1, 'The Feature-Policy header was not returned by the server. This header can help protect your site from third parties using APIs that have security and privacy implications', '', 37, 26),
(1300, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 3}', 46, 26),
(1301, 'failed', -0.4, 'None of the cookie found has a valid syntax.', '[\'\', {\'invalid\': [{\'cookie\': \'__cfduid\', \'value\': 1603273456, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}, {\'cookie\': \'XSRF-TOKEN\', \'value\': 1571744657, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}, {\'cookie\': \'laravel_session\', \'value\': 1571744657, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}]', 38, 26),
(1302, 'failed', -0.3, 'None of the cookies found had the \'HttpOnly\' flag.', '[\'\', {\'unsecure\': [\'XSRF-TOKEN\']}]', 40, 26),
(1303, 'failed', -0.4, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 26),
(1304, 'not_available', 0, '', '', 41, 26),
(1305, 'not_available', 0, '', '', 39, 26),
(1306, 'failed', -0.4, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'__cfduid\', \'XSRF-TOKEN\', \'laravel_session\']}', 43, 26),
(1307, 'not_available', 0, '', '', 44, 26),
(1308, 'not_available', 0, '', '', 45, 26),
(1309, 'success', 0.7, 'Your IP address is not associated with any malicious activity.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'104.24.30.99\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 26),
(1310, 'success', 0.3, 'Your host is not listed on any DNSBL', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 252, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 462, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 254, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 179, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 211, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 429, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 594, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 590, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 591, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 75, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 74, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 74, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 74, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 72, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 465, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 265, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 261, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 617, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 141, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 63, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 63, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 65, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 60, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 459, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 35, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 66, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 56, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'britishchambers.org.uk\', \'is-listed\': False}', 48, 26),
(1311, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 26),
(1312, 'partial', 0.25, '', '[8080, 2083, 80, 2052, 2086, 443, 8443, 2087]', 50, 26),
(1313, 'failed', -15.900000000000002, 'Your domain was found at least once in known, public data leaks.', '{\'total\': 169, \'groups\': [{\'leak\': \'the-collections\', \'count\': 20}, {\'leak\': \'verificationsio\', \'count\': 58}, {\'leak\': \'breachcompilation\', \'count\': 21}, {\'leak\': \'linkedin\', \'count\': 29}, {\'leak\': \'pdlcollection\', \'count\': 6}, {\'leak\': \'bitly\', \'count\': 1}, {\'leak\': \'myfitnesspal\', \'count\': 3}, {\'leak\': \'antipublic\', \'count\': 7}, {\'leak\': \'exploitin\', \'count\': 4}, {\'leak\': \'tumblr\', \'count\': 1}, {\'leak\': \'dropbox\', \'count\': 3}, {\'leak\': \'disqus\', \'count\': 5}, {\'leak\': \'adobe\', \'count\': 6}, {\'leak\': \'customerslive\', \'count\': 2}, {\'leak\': \'lastfm\', \'count\': 1}, {\'leak\': \'myspace\', \'count\': 2}], \'query\': \'britishchambers.org.uk\'}', 51, 26),
(1314, 'failed', -1, 'No SPF record is defined for your domain.\r\n</br></br>\r\nSPF is an email authentication method designed to detect forged sender addresses in emails (email spoofing), a technique often used in phishing and email spam.\r\n</br></br>\r\nSPF allows the receiver to check that an email claiming to come from a specific domain comes from an IP address authorised by that domain\'s administrators. The list of authorised sending hosts and IP addresses for a domain is published in the DNS records for that domain.', '', 1, 27),
(1315, 'not_available', 0, '', '', 6, 27),
(1316, 'not_available', 0, '', '', 4, 27),
(1317, 'not_available', 0, '', '', 2, 27),
(1318, 'not_available', 0, '', '', 7, 27),
(1319, 'not_available', 0, '', '', 5, 27),
(1320, 'not_available', 0, '', '', 3, 27),
(1321, 'not_available', 0, '', '', 8, 27),
(1322, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 27),
(1323, 'failed', -1, 'No DMARC record was found. \r\n</br></br>\r\nSPF and DKIM on their own (or even together) contain various weaknesses. When both are combined with DMARC, they create an enhanced layer of security and sender identification. Part of the DMARC requirements involves the concept of domain alignment, so it makes it much more difficult for fraudsters to spoof a domain.', '{\'records\': 0}', 10, 27),
(1324, 'not_available', 0, '', '{\'records\': 0}', 11, 27),
(1325, 'not_available', 0, '', '{\'records\': 0}', 12, 27),
(1326, 'not_available', 0, '', '{\'records\': 0}', 15, 27),
(1327, 'not_available', 0, '', '{\'records\': 0}', 16, 27),
(1328, 'not_available', 0, '', '{\'records\': 0}', 17, 27),
(1329, 'not_available', 0, '', '{\'records\': 0}', 18, 27),
(1330, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[]', 29, 27),
(1331, 'success', 1, 'STARTTLS is enabled on the remote SMTP server.', '[{\'host\': \'smx1.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx2.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx3.web-hosting.com\', \'data\': \'failed\'}]', 28, 27),
(1332, 'success', 0, 'The certificate is valid.', '[{\'host\': \'smx1.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx2.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx3.web-hosting.com\', \'data\': \'not_available\'}]', 25, 27),
(1333, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'smx1.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx2.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx3.web-hosting.com\', \'data\': \'not_available\'}]', 26, 27),
(1334, 'not_available', 0, '', '[{\'host\': \'smx1.web-hosting.com\', \'data\': \'not_available\'}, {\'host\': \'smx2.web-hosting.com\', \'data\': \'not_available\'}, {\'host\': \'smx3.web-hosting.com\', \'data\': \'not_available\'}]', 27, 27),
(1335, 'success', 0, 'One or more SMTP server(s) were found.', '[\'smx1.web-hosting.com\', \'smx2.web-hosting.com\', \'smx3.web-hosting.com\']', 24, 27),
(1336, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 27),
(1337, 'not_available', 0, '', '', 14, 27),
(1338, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.vanify.co.uk\'}', 19, 27),
(1339, 'failed', -1, 'The certificate is invalid.', '{\'issue\': \"hostname \'www.vanify.co.uk\' doesn\'t match either of \'*.registrar-servers.com\', \'registrar-servers.com\'\"}', 21, 27),
(1340, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 27),
(1341, 'failed', -1, 'The request was not redirected to the HTTPS version. Even though this site has HTTPS enabled visitors can still access the site over insecure  HTTP. \r\n</br><br>\r\nYou should ensure that all visitors to your site are automatically redirected to the secure HTTPS connection. Implementing HTTPS is of no use if visitors can still access your site via HTTP.', '{\'website\': \'http://www.vanify.co.uk\'}', 23, 27),
(1342, 'failed', -1, 'A HSTS header was not provided by the server. HSTS is a response header that forces your browser to only be able to access the HTTPS version of a  website and any resources on it.</br></br>\r\nEnabling HSTS will stop SSL protocol attacks and cookie hijacking, two vulnerabilities in SSL-enabled websites. And in addition to making a website more secure, HSTS makes sites load quicker by removing a step in the loading procedure.', '', 20, 27),
(1343, 'failed', -0.2, 'The X-Frame-Options header is not sent by the server. This header protects web applications against clickjacking. This is  a malicious technique of tricking a user into clicking on something different from what the user perceives, thus potentially revealing confidential information or allowing others to take control of their computer.', '', 30, 27),
(1344, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server. This header is designed to defend against Cross Site Scripting that is one of the most widespread and critical weaknesses that can lead to serious vulnerabilities. It\'s easy and simple to implement, see link for details.', '', 31, 27),
(1345, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 27),
(1346, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server. This header can be considered as an improved version of the X-XSS-Protection header. It adds another layer of security to protect against cross site scripting, one of the most widespread and critical weaknesses that can lead to serious vulnerabilities.', '', 33, 27),
(1347, 'failed', -0.1, 'The Referrer-Policy header is not sent by the server. This header enables you to specify when the browser should set Referer headers. The use of this header can be considered as “optional”, but is advised to protect the privacy of your visitors.', '', 34, 27),
(1348, 'failed', -0.7145, 'The Server header is sent by the server. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence. Server values should be avoided as they potentially reveal internal implementation details that might make it  easier for attackers to find and exploit known security holes.', '{\'header\': \'Server\', \'value\': \'Apache\'}', 35, 27),
(1349, 'failed', 0, 'The X-Powered-By header is returned and contains the details of the web framework or programming language used in the web application. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence.', '{\'header\': \'X-Powered-By\', \'value\': \'PHP/7.2.24\'}', 36, 27),
(1350, 'failed', -0.1, 'The Feature-Policy header was not returned by the server. This header can help protect your site from third parties using APIs that have security and privacy implications', '', 37, 27),
(1351, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 2}', 46, 27),
(1352, 'success', 0, 'All cookies found had a valid syntax.', '[\'\', \'\']', 38, 27),
(1353, 'failed', -0.8, 'None of the cookies found had the \'HttpOnly\' flag.', '[{\'unsecure\': [\'PHPSESSID\']}, {\'unsecure\': [\'PHPSESSID\']}]', 40, 27),
(1354, 'failed', -0.8, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 27),
(1355, 'success', 0, 'None of the cookies sent via unsecure HTTP had the \'Secure\' flag enabled.', '', 41, 27),
(1356, 'success', 0, 'None of the cookies sent via unsecure HTTP are prefixed.', '', 39, 27),
(1357, 'failed', -0.4, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'PHPSESSID\']}', 43, 27),
(1358, 'not_available', 0, '', '', 44, 27),
(1359, 'not_available', 0, '', '', 45, 27),
(1360, 'success', 0.7, 'Your IP address is not associated with any malicious activity.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'185.61.152.51\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 27),
(1361, 'success', 0.3, 'Your host is not listed on any DNSBL', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 311, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 823, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 955, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 330, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 456, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 382, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 200, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 192, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 200, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 49, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 47, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 48, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 48, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 50, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 812, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 905, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 33, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 590, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 354, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 450, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 450, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 450, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 451, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 887, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 58, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 448, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 441, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'vanify.co.uk\', \'is-listed\': False}', 48, 27),
(1362, 'failed', -1, 'One of more hosts may expose services with known vulnerabilities. See the links below for information on each specific item. \r\n</br></br>\r\nCVE Vulnerabilities are identified by passive fingerprinting of server software and version. The vulnerabilities are implied based on the software and version. This is a passive test and so the server may not be impacted by all of the issues detected.\r\n</br></br>\r\nYou can request an ACTIVE vulnerability scan by following the remediation link below.', '[\'CVE-2018-19935\', \'CVE-2019-9675\', \'CVE-2019-9639\', \'CVE-2019-9022\', \'CVE-2019-9023\', \'CVE-2019-9020\', \'CVE-2019-9641\', \'CVE-2019-9638\', \'CVE-2019-9024\', \'CVE-2019-9021\', \'CVE-2019-9637\']', 49, 27),
(1363, 'failed', -1, 'A large number of services are exposed to the Internet. An open port is an attack surface. An important principle in security is reducing your attack surface, and ensure that servers have the minimum number of exposed services. \r\n</br></br>\r\nCheck to make sure that only necessary ports are open. Our scan uses PASSIVE identification of open ports - active scans on remote systems are not allowed without prior permission. A full ACTIVE scan can be requested by following the remediation link below.', '[80, 2082, 443, 2087, 53, 143, 2096, 2083, 993, 995, 2086, 21, 26, 3306, 465, 587]', 50, 27),
(1364, 'success', 1, 'Your domain was not found in any known public leaks.', '{\'total\': 0, \'groups\': [], \'query\': \'vanify.co.uk\'}', 51, 27),
(1365, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 include:spf.protection.outlook.com include:spf1.sirva.com include:spf-0028c102.pphosted.com ip4:206.208.247.35 ip4:206.208.247.36 ip4:40.79.69.112 ip4:104.209.174.117 -all\']}', 1, 28),
(1366, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 28),
(1367, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 28),
(1368, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 7}', 4, 28),
(1369, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 28),
(1370, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 28),
(1371, 'success', 0, 'Your SPF record prevents unrestricted use of the domain.', '{\'policy\': \'-all\'}', 3, 28),
(1372, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 include:spf.protection.outlook.com include:spf1.sirva.com include:spf-0028c102.pphosted.com ip4:206.208.247.35 ip4:206.208.247.36 ip4:40.79.69.112 ip4:104.209.174.117 -all\'}', 8, 28),
(1373, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 28),
(1374, 'success', 0, 'A DMARC record was found for your domain.', '{\'record\': [\'v=DMARC1; p=quarantine; pct=100; rua=mailto:dmarc_rua@emaildefense.proofpoint.com; ruf=mailto:dmarc_ruf@emaildefense.proofpoint.com; sp=none; aspf=s;\']}', 10, 28),
(1375, 'failed', -1, 'The syntax of yourDMARC record is invalid.', '{\'record\': \'v=DMARC1; p=quarantine; pct=100; rua=mailto:dmarc_rua@emaildefense.proofpoint.com; ruf=mailto:dmarc_ruf@emaildefense.proofpoint.com; sp=none; aspf=s;\'}', 11, 28),
(1376, 'success', 0, 'The DMARC policy is configured to quarantine or reject invalid emails.', '{\'policy\': \'quarantine\'}', 15, 28),
(1377, 'success', 0, 'All emails are being vetted by DMARC.', '{\'pct\': \'100\'}', 16, 28),
(1378, 'success', 0, 'The destination domain has the proper TXT record to receive domains.', '', 12, 28),
(1379, 'success', 0, 'You are receiving aggregate reports for your domain.', '{\'rua\': \'mailto:dmarc_rua@emaildefense.proofpoint.com\'}', 17, 28),
(1380, 'success', 0, 'You are receiving forensics reports for your domain.', '{\'ruf\': \'mailto:dmarc_ruf@emaildefense.proofpoint.com\'}', 18, 28),
(1381, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'mxa-0028c102.gslb.pphosted.com\', \'data\': \'success\'}, {\'host\': \'mxb-0028c102.gslb.pphosted.com\', \'data\': \'success\'}]', 24, 28),
(1382, 'success', 1, 'STARTTLS is enabled on the remote SMTP server.', '[{\'host\': \'mxa-0028c102.gslb.pphosted.com\', \'data\': \'success\'}, {\'host\': \'mxb-0028c102.gslb.pphosted.com\', \'data\': \'success\'}]', 28, 28),
(1383, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mxa-0028c102.gslb.pphosted.com\', \'data\': \'success\'}, {\'host\': \'mxb-0028c102.gslb.pphosted.com\', \'data\': \'success\'}]', 25, 28),
(1384, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'mxa-0028c102.gslb.pphosted.com\', \'data\': \'success\'}, {\'host\': \'mxb-0028c102.gslb.pphosted.com\', \'data\': \'success\'}]', 26, 28),
(1385, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mxa-0028c102.gslb.pphosted.com\', \'data\': \'success\'}, {\'host\': \'mxb-0028c102.gslb.pphosted.com\', \'data\': \'success\'}]', 27, 28),
(1386, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'mxa-0028c102.gslb.pphosted.com\', \'data\': \'success\'}, {\'host\': \'mxb-0028c102.gslb.pphosted.com\', \'data\': \'success\'}]', 29, 28),
(1387, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 28),
(1388, 'not_available', 0, '', '', 14, 28),
(1389, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.sirva.com\'}', 19, 28),
(1390, 'success', 0, 'The certificate is valid.', '', 21, 28),
(1391, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 28),
(1392, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.sirva.com\'}', 23, 28),
(1393, 'success', 0, 'A HSTS header was provided from the server.', '{\'header\': \'Strict-Transport-Security\', \'value\': \'max-age=31536000; includeSubDomains;\'}', 20, 28),
(1394, 'success', 0, 'The X-Frame-Options header is returned and is properly configured.', '{\'header\': \'X-Frame-Options\', \'value\': \'sameorigin\'}', 30, 28),
(1395, 'success', 0, 'The X-XSS-Protection header is returned and is properly configured.', '{\'header\': \'X-Xss-Protection\', \'value\': \'1; mode=block\'}', 31, 28),
(1396, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '{\'header\': \'X-Content-Type-Options\', \'value\': \'nosniff\'}', 32, 28),
(1397, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server. This header can be considered as an improved version of the X-XSS-Protection header. It adds another layer of security to protect against cross site scripting, one of the most widespread and critical weaknesses that can lead to serious vulnerabilities.', '', 33, 28),
(1398, 'failed', -0.1, 'The Referrer-Policy header is not sent by the server. This header enables you to specify when the browser should set Referer headers. The use of this header can be considered as “optional”, but is advised to protect the privacy of your visitors.', '', 34, 28),
(1399, 'failed', -0.1429, 'The Server header is sent by the server. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence. Server values should be avoided as they potentially reveal internal implementation details that might make it  easier for attackers to find and exploit known security holes.', '{\'header\': \'Server\', \'value\': \'Microsoft-IIS/8.5\'}', 35, 28),
(1400, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 28),
(1401, 'failed', -0.1, 'The Feature-Policy header was not returned by the server. This header can help protect your site from third parties using APIs that have security and privacy implications', '', 37, 28),
(1402, 'success', 0, 'The target website is not sending any cookies.', '', 46, 28),
(1403, 'not_available', 0, '', '', 38, 28),
(1404, 'not_available', 0, '', '', 39, 28),
(1405, 'not_available', 0, '', '', 40, 28),
(1406, 'not_available', 0, '', '', 41, 28),
(1407, 'not_available', 0, '', '', 42, 28),
(1408, 'not_available', 0, '', '', 43, 28),
(1409, 'not_available', 0, '', '', 44, 28),
(1410, 'not_available', 0, '', '', 45, 28),
(1411, 'success', 0.7, 'Your IP address is not associated with any malicious activity.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'13.68.81.26\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 28),
(1412, 'success', 0.3, 'Your host is not listed on any DNSBL', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 2138, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 2135, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 2136, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 2130, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 2130, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 2128, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 2126, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 2120, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 2118, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 2116, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 2114, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 2115, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 2112, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 2112, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 44, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 2107, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 44, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 2107, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 2106, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 2102, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 2101, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 2101, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 2100, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 2100, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 50, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 2097, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 2090, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'sirva.com\', \'is-listed\': False}', 48, 28),
(1413, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 28),
(1414, 'success', 1, 'No or few ports are exposed to the Internet.', '[443, 80]', 50, 28),
(1415, 'failed', -962.4000000000001, 'Your domain was found at least once in known, public data leaks.', '{\'total\': 9634, \'groups\': [{\'leak\': \'the-collections\', \'count\': 386}, {\'leak\': \'verificationsio\', \'count\': 3230}, {\'leak\': \'breachcompilation\', \'count\': 543}, {\'leak\': \'linkedin\', \'count\': 649}, {\'leak\': \'pdlcollection\', \'count\': 1341}, {\'leak\': \'data-contacts\', \'count\': 962}, {\'leak\': \'datanleads\', \'count\': 834}, {\'leak\': \'pcrai\', \'count\': 764}, {\'leak\': \'adaptio\', \'count\': 213}, {\'leak\': \'myspace\', \'count\': 33}, {\'leak\': \'dropbox\', \'count\': 44}, {\'leak\': \'customerslive\', \'count\': 54}, {\'leak\': \'antipublic\', \'count\': 230}, {\'leak\': \'exploitin\', \'count\': 193}, {\'leak\': \'myfitnesspal\', \'count\': 61}, {\'leak\': \'disqus\', \'count\': 15}, {\'leak\': \'adobe\', \'count\': 31}, {\'leak\': \'modernbusinesssolutions\', \'count\': 16}, {\'leak\': \'forbes\', \'count\': 1}, {\'leak\': \'lastfm\', \'count\': 2}, {\'leak\': \'ashleymadison\', \'count\': 3}, {\'leak\': \'tumblr\', \'count\': 1}, {\'leak\': \'mate1\', \'count\': 4}, {\'leak\': \'twitter\', \'count\': 1}, {\'leak\': \'pastebin\', \'count\': 2}, {\'leak\': \'neopets\', \'count\': 4}, {\'leak\': \'fling\', \'count\': 2}, {\'leak\': \'experian\', \'count\': 2}, {\'leak\': \'apexsms\', \'count\': 1}, {\'leak\': \'imesh\', \'count\': 2}, {\'leak\': \'bitly\', \'count\': 2}, {\'leak\': \'edmodo\', \'count\': 3}, {\'leak\': \'nihonomaru\', \'count\': 1}, {\'leak\': \'gawker\', \'count\': 1}, {\'leak\': \'unknown-btc\', \'count\': 1}, {\'leak\': \'badoo\', \'count\': 1}, {\'leak\': \'zoosk\', \'count\': 1}], \'query\': \'sirva.com\'}', 51, 28),
(1416, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 ip4:198.175.38.172 ip4:168.143.175.116 ip4:168.143.175.117 ip4:167.182.124.33 ip4:67.192.203.103 ip4:167.182.124.98 ip4:216.71.147.73 include:realogy.com -all\']}', 1, 29),
(1417, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 29),
(1418, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 29),
(1419, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 1}', 4, 29),
(1420, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 29),
(1421, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 29),
(1422, 'success', 0, 'Your SPF record prevents unrestricted use of the domain.', '{\'policy\': \'-all\'}', 3, 29),
(1423, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 ip4:198.175.38.172 ip4:168.143.175.116 ip4:168.143.175.117 ip4:167.182.124.33 ip4:67.192.203.103 ip4:167.182.124.98 ip4:216.71.147.73 include:realogy.com -all\'}', 8, 29),
(1424, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 29),
(1425, 'success', 0, 'A DMARC record was found for your domain.', '{\'record\': [\'v=DMARC1; p=none; rua=mailto:dmarcadmin@cartus.com; ruf=mailto:dmarcadmin@cartus.com; fo=1;\']}', 10, 29),
(1426, 'failed', -1, 'The syntax of yourDMARC record is invalid.', '{\'record\': \'v=DMARC1; p=none; rua=mailto:dmarcadmin@cartus.com; ruf=mailto:dmarcadmin@cartus.com; fo=1;\'}', 11, 29),
(1427, 'failed', -1, 'The DMARC policy is set to none. \r\n\r\nWith the DMARC policy none, no action will be taken against email that fails the DMARC check. The email just goes into the inbox / folder of the receiver. This DMARC policy can be used to start monitoring who is sending emails on behalf of a domain.', '{\'policy\': \'none\'}', 15, 29),
(1428, 'success', 0, 'All emails are being vetted by DMARC.', '', 16, 29),
(1429, 'success', 0, 'The destination domain has the proper TXT record to receive domains.', '', 12, 29),
(1430, 'success', 0, 'You are receiving aggregate reports for your domain.', '{\'rua\': \'mailto:dmarcadmin@cartus.com\'}', 17, 29),
(1431, 'success', 0, 'You are receiving forensics reports for your domain.', '{\'ruf\': \'mailto:dmarcadmin@cartus.com\'}', 18, 29),
(1432, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'mailin3.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin4.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin5.cartus.com\', \'data\': \'success\'}]', 24, 29),
(1433, 'success', 1, 'STARTTLS is enabled on the remote SMTP server.', '[{\'host\': \'mailin3.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin4.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin5.cartus.com\', \'data\': \'success\'}]', 28, 29),
(1434, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mailin3.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin4.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin5.cartus.com\', \'data\': \'success\'}]', 25, 29),
(1435, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'mailin3.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin4.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin5.cartus.com\', \'data\': \'success\'}]', 26, 29),
(1436, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mailin3.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin4.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin5.cartus.com\', \'data\': \'success\'}]', 27, 29),
(1437, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'mailin3.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin4.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin5.cartus.com\', \'data\': \'success\'}]', 29, 29),
(1438, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 29),
(1439, 'not_available', 0, '', '', 14, 29),
(1440, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.cartus.com\'}', 19, 29),
(1441, 'success', 0, 'The certificate is valid.', '', 21, 29),
(1442, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 29),
(1443, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.cartus.com\'}', 23, 29),
(1444, 'failed', -1, 'A HSTS header was not provided by the server. HSTS is a response header that forces your browser to only be able to access the HTTPS version of a  website and any resources on it.</br></br>\r\nEnabling HSTS will stop SSL protocol attacks and cookie hijacking, two vulnerabilities in SSL-enabled websites. And in addition to making a website more secure, HSTS makes sites load quicker by removing a step in the loading procedure.', '', 20, 29),
(1445, 'success', 0, 'The X-Frame-Options header is returned and is properly configured.', '{\'header\': \'X-Frame-Options\', \'value\': \'SAMEORIGIN\'}', 30, 29),
(1446, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server. This header is designed to defend against Cross Site Scripting that is one of the most widespread and critical weaknesses that can lead to serious vulnerabilities. It\'s easy and simple to implement, see link for details.', '', 31, 29),
(1447, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 29),
(1448, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server. This header can be considered as an improved version of the X-XSS-Protection header. It adds another layer of security to protect against cross site scripting, one of the most widespread and critical weaknesses that can lead to serious vulnerabilities.', '', 33, 29),
(1449, 'failed', -0.1, 'The Referrer-Policy header is not sent by the server. This header enables you to specify when the browser should set Referer headers. The use of this header can be considered as “optional”, but is advised to protect the privacy of your visitors.', '', 34, 29),
(1450, 'failed', -0.7145, 'The Server header is sent by the server. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence. Server values should be avoided as they potentially reveal internal implementation details that might make it  easier for attackers to find and exploit known security holes.', '{\'header\': \'Server\', \'value\': \'Apache\'}', 35, 29),
(1451, 'failed', 0, 'The X-Powered-By header is returned and contains the details of the web framework or programming language used in the web application. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence.', '{\'header\': \'X-Powered-By\', \'value\': \'PHP/5.5.38\'}', 36, 29),
(1452, 'failed', -0.1, 'The Feature-Policy header was not returned by the server. This header can help protect your site from third parties using APIs that have security and privacy implications', '', 37, 29),
(1453, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 1}', 46, 29),
(1454, 'success', 0, 'All cookies found had a valid syntax.', '[\'\', \'\']', 38, 29),
(1455, 'success', 0, 'All of the cookies sent via HTTP uses the \'HttpOnly\'.', '[\'\', \'\']', 40, 29),
(1456, 'failed', -0.4, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 29),
(1457, 'not_available', 0, '', '', 41, 29),
(1458, 'not_available', 0, '', '', 39, 29),
(1459, 'success', 0, 'All of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '', 43, 29),
(1460, 'not_available', 0, '', '', 44, 29),
(1461, 'not_available', 0, '', '', 45, 29),
(1462, 'success', 0.7, 'Your IP address is not associated with any malicious activity.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'204.232.226.18\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 29);
INSERT INTO `reports_testresult` (`id`, `state`, `score`, `message`, `data`, `definition_id`, `report_id`) VALUES
(1463, 'success', 0.3, 'Your host is not listed on any DNSBL', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 2148, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 2145, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 2145, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 2143, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 2141, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 2139, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 2139, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 2137, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 2136, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 2133, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 2130, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 2132, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 2129, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 2128, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 2127, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 2126, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 841, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 2108, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 2107, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 2104, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 2103, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 2104, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 2104, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 2104, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 67, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 2099, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 2089, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'cartus.com\', \'is-listed\': False}', 48, 29),
(1464, 'failed', -1, 'One of more hosts may expose services with known vulnerabilities. See the links below for information on each specific item. \r\n</br></br>\r\nCVE Vulnerabilities are identified by passive fingerprinting of server software and version. The vulnerabilities are implied based on the software and version. This is a passive test and so the server may not be impacted by all of the issues detected.\r\n</br></br>\r\nYou can request an ACTIVE vulnerability scan by following the remediation link below.', '[\'CVE-2018-10549\', \'CVE-2018-10548\', \'CVE-2018-10545\', \'CVE-2018-10547\', \'CVE-2018-10546\', \'CVE-2019-9641\', \'CVE-2018-19520\', \'CVE-2018-19396\', \'CVE-2018-19395\', \'CVE-2018-19935\', \'CVE-2018-17082\', \'CVE-2019-9639\', \'CVE-2019-9638\', \'CVE-2019-9637\', \'CVE-2018-14883\', \'CVE-2017-12868\', \'CVE-2018-20783\', \'CVE-2019-6977\', \'CVE-2019-9023\', \'CVE-2019-9020\', \'CVE-2019-9021\', \'CVE-2017-16642\', \'CVE-2019-9024\', \'CVE-2018-15132\']', 49, 29),
(1465, 'success', 1, 'No or few ports are exposed to the Internet.', '[443, 80]', 50, 29),
(1466, 'failed', -647.7, 'Your domain was found at least once in known, public data leaks.', '{\'total\': 6487, \'groups\': [{\'leak\': \'verificationsio\', \'count\': 2393}, {\'leak\': \'datanleads\', \'count\': 73}, {\'leak\': \'pdlcollection\', \'count\': 1619}, {\'leak\': \'the-collections\', \'count\': 620}, {\'leak\': \'adaptio\', \'count\': 190}, {\'leak\': \'antipublic\', \'count\': 239}, {\'leak\': \'breachcompilation\', \'count\': 425}, {\'leak\': \'exploitin\', \'count\': 181}, {\'leak\': \'linkedin\', \'count\': 450}, {\'leak\': \'customerslive\', \'count\': 75}, {\'leak\': \'myfitnesspal\', \'count\': 82}, {\'leak\': \'myspace\', \'count\': 15}, {\'leak\': \'edmodo\', \'count\': 5}, {\'leak\': \'adobe\', \'count\': 14}, {\'leak\': \'dropbox\', \'count\': 17}, {\'leak\': \'data-contacts\', \'count\': 47}, {\'leak\': \'ashleymadison\', \'count\': 1}, {\'leak\': \'mate1\', \'count\': 2}, {\'leak\': \'pcrai\', \'count\': 11}, {\'leak\': \'tumblr\', \'count\': 1}, {\'leak\': \'modernbusinesssolutions\', \'count\': 10}, {\'leak\': \'unknown-btc\', \'count\': 1}, {\'leak\': \'disqus\', \'count\': 5}, {\'leak\': \'experian\', \'count\': 2}, {\'leak\': \'myheritage\', \'count\': 1}, {\'leak\': \'gawker\', \'count\': 1}, {\'leak\': \'lastfm\', \'count\': 1}, {\'leak\': \'apexsms\', \'count\': 2}, {\'leak\': \'forbes\', \'count\': 2}, {\'leak\': \'bitly\', \'count\': 2}], \'query\': \'cartus.com\'}', 51, 29),
(1467, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 ip4:198.187.28.222 +a +mx +ip4:74.81.66.176 ?all\']}', 1, 30),
(1468, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 30),
(1469, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 30),
(1470, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 0}', 4, 30),
(1471, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 30),
(1472, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 30),
(1473, 'failed', -1, 'Your SPF record is too permissive. An SPF record can be overly permissive is if you terminate your SPF record in “+all”. This essentially causes your record to include the entire Internet as permitted to send mail on your behalf. </br></br>The record should terminate with \"~all\" or \"-all\".', '{\'policy\': \'?all\'}', 3, 30),
(1474, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 ip4:198.187.28.222 +a +mx +ip4:74.81.66.176 ?all\'}', 8, 30),
(1475, 'failed', -1, 'There is no indication that DKIM records exist for the given domain.\r\n</br></br>\r\nDKIM is an authentication protocol that links a domain name to a message. The purpose of the DKIM protocol is not only to prove that the domain name has not been usurped, but also that the message has not been altered during transmission.\r\n</br></br>This test cannot definitively detect a record without the exact identifier, and is weighted accordingly in the scoring.', '', 9, 30),
(1476, 'failed', -1, 'No DMARC record was found. \r\n</br></br>\r\nSPF and DKIM on their own (or even together) contain various weaknesses. When both are combined with DMARC, they create an enhanced layer of security and sender identification. Part of the DMARC requirements involves the concept of domain alignment, so it makes it much more difficult for fraudsters to spoof a domain.', '{\'records\': 0}', 10, 30),
(1477, 'not_available', 0, '', '{\'records\': 0}', 11, 30),
(1478, 'not_available', 0, '', '{\'records\': 0}', 12, 30),
(1479, 'not_available', 0, '', '{\'records\': 0}', 15, 30),
(1480, 'not_available', 0, '', '{\'records\': 0}', 16, 30),
(1481, 'not_available', 0, '', '{\'records\': 0}', 17, 30),
(1482, 'not_available', 0, '', '{\'records\': 0}', 18, 30),
(1483, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 24, 30),
(1484, 'success', 1, 'STARTTLS is enabled on the remote SMTP server.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 28, 30),
(1485, 'success', 0, 'The certificate is valid.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 25, 30),
(1486, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 26, 30),
(1487, 'success', 0, 'The certificate is valid.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 27, 30),
(1488, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 29, 30),
(1489, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 30),
(1490, 'not_available', 0, '', '', 14, 30),
(1491, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.akaraka.org.sg\'}', 19, 30),
(1492, 'error', 0, '', '{\'error\': \'[SSL: CERTIFICATE_VERIFY_FAILED] certificate verify failed (_ssl.c:852)\'}', 21, 30),
(1493, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 30),
(1494, 'failed', -1, 'The request was not redirected to the HTTPS version. Even though this site has HTTPS enabled visitors can still access the site over insecure  HTTP. \r\n</br><br>\r\nYou should ensure that all visitors to your site are automatically redirected to the secure HTTPS connection. Implementing HTTPS is of no use if visitors can still access your site via HTTP.', '{\'website\': \'http://www.akaraka.org.sg\'}', 23, 30),
(1495, 'failed', -1, 'A HSTS header was not provided by the server. HSTS is a response header that forces your browser to only be able to access the HTTPS version of a  website and any resources on it.</br></br>\r\nEnabling HSTS will stop SSL protocol attacks and cookie hijacking, two vulnerabilities in SSL-enabled websites. And in addition to making a website more secure, HSTS makes sites load quicker by removing a step in the loading procedure.', '', 20, 30),
(1496, 'failed', -0.2, 'The X-Frame-Options header is not sent by the server. This header protects web applications against clickjacking. This is  a malicious technique of tricking a user into clicking on something different from what the user perceives, thus potentially revealing confidential information or allowing others to take control of their computer.', '', 30, 30),
(1497, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server. This header is designed to defend against Cross Site Scripting that is one of the most widespread and critical weaknesses that can lead to serious vulnerabilities. It\'s easy and simple to implement, see link for details.', '', 31, 30),
(1498, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 30),
(1499, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server. This header can be considered as an improved version of the X-XSS-Protection header. It adds another layer of security to protect against cross site scripting, one of the most widespread and critical weaknesses that can lead to serious vulnerabilities.', '', 33, 30),
(1500, 'failed', -0.1, 'The Referrer-Policy header is not sent by the server. This header enables you to specify when the browser should set Referer headers. The use of this header can be considered as “optional”, but is advised to protect the privacy of your visitors.', '', 34, 30),
(1501, 'failed', -0.7145, 'The Server header is sent by the server. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence. Server values should be avoided as they potentially reveal internal implementation details that might make it  easier for attackers to find and exploit known security holes.', '{\'header\': \'Server\', \'value\': \'Apache\'}', 35, 30),
(1502, 'failed', 0, 'The X-Powered-By header is returned and contains the details of the web framework or programming language used in the web application. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence.', '{\'header\': \'X-Powered-By\', \'value\': \'PHP/7.2.24\'}', 36, 30),
(1503, 'failed', -0.1, 'The Feature-Policy header was not returned by the server. This header can help protect your site from third parties using APIs that have security and privacy implications', '', 37, 30),
(1504, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 2}', 46, 30),
(1505, 'success', 0, 'All cookies found had a valid syntax.', '[\'\', \'\']', 38, 30),
(1506, 'failed', -0.8, 'None of the cookies found had the \'HttpOnly\' flag.', '[{\'unsecure\': [\'PHPSESSID\']}, {\'unsecure\': [\'PHPSESSID\']}]', 40, 30),
(1507, 'failed', -0.8, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 30),
(1508, 'success', 0, 'None of the cookies sent via unsecure HTTP had the \'Secure\' flag enabled.', '', 41, 30),
(1509, 'success', 0, 'None of the cookies sent via unsecure HTTP are prefixed.', '', 39, 30),
(1510, 'failed', -0.4, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'PHPSESSID\']}', 43, 30),
(1511, 'not_available', 0, '', '', 44, 30),
(1512, 'not_available', 0, '', '', 45, 30),
(1513, 'success', 0.7, 'Your IP address is not associated with any malicious activity.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'185.61.152.53\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 30),
(1514, 'success', 0.3, 'Your host is not listed on any DNSBL', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 2643, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 2640, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 2637, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 2637, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 2635, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 2634, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 2634, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 2634, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 2633, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 2633, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 2630, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 2627, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 2628, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 2628, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 42, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 2623, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 306, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 2619, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 2620, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 2618, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 2617, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 2616, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 2616, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 2614, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 49, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 2616, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 2611, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'akaraka.org.sg\', \'is-listed\': False}', 48, 30),
(1515, 'failed', -1, 'One of more hosts may expose services with known vulnerabilities. See the links below for information on each specific item. \r\n</br></br>\r\nCVE Vulnerabilities are identified by passive fingerprinting of server software and version. The vulnerabilities are implied based on the software and version. This is a passive test and so the server may not be impacted by all of the issues detected.\r\n</br></br>\r\nYou can request an ACTIVE vulnerability scan by following the remediation link below.', '[\'CVE-2018-10549\', \'CVE-2018-10548\', \'CVE-2018-10545\', \'CVE-2018-10547\', \'CVE-2018-10546\', \'CVE-2018-19520\', \'CVE-2018-19396\', \'CVE-2018-19395\', \'CVE-2018-19935\', \'CVE-2018-17082\', \'CVE-2019-9639\', \'CVE-2019-9638\', \'CVE-2019-9021\', \'CVE-2019-9637\', \'CVE-2015-8994\', \'CVE-2018-14883\', \'CVE-2014-9767\', \'CVE-2018-20783\', \'CVE-2016-7478\', \'CVE-2019-6977\', \'CVE-2019-9023\', \'CVE-2019-9020\', \'CVE-2019-9641\', \'CVE-2017-16642\', \'CVE-2019-9024\', \'CVE-2018-15132\']', 49, 30),
(1516, 'failed', -1, 'A large number of services are exposed to the Internet. An open port is an attack surface. An important principle in security is reducing your attack surface, and ensure that servers have the minimum number of exposed services. \r\n</br></br>\r\nCheck to make sure that only necessary ports are open. Our scan uses PASSIVE identification of open ports - active scans on remote systems are not allowed without prior permission. A full ACTIVE scan can be requested by following the remediation link below.', '[80, 2087, 443, 143, 2086, 465, 21, 110, 995, 53, 993, 2083, 2082, 2079, 26, 3306]', 50, 30),
(1517, 'partial', 0.6, '', '{\'total\': 4, \'groups\': [{\'leak\': \'dropbox\', \'count\': 1}, {\'leak\': \'edmodo\', \'count\': 1}, {\'leak\': \'the-collections\', \'count\': 1}, {\'leak\': \'verificationsio\', \'count\': 1}], \'query\': \'akaraka.org.sg\'}', 51, 30);

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialaccount`
--

CREATE TABLE `socialaccount_socialaccount` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `uid` varchar(191) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp`
--

CREATE TABLE `socialaccount_socialapp` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `client_id` varchar(191) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp_sites`
--

CREATE TABLE `socialaccount_socialapp_sites` (
  `id` int(11) NOT NULL,
  `socialapp_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialtoken`
--

CREATE TABLE `socialaccount_socialtoken` (
  `id` int(11) NOT NULL,
  `token` longtext NOT NULL,
  `token_secret` longtext NOT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_contact`
--

CREATE TABLE `users_contact` (
  `id` int(11) NOT NULL,
  `title` varchar(5) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `middle_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `street_1` varchar(128) NOT NULL,
  `street_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `region` varchar(128) NOT NULL,
  `country` varchar(2) NOT NULL,
  `work_phone` varchar(16) NOT NULL,
  `mobile_phone` varchar(16) NOT NULL,
  `email` varchar(256) NOT NULL,
  `role` varchar(256) NOT NULL,
  `notes` longtext NOT NULL,
  `profile_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_domainprofile`
--

CREATE TABLE `users_domainprofile` (
  `id` int(11) NOT NULL,
  `domain_id` int(11) DEFAULT NULL,
  `tags` longtext NOT NULL,
  `profile_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_domainprofile`
--

INSERT INTO `users_domainprofile` (`id`, `domain_id`, `tags`, `profile_id`) VALUES
(1, 1, '', 1),
(2, 3, '', 1),
(3, 5, '', 1),
(4, 7, 'grp', 1),
(5, 9, '', 1),
(6, 11, '', 1),
(7, 13, '', 1),
(8, 16, '', 2),
(9, 17, 'vendor', 1),
(10, 19, '', 1),
(11, 22, '', 3),
(12, 24, '', 1),
(13, 26, '', 1),
(14, 28, '', 1),
(15, 31, '', 4),
(16, 33, '', 1),
(17, 36, '', 5),
(19, 41, '', 1),
(20, 43, '', 1),
(21, 45, '', 1),
(22, 47, '', 1),
(23, 49, '', 1),
(24, 51, '', 1),
(25, 53, '', 1),
(26, 55, '', 1),
(27, 57, '', 1),
(28, 58, '', 1),
(29, 60, '', 1),
(30, 62, '', 1),
(31, 2, '', 1),
(32, 8, '', 1),
(33, 4, '', 1),
(34, 20, '', 1),
(35, 14, '', 1),
(36, 27, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_profile`
--

CREATE TABLE `users_profile` (
  `id` int(11) NOT NULL,
  `domains` longtext NOT NULL,
  `domain_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_profile`
--

INSERT INTO `users_profile` (`id`, `domains`, `domain_id`, `user_id`) VALUES
(1, 'emf.com.sg,ezlink.com.sg,alex.world,jec.com,kadfire.com,grpgroup.co.uk,mom.gov.sg,dezignformat.com,matex.com.sg,renesas.com,ukecc-services.net,upwork.com,vanify.co.uk,xhamster.com,sirva.com', 3, 1),
(2, '', 15, 2),
(3, 'emf.com.sg,ezlink.com.sg,alex.world,jec.com,kadfire.com,grpgroup.co.uk,mom.gov.sg', 21, 3),
(4, '', 30, 4),
(5, '', 35, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `account_emailaddress_user_id_2c513194_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` (`email_address_id`);

--
-- Indexes for table `assessments_answer`
--
ALTER TABLE `assessments_answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assessments_answer_question_id_39d9d14d_fk_assessmen` (`question_id`);

--
-- Indexes for table `assessments_question`
--
ALTER TABLE `assessments_question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assessments_question_topic_id_aaf85c13_fk_assessments_topic_id` (`topic_id`);

--
-- Indexes for table `assessments_result`
--
ALTER TABLE `assessments_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assessments_result_answer_id_ed507b38_fk_assessments_answer_id` (`answer_id`),
  ADD KEY `assessments_result_user_id_99c748ac_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `assessments_topic`
--
ALTER TABLE `assessments_topic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_celery_beat_clockedschedule`
--
ALTER TABLE `django_celery_beat_clockedschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_celery_beat_crontabschedule`
--
ALTER TABLE `django_celery_beat_crontabschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_celery_beat_intervalschedule`
--
ALTER TABLE `django_celery_beat_intervalschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_celery_beat_periodictask`
--
ALTER TABLE `django_celery_beat_periodictask`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `django_celery_beat_p_crontab_id_d3cba168_fk_django_ce` (`crontab_id`),
  ADD KEY `django_celery_beat_p_interval_id_a8ca27da_fk_django_ce` (`interval_id`),
  ADD KEY `django_celery_beat_p_solar_id_a87ce72c_fk_django_ce` (`solar_id`),
  ADD KEY `django_celery_beat_p_clocked_id_47a69f82_fk_django_ce` (`clocked_id`);

--
-- Indexes for table `django_celery_beat_periodictasks`
--
ALTER TABLE `django_celery_beat_periodictasks`
  ADD PRIMARY KEY (`ident`);

--
-- Indexes for table `django_celery_beat_solarschedule`
--
ALTER TABLE `django_celery_beat_solarschedule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq` (`event`,`latitude`,`longitude`);

--
-- Indexes for table `django_celery_results_taskresult`
--
ALTER TABLE `django_celery_results_taskresult`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `task_id` (`task_id`),
  ADD KEY `django_celery_results_taskresult_hidden_cd77412f` (`hidden`),
  ADD KEY `django_celery_results_taskresult_date_done_49edada6` (`date_done`),
  ADD KEY `django_celery_results_taskresult_status_cbbed23a` (`status`),
  ADD KEY `django_celery_results_taskresult_task_name_90987df3` (`task_name`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_fsm_log_statelog`
--
ALTER TABLE `django_fsm_log_statelog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_fsm_log_statelog_by_id_df6b9a17_fk_auth_user_id` (`by_id`),
  ADD KEY `django_fsm_log_state_content_type_id_e63b15b9_fk_django_co` (`content_type_id`),
  ADD KEY `django_fsm_log_statelog_state_7a86232b` (`state`),
  ADD KEY `django_fsm_log_statelog_object_id_21cdf73c` (`object_id`),
  ADD KEY `django_fsm_log_statelog_source_state_07608825` (`source_state`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- Indexes for table `djstripe_account`
--
ALTER TABLE `djstripe_account`
  ADD PRIMARY KEY (`djstripe_id`),
  ADD UNIQUE KEY `stripe_id` (`id`),
  ADD KEY `djstripe_account_business_logo_id_b3f124c3_fk_djstripe_` (`business_logo_id`);

--
-- Indexes for table `djstripe_applicationfee`
--
ALTER TABLE `djstripe_applicationfee`
  ADD PRIMARY KEY (`djstripe_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `djstripe_application_balance_transaction__ff735754_fk_djstripe_` (`balance_transaction_id`),
  ADD KEY `djstripe_application_charge_id_8ba8ce37_fk_djstripe_` (`charge_id`);

--
-- Indexes for table `djstripe_applicationfeerefund`
--
ALTER TABLE `djstripe_applicationfeerefund`
  ADD PRIMARY KEY (`djstripe_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `djstripe_application_balance_transaction__bc35b031_fk_djstripe_` (`balance_transaction_id`),
  ADD KEY `djstripe_application_fee_id_8fabef2d_fk_djstripe_` (`fee_id`);

--
-- Indexes for table `djstripe_balancetransaction`
--
ALTER TABLE `djstripe_balancetransaction`
  ADD PRIMARY KEY (`djstripe_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `djstripe_bankaccount`
--
ALTER TABLE `djstripe_bankaccount`
  ADD PRIMARY KEY (`djstripe_id`),
  ADD UNIQUE KEY `stripe_id` (`id`),
  ADD KEY `djstripe_bankaccount_account_id_5434506d_fk_djstripe_` (`account_id`),
  ADD KEY `djstripe_bankaccount_customer_id_0f696e1d_fk_djstripe_` (`customer_id`);

--
-- Indexes for table `djstripe_card`
--
ALTER TABLE `djstripe_card`
  ADD PRIMARY KEY (`djstripe_id`),
  ADD UNIQUE KEY `stripe_id` (`id`),
  ADD KEY `djstripe_card_customer_id_9601f29c_fk_djstripe_` (`customer_id`);

--
-- Indexes for table `djstripe_charge`
--
ALTER TABLE `djstripe_charge`
  ADD PRIMARY KEY (`djstripe_id`),
  ADD UNIQUE KEY `stripe_id` (`id`),
  ADD KEY `djstripe_charge_account_id_597fef70_fk_djstripe_` (`account_id`),
  ADD KEY `djstripe_charge_customer_id_fb15eb2b_fk_djstripe_` (`customer_id`),
  ADD KEY `djstripe_charge_dispute_id_86a03043_fk_djstripe_` (`dispute_id`),
  ADD KEY `djstripe_charge_invoice_id_bb36cca4_fk_djstripe_` (`invoice_id`),
  ADD KEY `djstripe_charge_source_id_2502db60` (`source_id`),
  ADD KEY `djstripe_charge_transfer_id_bbfc2bbc_fk_djstripe_` (`transfer_id`),
  ADD KEY `djstripe_charge_balance_transaction__2eac625e_fk_djstripe_` (`balance_transaction_id`);

--
-- Indexes for table `djstripe_countryspec`
--
ALTER TABLE `djstripe_countryspec`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `djstripe_coupon`
--
ALTER TABLE `djstripe_coupon`
  ADD PRIMARY KEY (`djstripe_id`),
  ADD UNIQUE KEY `djstripe_coupon_stripe_id_livemode_a3687fb2_uniq` (`id`,`livemode`);

--
-- Indexes for table `djstripe_customer`
--
ALTER TABLE `djstripe_customer`
  ADD PRIMARY KEY (`djstripe_id`),
  ADD UNIQUE KEY `stripe_id` (`id`),
  ADD UNIQUE KEY `djstripe_customer_subscriber_id_livemode_962f4a46_uniq` (`subscriber_id`,`livemode`),
  ADD KEY `djstripe_customer_coupon_id_ff032fb1_fk_djstripe_` (`coupon_id`),
  ADD KEY `djstripe_customer_default_source_id_24020f62` (`default_source_id`);

--
-- Indexes for table `djstripe_dispute`
--
ALTER TABLE `djstripe_dispute`
  ADD PRIMARY KEY (`djstripe_id`),
  ADD UNIQUE KEY `stripe_id` (`id`);

--
-- Indexes for table `djstripe_djstripepaymentmethod`
--
ALTER TABLE `djstripe_djstripepaymentmethod`
  ADD PRIMARY KEY (`id`),
  ADD KEY `djstripe_paymentmethod_type_0585203a` (`type`);

--
-- Indexes for table `djstripe_event`
--
ALTER TABLE `djstripe_event`
  ADD PRIMARY KEY (`djstripe_id`),
  ADD UNIQUE KEY `stripe_id` (`id`);

--
-- Indexes for table `djstripe_fileupload`
--
ALTER TABLE `djstripe_fileupload`
  ADD PRIMARY KEY (`djstripe_id`),
  ADD UNIQUE KEY `stripe_id` (`id`);

--
-- Indexes for table `djstripe_idempotencykey`
--
ALTER TABLE `djstripe_idempotencykey`
  ADD PRIMARY KEY (`uuid`),
  ADD UNIQUE KEY `djstripe_idempotencykey_action_livemode_5003eb11_uniq` (`action`,`livemode`);

--
-- Indexes for table `djstripe_invoice`
--
ALTER TABLE `djstripe_invoice`
  ADD PRIMARY KEY (`djstripe_id`),
  ADD UNIQUE KEY `stripe_id` (`id`),
  ADD UNIQUE KEY `charge_id` (`charge_id`),
  ADD KEY `djstripe_invoice_customer_id_c0cd871c_fk_djstripe_` (`customer_id`),
  ADD KEY `djstripe_invoice_subscription_id_2dbc2461_fk_djstripe_` (`subscription_id`);

--
-- Indexes for table `djstripe_invoiceitem`
--
ALTER TABLE `djstripe_invoiceitem`
  ADD PRIMARY KEY (`djstripe_id`),
  ADD UNIQUE KEY `stripe_id` (`id`),
  ADD KEY `djstripe_invoiceitem_customer_id_259466b8_fk_djstripe_` (`customer_id`),
  ADD KEY `djstripe_invoiceitem_invoice_id_d302912e_fk_djstripe_` (`invoice_id`),
  ADD KEY `djstripe_invoiceitem_plan_id_a01e229a_fk_djstripe_` (`plan_id`),
  ADD KEY `djstripe_invoiceitem_subscription_id_a7760178_fk_djstripe_` (`subscription_id`);

--
-- Indexes for table `djstripe_payout`
--
ALTER TABLE `djstripe_payout`
  ADD PRIMARY KEY (`djstripe_id`),
  ADD UNIQUE KEY `stripe_id` (`id`),
  ADD KEY `djstripe_payout_destination_id_a5fa55c2_fk_djstripe_` (`destination_id`),
  ADD KEY `djstripe_payout_balance_transaction__a9393fb6_fk_djstripe_` (`balance_transaction_id`),
  ADD KEY `djstripe_payout_failure_balance_tran_77d442db_fk_djstripe_` (`failure_balance_transaction_id`);

--
-- Indexes for table `djstripe_plan`
--
ALTER TABLE `djstripe_plan`
  ADD PRIMARY KEY (`djstripe_id`),
  ADD UNIQUE KEY `stripe_id` (`id`),
  ADD KEY `djstripe_plan_product_id_5773384d_fk_djstripe_` (`product_id`);

--
-- Indexes for table `djstripe_product`
--
ALTER TABLE `djstripe_product`
  ADD PRIMARY KEY (`djstripe_id`),
  ADD UNIQUE KEY `stripe_id` (`id`);

--
-- Indexes for table `djstripe_refund`
--
ALTER TABLE `djstripe_refund`
  ADD PRIMARY KEY (`djstripe_id`),
  ADD UNIQUE KEY `stripe_id` (`id`),
  ADD KEY `djstripe_refund_charge_id_e7efd717_fk_djstripe_` (`charge_id`),
  ADD KEY `djstripe_refund_balance_transaction__dec480cf_fk_djstripe_` (`balance_transaction_id`),
  ADD KEY `djstripe_refund_failure_balance_tran_817ae640_fk_djstripe_` (`failure_balance_transaction_id`);

--
-- Indexes for table `djstripe_scheduledqueryrun`
--
ALTER TABLE `djstripe_scheduledqueryrun`
  ADD PRIMARY KEY (`djstripe_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `djstripe_scheduledqu_file_id_707bbc03_fk_djstripe_` (`file_id`);

--
-- Indexes for table `djstripe_source`
--
ALTER TABLE `djstripe_source`
  ADD PRIMARY KEY (`djstripe_id`),
  ADD UNIQUE KEY `stripe_id` (`id`),
  ADD KEY `djstripe_source_customer_id_4d678557_fk_djstripe_` (`customer_id`);

--
-- Indexes for table `djstripe_subscription`
--
ALTER TABLE `djstripe_subscription`
  ADD PRIMARY KEY (`djstripe_id`),
  ADD UNIQUE KEY `stripe_id` (`id`),
  ADD KEY `djstripe_subscriptio_customer_id_aff64ee5_fk_djstripe_` (`customer_id`),
  ADD KEY `djstripe_subscriptio_plan_id_9129d5d5_fk_djstripe_` (`plan_id`);

--
-- Indexes for table `djstripe_subscriptionitem`
--
ALTER TABLE `djstripe_subscriptionitem`
  ADD PRIMARY KEY (`djstripe_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `djstripe_subscriptio_plan_id_cc68cb43_fk_djstripe_` (`plan_id`),
  ADD KEY `djstripe_subscriptio_subscription_id_992d9919_fk_djstripe_` (`subscription_id`);

--
-- Indexes for table `djstripe_transfer`
--
ALTER TABLE `djstripe_transfer`
  ADD PRIMARY KEY (`djstripe_id`),
  ADD UNIQUE KEY `stripe_id` (`id`),
  ADD KEY `djstripe_transfer_balance_transaction__b5b00270_fk_djstripe_` (`balance_transaction_id`);

--
-- Indexes for table `djstripe_transferreversal`
--
ALTER TABLE `djstripe_transferreversal`
  ADD PRIMARY KEY (`djstripe_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `djstripe_transferrev_balance_transaction__5044f084_fk_djstripe_` (`balance_transaction_id`),
  ADD KEY `djstripe_transferrev_transfer_id_8f250dd3_fk_djstripe_` (`transfer_id`);

--
-- Indexes for table `djstripe_upcominginvoice`
--
ALTER TABLE `djstripe_upcominginvoice`
  ADD PRIMARY KEY (`invoice_ptr_id`);

--
-- Indexes for table `djstripe_usagerecord`
--
ALTER TABLE `djstripe_usagerecord`
  ADD PRIMARY KEY (`djstripe_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `djstripe_usagerecord_subscription_item_id_5a38e1e2_fk_djstripe_` (`subscription_item_id`);

--
-- Indexes for table `djstripe_webhookeventtrigger`
--
ALTER TABLE `djstripe_webhookeventtrigger`
  ADD PRIMARY KEY (`id`),
  ADD KEY `djstripe_webhookeven_event_id_b2e08de6_fk_djstripe_` (`event_id`);

--
-- Indexes for table `reports_company`
--
ALTER TABLE `reports_company`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_company_sector_id_9adfc52f_fk_reports_sector_id` (`sector_id`);

--
-- Indexes for table `reports_domain`
--
ALTER TABLE `reports_domain`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `domain` (`domain`),
  ADD KEY `reports_domain_company_id_9d7952a9_fk_reports_company_id` (`company_id`);

--
-- Indexes for table `reports_riskreport`
--
ALTER TABLE `reports_riskreport`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_riskreport_domain_id_32e97038_fk_reports_domain_id` (`domain_id`);

--
-- Indexes for table `reports_scoreitem`
--
ALTER TABLE `reports_scoreitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_scoreitem_report_id_6b59402e_fk_reports_riskreport_id` (`report_id`);

--
-- Indexes for table `reports_sector`
--
ALTER TABLE `reports_sector`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `reports_testdefinition`
--
ALTER TABLE `reports_testdefinition`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `label` (`label`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `reports_testresult`
--
ALTER TABLE `reports_testresult`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_testresult_definition_id_85651fc7_fk_reports_t` (`definition_id`),
  ADD KEY `reports_testresult_report_id_ab0b375c_fk_reports_riskreport_id` (`report_id`);

--
-- Indexes for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialaccount_provider_uid_fc810c6e_uniq` (`provider`,`uid`),
  ADD KEY `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialapp_sites_socialapp_id_site_id_71a9a768_uniq` (`socialapp_id`,`site_id`),
  ADD KEY `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` (`site_id`);

--
-- Indexes for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq` (`app_id`,`account_id`),
  ADD KEY `socialaccount_social_account_id_951f210e_fk_socialacc` (`account_id`);

--
-- Indexes for table `users_contact`
--
ALTER TABLE `users_contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_contact_profile_id_715cfba9_fk_users_domainprofile_id` (`profile_id`);

--
-- Indexes for table `users_domainprofile`
--
ALTER TABLE `users_domainprofile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_domainprofile_company_id_7531cb28_fk_reports_company_id` (`domain_id`),
  ADD KEY `users_domainprofile_profile_id_2f47eb39_fk_users_profile_id` (`profile_id`);

--
-- Indexes for table `users_profile`
--
ALTER TABLE `users_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `users_profile_company_id_959728a1_fk_reports_company_id` (`domain_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assessments_answer`
--
ALTER TABLE `assessments_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `assessments_question`
--
ALTER TABLE `assessments_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `assessments_result`
--
ALTER TABLE `assessments_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assessments_topic`
--
ALTER TABLE `assessments_topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `django_celery_beat_clockedschedule`
--
ALTER TABLE `django_celery_beat_clockedschedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_celery_beat_crontabschedule`
--
ALTER TABLE `django_celery_beat_crontabschedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_celery_beat_intervalschedule`
--
ALTER TABLE `django_celery_beat_intervalschedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_celery_beat_periodictask`
--
ALTER TABLE `django_celery_beat_periodictask`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_celery_beat_solarschedule`
--
ALTER TABLE `django_celery_beat_solarschedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_celery_results_taskresult`
--
ALTER TABLE `django_celery_results_taskresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `django_fsm_log_statelog`
--
ALTER TABLE `django_fsm_log_statelog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `djstripe_account`
--
ALTER TABLE `djstripe_account`
  MODIFY `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `djstripe_applicationfee`
--
ALTER TABLE `djstripe_applicationfee`
  MODIFY `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `djstripe_applicationfeerefund`
--
ALTER TABLE `djstripe_applicationfeerefund`
  MODIFY `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `djstripe_balancetransaction`
--
ALTER TABLE `djstripe_balancetransaction`
  MODIFY `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `djstripe_bankaccount`
--
ALTER TABLE `djstripe_bankaccount`
  MODIFY `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `djstripe_card`
--
ALTER TABLE `djstripe_card`
  MODIFY `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `djstripe_charge`
--
ALTER TABLE `djstripe_charge`
  MODIFY `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `djstripe_coupon`
--
ALTER TABLE `djstripe_coupon`
  MODIFY `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `djstripe_customer`
--
ALTER TABLE `djstripe_customer`
  MODIFY `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `djstripe_dispute`
--
ALTER TABLE `djstripe_dispute`
  MODIFY `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `djstripe_event`
--
ALTER TABLE `djstripe_event`
  MODIFY `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `djstripe_fileupload`
--
ALTER TABLE `djstripe_fileupload`
  MODIFY `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `djstripe_invoice`
--
ALTER TABLE `djstripe_invoice`
  MODIFY `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `djstripe_invoiceitem`
--
ALTER TABLE `djstripe_invoiceitem`
  MODIFY `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `djstripe_payout`
--
ALTER TABLE `djstripe_payout`
  MODIFY `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `djstripe_plan`
--
ALTER TABLE `djstripe_plan`
  MODIFY `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `djstripe_product`
--
ALTER TABLE `djstripe_product`
  MODIFY `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `djstripe_refund`
--
ALTER TABLE `djstripe_refund`
  MODIFY `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `djstripe_scheduledqueryrun`
--
ALTER TABLE `djstripe_scheduledqueryrun`
  MODIFY `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `djstripe_source`
--
ALTER TABLE `djstripe_source`
  MODIFY `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `djstripe_subscription`
--
ALTER TABLE `djstripe_subscription`
  MODIFY `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `djstripe_subscriptionitem`
--
ALTER TABLE `djstripe_subscriptionitem`
  MODIFY `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `djstripe_transfer`
--
ALTER TABLE `djstripe_transfer`
  MODIFY `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `djstripe_transferreversal`
--
ALTER TABLE `djstripe_transferreversal`
  MODIFY `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `djstripe_usagerecord`
--
ALTER TABLE `djstripe_usagerecord`
  MODIFY `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `djstripe_webhookeventtrigger`
--
ALTER TABLE `djstripe_webhookeventtrigger`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports_company`
--
ALTER TABLE `reports_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `reports_domain`
--
ALTER TABLE `reports_domain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `reports_riskreport`
--
ALTER TABLE `reports_riskreport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `reports_scoreitem`
--
ALTER TABLE `reports_scoreitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=494;

--
-- AUTO_INCREMENT for table `reports_sector`
--
ALTER TABLE `reports_sector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `reports_testdefinition`
--
ALTER TABLE `reports_testdefinition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `reports_testresult`
--
ALTER TABLE `reports_testresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1518;

--
-- AUTO_INCREMENT for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_contact`
--
ALTER TABLE `users_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_domainprofile`
--
ALTER TABLE `users_domainprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users_profile`
--
ALTER TABLE `users_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD CONSTRAINT `account_emailaddress_user_id_2c513194_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD CONSTRAINT `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` FOREIGN KEY (`email_address_id`) REFERENCES `account_emailaddress` (`id`);

--
-- Constraints for table `assessments_answer`
--
ALTER TABLE `assessments_answer`
  ADD CONSTRAINT `assessments_answer_question_id_39d9d14d_fk_assessmen` FOREIGN KEY (`question_id`) REFERENCES `assessments_question` (`id`);

--
-- Constraints for table `assessments_question`
--
ALTER TABLE `assessments_question`
  ADD CONSTRAINT `assessments_question_topic_id_aaf85c13_fk_assessments_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `assessments_topic` (`id`);

--
-- Constraints for table `assessments_result`
--
ALTER TABLE `assessments_result`
  ADD CONSTRAINT `assessments_result_answer_id_ed507b38_fk_assessments_answer_id` FOREIGN KEY (`answer_id`) REFERENCES `assessments_answer` (`id`),
  ADD CONSTRAINT `assessments_result_user_id_99c748ac_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_celery_beat_periodictask`
--
ALTER TABLE `django_celery_beat_periodictask`
  ADD CONSTRAINT `django_celery_beat_p_clocked_id_47a69f82_fk_django_ce` FOREIGN KEY (`clocked_id`) REFERENCES `django_celery_beat_clockedschedule` (`id`),
  ADD CONSTRAINT `django_celery_beat_p_crontab_id_d3cba168_fk_django_ce` FOREIGN KEY (`crontab_id`) REFERENCES `django_celery_beat_crontabschedule` (`id`),
  ADD CONSTRAINT `django_celery_beat_p_interval_id_a8ca27da_fk_django_ce` FOREIGN KEY (`interval_id`) REFERENCES `django_celery_beat_intervalschedule` (`id`),
  ADD CONSTRAINT `django_celery_beat_p_solar_id_a87ce72c_fk_django_ce` FOREIGN KEY (`solar_id`) REFERENCES `django_celery_beat_solarschedule` (`id`);

--
-- Constraints for table `django_fsm_log_statelog`
--
ALTER TABLE `django_fsm_log_statelog`
  ADD CONSTRAINT `django_fsm_log_state_content_type_id_e63b15b9_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_fsm_log_statelog_by_id_df6b9a17_fk_auth_user_id` FOREIGN KEY (`by_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `djstripe_account`
--
ALTER TABLE `djstripe_account`
  ADD CONSTRAINT `djstripe_account_business_logo_id_b3f124c3_fk_djstripe_` FOREIGN KEY (`business_logo_id`) REFERENCES `djstripe_fileupload` (`djstripe_id`);

--
-- Constraints for table `djstripe_applicationfee`
--
ALTER TABLE `djstripe_applicationfee`
  ADD CONSTRAINT `djstripe_application_balance_transaction__ff735754_fk_djstripe_` FOREIGN KEY (`balance_transaction_id`) REFERENCES `djstripe_balancetransaction` (`djstripe_id`),
  ADD CONSTRAINT `djstripe_application_charge_id_8ba8ce37_fk_djstripe_` FOREIGN KEY (`charge_id`) REFERENCES `djstripe_charge` (`djstripe_id`);

--
-- Constraints for table `djstripe_applicationfeerefund`
--
ALTER TABLE `djstripe_applicationfeerefund`
  ADD CONSTRAINT `djstripe_application_balance_transaction__bc35b031_fk_djstripe_` FOREIGN KEY (`balance_transaction_id`) REFERENCES `djstripe_balancetransaction` (`djstripe_id`),
  ADD CONSTRAINT `djstripe_application_fee_id_8fabef2d_fk_djstripe_` FOREIGN KEY (`fee_id`) REFERENCES `djstripe_applicationfee` (`djstripe_id`);

--
-- Constraints for table `djstripe_bankaccount`
--
ALTER TABLE `djstripe_bankaccount`
  ADD CONSTRAINT `djstripe_bankaccount_account_id_5434506d_fk_djstripe_` FOREIGN KEY (`account_id`) REFERENCES `djstripe_account` (`djstripe_id`),
  ADD CONSTRAINT `djstripe_bankaccount_customer_id_0f696e1d_fk_djstripe_` FOREIGN KEY (`customer_id`) REFERENCES `djstripe_customer` (`djstripe_id`);

--
-- Constraints for table `djstripe_card`
--
ALTER TABLE `djstripe_card`
  ADD CONSTRAINT `djstripe_card_customer_id_9601f29c_fk_djstripe_` FOREIGN KEY (`customer_id`) REFERENCES `djstripe_customer` (`djstripe_id`);

--
-- Constraints for table `djstripe_charge`
--
ALTER TABLE `djstripe_charge`
  ADD CONSTRAINT `djstripe_charge_account_id_597fef70_fk_djstripe_` FOREIGN KEY (`account_id`) REFERENCES `djstripe_account` (`djstripe_id`),
  ADD CONSTRAINT `djstripe_charge_balance_transaction__2eac625e_fk_djstripe_` FOREIGN KEY (`balance_transaction_id`) REFERENCES `djstripe_balancetransaction` (`djstripe_id`),
  ADD CONSTRAINT `djstripe_charge_customer_id_fb15eb2b_fk_djstripe_` FOREIGN KEY (`customer_id`) REFERENCES `djstripe_customer` (`djstripe_id`),
  ADD CONSTRAINT `djstripe_charge_dispute_id_86a03043_fk_djstripe_` FOREIGN KEY (`dispute_id`) REFERENCES `djstripe_dispute` (`djstripe_id`),
  ADD CONSTRAINT `djstripe_charge_invoice_id_bb36cca4_fk_djstripe_` FOREIGN KEY (`invoice_id`) REFERENCES `djstripe_invoice` (`djstripe_id`),
  ADD CONSTRAINT `djstripe_charge_source_id_2502db60_fk_djstripe_` FOREIGN KEY (`source_id`) REFERENCES `djstripe_djstripepaymentmethod` (`id`),
  ADD CONSTRAINT `djstripe_charge_transfer_id_bbfc2bbc_fk_djstripe_` FOREIGN KEY (`transfer_id`) REFERENCES `djstripe_transfer` (`djstripe_id`);

--
-- Constraints for table `djstripe_customer`
--
ALTER TABLE `djstripe_customer`
  ADD CONSTRAINT `djstripe_customer_coupon_id_ff032fb1_fk_djstripe_` FOREIGN KEY (`coupon_id`) REFERENCES `djstripe_coupon` (`djstripe_id`),
  ADD CONSTRAINT `djstripe_customer_default_source_id_24020f62_fk_djstripe_` FOREIGN KEY (`default_source_id`) REFERENCES `djstripe_djstripepaymentmethod` (`id`),
  ADD CONSTRAINT `djstripe_customer_subscriber_id_60f5c7bc_fk_auth_user_id` FOREIGN KEY (`subscriber_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `djstripe_invoice`
--
ALTER TABLE `djstripe_invoice`
  ADD CONSTRAINT `djstripe_invoice_charge_id_1e660b26_fk_djstripe_` FOREIGN KEY (`charge_id`) REFERENCES `djstripe_charge` (`djstripe_id`),
  ADD CONSTRAINT `djstripe_invoice_customer_id_c0cd871c_fk_djstripe_` FOREIGN KEY (`customer_id`) REFERENCES `djstripe_customer` (`djstripe_id`),
  ADD CONSTRAINT `djstripe_invoice_subscription_id_2dbc2461_fk_djstripe_` FOREIGN KEY (`subscription_id`) REFERENCES `djstripe_subscription` (`djstripe_id`);

--
-- Constraints for table `djstripe_invoiceitem`
--
ALTER TABLE `djstripe_invoiceitem`
  ADD CONSTRAINT `djstripe_invoiceitem_customer_id_259466b8_fk_djstripe_` FOREIGN KEY (`customer_id`) REFERENCES `djstripe_customer` (`djstripe_id`),
  ADD CONSTRAINT `djstripe_invoiceitem_invoice_id_d302912e_fk_djstripe_` FOREIGN KEY (`invoice_id`) REFERENCES `djstripe_invoice` (`djstripe_id`),
  ADD CONSTRAINT `djstripe_invoiceitem_plan_id_a01e229a_fk_djstripe_` FOREIGN KEY (`plan_id`) REFERENCES `djstripe_plan` (`djstripe_id`),
  ADD CONSTRAINT `djstripe_invoiceitem_subscription_id_a7760178_fk_djstripe_` FOREIGN KEY (`subscription_id`) REFERENCES `djstripe_subscription` (`djstripe_id`);

--
-- Constraints for table `djstripe_payout`
--
ALTER TABLE `djstripe_payout`
  ADD CONSTRAINT `djstripe_payout_balance_transaction__a9393fb6_fk_djstripe_` FOREIGN KEY (`balance_transaction_id`) REFERENCES `djstripe_balancetransaction` (`djstripe_id`),
  ADD CONSTRAINT `djstripe_payout_destination_id_a5fa55c2_fk_djstripe_` FOREIGN KEY (`destination_id`) REFERENCES `djstripe_bankaccount` (`djstripe_id`),
  ADD CONSTRAINT `djstripe_payout_failure_balance_tran_77d442db_fk_djstripe_` FOREIGN KEY (`failure_balance_transaction_id`) REFERENCES `djstripe_balancetransaction` (`djstripe_id`);

--
-- Constraints for table `djstripe_plan`
--
ALTER TABLE `djstripe_plan`
  ADD CONSTRAINT `djstripe_plan_product_id_5773384d_fk_djstripe_` FOREIGN KEY (`product_id`) REFERENCES `djstripe_product` (`djstripe_id`);

--
-- Constraints for table `djstripe_refund`
--
ALTER TABLE `djstripe_refund`
  ADD CONSTRAINT `djstripe_refund_balance_transaction__dec480cf_fk_djstripe_` FOREIGN KEY (`balance_transaction_id`) REFERENCES `djstripe_balancetransaction` (`djstripe_id`),
  ADD CONSTRAINT `djstripe_refund_charge_id_e7efd717_fk_djstripe_` FOREIGN KEY (`charge_id`) REFERENCES `djstripe_charge` (`djstripe_id`),
  ADD CONSTRAINT `djstripe_refund_failure_balance_tran_817ae640_fk_djstripe_` FOREIGN KEY (`failure_balance_transaction_id`) REFERENCES `djstripe_balancetransaction` (`djstripe_id`);

--
-- Constraints for table `djstripe_scheduledqueryrun`
--
ALTER TABLE `djstripe_scheduledqueryrun`
  ADD CONSTRAINT `djstripe_scheduledqu_file_id_707bbc03_fk_djstripe_` FOREIGN KEY (`file_id`) REFERENCES `djstripe_fileupload` (`djstripe_id`);

--
-- Constraints for table `djstripe_source`
--
ALTER TABLE `djstripe_source`
  ADD CONSTRAINT `djstripe_source_customer_id_4d678557_fk_djstripe_` FOREIGN KEY (`customer_id`) REFERENCES `djstripe_customer` (`djstripe_id`);

--
-- Constraints for table `djstripe_subscription`
--
ALTER TABLE `djstripe_subscription`
  ADD CONSTRAINT `djstripe_subscriptio_customer_id_aff64ee5_fk_djstripe_` FOREIGN KEY (`customer_id`) REFERENCES `djstripe_customer` (`djstripe_id`),
  ADD CONSTRAINT `djstripe_subscriptio_plan_id_9129d5d5_fk_djstripe_` FOREIGN KEY (`plan_id`) REFERENCES `djstripe_plan` (`djstripe_id`);

--
-- Constraints for table `djstripe_subscriptionitem`
--
ALTER TABLE `djstripe_subscriptionitem`
  ADD CONSTRAINT `djstripe_subscriptio_plan_id_cc68cb43_fk_djstripe_` FOREIGN KEY (`plan_id`) REFERENCES `djstripe_plan` (`djstripe_id`),
  ADD CONSTRAINT `djstripe_subscriptio_subscription_id_992d9919_fk_djstripe_` FOREIGN KEY (`subscription_id`) REFERENCES `djstripe_subscription` (`djstripe_id`);

--
-- Constraints for table `djstripe_transfer`
--
ALTER TABLE `djstripe_transfer`
  ADD CONSTRAINT `djstripe_transfer_balance_transaction__b5b00270_fk_djstripe_` FOREIGN KEY (`balance_transaction_id`) REFERENCES `djstripe_balancetransaction` (`djstripe_id`);

--
-- Constraints for table `djstripe_transferreversal`
--
ALTER TABLE `djstripe_transferreversal`
  ADD CONSTRAINT `djstripe_transferrev_balance_transaction__5044f084_fk_djstripe_` FOREIGN KEY (`balance_transaction_id`) REFERENCES `djstripe_balancetransaction` (`djstripe_id`),
  ADD CONSTRAINT `djstripe_transferrev_transfer_id_8f250dd3_fk_djstripe_` FOREIGN KEY (`transfer_id`) REFERENCES `djstripe_transfer` (`djstripe_id`);

--
-- Constraints for table `djstripe_upcominginvoice`
--
ALTER TABLE `djstripe_upcominginvoice`
  ADD CONSTRAINT `djstripe_upcominginv_invoice_ptr_id_2d6ed50f_fk_djstripe_` FOREIGN KEY (`invoice_ptr_id`) REFERENCES `djstripe_invoice` (`djstripe_id`);

--
-- Constraints for table `djstripe_usagerecord`
--
ALTER TABLE `djstripe_usagerecord`
  ADD CONSTRAINT `djstripe_usagerecord_subscription_item_id_5a38e1e2_fk_djstripe_` FOREIGN KEY (`subscription_item_id`) REFERENCES `djstripe_subscriptionitem` (`djstripe_id`);

--
-- Constraints for table `djstripe_webhookeventtrigger`
--
ALTER TABLE `djstripe_webhookeventtrigger`
  ADD CONSTRAINT `djstripe_webhookeven_event_id_b2e08de6_fk_djstripe_` FOREIGN KEY (`event_id`) REFERENCES `djstripe_event` (`djstripe_id`);

--
-- Constraints for table `reports_company`
--
ALTER TABLE `reports_company`
  ADD CONSTRAINT `reports_company_sector_id_9adfc52f_fk_reports_sector_id` FOREIGN KEY (`sector_id`) REFERENCES `reports_sector` (`id`);

--
-- Constraints for table `reports_domain`
--
ALTER TABLE `reports_domain`
  ADD CONSTRAINT `reports_domain_company_id_9d7952a9_fk_reports_company_id` FOREIGN KEY (`company_id`) REFERENCES `reports_company` (`id`);

--
-- Constraints for table `reports_riskreport`
--
ALTER TABLE `reports_riskreport`
  ADD CONSTRAINT `reports_riskreport_domain_id_32e97038_fk_reports_domain_id` FOREIGN KEY (`domain_id`) REFERENCES `reports_domain` (`id`);

--
-- Constraints for table `reports_scoreitem`
--
ALTER TABLE `reports_scoreitem`
  ADD CONSTRAINT `reports_scoreitem_report_id_6b59402e_fk_reports_riskreport_id` FOREIGN KEY (`report_id`) REFERENCES `reports_riskreport` (`id`);

--
-- Constraints for table `reports_testresult`
--
ALTER TABLE `reports_testresult`
  ADD CONSTRAINT `reports_testresult_definition_id_85651fc7_fk_reports_t` FOREIGN KEY (`definition_id`) REFERENCES `reports_testdefinition` (`id`),
  ADD CONSTRAINT `reports_testresult_report_id_ab0b375c_fk_reports_riskreport_id` FOREIGN KEY (`report_id`) REFERENCES `reports_riskreport` (`id`);

--
-- Constraints for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD CONSTRAINT `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD CONSTRAINT `socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc` FOREIGN KEY (`socialapp_id`) REFERENCES `socialaccount_socialapp` (`id`),
  ADD CONSTRAINT `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- Constraints for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD CONSTRAINT `socialaccount_social_account_id_951f210e_fk_socialacc` FOREIGN KEY (`account_id`) REFERENCES `socialaccount_socialaccount` (`id`),
  ADD CONSTRAINT `socialaccount_social_app_id_636a42d7_fk_socialacc` FOREIGN KEY (`app_id`) REFERENCES `socialaccount_socialapp` (`id`);

--
-- Constraints for table `users_contact`
--
ALTER TABLE `users_contact`
  ADD CONSTRAINT `users_contact_profile_id_715cfba9_fk_users_domainprofile_id` FOREIGN KEY (`profile_id`) REFERENCES `users_domainprofile` (`id`);

--
-- Constraints for table `users_domainprofile`
--
ALTER TABLE `users_domainprofile`
  ADD CONSTRAINT `users_domainprofile_profile_id_2f47eb39_fk_users_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `users_profile` (`id`);

--
-- Constraints for table `users_profile`
--
ALTER TABLE `users_profile`
  ADD CONSTRAINT `users_profile_company_id_959728a1_fk_reports_company_id` FOREIGN KEY (`domain_id`) REFERENCES `reports_company` (`id`),
  ADD CONSTRAINT `users_profile_user_id_2112e78d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
