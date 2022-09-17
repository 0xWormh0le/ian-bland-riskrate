/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100138
 Source Host           : localhost:3306
 Source Schema         : riskrateme

 Target Server Type    : MySQL
 Target Server Version : 100138
 File Encoding         : 65001

 Date: 31/01/2020 09:08:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account_emailaddress
-- ----------------------------
DROP TABLE IF EXISTS `account_emailaddress`;
CREATE TABLE `account_emailaddress`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE,
  INDEX `account_emailaddress_user_id_2c513194_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `account_emailaddress_user_id_2c513194_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of account_emailaddress
-- ----------------------------
INSERT INTO `account_emailaddress` VALUES (1, 'ian@securitytrain.me', 0, 1, 2);
INSERT INTO `account_emailaddress` VALUES (2, 'dimitarhero@yahoo.com', 1, 1, 3);
INSERT INTO `account_emailaddress` VALUES (3, 'jesus@riskrate.me', 0, 1, 4);
INSERT INTO `account_emailaddress` VALUES (4, 'jeff@bdsfx.com', 0, 1, 5);
INSERT INTO `account_emailaddress` VALUES (5, 'eugenemathew93@gmail.com', 1, 1, 6);
INSERT INTO `account_emailaddress` VALUES (6, 'euge2nemathew93@gmail.com', 0, 1, 7);
INSERT INTO `account_emailaddress` VALUES (7, 'dimitarhero@securitytrain.me', 0, 0, 3);
INSERT INTO `account_emailaddress` VALUES (8, 'asdf@example.com', 0, 1, 8);

-- ----------------------------
-- Table structure for account_emailconfirmation
-- ----------------------------
DROP TABLE IF EXISTS `account_emailconfirmation`;
CREATE TABLE `account_emailconfirmation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime(6) NOT NULL,
  `sent` datetime(6) NULL DEFAULT NULL,
  `key` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email_address_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `key`(`key`) USING BTREE,
  INDEX `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e`(`email_address_id`) USING BTREE,
  CONSTRAINT `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` FOREIGN KEY (`email_address_id`) REFERENCES `account_emailaddress` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for assessments_answer
-- ----------------------------
DROP TABLE IF EXISTS `assessments_answer`;
CREATE TABLE `assessments_answer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `score` int(10) UNSIGNED NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `assessments_answer_question_id_39d9d14d_fk_assessmen`(`question_id`) USING BTREE,
  CONSTRAINT `assessments_answer_question_id_39d9d14d_fk_assessmen` FOREIGN KEY (`question_id`) REFERENCES `assessments_question` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 240 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of assessments_answer
-- ----------------------------
INSERT INTO `assessments_answer` VALUES (1, 'Yes', 1, 1);
INSERT INTO `assessments_answer` VALUES (2, 'No', 0, 1);
INSERT INTO `assessments_answer` VALUES (3, 'Yes', 1, 2);
INSERT INTO `assessments_answer` VALUES (4, 'No', 0, 2);
INSERT INTO `assessments_answer` VALUES (7, 'Yes', 1, 3);
INSERT INTO `assessments_answer` VALUES (8, 'No', 0, 3);
INSERT INTO `assessments_answer` VALUES (15, 'Yes', 1, 4);
INSERT INTO `assessments_answer` VALUES (16, 'No', 0, 4);
INSERT INTO `assessments_answer` VALUES (17, 'Yes', 1, 5);
INSERT INTO `assessments_answer` VALUES (18, 'No', 0, 5);
INSERT INTO `assessments_answer` VALUES (19, 'Yes', 1, 6);
INSERT INTO `assessments_answer` VALUES (20, 'No', 0, 6);
INSERT INTO `assessments_answer` VALUES (21, 'Yes', 1, 7);
INSERT INTO `assessments_answer` VALUES (22, 'No', 0, 7);
INSERT INTO `assessments_answer` VALUES (23, 'Yes', 1, 8);
INSERT INTO `assessments_answer` VALUES (24, 'No', 0, 8);
INSERT INTO `assessments_answer` VALUES (25, 'Yes', 1, 9);
INSERT INTO `assessments_answer` VALUES (26, 'No', 0, 9);
INSERT INTO `assessments_answer` VALUES (27, 'Yes', 1, 10);
INSERT INTO `assessments_answer` VALUES (28, 'No', 0, 10);
INSERT INTO `assessments_answer` VALUES (30, 'Yes', 1, 11);
INSERT INTO `assessments_answer` VALUES (31, 'No', 0, 11);
INSERT INTO `assessments_answer` VALUES (34, 'At least 8 characters, contain Upper-Case Letters, Lower-Case Letters, and Numbers.', 3, 12);
INSERT INTO `assessments_answer` VALUES (35, 'At least 8 characters, contain Upper-Case Letters and Lower-Case Letters.', 2, 12);
INSERT INTO `assessments_answer` VALUES (36, 'At least 8 characters, contain only letters and numbers.', 1, 12);
INSERT INTO `assessments_answer` VALUES (37, 'No', 0, 12);
INSERT INTO `assessments_answer` VALUES (40, 'Yes', 1, 13);
INSERT INTO `assessments_answer` VALUES (41, 'No', 0, 13);
INSERT INTO `assessments_answer` VALUES (42, 'Yes', 1, 14);
INSERT INTO `assessments_answer` VALUES (43, 'No', 0, 14);
INSERT INTO `assessments_answer` VALUES (46, 'Yes', 1, 15);
INSERT INTO `assessments_answer` VALUES (47, 'No', 0, 15);
INSERT INTO `assessments_answer` VALUES (48, 'They are trained on hire and annually thereafter.', 4, 16);
INSERT INTO `assessments_answer` VALUES (49, 'They are trained annually.', 3, 16);
INSERT INTO `assessments_answer` VALUES (50, 'They are trained one time when they are hired.', 2, 16);
INSERT INTO `assessments_answer` VALUES (51, 'They are trained as-needed.', 1, 16);
INSERT INTO `assessments_answer` VALUES (52, 'They are never trained.', 0, 16);
INSERT INTO `assessments_answer` VALUES (53, 'No, we do NOT allow remote access of any files.', 3, 17);
INSERT INTO `assessments_answer` VALUES (54, 'Yes, employees use a VPN to connect securely.', 2, 17);
INSERT INTO `assessments_answer` VALUES (55, 'Yes, but employees cannot access sensitive information from remote locations.', 1, 17);
INSERT INTO `assessments_answer` VALUES (56, 'None of the options apply.', 0, 17);
INSERT INTO `assessments_answer` VALUES (57, 'Yes', 1, 18);
INSERT INTO `assessments_answer` VALUES (58, 'No', 0, 18);
INSERT INTO `assessments_answer` VALUES (59, 'Both data at rest and in transit are encrypted', 3, 19);
INSERT INTO `assessments_answer` VALUES (60, 'Some data at rest and transit is encrypted', 2, 19);
INSERT INTO `assessments_answer` VALUES (61, 'Only data in transit is encrypted', 1, 19);
INSERT INTO `assessments_answer` VALUES (62, 'Only data at rest is encrypted', 1, 19);
INSERT INTO `assessments_answer` VALUES (63, 'None of our data is encrypted', 0, 19);
INSERT INTO `assessments_answer` VALUES (64, 'Data retention is documented and data is destroyed for all types of data', 3, 20);
INSERT INTO `assessments_answer` VALUES (65, 'Data retention is documented and data is destroyed for our business confidential data only', 2, 20);
INSERT INTO `assessments_answer` VALUES (66, 'Our data is never destroyed', 0, 20);
INSERT INTO `assessments_answer` VALUES (67, 'We have incident response plans and business continuity plans in place', 4, 21);
INSERT INTO `assessments_answer` VALUES (68, 'We have incident recovery and disaster recovery in place', 4, 21);
INSERT INTO `assessments_answer` VALUES (69, 'We have only business continuity plan in place', 3, 21);
INSERT INTO `assessments_answer` VALUES (70, 'We have only incident response plans in place', 3, 21);
INSERT INTO `assessments_answer` VALUES (71, 'We have incident recovery in place', 1, 21);
INSERT INTO `assessments_answer` VALUES (72, 'We have disaster recovery in place', 1, 21);
INSERT INTO `assessments_answer` VALUES (73, 'We have no response or recovery plans at all', 0, 21);
INSERT INTO `assessments_answer` VALUES (74, 'Yes', 1, 22);
INSERT INTO `assessments_answer` VALUES (75, 'No', 0, 22);
INSERT INTO `assessments_answer` VALUES (76, 'Yes', 1, 23);
INSERT INTO `assessments_answer` VALUES (77, 'No', 0, 23);
INSERT INTO `assessments_answer` VALUES (78, 'Yes', 1, 24);
INSERT INTO `assessments_answer` VALUES (79, 'No', 0, 24);
INSERT INTO `assessments_answer` VALUES (80, 'Yes', 1, 25);
INSERT INTO `assessments_answer` VALUES (81, 'No', 0, 25);
INSERT INTO `assessments_answer` VALUES (82, 'Yes, on all devices (desktops, laptops, tablets, phones, servers, etc.).', 3, 26);
INSERT INTO `assessments_answer` VALUES (83, 'Yes, but only on some devices.', 2, 26);
INSERT INTO `assessments_answer` VALUES (84, 'No, our devices do not have antivirus software installed.', 0, 26);
INSERT INTO `assessments_answer` VALUES (85, 'I do not know.', 0, 26);
INSERT INTO `assessments_answer` VALUES (86, 'Yes, on all devices (desktops, laptops, tablets, phones, servers, etc.).', 3, 27);
INSERT INTO `assessments_answer` VALUES (87, 'Yes, but only on some devices.', 2, 27);
INSERT INTO `assessments_answer` VALUES (88, 'No, our devices do not have malware protection.', 0, 27);
INSERT INTO `assessments_answer` VALUES (89, 'I do not know.', 0, 27);
INSERT INTO `assessments_answer` VALUES (90, 'Daily', 4, 28);
INSERT INTO `assessments_answer` VALUES (91, '2-4 times per week', 3, 28);
INSERT INTO `assessments_answer` VALUES (92, 'Once a week', 2, 28);
INSERT INTO `assessments_answer` VALUES (93, 'Once a month', 1, 28);
INSERT INTO `assessments_answer` VALUES (94, 'Never', 0, 28);
INSERT INTO `assessments_answer` VALUES (95, 'Yes, our network is monitored to detect potential cybersecurity events.', 4, 29);
INSERT INTO `assessments_answer` VALUES (96, 'Yes, our physical environment is monitored to detect potential cybersecurity events.', 3, 29);
INSERT INTO `assessments_answer` VALUES (97, 'Yes, personnel activity is monitored to detect potential cybersecurity events.', 3, 29);
INSERT INTO `assessments_answer` VALUES (98, 'No, we do not have the time to detect potential cybersecurity events.', 0, 29);
INSERT INTO `assessments_answer` VALUES (99, 'No, we do not have the resources to do so.', 0, 29);
INSERT INTO `assessments_answer` VALUES (100, 'Yes', 1, 30);
INSERT INTO `assessments_answer` VALUES (101, 'No', 0, 30);
INSERT INTO `assessments_answer` VALUES (102, 'Yes', 1, 31);
INSERT INTO `assessments_answer` VALUES (103, 'No', 0, 31);
INSERT INTO `assessments_answer` VALUES (104, 'Response processes and procedures are executed in a timely manner.', 1, 32);
INSERT INTO `assessments_answer` VALUES (105, 'Response activities are coordinated with internal and external stakeholders, as appropriate, to include external support from law enforcement agencies.', 1, 32);
INSERT INTO `assessments_answer` VALUES (106, 'Analysis is conducted to ensure adequate response and support recovery activities.', 1, 32);
INSERT INTO `assessments_answer` VALUES (107, 'Activities are performed to prevent expansion of an event, mitigate its effects, and eradicate the incident.', 1, 32);
INSERT INTO `assessments_answer` VALUES (108, 'Organizational response activities are improved by incorporating lessons learned from current and previous detection/response activities.', 1, 32);
INSERT INTO `assessments_answer` VALUES (109, 'Recovery processes and procedures are executed to ensure timely restoration of systems or assets affected by cybersecurity events.', 1, 32);
INSERT INTO `assessments_answer` VALUES (110, 'Recovery planning and processes are improved by incorporating lessons learned into future activities.', 1, 32);
INSERT INTO `assessments_answer` VALUES (111, 'None of these', 0, 32);
INSERT INTO `assessments_answer` VALUES (112, 'Yes, the necessary changes are made to the system(s) to stop future events.', 3, 33);
INSERT INTO `assessments_answer` VALUES (113, 'Changes are made, but the cause has not been discovered.', 2, 33);
INSERT INTO `assessments_answer` VALUES (114, 'An event has not occurred in the past.', 1, 33);
INSERT INTO `assessments_answer` VALUES (115, 'No changes are made based on past events.', 0, 33);
INSERT INTO `assessments_answer` VALUES (116, 'Yes, we have an individual or group readily available and well-trained in this area.', 3, 34);
INSERT INTO `assessments_answer` VALUES (117, 'Yes, but the individual or group may not be readily available.', 2, 34);
INSERT INTO `assessments_answer` VALUES (118, 'No, we do not currently have the resources to do this.', 0, 34);
INSERT INTO `assessments_answer` VALUES (119, 'No, we would establish this after an event occurred.', 0, 34);
INSERT INTO `assessments_answer` VALUES (120, 'Yes, we can quickly notify our customers.', 2, 35);
INSERT INTO `assessments_answer` VALUES (121, 'No, our business does not keep any permanent records of customer information.', 2, 35);
INSERT INTO `assessments_answer` VALUES (122, 'Yes, but it might take some time to notify customers.', 1, 35);
INSERT INTO `assessments_answer` VALUES (123, 'Yes, but we would have to figure out how to notify our customers.', 1, 35);
INSERT INTO `assessments_answer` VALUES (124, 'No, we do not know how to notify our customers.', 0, 35);
INSERT INTO `assessments_answer` VALUES (125, 'Multiple times per day', 4, 36);
INSERT INTO `assessments_answer` VALUES (126, 'Daily', 3, 36);
INSERT INTO `assessments_answer` VALUES (127, 'Weekly', 2, 36);
INSERT INTO `assessments_answer` VALUES (128, 'Monthly', 1, 36);
INSERT INTO `assessments_answer` VALUES (129, 'Never', 0, 36);
INSERT INTO `assessments_answer` VALUES (130, 'A legal agency which specializes in cyber crime', 1, 37);
INSERT INTO `assessments_answer` VALUES (131, 'Law enforcement agency (police, FBI, etc.)', 1, 37);
INSERT INTO `assessments_answer` VALUES (132, 'Internet service provider(s)', 1, 37);
INSERT INTO `assessments_answer` VALUES (133, 'Coordinating centers – InfraGard, HITRUST, etc.', 1, 37);
INSERT INTO `assessments_answer` VALUES (134, 'Public relations agency', 1, 37);
INSERT INTO `assessments_answer` VALUES (135, 'List of software/hardware vendors who supplied your systems/devices', 1, 37);
INSERT INTO `assessments_answer` VALUES (136, 'None of the above', 0, 37);
INSERT INTO `assessments_answer` VALUES (137, 'We have a recovery plan in place that lists clear, comprehensive steps.', 2, 38);
INSERT INTO `assessments_answer` VALUES (138, 'We have part of a recovery plan in place, but it may be short or vague.', 1, 38);
INSERT INTO `assessments_answer` VALUES (139, 'We do not have a recovery plan in place.', 0, 38);
INSERT INTO `assessments_answer` VALUES (140, 'Yes', 1, 39);
INSERT INTO `assessments_answer` VALUES (141, 'No', 0, 39);
INSERT INTO `assessments_answer` VALUES (142, 'Yes', 1, 40);
INSERT INTO `assessments_answer` VALUES (143, 'No', 0, 40);
INSERT INTO `assessments_answer` VALUES (144, 'Yes', 1, 41);
INSERT INTO `assessments_answer` VALUES (145, 'No', 0, 41);
INSERT INTO `assessments_answer` VALUES (146, 'Yes', 1, 42);
INSERT INTO `assessments_answer` VALUES (147, 'No', 0, 42);
INSERT INTO `assessments_answer` VALUES (148, 'Yes', 1, 43);
INSERT INTO `assessments_answer` VALUES (149, 'No', 0, 43);
INSERT INTO `assessments_answer` VALUES (150, 'Yes', 1, 44);
INSERT INTO `assessments_answer` VALUES (151, 'No', 0, 44);
INSERT INTO `assessments_answer` VALUES (152, 'Yes', 1, 45);
INSERT INTO `assessments_answer` VALUES (153, 'No', 0, 45);
INSERT INTO `assessments_answer` VALUES (154, 'Yes', 1, 46);
INSERT INTO `assessments_answer` VALUES (155, 'No', 0, 46);
INSERT INTO `assessments_answer` VALUES (156, 'Yes', 1, 47);
INSERT INTO `assessments_answer` VALUES (157, 'No', 0, 47);
INSERT INTO `assessments_answer` VALUES (158, 'Yes', 1, 48);
INSERT INTO `assessments_answer` VALUES (159, 'No', 0, 48);
INSERT INTO `assessments_answer` VALUES (160, 'Yes', 1, 49);
INSERT INTO `assessments_answer` VALUES (161, 'No', 0, 49);
INSERT INTO `assessments_answer` VALUES (162, 'Yes', 1, 50);
INSERT INTO `assessments_answer` VALUES (163, 'No', 0, 50);
INSERT INTO `assessments_answer` VALUES (164, 'Yes', 1, 51);
INSERT INTO `assessments_answer` VALUES (165, 'No', 0, 51);
INSERT INTO `assessments_answer` VALUES (166, 'Yes', 1, 52);
INSERT INTO `assessments_answer` VALUES (167, 'No', 0, 52);
INSERT INTO `assessments_answer` VALUES (168, 'Yes', 1, 53);
INSERT INTO `assessments_answer` VALUES (169, 'No', 0, 53);
INSERT INTO `assessments_answer` VALUES (170, 'Yes', 1, 54);
INSERT INTO `assessments_answer` VALUES (171, 'No', 0, 54);
INSERT INTO `assessments_answer` VALUES (172, 'Yes', 1, 55);
INSERT INTO `assessments_answer` VALUES (173, 'No', 0, 55);
INSERT INTO `assessments_answer` VALUES (174, 'Yes', 1, 56);
INSERT INTO `assessments_answer` VALUES (175, 'No', 0, 56);
INSERT INTO `assessments_answer` VALUES (176, 'Yes', 1, 57);
INSERT INTO `assessments_answer` VALUES (177, 'No', 0, 57);
INSERT INTO `assessments_answer` VALUES (178, 'Yes', 1, 58);
INSERT INTO `assessments_answer` VALUES (179, 'No', 0, 58);
INSERT INTO `assessments_answer` VALUES (180, 'Yes', 1, 59);
INSERT INTO `assessments_answer` VALUES (181, 'No', 0, 59);
INSERT INTO `assessments_answer` VALUES (182, 'Yes', 1, 60);
INSERT INTO `assessments_answer` VALUES (183, 'No', 0, 60);
INSERT INTO `assessments_answer` VALUES (184, 'Yes', 1, 61);
INSERT INTO `assessments_answer` VALUES (185, 'No', 0, 61);
INSERT INTO `assessments_answer` VALUES (186, 'Yes', 1, 62);
INSERT INTO `assessments_answer` VALUES (187, 'No', 0, 62);
INSERT INTO `assessments_answer` VALUES (188, 'Yes', 1, 63);
INSERT INTO `assessments_answer` VALUES (189, 'No', 0, 63);
INSERT INTO `assessments_answer` VALUES (190, 'Yes', 1, 64);
INSERT INTO `assessments_answer` VALUES (191, 'No', 0, 64);
INSERT INTO `assessments_answer` VALUES (192, 'Yes', 1, 65);
INSERT INTO `assessments_answer` VALUES (193, 'No', 0, 65);
INSERT INTO `assessments_answer` VALUES (194, 'Yes', 1, 66);
INSERT INTO `assessments_answer` VALUES (195, 'No', 0, 66);
INSERT INTO `assessments_answer` VALUES (196, 'Yes', 1, 67);
INSERT INTO `assessments_answer` VALUES (197, 'No', 0, 67);
INSERT INTO `assessments_answer` VALUES (198, 'Yes', 1, 68);
INSERT INTO `assessments_answer` VALUES (199, 'No', 0, 68);
INSERT INTO `assessments_answer` VALUES (200, 'Yes', 1, 69);
INSERT INTO `assessments_answer` VALUES (201, 'No', 0, 69);
INSERT INTO `assessments_answer` VALUES (202, 'Yes', 1, 70);
INSERT INTO `assessments_answer` VALUES (203, 'No', 0, 70);
INSERT INTO `assessments_answer` VALUES (204, 'Yes', 1, 71);
INSERT INTO `assessments_answer` VALUES (205, 'No', 0, 71);
INSERT INTO `assessments_answer` VALUES (206, 'Yes', 1, 72);
INSERT INTO `assessments_answer` VALUES (207, 'No', 0, 72);
INSERT INTO `assessments_answer` VALUES (208, 'Yes', 1, 73);
INSERT INTO `assessments_answer` VALUES (209, 'No', 0, 73);
INSERT INTO `assessments_answer` VALUES (210, 'Yes', 1, 74);
INSERT INTO `assessments_answer` VALUES (211, 'No', 0, 74);
INSERT INTO `assessments_answer` VALUES (212, 'Yes', 1, 75);
INSERT INTO `assessments_answer` VALUES (213, 'No', 0, 75);
INSERT INTO `assessments_answer` VALUES (214, 'Yes', 1, 76);
INSERT INTO `assessments_answer` VALUES (215, 'No', 0, 76);
INSERT INTO `assessments_answer` VALUES (216, 'Yes', 1, 77);
INSERT INTO `assessments_answer` VALUES (217, 'No', 0, 77);
INSERT INTO `assessments_answer` VALUES (218, 'Yes', 1, 78);
INSERT INTO `assessments_answer` VALUES (219, 'No', 0, 78);
INSERT INTO `assessments_answer` VALUES (220, 'Yes', 1, 79);
INSERT INTO `assessments_answer` VALUES (221, 'No', 0, 79);
INSERT INTO `assessments_answer` VALUES (222, 'Yes', 1, 80);
INSERT INTO `assessments_answer` VALUES (223, 'No', 0, 80);
INSERT INTO `assessments_answer` VALUES (224, 'Yes', 1, 81);
INSERT INTO `assessments_answer` VALUES (225, 'No', 0, 81);
INSERT INTO `assessments_answer` VALUES (226, 'Yes', 1, 82);
INSERT INTO `assessments_answer` VALUES (227, 'No', 0, 82);
INSERT INTO `assessments_answer` VALUES (228, 'Yes', 1, 83);
INSERT INTO `assessments_answer` VALUES (229, 'No', 0, 83);
INSERT INTO `assessments_answer` VALUES (230, 'Yes', 1, 84);
INSERT INTO `assessments_answer` VALUES (231, 'No', 0, 84);
INSERT INTO `assessments_answer` VALUES (232, 'Yes', 1, 85);
INSERT INTO `assessments_answer` VALUES (233, 'No', 0, 85);
INSERT INTO `assessments_answer` VALUES (234, 'Yes', 1, 86);
INSERT INTO `assessments_answer` VALUES (235, 'No', 0, 86);
INSERT INTO `assessments_answer` VALUES (236, 'Yes', 1, 87);
INSERT INTO `assessments_answer` VALUES (237, 'No', 0, 87);
INSERT INTO `assessments_answer` VALUES (238, 'Yes', 1, 88);
INSERT INTO `assessments_answer` VALUES (239, 'No', 0, 88);

-- ----------------------------
-- Table structure for assessments_question
-- ----------------------------
DROP TABLE IF EXISTS `assessments_question`;
CREATE TABLE `assessments_question`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `multiple` tinyint(1) NOT NULL,
  `max_score` int(10) UNSIGNED NOT NULL,
  `content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `recommendation` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `topic_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `assessments_question_topic_id_aaf85c13_fk_assessments_topic_id`(`topic_id`) USING BTREE,
  CONSTRAINT `assessments_question_topic_id_aaf85c13_fk_assessments_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `assessments_topic` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of assessments_question
-- ----------------------------
INSERT INTO `assessments_question` VALUES (1, 0, 1, 'Have you established defined cyber security roles and responsibilities with your organisation clear lines of responsibility and accountability to named individuals for the security of sensitive information and key operational services?', '<h4>Governance: Implementation</h4><p>Implementing information security simply by applying information security controls on it’s own does not work. Only a proper management system can ensure adequate and effective information security.</p><p>Cyber security is central to an organisation\'s health and resilience, and this places it firmly within the responsibility of the company’s leadership. Board members should lead by example to help promote a healthy cyber security culture.</p><p>Cyber security is not just an IT issue. Senior personnel don’t need to know technical specifics, but it is important that they have an overview of cyber security and how it impacts their business.  This provides an accountability framework and gives oversight to ensure that risks are adequately mitigated, while management ensures that controls are implemented to mitigate risks.</p><p>Operating your company with security in mind means applying concepts and using techniques which make it harder for attackers to compromise your data or', 1);
INSERT INTO `assessments_question` VALUES (2, 0, 1, 'Are you aware of the legal and regulatory requirements regarding cybersecurity, including data privacy, and how they impact your business? ', '<h4>Governance: Legal and Regulatory</h4><p>If company leaders do not understand the cybersecurity laws that relate to their operations, they may be subjected to substantial fines.</p><p>Businesses themselves are responsible for knowing the applicable cybersecurity laws. Many of them relate to data collection practices and the need to notify customers within strict timeframes and through specified methods if data gets compromised.</p><p>It is important that you ensure that you keep up to date with such laws in your jurisdiction.</p>', 1);
INSERT INTO `assessments_question` VALUES (3, 0, 1, 'Are acceptable use policies in place which outline the rules for acceptable use of information and assets of all staff and business stakeholders?', '<h4>Governance: Formal Policies</h4> <p>Acceptable use policies are an integral part of cyber security.  An Acceptable Use Policy (AUP), or set of policies, is official documentation containing rules that govern network, computer, and data usage. It is one of the best ways to help limit any unnecessary exposure to cyber risks, such as data breaches, which ultimately protects your company’s security, costs and reputation.</p><p>These documents clearly and concisely outline expected behaviours and educate users on how they can keep your organisation secure. All staff and business stakeholders sign an acceptable use policy before being granted a network ID.</p>', 1);
INSERT INTO `assessments_question` VALUES (4, 0, 1, 'Are all users informed and trained on cyber security so that they understand the potential threats they might face and how to avoid them?', '<h4>Governance: Security Awareness</h4> <p>With a significant percentage of cyber related incidence caused by user interaction, staff training is an essential part of a robust cyber security initiative.</p> <p>By making employees aware of security threats, how they might present, and what procedures to follow when a threat is identified, you\'re strengthening the most vulnerable links in the chain.</p> <p>If employees don’t know how to recognize a security threat, they can’t be expected to avoid or report it.</p> <p>Our Security Awareness library provides various resource to provide training for your staff.</p> <p>An Information Security Awareness & Training Policy documents a programme to educate employees on current and emerging cyber security threats.</p>', 1);
INSERT INTO `assessments_question` VALUES (5, 0, 1, 'Do you have an inventory of IT systems? That is a record of all hardware devices software platforms and applications your business uses?', '<h4>IT Asset Managment</h4><p>Knowing exactly what IT systems you have and use is the first step in staying cyber safe.</p> <p>For any modern organisation, it’s not possible to create a robust cybersecurity program without having an IT asset inventory. There are just too many tools and services to keep track of. Every component added to IT Systems has the potential to introduce vulnerabilities. Overlooked, unknown, and outdated assets carry a huge risk. Cybercriminals can exploit unaccounted and out-of-date hardware and software to hack systems.</p> <p>IT Asset Management (ITAM) is  the process of keeping an inventory of all IT assets.</p> <p>Hardware, Software, Cloud Services and End-User Mobile Device should all be tracked and managed.</p> <p>For an SME this can be achieved using spreadsheets, such as this IT Asset Management sheet. For larger organisations IT inventory management software is recommended.</p>', 1);
INSERT INTO `assessments_question` VALUES (6, 0, 1, 'Is an Information classification policy in place to ensure assets are classified according to their value and confidentiality?', '<h4>Data Classification </h4><p>Data classification is a fundamental part of securing your organisation\'s information. It\'s the process of identifying and assigning pre-determined levels of sensitivity to different types of information. If your organisation doesnt properly classify your data, then you cannot properly protect your data.</p><p>Data classification policies help an organisation to understand what data may be used, its availability, where it\'s located, what access, integrity, and security levels are required, and whether the current handling and processing implementations comply with current laws and regulations.</p><p>An information classification policy will set out the different levels of classification, define what information falls within each classification and then decide what controls will be put in place.</p>', 1);
INSERT INTO `assessments_question` VALUES (7, 0, 1, 'Have you identified the systems on which confidential and sensitive data is held and processed?', '<h4>Important Systems</h4><p>Having developed an information classification policy you can now identify those systems on which sensitive data is stored and processed in order to ensure that the correct security controls are applied to these devices.</p><p>Identifying these systems allows us to now assess threats and vulnerabilities that can impact them and the consequences of loss of access to these systems.</p>', 1);
INSERT INTO `assessments_question` VALUES (8, 0, 1, 'Have you assessed the potential consequences that might arise from the loss of data or loss of access to systems that your business relies upon? ', '<h4>Business Impact Analysis (BIA)</h4>\n<p>Business Impact Analysis (BIA) is  a systematic process to determine and evaluate the potential consequences of an interruption to critical business operations as a result of a disaster, accident or emergency. In this instance we focus on cyber incidence and IT assets. BIA is part of any thorough plan to manage risk and develop incident response and recovery plans.</p>\n<p>Problems are part of the business landscape and ignoring the possibility of some disruption to process threatens solvency and long-term survival.</p>\n<p>A Business Impact Analysis template helps you to calculate the level of consequence based on loss of Availability, Integrity and Confidentiality of your IT assets. It helps you to determine and prioritise incident response based on Recovery Time and Recovery Point and</p>\n ', 1);
INSERT INTO `assessments_question` VALUES (9, 0, 1, 'Have you identified threats and vulnerabilities that could cause data loss or prevent access to systems and the likelihood of them occurring? ', '<h4>Threats and Vulnerabilities</h4>\n<p>A threat refers to a new or newly discovered incident that has the potential to harm a system or your company overall.</p>\n<p>A vulnerability refers to a known weakness of an asset (resource) that can be exploited by one or more attackers. In other words, it is a known issue that allows an attack to succeed.</p>\n<p>Understanding your threats and vulnerabilities is the first step to managing your risk. A vulnerability assessment is the process of identifying, quantifying, and prioritizing (or ranking) the vulnerabilities in a system.</p>\n<p>A Cyber Vulnerability Management Policy outlines the technology and procedures necessary for implementing a comprehensive, integrated program to detect and remediate vulnerabilities in operating systems, applications, mobile devices, cloud resources, and network devices to maintain maximum levels of security.</p>', 1);
INSERT INTO `assessments_question` VALUES (10, 0, 1, 'Do you have a risk management plan in place to identify the most vulnerable and assign risk tolerance?', '<h4>Risk Management</h4><p>Having identified your IT systems, the consequences for loss of data and/or access, threats and vulnerabilities we can now calculate Risk.</p><p>Risk = Threat x Vulnerability x Consequence</p><p>Risk can be reduced by creating and implementing a risk management plan. Risk analysis as part of this plan, it balances an organisations assets against threats of loss and is the catalyst to implementing safeguards or countermeasures that mitigates risk.</p><p>A Security Risk Management   policy outlines the Companys risk management process and sets out the responsibilities of conducting Risk Management activities.</p><p>An Asset Risk Assessment Template helps you to calculate risk based on loss of Availability, Integrity and Confidentiality of your IT assets. They help you to determine and prioritise incident response based on Recovery Time and Recovery Point.</p>', 1);
INSERT INTO `assessments_question` VALUES (11, 0, 1, 'If you rely on any third party services do you understand and manage security issues that could arise because of dependencies on these or through their supply chain?', '<h4>Third Party Risk</h4>\n<p>Service provided by third parties must be included in your risk management plan. In some cases you can be held legally liable for the failure of third parties with regards to data security.</p>\n<p>For each of these services you need to understand what security issues might result from using them and were legal liability and responsibility lies with reference to a third party vulnerability.</p>', 1);
INSERT INTO `assessments_question` VALUES (12, 0, 1, 'Is user account creation subject to a full provisioning and approval process and all user accounts removed or disabled when no longer required e.g.  when an individual changes role or leaves the organisation? ', '<h4>User Account Management</h4>\n<p>The provisioning of all accounts should be documented, and all accounts and access requests must be approved by the appropriate system owner or business unit manager.</p>\n<p>A system should be in place to ensure accounts are removed when an employee leaves the organisation.  Should an employee move between departments access should be reviewed to make sure it remains inline with their role.</p>\n<p>Access management procedures and controls are essential to prevent attackers from having  an easy way to gain access to your systems and to prevent accidental data exposure or data theft.</p>\n<p>An Access and Account Management Policy defines rules for the account and access management to various systems, equipment, facilities, and information of, based on business and security requirements for access.</p>', 2);
INSERT INTO `assessments_question` VALUES (13, 0, 1, 'Are system administrative access privileges restricted to a limited number of authorised individuals?', '<h4>Privileged Accounts</h4><p>Privileged user management are the additional processes and controls you should put in place to safeguard the most sensitive operations in the system. Key to this is ensuring that only authorised individuals have administrative access.</p><p>Anyone with access that enables them to affect change which would be felt beyond their immediate job role could be considered a privileged user. For example:</p><p> - administering systems or networks to perform maintenance and software updates</p><p> - accessing systems used to perform a critical function such as approving financial payments.</p><p>Keep steps need to be taken to reduce the risk of privileged user accounts being misused</p><p>An Access and Account Management Policy will define rules for the account and access management to various systems, equipment, facilities, and information of, based on business and security requirements for access.</p>', 2);
INSERT INTO `assessments_question` VALUES (14, 0, 1, 'Do you restrict employee access to only the information and systems required for their job role?', '<h4>Data Access Restrictions</h4><p>If users are provided with unnecessary system privileges or data access rights, then the impact of misuse or compromise of that users account will be more severe than it need be. All users should be provided with a reasonable (but minimal) level of system privileges and rights needed for their role. The granting of highly elevated system privileges should be carefully controlled and managed. This principle is sometimes referred to as least privilege.</p><p>This is not only relevant to digital access but also physical access to data storage and processing systems, such as server rooms or document storage.</p><p>An Access and Account Management Policy will define rules for the account and access management to various systems, equipment, facilities, and information of, based on business and security requirements for access.</p><p>A Physical Access Policy outlines controls and procedures to limit and monitor physical access to systems.</p>', 2);
INSERT INTO `assessments_question` VALUES (15, 0, 1, 'Do you allow your employees to access company files remotely?', '', 2);
INSERT INTO `assessments_question` VALUES (16, 0, 1, 'If remote access is allowed, do you have a policy to cover remote working? This should include information on the use of a VPN, WiFi hotspot vulnerabilities, protecting data etc..', '<h4>Remote Working</h4><p>When working outside of the traditional office space, information immediately becomes more vulnerable.</p><p>If you allow remote working a Remote Working Policy is essential to provide guidelines and security best practices for employees who work from a location other than your offices.</p><p>This should include detailed guidance on how to avoid the most common type of threats that this type of work can introduce to your company.</p><p>Ensuring secure access to network resources is crucial to maintaining security. Remote Access & Client VPN provides technical guidelines for providing remote access.</p><p>You can find a Remote Working Policy here. Our bite sized material includes key pointers on working remotely.</p><p>This can also be supplemented by a Mobile Device Usage Policy that defines standards, procedures, and restrictions for end users who have legitimate business requirements to use a private or company provided mobile device that can access the companys network.</p>', 2);
INSERT INTO `assessments_question` VALUES (17, 0, 1, 'Do you allow the use of removable media? Such as USB drives and SD Cards?', '', 2);
INSERT INTO `assessments_question` VALUES (18, 0, 1, 'If yes do you have a policy that informs staff on the safe use of these devices? This should include information on encrypting files, checking for malware, and what to do in case of device or data loss.  ', '<h4>Removable Media</h4>\n<p>Removable media provide a common route for the introduction of malware and the accidental or deliberate export of sensitive data.</p>\n<p>If you allow the use of removable media it is essential to implement technical controls to minimise the risks these devices present.</p>\n<p>You should provide guidelines on the safe usage of such devices to all stff. This can be as part of your Acceptable Use Policy or in the form of a separate Removable Media Policy.</p>\n<p>Ideally training would also be deployed on the usage of theses devices.  Our bite sized material includes guidelines on the use of removable media.</p>', 2);
INSERT INTO `assessments_question` VALUES (19, 0, 1, 'Do you enforce the use of strong passwords and educate users on how to create and manage non predictable secure passwords?', '<h4>Password Security</h4><p>With passwords as the de facto standard for proving identity it is essential that all employees are educated o the creation, use and storage of strong secure passwords.</p><p>Technical controls should be in place to enforce strong password creation, lockout users after failed login attempts, ensure encryption of passwords in transit and storage and more.</p><p>A Password Policy outlines organisational requirements for the creation and security of passwords specific to the companys IT systems.</p><p>Ideally this would be supplemented with at least annual password security training.</p>', 2);
INSERT INTO `assessments_question` VALUES (20, 0, 1, 'Have you enabled two-factor authentication for all important accounts (eg email and administrative consoles)?', '<h4>Multi-factor authentication (MFA)</h4>\n<p>Multi-factor authentication (MFA) often know as 2-factor authentication (2FA), protects against password guessing and theft. It helps to protect important accounts in the event a password has been compromised.</p>\n<p>All users, including administrators, should use multi-factor authentication when using Cloud and Internet-connected services. This is particularly important when authenticating to services that hold sensitive or private data.</p>\n<p>All administrators should, wherever possible, be required to use multi-factor authentication.</p>\n<p>MFA requirements are outlined in the Password Policy and Access and Account Management Policy documents.</p>', 2);
INSERT INTO `assessments_question` VALUES (21, 0, 1, 'Do all staff know how to identify and report phishing emails?', '<h4>Identifying Phishing Emails</h4>\n<p>Phishing is the most common form or cyber threat that affects organisations of all sizes.</p>\n<p>It is essential that staff receive training on how to identify and report these emails. Training on email scams such as CEO and Invoice Fraud should be provided to all those that are in roles likely to be targeted by these attacks.</p>\n<p>You can download our Phishing Simulation to provide training to your staff.</p>\n<p>An Email Usage Policy can help in setting out clearly defined rules for the use of company email accounts.</p>', 2);
INSERT INTO `assessments_question` VALUES (22, 0, 1, 'Have one or more firewalls (or similar network device) been installed on the boundary of the organisations internal network(s)?', '<h4>Firewall Implementation</h4> <p>The first line of defence for a small business is a firewall. While you can run firewall software on your computers, a separate firewall device front-ending your network ensures that all devices, including printers, scanners, media players, BYOD devices, and so on, are shielded.</p><p>Perimeter Network Security technical guidelines provides details on installing and using a firewall. System and Networking Security Policy defines the requirements for the system and network-level protection controls.</p>', 2);
INSERT INTO `assessments_question` VALUES (23, 0, 1, 'If you have a firewall: is this regularly reviewed to ensure only required services are accessible and vulnerable services blocked?', '<h4>Firewall Configuration</h4> <p>Its essential to regularly review your firewall to ensure that it is blocking all vulnerable services. With new vulnerabilities discover daily what was once secure can suddenly provide an opportunity for an attacker.</p><p>A Cyber Vulnerability Management Policy outlines procedures necessary for detecting and remediating vulnerabilities. External and internal scans should be regularly scheduled to identify potential problems.</p>', 2);
INSERT INTO `assessments_question` VALUES (24, 0, 1, 'Has un-needed, out-date or older software been removed from computer and network devices that are connected to or capable of connecting to the Internet?', '', 2);
INSERT INTO `assessments_question` VALUES (25, 0, 1, 'Is remote maintenance approved, logged, and performed in a manner that prevents unauthorized access?', '', 2);
INSERT INTO `assessments_question` VALUES (26, 0, 1, 'Does your business have anti-virus software installed on all devices?', '', 3);
INSERT INTO `assessments_question` VALUES (27, 0, 1, 'Does your business have anti-malware protection installed on all devices?', '', 3);
INSERT INTO `assessments_question` VALUES (28, 0, 1, 'How often do you check your devices for malware?', '', 3);
INSERT INTO `assessments_question` VALUES (29, 0, 1, 'Is your business able to detect cybersecurity events (select all applicable responses)?', '', 3);
INSERT INTO `assessments_question` VALUES (30, 0, 1, 'Are system network security incidents tracked and used to correlated with other system log files?', '', 3);
INSERT INTO `assessments_question` VALUES (31, 0, 1, 'Are roles and responsibilities assigned and do all parties know what to do?', '', 4);
INSERT INTO `assessments_question` VALUES (32, 1, 1, 'In the event of a cybersecurity event, what response plan do you have in place (select all applicable responses)?', '', 4);
INSERT INTO `assessments_question` VALUES (33, 0, 1, 'If a cybersecurity event has occurred in the past, have you made changes to your system(s) to ensure that this same event will not occur again?', '', 4);
INSERT INTO `assessments_question` VALUES (34, 0, 1, 'Do you have an individual or group assigned to control the cybersecurity event and discover how or where the event occurred?', '', 4);
INSERT INTO `assessments_question` VALUES (35, 0, 1, 'Does your business have a customer notification plan in place if customer confidential information was or may have been stolen? Note that you may be required by law to notify your customers.', '', 4);
INSERT INTO `assessments_question` VALUES (36, 0, 1, 'How often do you backup your data?', '', 5);
INSERT INTO `assessments_question` VALUES (37, 1, 1, 'Do you have easy access to contact information for the following resources that can help you recover (select all that apply)?', '', 5);
INSERT INTO `assessments_question` VALUES (38, 0, 1, 'Does your recovery plan include actions you and your employees will take to bring your business back to normal operations following a cybersecurity event?', '', 5);
INSERT INTO `assessments_question` VALUES (39, 0, 1, 'Is there someone in your organization who is designated to manage recover after a cybersecurtity event?', '', 5);
INSERT INTO `assessments_question` VALUES (40, 0, 1, 'Do your recovery plans incorporate lessons learned?', '', 5);
INSERT INTO `assessments_question` VALUES (41, 0, 1, 'Are your recovery strategies updated as technology and/or plans change?', '', 5);
INSERT INTO `assessments_question` VALUES (42, 0, 1, 'Do you have cyber insurance?', '', 5);
INSERT INTO `assessments_question` VALUES (43, 0, 1, 'Have one or more firewalls (or similar network device) been installed to protect the organisationâ€™s internal network?', 'It is essential to install and configure a firewall or equivalent network device at the organisations network boundary.', 6);
INSERT INTO `assessments_question` VALUES (44, 0, 1, 'Has the default administrative password of the firewall been changed to an alternative strong password?', 'Ensure  that you change the default password to a unique strong password.', 6);
INSERT INTO `assessments_question` VALUES (45, 0, 1, 'Has each open connection (i.e.  allowed ports and services) on the firewall been subject to approval and documented (including an explanation of business need)?', 'Ensure each open connection on the firewall has been authorised and documented.', 6);
INSERT INTO `assessments_question` VALUES (46, 0, 1, 'Have vulnerable services (e.g.  Server Message Block (SMB), NetBIOS, Telnet, TFTP, RPC, rlogin, rsh or rexec) been disabled (blocked) by default and those that are allowed have a business justification?', 'Ensure vulnerable services have been disabled and those that are open have a valid justification and documentation for being open.', 6);
INSERT INTO `assessments_question` VALUES (47, 0, 1, 'Are firewall rules subject to regular review?', 'Ensure firewall rules are regularly reviewed and remove unused firewall rules.', 6);
INSERT INTO `assessments_question` VALUES (48, 0, 1, 'Have computers that do not need to connect to the Internet been prevented from initiating connections to the Internet (Default deny)?', 'Ensure that the firewall has a default deny all rule in place and that Internet access is only provided to systems on an as required basis.', 6);
INSERT INTO `assessments_question` VALUES (49, 0, 1, 'Has the administrative interface used to manage the  firewall been configured such that it is not accessible from the Internet?', 'Ensure that the admin interface of the firewall is not accessible from the internet.', 6);
INSERT INTO `assessments_question` VALUES (50, 0, 1, 'Does the administrative interface require second factor authentication or is access limited to a specific address?', 'Ensure that the admin interface requires two factor authentication or access is limited to a specific address.', 6);
INSERT INTO `assessments_question` VALUES (51, 0, 1, 'Are unnecessary user accounts on internal workstations  (eg Guest, previous employees) removed or disabled?', 'Disable all accounts not in active use and ensure that processes for staff who leave include notification to the IT department to ensure accounts are disabled.', 7);
INSERT INTO `assessments_question` VALUES (52, 0, 1, 'Have default passwords for any user accounts been changed to a suitably strong password?', 'Ensure all default passwords are changed.', 7);
INSERT INTO `assessments_question` VALUES (53, 0, 1, 'Are strong, complex passwords defined in policy and enforced technically for all users and administrators?', 'Ensure a suitable password complexity policy is in place.', 7);
INSERT INTO `assessments_question` VALUES (54, 0, 1, 'Has the auto-run feature been disabled to prevent software programs running automatically when removable storage media is connected to a computer or network folders are mounted?', 'Ensure that auto-run is disabled on all systems.', 7);
INSERT INTO `assessments_question` VALUES (55, 0, 1, 'Has unnecessary software been removed or disabled and do systems only have software on them that is required to meet business requirements?', 'Ensure all systems only have the required software needed to meet their business needs installed.', 7);
INSERT INTO `assessments_question` VALUES (56, 0, 1, 'Is all additional software added to workstations approved by IT or Management staff prior to installation and are standard users prevented from installing software?', 'Ensure only authorised software is installed on systems and ensure that users are prevented from installing software without prior authorisation.', 7);
INSERT INTO `assessments_question` VALUES (57, 0, 1, 'Has a personal firewall (or equivalent) been enabled on desktop PCs and laptops, and configured to disable (block) unapproved connections by default', 'Ensure all available local firewalls are enabled.', 7);
INSERT INTO `assessments_question` VALUES (58, 0, 1, 'Are all user workstations built from a fully hardened base platform to ensure consistency and security across the estate', 'Ensure systems use standard consistent build templates which are  hardened in accordance with vendor guidance.', 7);
INSERT INTO `assessments_question` VALUES (59, 0, 1, 'Is an offline backup solution in place to provide protection against malware that encrypts user data files?', 'Ensure that backups or file versioning solutions cannot be accessed directly via the network in order to provide a reasonable level of protection against extortion malware.', 7);
INSERT INTO `assessments_question` VALUES (60, 0, 1, 'Is there a corporate policy on log retention and the centralised storage and management of log information?', 'Ensure a corporate policy is in place to define the strategy for log retention.', 7);
INSERT INTO `assessments_question` VALUES (61, 0, 1, 'Are log files retained for relevant applications on both servers (including DHCP logs) and workstations for a period of at least three months?', 'Ensure all server and workstation log files are retained for a defined minimum period.', 7);
INSERT INTO `assessments_question` VALUES (62, 0, 1, 'Are Internet access (for both web and mail) log files retained for a period of least three months?', 'Ensure all server and workstation log files are retained for a defined minimum period.', 7);
INSERT INTO `assessments_question` VALUES (63, 0, 1, 'Are mobile devices and tablets managed centrally to provide remote wiping and locking in the event of loss or theft?', 'Ensure mobile devices can be remotely erased in the event of loss or theft.', 7);
INSERT INTO `assessments_question` VALUES (64, 0, 1, 'Is a Mobile Device Management solution in place for hardening and controlling all mobile platforms in use within the organisation?', 'Use Mobile Device Management technologies to harden, monitor and manage mobile devices.', 7);
INSERT INTO `assessments_question` VALUES (65, 0, 1, 'Is user account creation subject to a full provisioning and approval process?', 'Ensure there is a documented and audited user account approval and provisioning process.', 8);
INSERT INTO `assessments_question` VALUES (66, 0, 1, 'Are system administrative access privileges restricted to a limited number of authorised individuals?', 'Ensure all system administrative access privileges are restricted to a limited number of authorised individuals on an as required basis.', 8);
INSERT INTO `assessments_question` VALUES (67, 0, 1, 'Are user accounts assigned to specific individuals and are staff trained not to disclose their password to anyone?', 'Ensure user accounts are assigned to specific individuals and staff awareness training includes instruction that they are not to disclose their password to anyone.', 8);
INSERT INTO `assessments_question` VALUES (68, 0, 1, 'Are all administrative accounts (including service accounts) only used to perform legitimate administrative activities, with no access granted to external email or the Internet?', 'Ensure that there is a documented and audited user privilege assignment process.', 8);
INSERT INTO `assessments_question` VALUES (69, 0, 1, 'Are system administrative accounts (including service accounts) configured to lock out after a number of unsuccessful attempts?', 'Ensure all system administrative accounts (including service accounts) are subject to a lockout policy.', 8);
INSERT INTO `assessments_question` VALUES (70, 0, 1, 'Is there a password policy covering the following points:\na. How to avoid choosing obvious passwords (such as those based on easily-discoverable information).\nb. Not to choose common passwords (use of technical means, using a password blacklist recommended).\nc. No password reuse.\nd. Where and how they may record passwords to store and retrieve them securely.\ne. If password management software is allowed, if so, which.\nf. Which passwords they really must memorise and not record anywhere.\n', 'Ensure that there is a robust and clear policy in place and advice available to all users in how passwords are to be created and managed.', 8);
INSERT INTO `assessments_question` VALUES (71, 0, 1, 'Are users authenticated using suitably strong passwords, as a minimum, before being granted access to applications and computers?', 'Ensure that the requirement for using strong passwords is enforced with a centralised management solution.', 8);
INSERT INTO `assessments_question` VALUES (72, 0, 1, 'Are user accounts removed or disabled when no longer required (e.g.  when an individual changes role or leaves the organisation) or after a predefined period of inactivity (e.g.  3 months)?', 'Ensure that there is a documented and audited process for staff leaving and role change.', 8);
INSERT INTO `assessments_question` VALUES (73, 0, 1, 'Are data shares (shared drives) configured to provide access strictly linked to job function in order to maintain the security of information held within sensitive business functions such as HR and Finance?', 'Ensure all centrally managed shared drives are adequately controlled and where possible end users should be prevented from creating local shares on their systems.', 8);
INSERT INTO `assessments_question` VALUES (74, 0, 1, 'Has anti-virus or malware protection software been installed on all computers that are connected to or capable of connecting to the Internet?', 'Ensure Anti-Virus software is installed on appropriate systems as part of a defence in depth strategy.', 9);
INSERT INTO `assessments_question` VALUES (75, 0, 1, 'Has anti-virus or malware protection software been kept up-to-date, either by configuring it to update automatically or through the use of centrally managed service?', 'Ensure all Anti-Virus software is kept fully up to date.', 9);
INSERT INTO `assessments_question` VALUES (76, 0, 1, 'Has anti-virus or malware protection software been configured to scan files automatically upon access (including when downloading and opening files, accessing files on removable storage media or a network folder) and scan web pages when accessed (via a web browser)?', 'Ensure all Anti-Virus software is configured to provide real-time on-access scanning.', 9);
INSERT INTO `assessments_question` VALUES (77, 0, 1, 'Has malware protection software been configured to perform regular periodic scans (eg daily)?', 'Ensure all Anti-Virus software is configured to provide regular scans.', 9);
INSERT INTO `assessments_question` VALUES (78, 0, 1, 'Does the organisation maintain a list of approved applications?', 'Ensure that a list of approved applications is maintained and audited with procedures in place to add and remove applications from the list.', 9);
INSERT INTO `assessments_question` VALUES (79, 0, 1, 'Are users prevented from installing any other applications and by what means?', 'Ensure that users cannot install unapproved applications which may contain malware or that malware cannot install them.', 9);
INSERT INTO `assessments_question` VALUES (80, 0, 1, 'Is any unknown code limited to execute within a sandbox and cannot access other resources unless the user grants explicit permission?', 'Ensure that users are alerted to any request for access to resources and any unknown code is only permitted to be executed in a restricted environment.', 9);
INSERT INTO `assessments_question` VALUES (81, 0, 1, 'Do you apply security patches to all software running on computers and network devices?', 'Ensure all available security patches are applied in a timely manner.', 10);
INSERT INTO `assessments_question` VALUES (82, 0, 1, 'Has software running on computers that are connected to or capable of connecting to the Internet been licensed and supported (by the software vendor or supplier of the software) to ensure security patches for known vulnerabilities are made available?', 'Ensure that security patches are available for all system software and approved applications.', 10);
INSERT INTO `assessments_question` VALUES (83, 0, 1, 'Has out-date or older software been removed from computer and network devices that are connected to or capable of connecting to the Internet?', 'Ensure that all software is appropriately supported by the Vendor and that software updates are available.', 10);
INSERT INTO `assessments_question` VALUES (84, 0, 1, 'Have all security patches for software running on computers and network devices that are connected to or capable of connecting to the Internet been installed within 14 days of release or automatically when they become available from vendors?', 'Ensure all software updates are applied as quickly as possible to all systems that have access to the Internet.', 10);
INSERT INTO `assessments_question` VALUES (85, 0, 1, 'Are all smart phones kept up to date with vendor updates and application updates?', 'Ensure all software updates are applied as quickly as possible to smart phones.', 10);
INSERT INTO `assessments_question` VALUES (86, 0, 1, 'Are all tablets kept up to date with vendor updates and application updates?', 'Ensure all software updates are applied as quickly as possible to tablets.', 10);
INSERT INTO `assessments_question` VALUES (87, 0, 1, 'Do you perform regular vulnerability scans of your internal networks and workstations to identify possible problems and ensure they are addressed?', 'Ensure regular vulnerability scans are performed of internal networks and systems and ensure any problems found are addressed.', 10);
INSERT INTO `assessments_question` VALUES (88, 0, 1, 'Do you perform regular vulnerability scans (annual or more frequent) of your external network to identify possible problems and ensure they are addressed?', 'Ensure regular vulnerability scans are performed of external networks and systems and ensure any problems found are addressed.', 10);

-- ----------------------------
-- Table structure for assessments_result
-- ----------------------------
DROP TABLE IF EXISTS `assessments_result`;
CREATE TABLE `assessments_result`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `assessments_result_answer_id_ed507b38_fk_assessments_answer_id`(`answer_id`) USING BTREE,
  INDEX `assessments_result_user_id_99c748ac_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `assessments_result_answer_id_ed507b38_fk_assessments_answer_id` FOREIGN KEY (`answer_id`) REFERENCES `assessments_answer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `assessments_result_user_id_99c748ac_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for assessments_topic
-- ----------------------------
DROP TABLE IF EXISTS `assessments_topic`;
CREATE TABLE `assessments_topic`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assessment_type` int(11) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of assessments_topic
-- ----------------------------
INSERT INTO `assessments_topic` VALUES (1, 0, 'Identify', 'Have you identified the confidential data (credit card numbers, social security numbers, etc...) collected or stored by your company?');
INSERT INTO `assessments_topic` VALUES (2, 0, 'Protect', 'The next set of questions will pertain to the NIST Cybersecurity Framework’s Protect category. These questions will help determine the basic practices you have in place to protect your systems.');
INSERT INTO `assessments_topic` VALUES (3, 0, 'Detect', 'The next set of questions will pertain to the NIST Cybersecurity Framework’s Detect category.  These questions will help determine the basic practices you have in place to detect malicious activity in your systems.');
INSERT INTO `assessments_topic` VALUES (4, 0, 'Respond', 'The next set of questions will pertain to the NIST Cybersecurity Framework’s Respond category. These questions will help determine the basic practices you have in place to respond and deal with a cybersecurity event when one occurs.');
INSERT INTO `assessments_topic` VALUES (5, 0, 'Recover', 'The next set of questions will pertain to the NIST Cybersecurity Framework’s Recover category. These questions will help determine the basic practices you have in place to get your business back to normal after a cybersecurity event.');
INSERT INTO `assessments_topic` VALUES (6, 1, 'Firewalls and Gateways', '');
INSERT INTO `assessments_topic` VALUES (7, 1, 'Secure configuration', '');
INSERT INTO `assessments_topic` VALUES (8, 1, 'Access control', '');
INSERT INTO `assessments_topic` VALUES (9, 1, 'Malware protection', '');
INSERT INTO `assessments_topic` VALUES (10, 1, 'Patch management', '');

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 281 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add site', 7, 'add_site');
INSERT INTO `auth_permission` VALUES (26, 'Can change site', 7, 'change_site');
INSERT INTO `auth_permission` VALUES (27, 'Can delete site', 7, 'delete_site');
INSERT INTO `auth_permission` VALUES (28, 'Can view site', 7, 'view_site');
INSERT INTO `auth_permission` VALUES (29, 'Can add crontab', 8, 'add_crontabschedule');
INSERT INTO `auth_permission` VALUES (30, 'Can change crontab', 8, 'change_crontabschedule');
INSERT INTO `auth_permission` VALUES (31, 'Can delete crontab', 8, 'delete_crontabschedule');
INSERT INTO `auth_permission` VALUES (32, 'Can view crontab', 8, 'view_crontabschedule');
INSERT INTO `auth_permission` VALUES (33, 'Can add interval', 9, 'add_intervalschedule');
INSERT INTO `auth_permission` VALUES (34, 'Can change interval', 9, 'change_intervalschedule');
INSERT INTO `auth_permission` VALUES (35, 'Can delete interval', 9, 'delete_intervalschedule');
INSERT INTO `auth_permission` VALUES (36, 'Can view interval', 9, 'view_intervalschedule');
INSERT INTO `auth_permission` VALUES (37, 'Can add periodic task', 10, 'add_periodictask');
INSERT INTO `auth_permission` VALUES (38, 'Can change periodic task', 10, 'change_periodictask');
INSERT INTO `auth_permission` VALUES (39, 'Can delete periodic task', 10, 'delete_periodictask');
INSERT INTO `auth_permission` VALUES (40, 'Can view periodic task', 10, 'view_periodictask');
INSERT INTO `auth_permission` VALUES (41, 'Can add periodic tasks', 11, 'add_periodictasks');
INSERT INTO `auth_permission` VALUES (42, 'Can change periodic tasks', 11, 'change_periodictasks');
INSERT INTO `auth_permission` VALUES (43, 'Can delete periodic tasks', 11, 'delete_periodictasks');
INSERT INTO `auth_permission` VALUES (44, 'Can view periodic tasks', 11, 'view_periodictasks');
INSERT INTO `auth_permission` VALUES (45, 'Can add solar event', 12, 'add_solarschedule');
INSERT INTO `auth_permission` VALUES (46, 'Can change solar event', 12, 'change_solarschedule');
INSERT INTO `auth_permission` VALUES (47, 'Can delete solar event', 12, 'delete_solarschedule');
INSERT INTO `auth_permission` VALUES (48, 'Can view solar event', 12, 'view_solarschedule');
INSERT INTO `auth_permission` VALUES (49, 'Can add clocked', 13, 'add_clockedschedule');
INSERT INTO `auth_permission` VALUES (50, 'Can change clocked', 13, 'change_clockedschedule');
INSERT INTO `auth_permission` VALUES (51, 'Can delete clocked', 13, 'delete_clockedschedule');
INSERT INTO `auth_permission` VALUES (52, 'Can view clocked', 13, 'view_clockedschedule');
INSERT INTO `auth_permission` VALUES (53, 'Can add task result', 14, 'add_taskresult');
INSERT INTO `auth_permission` VALUES (54, 'Can change task result', 14, 'change_taskresult');
INSERT INTO `auth_permission` VALUES (55, 'Can delete task result', 14, 'delete_taskresult');
INSERT INTO `auth_permission` VALUES (56, 'Can view task result', 14, 'view_taskresult');
INSERT INTO `auth_permission` VALUES (57, 'Can add state log', 15, 'add_statelog');
INSERT INTO `auth_permission` VALUES (58, 'Can change state log', 15, 'change_statelog');
INSERT INTO `auth_permission` VALUES (59, 'Can delete state log', 15, 'delete_statelog');
INSERT INTO `auth_permission` VALUES (60, 'Can view state log', 15, 'view_statelog');
INSERT INTO `auth_permission` VALUES (61, 'Can add account', 16, 'add_account');
INSERT INTO `auth_permission` VALUES (62, 'Can change account', 16, 'change_account');
INSERT INTO `auth_permission` VALUES (63, 'Can delete account', 16, 'delete_account');
INSERT INTO `auth_permission` VALUES (64, 'Can view account', 16, 'view_account');
INSERT INTO `auth_permission` VALUES (65, 'Can add bank account', 17, 'add_bankaccount');
INSERT INTO `auth_permission` VALUES (66, 'Can change bank account', 17, 'change_bankaccount');
INSERT INTO `auth_permission` VALUES (67, 'Can delete bank account', 17, 'delete_bankaccount');
INSERT INTO `auth_permission` VALUES (68, 'Can view bank account', 17, 'view_bankaccount');
INSERT INTO `auth_permission` VALUES (69, 'Can add card', 18, 'add_card');
INSERT INTO `auth_permission` VALUES (70, 'Can change card', 18, 'change_card');
INSERT INTO `auth_permission` VALUES (71, 'Can delete card', 18, 'delete_card');
INSERT INTO `auth_permission` VALUES (72, 'Can view card', 18, 'view_card');
INSERT INTO `auth_permission` VALUES (73, 'Can add charge', 19, 'add_charge');
INSERT INTO `auth_permission` VALUES (74, 'Can change charge', 19, 'change_charge');
INSERT INTO `auth_permission` VALUES (75, 'Can delete charge', 19, 'delete_charge');
INSERT INTO `auth_permission` VALUES (76, 'Can view charge', 19, 'view_charge');
INSERT INTO `auth_permission` VALUES (77, 'Can add coupon', 20, 'add_coupon');
INSERT INTO `auth_permission` VALUES (78, 'Can change coupon', 20, 'change_coupon');
INSERT INTO `auth_permission` VALUES (79, 'Can delete coupon', 20, 'delete_coupon');
INSERT INTO `auth_permission` VALUES (80, 'Can view coupon', 20, 'view_coupon');
INSERT INTO `auth_permission` VALUES (81, 'Can add customer', 21, 'add_customer');
INSERT INTO `auth_permission` VALUES (82, 'Can change customer', 21, 'change_customer');
INSERT INTO `auth_permission` VALUES (83, 'Can delete customer', 21, 'delete_customer');
INSERT INTO `auth_permission` VALUES (84, 'Can view customer', 21, 'view_customer');
INSERT INTO `auth_permission` VALUES (85, 'Can add dispute', 22, 'add_dispute');
INSERT INTO `auth_permission` VALUES (86, 'Can change dispute', 22, 'change_dispute');
INSERT INTO `auth_permission` VALUES (87, 'Can delete dispute', 22, 'delete_dispute');
INSERT INTO `auth_permission` VALUES (88, 'Can view dispute', 22, 'view_dispute');
INSERT INTO `auth_permission` VALUES (89, 'Can add event', 23, 'add_event');
INSERT INTO `auth_permission` VALUES (90, 'Can change event', 23, 'change_event');
INSERT INTO `auth_permission` VALUES (91, 'Can delete event', 23, 'delete_event');
INSERT INTO `auth_permission` VALUES (92, 'Can view event', 23, 'view_event');
INSERT INTO `auth_permission` VALUES (93, 'Can add file upload', 24, 'add_fileupload');
INSERT INTO `auth_permission` VALUES (94, 'Can change file upload', 24, 'change_fileupload');
INSERT INTO `auth_permission` VALUES (95, 'Can delete file upload', 24, 'delete_fileupload');
INSERT INTO `auth_permission` VALUES (96, 'Can view file upload', 24, 'view_fileupload');
INSERT INTO `auth_permission` VALUES (97, 'Can add idempotency key', 25, 'add_idempotencykey');
INSERT INTO `auth_permission` VALUES (98, 'Can change idempotency key', 25, 'change_idempotencykey');
INSERT INTO `auth_permission` VALUES (99, 'Can delete idempotency key', 25, 'delete_idempotencykey');
INSERT INTO `auth_permission` VALUES (100, 'Can view idempotency key', 25, 'view_idempotencykey');
INSERT INTO `auth_permission` VALUES (101, 'Can add invoice', 26, 'add_invoice');
INSERT INTO `auth_permission` VALUES (102, 'Can change invoice', 26, 'change_invoice');
INSERT INTO `auth_permission` VALUES (103, 'Can delete invoice', 26, 'delete_invoice');
INSERT INTO `auth_permission` VALUES (104, 'Can view invoice', 26, 'view_invoice');
INSERT INTO `auth_permission` VALUES (105, 'Can add invoice item', 27, 'add_invoiceitem');
INSERT INTO `auth_permission` VALUES (106, 'Can change invoice item', 27, 'change_invoiceitem');
INSERT INTO `auth_permission` VALUES (107, 'Can delete invoice item', 27, 'delete_invoiceitem');
INSERT INTO `auth_permission` VALUES (108, 'Can view invoice item', 27, 'view_invoiceitem');
INSERT INTO `auth_permission` VALUES (109, 'Can add payout', 28, 'add_payout');
INSERT INTO `auth_permission` VALUES (110, 'Can change payout', 28, 'change_payout');
INSERT INTO `auth_permission` VALUES (111, 'Can delete payout', 28, 'delete_payout');
INSERT INTO `auth_permission` VALUES (112, 'Can view payout', 28, 'view_payout');
INSERT INTO `auth_permission` VALUES (113, 'Can add plan', 29, 'add_plan');
INSERT INTO `auth_permission` VALUES (114, 'Can change plan', 29, 'change_plan');
INSERT INTO `auth_permission` VALUES (115, 'Can delete plan', 29, 'delete_plan');
INSERT INTO `auth_permission` VALUES (116, 'Can view plan', 29, 'view_plan');
INSERT INTO `auth_permission` VALUES (117, 'Can add product', 30, 'add_product');
INSERT INTO `auth_permission` VALUES (118, 'Can change product', 30, 'change_product');
INSERT INTO `auth_permission` VALUES (119, 'Can delete product', 30, 'delete_product');
INSERT INTO `auth_permission` VALUES (120, 'Can view product', 30, 'view_product');
INSERT INTO `auth_permission` VALUES (121, 'Can add refund', 31, 'add_refund');
INSERT INTO `auth_permission` VALUES (122, 'Can change refund', 31, 'change_refund');
INSERT INTO `auth_permission` VALUES (123, 'Can delete refund', 31, 'delete_refund');
INSERT INTO `auth_permission` VALUES (124, 'Can view refund', 31, 'view_refund');
INSERT INTO `auth_permission` VALUES (125, 'Can add source', 32, 'add_source');
INSERT INTO `auth_permission` VALUES (126, 'Can change source', 32, 'change_source');
INSERT INTO `auth_permission` VALUES (127, 'Can delete source', 32, 'delete_source');
INSERT INTO `auth_permission` VALUES (128, 'Can view source', 32, 'view_source');
INSERT INTO `auth_permission` VALUES (129, 'Can add subscription', 33, 'add_subscription');
INSERT INTO `auth_permission` VALUES (130, 'Can change subscription', 33, 'change_subscription');
INSERT INTO `auth_permission` VALUES (131, 'Can delete subscription', 33, 'delete_subscription');
INSERT INTO `auth_permission` VALUES (132, 'Can view subscription', 33, 'view_subscription');
INSERT INTO `auth_permission` VALUES (133, 'Can add transfer', 34, 'add_transfer');
INSERT INTO `auth_permission` VALUES (134, 'Can change transfer', 34, 'change_transfer');
INSERT INTO `auth_permission` VALUES (135, 'Can delete transfer', 34, 'delete_transfer');
INSERT INTO `auth_permission` VALUES (136, 'Can view transfer', 34, 'view_transfer');
INSERT INTO `auth_permission` VALUES (137, 'Can add webhook event trigger', 35, 'add_webhookeventtrigger');
INSERT INTO `auth_permission` VALUES (138, 'Can change webhook event trigger', 35, 'change_webhookeventtrigger');
INSERT INTO `auth_permission` VALUES (139, 'Can delete webhook event trigger', 35, 'delete_webhookeventtrigger');
INSERT INTO `auth_permission` VALUES (140, 'Can view webhook event trigger', 35, 'view_webhookeventtrigger');
INSERT INTO `auth_permission` VALUES (141, 'Can add upcoming invoice', 36, 'add_upcominginvoice');
INSERT INTO `auth_permission` VALUES (142, 'Can change upcoming invoice', 36, 'change_upcominginvoice');
INSERT INTO `auth_permission` VALUES (143, 'Can delete upcoming invoice', 36, 'delete_upcominginvoice');
INSERT INTO `auth_permission` VALUES (144, 'Can view upcoming invoice', 36, 'view_upcominginvoice');
INSERT INTO `auth_permission` VALUES (145, 'Can add country spec', 37, 'add_countryspec');
INSERT INTO `auth_permission` VALUES (146, 'Can change country spec', 37, 'change_countryspec');
INSERT INTO `auth_permission` VALUES (147, 'Can delete country spec', 37, 'delete_countryspec');
INSERT INTO `auth_permission` VALUES (148, 'Can view country spec', 37, 'view_countryspec');
INSERT INTO `auth_permission` VALUES (149, 'Can add balance transaction', 38, 'add_balancetransaction');
INSERT INTO `auth_permission` VALUES (150, 'Can change balance transaction', 38, 'change_balancetransaction');
INSERT INTO `auth_permission` VALUES (151, 'Can delete balance transaction', 38, 'delete_balancetransaction');
INSERT INTO `auth_permission` VALUES (152, 'Can view balance transaction', 38, 'view_balancetransaction');
INSERT INTO `auth_permission` VALUES (153, 'Can add scheduled query run', 39, 'add_scheduledqueryrun');
INSERT INTO `auth_permission` VALUES (154, 'Can change scheduled query run', 39, 'change_scheduledqueryrun');
INSERT INTO `auth_permission` VALUES (155, 'Can delete scheduled query run', 39, 'delete_scheduledqueryrun');
INSERT INTO `auth_permission` VALUES (156, 'Can view scheduled query run', 39, 'view_scheduledqueryrun');
INSERT INTO `auth_permission` VALUES (157, 'Can add subscription item', 40, 'add_subscriptionitem');
INSERT INTO `auth_permission` VALUES (158, 'Can change subscription item', 40, 'change_subscriptionitem');
INSERT INTO `auth_permission` VALUES (159, 'Can delete subscription item', 40, 'delete_subscriptionitem');
INSERT INTO `auth_permission` VALUES (160, 'Can view subscription item', 40, 'view_subscriptionitem');
INSERT INTO `auth_permission` VALUES (161, 'Can add transfer reversal', 41, 'add_transferreversal');
INSERT INTO `auth_permission` VALUES (162, 'Can change transfer reversal', 41, 'change_transferreversal');
INSERT INTO `auth_permission` VALUES (163, 'Can delete transfer reversal', 41, 'delete_transferreversal');
INSERT INTO `auth_permission` VALUES (164, 'Can view transfer reversal', 41, 'view_transferreversal');
INSERT INTO `auth_permission` VALUES (165, 'Can add usage record', 42, 'add_usagerecord');
INSERT INTO `auth_permission` VALUES (166, 'Can change usage record', 42, 'change_usagerecord');
INSERT INTO `auth_permission` VALUES (167, 'Can delete usage record', 42, 'delete_usagerecord');
INSERT INTO `auth_permission` VALUES (168, 'Can view usage record', 42, 'view_usagerecord');
INSERT INTO `auth_permission` VALUES (169, 'Can add application fee', 43, 'add_applicationfee');
INSERT INTO `auth_permission` VALUES (170, 'Can change application fee', 43, 'change_applicationfee');
INSERT INTO `auth_permission` VALUES (171, 'Can delete application fee', 43, 'delete_applicationfee');
INSERT INTO `auth_permission` VALUES (172, 'Can view application fee', 43, 'view_applicationfee');
INSERT INTO `auth_permission` VALUES (173, 'Can add application fee refund', 44, 'add_applicationfeerefund');
INSERT INTO `auth_permission` VALUES (174, 'Can change application fee refund', 44, 'change_applicationfeerefund');
INSERT INTO `auth_permission` VALUES (175, 'Can delete application fee refund', 44, 'delete_applicationfeerefund');
INSERT INTO `auth_permission` VALUES (176, 'Can view application fee refund', 44, 'view_applicationfeerefund');
INSERT INTO `auth_permission` VALUES (177, 'Can add djstripe payment method', 45, 'add_djstripepaymentmethod');
INSERT INTO `auth_permission` VALUES (178, 'Can change djstripe payment method', 45, 'change_djstripepaymentmethod');
INSERT INTO `auth_permission` VALUES (179, 'Can delete djstripe payment method', 45, 'delete_djstripepaymentmethod');
INSERT INTO `auth_permission` VALUES (180, 'Can view djstripe payment method', 45, 'view_djstripepaymentmethod');
INSERT INTO `auth_permission` VALUES (181, 'Can add email address', 46, 'add_emailaddress');
INSERT INTO `auth_permission` VALUES (182, 'Can change email address', 46, 'change_emailaddress');
INSERT INTO `auth_permission` VALUES (183, 'Can delete email address', 46, 'delete_emailaddress');
INSERT INTO `auth_permission` VALUES (184, 'Can view email address', 46, 'view_emailaddress');
INSERT INTO `auth_permission` VALUES (185, 'Can add email confirmation', 47, 'add_emailconfirmation');
INSERT INTO `auth_permission` VALUES (186, 'Can change email confirmation', 47, 'change_emailconfirmation');
INSERT INTO `auth_permission` VALUES (187, 'Can delete email confirmation', 47, 'delete_emailconfirmation');
INSERT INTO `auth_permission` VALUES (188, 'Can view email confirmation', 47, 'view_emailconfirmation');
INSERT INTO `auth_permission` VALUES (189, 'Can add social account', 48, 'add_socialaccount');
INSERT INTO `auth_permission` VALUES (190, 'Can change social account', 48, 'change_socialaccount');
INSERT INTO `auth_permission` VALUES (191, 'Can delete social account', 48, 'delete_socialaccount');
INSERT INTO `auth_permission` VALUES (192, 'Can view social account', 48, 'view_socialaccount');
INSERT INTO `auth_permission` VALUES (193, 'Can add social application', 49, 'add_socialapp');
INSERT INTO `auth_permission` VALUES (194, 'Can change social application', 49, 'change_socialapp');
INSERT INTO `auth_permission` VALUES (195, 'Can delete social application', 49, 'delete_socialapp');
INSERT INTO `auth_permission` VALUES (196, 'Can view social application', 49, 'view_socialapp');
INSERT INTO `auth_permission` VALUES (197, 'Can add social application token', 50, 'add_socialtoken');
INSERT INTO `auth_permission` VALUES (198, 'Can change social application token', 50, 'change_socialtoken');
INSERT INTO `auth_permission` VALUES (199, 'Can delete social application token', 50, 'delete_socialtoken');
INSERT INTO `auth_permission` VALUES (200, 'Can view social application token', 50, 'view_socialtoken');
INSERT INTO `auth_permission` VALUES (201, 'Can add contact', 51, 'add_contact');
INSERT INTO `auth_permission` VALUES (202, 'Can change contact', 51, 'change_contact');
INSERT INTO `auth_permission` VALUES (203, 'Can delete contact', 51, 'delete_contact');
INSERT INTO `auth_permission` VALUES (204, 'Can view contact', 51, 'view_contact');
INSERT INTO `auth_permission` VALUES (205, 'Can add domain profile', 52, 'add_domainprofile');
INSERT INTO `auth_permission` VALUES (206, 'Can change domain profile', 52, 'change_domainprofile');
INSERT INTO `auth_permission` VALUES (207, 'Can delete domain profile', 52, 'delete_domainprofile');
INSERT INTO `auth_permission` VALUES (208, 'Can view domain profile', 52, 'view_domainprofile');
INSERT INTO `auth_permission` VALUES (209, 'Can add profile', 53, 'add_profile');
INSERT INTO `auth_permission` VALUES (210, 'Can change profile', 53, 'change_profile');
INSERT INTO `auth_permission` VALUES (211, 'Can delete profile', 53, 'delete_profile');
INSERT INTO `auth_permission` VALUES (212, 'Can view profile', 53, 'view_profile');
INSERT INTO `auth_permission` VALUES (213, 'Can add sector', 54, 'add_sector');
INSERT INTO `auth_permission` VALUES (214, 'Can change sector', 54, 'change_sector');
INSERT INTO `auth_permission` VALUES (215, 'Can delete sector', 54, 'delete_sector');
INSERT INTO `auth_permission` VALUES (216, 'Can view sector', 54, 'view_sector');
INSERT INTO `auth_permission` VALUES (217, 'Can add company', 55, 'add_company');
INSERT INTO `auth_permission` VALUES (218, 'Can change company', 55, 'change_company');
INSERT INTO `auth_permission` VALUES (219, 'Can delete company', 55, 'delete_company');
INSERT INTO `auth_permission` VALUES (220, 'Can view company', 55, 'view_company');
INSERT INTO `auth_permission` VALUES (221, 'Can add domain', 56, 'add_domain');
INSERT INTO `auth_permission` VALUES (222, 'Can change domain', 56, 'change_domain');
INSERT INTO `auth_permission` VALUES (223, 'Can delete domain', 56, 'delete_domain');
INSERT INTO `auth_permission` VALUES (224, 'Can view domain', 56, 'view_domain');
INSERT INTO `auth_permission` VALUES (225, 'Can add risk report', 57, 'add_riskreport');
INSERT INTO `auth_permission` VALUES (226, 'Can change risk report', 57, 'change_riskreport');
INSERT INTO `auth_permission` VALUES (227, 'Can delete risk report', 57, 'delete_riskreport');
INSERT INTO `auth_permission` VALUES (228, 'Can view risk report', 57, 'view_riskreport');
INSERT INTO `auth_permission` VALUES (229, 'Can add score item', 58, 'add_scoreitem');
INSERT INTO `auth_permission` VALUES (230, 'Can change score item', 58, 'change_scoreitem');
INSERT INTO `auth_permission` VALUES (231, 'Can delete score item', 58, 'delete_scoreitem');
INSERT INTO `auth_permission` VALUES (232, 'Can view score item', 58, 'view_scoreitem');
INSERT INTO `auth_permission` VALUES (233, 'Can add test definition', 59, 'add_testdefinition');
INSERT INTO `auth_permission` VALUES (234, 'Can change test definition', 59, 'change_testdefinition');
INSERT INTO `auth_permission` VALUES (235, 'Can delete test definition', 59, 'delete_testdefinition');
INSERT INTO `auth_permission` VALUES (236, 'Can view test definition', 59, 'view_testdefinition');
INSERT INTO `auth_permission` VALUES (237, 'Can add test result', 60, 'add_testresult');
INSERT INTO `auth_permission` VALUES (238, 'Can change test result', 60, 'change_testresult');
INSERT INTO `auth_permission` VALUES (239, 'Can delete test result', 60, 'delete_testresult');
INSERT INTO `auth_permission` VALUES (240, 'Can view test result', 60, 'view_testresult');
INSERT INTO `auth_permission` VALUES (241, 'Can add answer', 61, 'add_answer');
INSERT INTO `auth_permission` VALUES (242, 'Can change answer', 61, 'change_answer');
INSERT INTO `auth_permission` VALUES (243, 'Can delete answer', 61, 'delete_answer');
INSERT INTO `auth_permission` VALUES (244, 'Can view answer', 61, 'view_answer');
INSERT INTO `auth_permission` VALUES (245, 'Can add topic', 62, 'add_topic');
INSERT INTO `auth_permission` VALUES (246, 'Can change topic', 62, 'change_topic');
INSERT INTO `auth_permission` VALUES (247, 'Can delete topic', 62, 'delete_topic');
INSERT INTO `auth_permission` VALUES (248, 'Can view topic', 62, 'view_topic');
INSERT INTO `auth_permission` VALUES (249, 'Can add question', 63, 'add_question');
INSERT INTO `auth_permission` VALUES (250, 'Can change question', 63, 'change_question');
INSERT INTO `auth_permission` VALUES (251, 'Can delete question', 63, 'delete_question');
INSERT INTO `auth_permission` VALUES (252, 'Can view question', 63, 'view_question');
INSERT INTO `auth_permission` VALUES (253, 'Can add result', 64, 'add_result');
INSERT INTO `auth_permission` VALUES (254, 'Can change result', 64, 'change_result');
INSERT INTO `auth_permission` VALUES (255, 'Can delete result', 64, 'delete_result');
INSERT INTO `auth_permission` VALUES (256, 'Can view result', 64, 'view_result');
INSERT INTO `auth_permission` VALUES (257, 'Can add payment method', 65, 'add_paymentmethod');
INSERT INTO `auth_permission` VALUES (258, 'Can change payment method', 65, 'change_paymentmethod');
INSERT INTO `auth_permission` VALUES (259, 'Can delete payment method', 65, 'delete_paymentmethod');
INSERT INTO `auth_permission` VALUES (260, 'Can view payment method', 65, 'view_paymentmethod');
INSERT INTO `auth_permission` VALUES (261, 'Can add setup intent', 66, 'add_setupintent');
INSERT INTO `auth_permission` VALUES (262, 'Can change setup intent', 66, 'change_setupintent');
INSERT INTO `auth_permission` VALUES (263, 'Can delete setup intent', 66, 'delete_setupintent');
INSERT INTO `auth_permission` VALUES (264, 'Can view setup intent', 66, 'view_setupintent');
INSERT INTO `auth_permission` VALUES (265, 'Can add payment intent', 67, 'add_paymentintent');
INSERT INTO `auth_permission` VALUES (266, 'Can change payment intent', 67, 'change_paymentintent');
INSERT INTO `auth_permission` VALUES (267, 'Can delete payment intent', 67, 'delete_paymentintent');
INSERT INTO `auth_permission` VALUES (268, 'Can view payment intent', 67, 'view_paymentintent');
INSERT INTO `auth_permission` VALUES (269, 'Can add session', 68, 'add_session');
INSERT INTO `auth_permission` VALUES (270, 'Can change session', 68, 'change_session');
INSERT INTO `auth_permission` VALUES (271, 'Can delete session', 68, 'delete_session');
INSERT INTO `auth_permission` VALUES (272, 'Can view session', 68, 'view_session');
INSERT INTO `auth_permission` VALUES (273, 'Can add custom user', 69, 'add_customuser');
INSERT INTO `auth_permission` VALUES (274, 'Can change custom user', 69, 'change_customuser');
INSERT INTO `auth_permission` VALUES (275, 'Can delete custom user', 69, 'delete_customuser');
INSERT INTO `auth_permission` VALUES (276, 'Can view custom user', 69, 'view_customuser');
INSERT INTO `auth_permission` VALUES (277, 'Can add address', 70, 'add_address');
INSERT INTO `auth_permission` VALUES (278, 'Can change address', 70, 'change_address');
INSERT INTO `auth_permission` VALUES (279, 'Can delete address', 70, 'delete_address');
INSERT INTO `auth_permission` VALUES (280, 'Can view address', 70, 'view_address');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(254) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$150000$EjmYG2f8GTc4$0nj/7A505OyP3ew4n8QfU70E3hl0jDnQnj6cyONVL14=', '2020-01-28 12:14:51.759516', 1, 'root', '', '', 'root@securitytrain.me', 1, 1, '2019-10-01 22:21:03.000000');
INSERT INTO `auth_user` VALUES (2, 'pbkdf2_sha256$150000$pAd2vcSyzhiG$J04oj5NS/oeMuYw3TlyjrNo+WY65WRk15gh3QdaIF4w=', '2019-10-09 08:58:23.311631', 0, 'ian', 'Ian', 'Bland', 'ian@securitytrain.me', 0, 1, '2019-10-07 10:23:24.058844');
INSERT INTO `auth_user` VALUES (3, 'pbkdf2_sha256$150000$ASOKPGRsV5h5$642pIorSr+GHMJdQz28k1r5zbMnlvvhdYg85nY5Z7qg=', '2020-01-28 12:14:28.569789', 0, 'dimitar', 'Dimitar', 'Petkov', 'dimitarhero@securitytrain.me', 0, 1, '2019-10-07 14:06:08.000000');
INSERT INTO `auth_user` VALUES (4, 'pbkdf2_sha256$150000$8IIREhyGUbky$mtwGDvc6tRvWih/r+PF7LuCMgpQrWtG4i65vktGQDvY=', '2019-10-08 09:15:51.017768', 0, 'jesus', 'Jesus', 'Christ', 'jesus@riskrate.me', 0, 1, '2019-10-08 09:15:49.694826');
INSERT INTO `auth_user` VALUES (5, 'pbkdf2_sha256$150000$vi7wa1PO5cpt$wljLjE5p7Bn1gwdSzp2diu8J6zIV+yZZfkOhwVUF2KI=', '2019-10-08 09:44:30.104778', 0, 'jeff', 'jeff', 'bdsfx', 'jeff@bdsfx.com', 0, 1, '2019-10-08 09:43:00.317466');
INSERT INTO `auth_user` VALUES (6, 'pbkdf2_sha256$150000$EjmYG2f8GTc4$0nj/7A505OyP3ew4n8QfU70E3hl0jDnQnj6cyONVL14=', '2019-12-04 01:16:42.835179', 0, 'eugene', 'eugene', 'mathew', 'eugenemathew93@gmail.com', 0, 1, '2019-11-28 13:49:43.428499');
INSERT INTO `auth_user` VALUES (7, 'pbkdf2_sha256$150000$Pyf1RzBrlqpn$O6zH9tK4R2VgaTdjay2K7Gb7OjTPDKTAQ/Zy6BX9gPM=', NULL, 0, 'eugene7', 'eugene', 'mathew', 'euge2nemathew93@gmail.com', 0, 1, '2019-11-28 15:58:16.360214');
INSERT INTO `auth_user` VALUES (8, 'pbkdf2_sha256$150000$wn9foGzWcC2m$k1WAQufui9AXOA0IdvU/1yEcTMh37EWvsnknqYIRd2Q=', NULL, 0, 'asdf', 'asdf', 'asdf', 'asdf@example.com', 0, 1, '2020-01-17 15:03:10.028209');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `object_repr` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 142 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2019-10-06 12:57:59.119224', '1', 'root', 2, '[{\"changed\": {\"name\": \"profile\", \"object\": \"root@example.com\", \"fields\": [\"domains\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (2, '2019-10-07 10:38:43.093781', '1', 'root', 2, '[{\"changed\": {\"fields\": [\"email\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (3, '2019-10-07 10:43:02.918235', '1', 'root', 2, '[{\"changed\": {\"name\": \"profile\", \"object\": \"root@securitytrain.me\", \"fields\": [\"company\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (4, '2019-10-07 10:52:51.757641', '2', 'ian@securitytrain.me on Free', 2, '[{\"changed\": {\"fields\": [\"metadata\"]}}, {\"changed\": {\"name\": \"subscription item\", \"object\": \"<id=si_FwmxnqZ7CEiHPl>\", \"fields\": [\"metadata\", \"plan\"]}}]', 33, 1);
INSERT INTO `django_admin_log` VALUES (5, '2019-10-07 10:53:21.789973', '2', 'ian@securitytrain.me on Free', 2, '[{\"changed\": {\"fields\": [\"metadata\"]}}, {\"changed\": {\"name\": \"subscription item\", \"object\": \"<id=si_FwmxnqZ7CEiHPl>\", \"fields\": [\"metadata\", \"plan\"]}}]', 33, 1);
INSERT INTO `django_admin_log` VALUES (6, '2019-10-07 14:13:06.598560', '3', 'dimitar', 2, '[{\"changed\": {\"fields\": [\"is_staff\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (7, '2019-10-07 14:42:45.544266', '3', 'dimitar', 2, '[{\"changed\": {\"name\": \"profile\", \"object\": \"dimitarhero@yahoo.com\", \"fields\": [\"domains\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (8, '2019-10-07 14:48:16.871599', '1', 'root', 2, '[{\"changed\": {\"name\": \"profile\", \"object\": \"root@securitytrain.me\", \"fields\": [\"company\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (9, '2019-10-07 14:48:32.722078', '1', 'root', 2, '[{\"changed\": {\"name\": \"profile\", \"object\": \"root@securitytrain.me\", \"fields\": [\"company\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (10, '2019-10-07 14:51:37.378908', '3', 'dimitar', 2, '[{\"changed\": {\"fields\": [\"email\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (11, '2019-10-08 08:53:42.701625', '3', 'spfrecordnottoopermissive', 2, '[{\"changed\": {\"fields\": [\"message_failed\", \"message_success\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (12, '2019-10-08 09:22:37.681849', '1', 'root', 2, '[{\"changed\": {\"name\": \"profile\", \"object\": \"root@securitytrain.me\", \"fields\": [\"domains\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (13, '2019-10-08 09:23:09.994615', '1', 'root', 2, '[{\"changed\": {\"name\": \"profile\", \"object\": \"root@securitytrain.me\", \"fields\": [\"domains\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (14, '2019-10-09 08:51:10.044746', '2', 'ian@securitytrain.me on Professional', 2, '[{\"changed\": {\"fields\": [\"metadata\", \"plan\"]}}, {\"changed\": {\"name\": \"subscription item\", \"object\": \"<id=si_FwmxnqZ7CEiHPl>\", \"fields\": [\"metadata\"]}}]', 33, 1);
INSERT INTO `django_admin_log` VALUES (15, '2019-10-09 08:53:04.033963', '2', 'ian', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (16, '2019-10-09 08:57:50.482696', '2', 'ian@securitytrain.me on Professional', 2, '[{\"changed\": {\"fields\": [\"metadata\"]}}, {\"changed\": {\"name\": \"subscription item\", \"object\": \"<id=si_FwmxnqZ7CEiHPl>\", \"fields\": [\"metadata\", \"plan\"]}}]', 33, 1);
INSERT INTO `django_admin_log` VALUES (17, '2019-10-09 08:58:45.337457', '2', 'ian@securitytrain.me on Free', 2, '[{\"changed\": {\"fields\": [\"metadata\", \"plan\"]}}, {\"changed\": {\"name\": \"subscription item\", \"object\": \"<id=si_FwmxnqZ7CEiHPl>\", \"fields\": [\"metadata\"]}}]', 33, 1);
INSERT INTO `django_admin_log` VALUES (18, '2019-10-09 08:59:17.672268', '2', 'ian@securitytrain.me on Free', 2, '[{\"changed\": {\"fields\": [\"metadata\"]}}, {\"changed\": {\"name\": \"subscription item\", \"object\": \"<id=si_FwmxnqZ7CEiHPl>\", \"fields\": [\"metadata\", \"plan\"]}}]', 33, 1);
INSERT INTO `django_admin_log` VALUES (19, '2019-10-09 09:00:00.416411', '2', 'ian@securitytrain.me on Enterprise (ACME Inc.)', 2, '[{\"changed\": {\"fields\": [\"metadata\", \"plan\"]}}, {\"changed\": {\"name\": \"subscription item\", \"object\": \"<id=si_FwmxnqZ7CEiHPl>\", \"fields\": [\"metadata\"]}}]', 33, 1);
INSERT INTO `django_admin_log` VALUES (20, '2019-10-09 09:04:54.016825', '2', 'ian@securitytrain.me on Free', 2, '[{\"changed\": {\"fields\": [\"metadata\", \"plan\"]}}, {\"changed\": {\"name\": \"subscription item\", \"object\": \"<id=si_FwmxnqZ7CEiHPl>\", \"fields\": [\"metadata\", \"plan\"]}}]', 33, 1);
INSERT INTO `django_admin_log` VALUES (21, '2019-10-10 16:21:14.572486', '28', 'smtpstarttlsisenabled', 2, '[{\"changed\": {\"fields\": [\"score_success\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (22, '2019-10-14 11:13:25.858116', '50', 'hostopenports', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (23, '2019-10-14 12:44:40.941913', '50', 'hostopenports', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (24, '2019-10-14 12:48:40.849094', '49', 'hosthaspotentialvulnerabilities', 2, '[{\"changed\": {\"fields\": [\"message_failed\", \"message_partial\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (25, '2019-10-14 12:53:42.678679', '28', 'smtpstarttlsisenabled', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (26, '2019-10-14 13:03:11.080221', '10', 'dmarcrecordcounttest', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (27, '2019-10-14 13:09:09.646996', '10', 'dmarcrecordcounttest', 2, '[{\"changed\": {\"fields\": [\"message_failed\", \"message_partial\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (28, '2019-10-14 13:15:39.032869', '15', 'dmarcpolicyisnotnone', 2, '[{\"changed\": {\"fields\": [\"message_failed\", \"message_success\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (29, '2019-10-14 13:17:05.792232', '1', 'spfrecordcount', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (30, '2019-10-14 13:19:06.783408', '33', 'contentsecurityheadertest', 2, '[{\"changed\": {\"fields\": [\"failing_score\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (31, '2019-10-14 13:21:05.378996', '9', 'dkimrecordsexisttest', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (32, '2019-10-14 13:23:29.786196', '28', 'smtpstarttlsisenabled', 2, '[{\"changed\": {\"fields\": [\"score_partial\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (33, '2019-10-14 13:31:33.277960', '28', 'smtpstarttlsisenabled', 2, '[{\"changed\": {\"fields\": [\"score_partial\", \"message_failed\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (34, '2019-10-14 13:33:54.019459', '50', 'hostopenports', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (35, '2019-10-14 13:34:29.437720', '49', 'hosthaspotentialvulnerabilities', 2, '[{\"changed\": {\"fields\": [\"message_failed\", \"message_partial\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (36, '2019-10-14 13:34:56.614849', '1', 'spfrecordcount', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (37, '2019-10-14 13:35:10.739226', '9', 'dkimrecordsexisttest', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (38, '2019-10-14 13:35:34.594936', '10', 'dmarcrecordcounttest', 2, '[{\"changed\": {\"fields\": [\"message_failed\", \"message_partial\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (39, '2019-10-14 13:45:27.598979', '19', 'httpsenabledtest', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (40, '2019-10-14 13:52:34.275478', '23', 'automatichttpsredirection', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (41, '2019-10-15 08:55:47.052864', '46', 'nocookietest', 2, '[{\"changed\": {\"fields\": [\"score_failed\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (42, '2019-10-15 18:37:41.245508', '47', 'ipblocklist', 2, '[{\"changed\": {\"fields\": [\"description\", \"message_failed\", \"message_success\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (43, '2019-10-15 18:42:59.190573', '48', 'hostreputation', 2, '[{\"changed\": {\"fields\": [\"description\", \"message_failed\", \"message_success\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (44, '2019-10-15 18:48:06.007153', '48', 'hostreputation', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (45, '2019-10-16 08:42:40.720513', '6', 'my_name', 3, '', 4, 1);
INSERT INTO `django_admin_log` VALUES (46, '2019-10-16 09:57:20.720707', '51', 'emailleaks', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (47, '2019-10-16 09:59:03.836532', '48', 'hostreputation', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (48, '2019-10-16 09:59:36.112886', '46', 'nocookietest', 2, '[{\"changed\": {\"fields\": [\"message_error\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (49, '2019-10-16 11:22:28.820659', '31', 'xxssprotectionheadertest', 2, '[{\"changed\": {\"fields\": [\"message_failed\", \"message_partial\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (50, '2019-10-16 11:28:00.951124', '33', 'contentsecurityheadertest', 2, '[{\"changed\": {\"fields\": [\"message_failed\", \"message_partial\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (51, '2019-10-16 11:33:16.343076', '30', 'xframeoptionheadertest', 2, '[{\"changed\": {\"fields\": [\"failing_score\", \"score_partial\", \"message_failed\", \"message_partial\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (52, '2019-10-16 11:41:28.285296', '32', 'xcontenttypeoptionsheadertest', 2, '[{\"changed\": {\"fields\": [\"message_failed\", \"message_partial\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (53, '2019-10-16 11:47:11.946861', '34', 'referrerpolicyheadertest', 2, '[{\"changed\": {\"fields\": [\"score_failed\", \"score_partial\", \"message_failed\", \"message_partial\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (54, '2019-10-16 11:52:05.305106', '37', 'featurepolicyheadertest', 2, '[{\"changed\": {\"fields\": [\"score_failed\", \"score_partial\", \"message_failed\", \"message_partial\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (55, '2019-10-16 11:55:34.456364', '36', 'xpoweredbyheadertest', 2, '[{\"changed\": {\"fields\": [\"message_failed\", \"message_partial\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (56, '2019-10-16 11:59:16.408259', '35', 'serverheadertest', 2, '[{\"changed\": {\"fields\": [\"message_failed\", \"message_partial\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (57, '2019-10-17 11:56:16.709037', '1', 'spfrecordcount', 2, '[{\"changed\": {\"fields\": [\"message_partial\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (58, '2019-10-17 11:57:48.538714', '2', 'spfsyntaxisvalid', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (59, '2019-10-17 12:02:40.459893', '3', 'spfrecordnottoopermissive', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (60, '2019-10-17 12:03:38.145145', '4', 'spfvalidlookupcount', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (61, '2019-10-17 12:07:43.265917', '5', 'spfvoidlookupscount', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (62, '2019-10-17 12:12:08.906515', '6', 'spfrecordnotdeprecatedcheck', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (63, '2019-10-17 12:19:29.282809', '8', 'spfrecordexpectedterminator', 2, '[{\"changed\": {\"fields\": [\"message_failed\", \"message_partial\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (64, '2019-10-17 12:21:13.890834', '9', 'dkimrecordsexisttest', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (65, '2019-10-17 14:53:47.014854', '20', 'hstsenabledtest', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (66, '2019-10-17 14:54:19.347987', '23', 'automatichttpsredirection', 2, '[{\"changed\": {\"fields\": [\"message_failed\"]}}]', 59, 1);
INSERT INTO `django_admin_log` VALUES (67, '2019-10-20 19:23:55.959863', '1', 'Security Train Me', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 55, 1);
INSERT INTO `django_admin_log` VALUES (68, '2019-10-20 19:26:03.563858', '1', 'root', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (69, '2019-11-07 17:46:06.824077', '14', 'google.com (2019-10-08 09:43:01.711332+00:00)', 3, '', 57, 1);
INSERT INTO `django_admin_log` VALUES (70, '2019-11-07 17:46:06.829136', '13', 'vatican.va (2019-10-08 09:17:29.802669+00:00)', 3, '', 57, 1);
INSERT INTO `django_admin_log` VALUES (71, '2019-11-07 17:46:06.832329', '12', 'vatican.va (2019-10-08 09:15:51.111274+00:00)', 3, '', 57, 1);
INSERT INTO `django_admin_log` VALUES (72, '2019-11-07 17:47:05.016686', '62', 'British Chambers of Commerce', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (73, '2019-11-07 17:47:05.019954', '60', 'Xhamster', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (74, '2019-11-07 17:47:05.022582', '59', 'Porn Hub', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (75, '2019-11-07 17:47:05.023955', '57', 'Stack Exchange', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (76, '2019-11-07 17:47:05.026451', '55', 'Stack Exchange', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (77, '2019-11-07 17:47:05.027794', '54', 'Serverfault', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (78, '2019-11-07 17:47:05.031990', '52', 'Vanify', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (79, '2019-11-07 17:47:05.034760', '50', 'Upwork', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (80, '2019-11-07 17:47:05.036590', '48', 'European Consumer Centre for Services', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (81, '2019-11-07 17:47:05.039595', '46', 'PLYMOUTH BRETHREN', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (82, '2019-11-07 17:47:05.042538', '44', 'The Metal Store', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (83, '2019-11-07 17:47:05.044384', '42', 'RailPoint', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (84, '2019-11-07 17:47:05.047376', '40', 'Acme', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (85, '2019-11-07 17:47:05.051026', '39', 'Acme', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (86, '2019-11-07 17:47:05.053248', '37', 'Google', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (87, '2019-11-07 17:47:05.055899', '36', 'Google', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (88, '2019-11-07 17:47:05.058574', '34', 'The Vatican', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (89, '2019-11-07 17:47:05.060407', '33', 'The Vatican', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (90, '2019-11-07 17:47:05.063363', '32', 'The Vatican', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (91, '2019-11-07 17:47:05.065143', '31', 'The Vatican', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (92, '2019-11-07 17:47:05.068388', '29', 'Matex Holdings Pte Ltd', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (93, '2019-11-07 17:47:05.071280', '27', 'Renesas Electronics Singapore Pt.e. Ltd.', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (94, '2019-11-07 17:47:05.073406', '25', 'Design Format', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (95, '2019-11-07 17:47:05.076249', '23', 'DP', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (96, '2019-11-07 17:47:05.078527', '22', 'DP', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (97, '2019-11-07 17:47:05.080212', '20', 'MOM', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (98, '2019-11-07 17:47:05.083151', '18', 'GRP Group', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (99, '2019-11-07 17:47:05.085445', '16', 'Security Train Me', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (100, '2019-11-07 17:47:05.088874', '14', 'Alliance 21 Group', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (101, '2019-11-07 17:47:05.091068', '12', 'EZ-Link Pte Ltd', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (102, '2019-11-07 17:47:05.092985', '10', 'Equatorial Marine Fuel Management Services Pte Ltd', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (103, '2019-11-07 17:47:05.095633', '8', 'Risk Rate Me', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (104, '2019-11-07 17:47:05.098513', '5', 'Unknown Company (jec.com)', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (105, '2019-11-07 17:47:05.100288', '4', 'Unknown Company (kadfire.com)', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (106, '2019-11-07 17:47:05.102646', '2', 'Unknown Company (securitytrain.me)', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (107, '2019-11-07 17:49:15.203165', '62', 'British Chambers of Commerce', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (108, '2019-11-07 17:49:15.207641', '60', 'Xhamster', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (109, '2019-11-07 17:49:15.211133', '59', 'Porn Hub', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (110, '2019-11-07 17:49:15.213198', '57', 'Stack Exchange', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (111, '2019-11-07 17:49:15.216163', '55', 'Stack Exchange', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (112, '2019-11-07 17:49:15.219472', '54', 'Serverfault', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (113, '2019-11-07 17:49:15.222640', '52', 'Vanify', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (114, '2019-11-07 17:49:15.224360', '50', 'Upwork', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (115, '2019-11-07 17:49:15.226898', '48', 'European Consumer Centre for Services', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (116, '2019-11-07 17:49:15.228619', '46', 'PLYMOUTH BRETHREN', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (117, '2019-11-07 17:49:15.231399', '44', 'The Metal Store', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (118, '2019-11-07 17:49:15.232790', '42', 'RailPoint', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (119, '2019-11-07 17:49:15.234911', '40', 'Acme', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (120, '2019-11-07 17:49:15.236430', '39', 'Acme', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (121, '2019-11-07 17:49:15.239188', '37', 'Google', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (122, '2019-11-07 17:49:15.241208', '36', 'Google', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (123, '2019-11-07 17:49:15.243690', '34', 'The Vatican', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (124, '2019-11-07 17:49:15.246606', '33', 'The Vatican', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (125, '2019-11-07 17:49:15.248272', '32', 'The Vatican', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (126, '2019-11-07 17:49:15.251173', '31', 'The Vatican', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (127, '2019-11-07 17:49:15.252997', '29', 'Matex Holdings Pte Ltd', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (128, '2019-11-07 17:49:15.256334', '27', 'Renesas Electronics Singapore Pt.e. Ltd.', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (129, '2019-11-07 17:49:15.259352', '25', 'Design Format', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (130, '2019-11-07 17:49:15.261349', '23', 'DP', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (131, '2019-11-07 17:49:15.264129', '22', 'DP', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (132, '2019-11-07 17:49:15.266628', '20', 'MOM', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (133, '2019-11-07 17:49:15.268337', '18', 'GRP Group', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (134, '2019-11-07 17:49:15.270680', '16', 'Security Train Me', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (135, '2019-11-07 17:49:15.272414', '14', 'Alliance 21 Group', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (136, '2019-11-07 17:49:15.275079', '12', 'EZ-Link Pte Ltd', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (137, '2019-11-07 17:49:15.276582', '10', 'Equatorial Marine Fuel Management Services Pte Ltd', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (138, '2019-11-07 17:49:15.279131', '8', 'Risk Rate Me', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (139, '2019-11-07 17:49:15.281179', '5', 'Unknown Company (jec.com)', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (140, '2019-11-07 17:49:15.284620', '4', 'Unknown Company (kadfire.com)', 3, '', 55, 1);
INSERT INTO `django_admin_log` VALUES (141, '2019-11-07 17:49:15.287066', '2', 'Unknown Company (securitytrain.me)', 3, '', 55, 1);

-- ----------------------------
-- Table structure for django_celery_beat_clockedschedule
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_clockedschedule`;
CREATE TABLE `django_celery_beat_clockedschedule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clocked_time` datetime(6) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for django_celery_beat_crontabschedule
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_crontabschedule`;
CREATE TABLE `django_celery_beat_crontabschedule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `minute` varchar(240) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `hour` varchar(96) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `day_of_week` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `day_of_month` varchar(124) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `month_of_year` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `timezone` varchar(63) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for django_celery_beat_intervalschedule
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_intervalschedule`;
CREATE TABLE `django_celery_beat_intervalschedule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `every` int(11) NOT NULL,
  `period` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for django_celery_beat_periodictask
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_periodictask`;
CREATE TABLE `django_celery_beat_periodictask`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `task` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `args` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kwargs` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `queue` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `exchange` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `routing_key` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `expires` datetime(6) NULL DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `last_run_at` datetime(6) NULL DEFAULT NULL,
  `total_run_count` int(10) UNSIGNED NOT NULL,
  `date_changed` datetime(6) NOT NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `crontab_id` int(11) NULL DEFAULT NULL,
  `interval_id` int(11) NULL DEFAULT NULL,
  `solar_id` int(11) NULL DEFAULT NULL,
  `one_off` tinyint(1) NOT NULL,
  `start_time` datetime(6) NULL DEFAULT NULL,
  `priority` int(10) UNSIGNED NULL DEFAULT NULL,
  `headers` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `clocked_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  INDEX `django_celery_beat_p_crontab_id_d3cba168_fk_django_ce`(`crontab_id`) USING BTREE,
  INDEX `django_celery_beat_p_interval_id_a8ca27da_fk_django_ce`(`interval_id`) USING BTREE,
  INDEX `django_celery_beat_p_solar_id_a87ce72c_fk_django_ce`(`solar_id`) USING BTREE,
  INDEX `django_celery_beat_p_clocked_id_47a69f82_fk_django_ce`(`clocked_id`) USING BTREE,
  CONSTRAINT `django_celery_beat_p_clocked_id_47a69f82_fk_django_ce` FOREIGN KEY (`clocked_id`) REFERENCES `django_celery_beat_clockedschedule` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_celery_beat_p_crontab_id_d3cba168_fk_django_ce` FOREIGN KEY (`crontab_id`) REFERENCES `django_celery_beat_crontabschedule` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_celery_beat_p_interval_id_a8ca27da_fk_django_ce` FOREIGN KEY (`interval_id`) REFERENCES `django_celery_beat_intervalschedule` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_celery_beat_p_solar_id_a87ce72c_fk_django_ce` FOREIGN KEY (`solar_id`) REFERENCES `django_celery_beat_solarschedule` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for django_celery_beat_periodictasks
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_periodictasks`;
CREATE TABLE `django_celery_beat_periodictasks`  (
  `ident` smallint(6) NOT NULL,
  `last_update` datetime(6) NOT NULL,
  PRIMARY KEY (`ident`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for django_celery_beat_solarschedule
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_solarschedule`;
CREATE TABLE `django_celery_beat_solarschedule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `latitude` decimal(9, 6) NOT NULL,
  `longitude` decimal(9, 6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq`(`event`, `latitude`, `longitude`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for django_celery_results_taskresult
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_results_taskresult`;
CREATE TABLE `django_celery_results_taskresult`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `content_type` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `content_encoding` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `result` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `date_done` datetime(6) NOT NULL,
  `traceback` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `hidden` tinyint(1) NOT NULL,
  `meta` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `task_args` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `task_kwargs` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `task_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `task_id`(`task_id`) USING BTREE,
  INDEX `django_celery_results_taskresult_hidden_cd77412f`(`hidden`) USING BTREE,
  INDEX `django_celery_results_taskresult_date_done_49edada6`(`date_done`) USING BTREE,
  INDEX `django_celery_results_taskresult_status_cbbed23a`(`status`) USING BTREE,
  INDEX `django_celery_results_taskresult_task_name_90987df3`(`task_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `model` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (46, 'account', 'emailaddress');
INSERT INTO `django_content_type` VALUES (47, 'account', 'emailconfirmation');
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (61, 'assessments', 'answer');
INSERT INTO `django_content_type` VALUES (63, 'assessments', 'question');
INSERT INTO `django_content_type` VALUES (64, 'assessments', 'result');
INSERT INTO `django_content_type` VALUES (62, 'assessments', 'topic');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (13, 'django_celery_beat', 'clockedschedule');
INSERT INTO `django_content_type` VALUES (8, 'django_celery_beat', 'crontabschedule');
INSERT INTO `django_content_type` VALUES (9, 'django_celery_beat', 'intervalschedule');
INSERT INTO `django_content_type` VALUES (10, 'django_celery_beat', 'periodictask');
INSERT INTO `django_content_type` VALUES (11, 'django_celery_beat', 'periodictasks');
INSERT INTO `django_content_type` VALUES (12, 'django_celery_beat', 'solarschedule');
INSERT INTO `django_content_type` VALUES (14, 'django_celery_results', 'taskresult');
INSERT INTO `django_content_type` VALUES (15, 'django_fsm_log', 'statelog');
INSERT INTO `django_content_type` VALUES (16, 'djstripe', 'account');
INSERT INTO `django_content_type` VALUES (43, 'djstripe', 'applicationfee');
INSERT INTO `django_content_type` VALUES (44, 'djstripe', 'applicationfeerefund');
INSERT INTO `django_content_type` VALUES (38, 'djstripe', 'balancetransaction');
INSERT INTO `django_content_type` VALUES (17, 'djstripe', 'bankaccount');
INSERT INTO `django_content_type` VALUES (18, 'djstripe', 'card');
INSERT INTO `django_content_type` VALUES (19, 'djstripe', 'charge');
INSERT INTO `django_content_type` VALUES (37, 'djstripe', 'countryspec');
INSERT INTO `django_content_type` VALUES (20, 'djstripe', 'coupon');
INSERT INTO `django_content_type` VALUES (21, 'djstripe', 'customer');
INSERT INTO `django_content_type` VALUES (22, 'djstripe', 'dispute');
INSERT INTO `django_content_type` VALUES (45, 'djstripe', 'djstripepaymentmethod');
INSERT INTO `django_content_type` VALUES (23, 'djstripe', 'event');
INSERT INTO `django_content_type` VALUES (24, 'djstripe', 'fileupload');
INSERT INTO `django_content_type` VALUES (25, 'djstripe', 'idempotencykey');
INSERT INTO `django_content_type` VALUES (26, 'djstripe', 'invoice');
INSERT INTO `django_content_type` VALUES (27, 'djstripe', 'invoiceitem');
INSERT INTO `django_content_type` VALUES (67, 'djstripe', 'paymentintent');
INSERT INTO `django_content_type` VALUES (65, 'djstripe', 'paymentmethod');
INSERT INTO `django_content_type` VALUES (28, 'djstripe', 'payout');
INSERT INTO `django_content_type` VALUES (29, 'djstripe', 'plan');
INSERT INTO `django_content_type` VALUES (30, 'djstripe', 'product');
INSERT INTO `django_content_type` VALUES (31, 'djstripe', 'refund');
INSERT INTO `django_content_type` VALUES (39, 'djstripe', 'scheduledqueryrun');
INSERT INTO `django_content_type` VALUES (68, 'djstripe', 'session');
INSERT INTO `django_content_type` VALUES (66, 'djstripe', 'setupintent');
INSERT INTO `django_content_type` VALUES (32, 'djstripe', 'source');
INSERT INTO `django_content_type` VALUES (33, 'djstripe', 'subscription');
INSERT INTO `django_content_type` VALUES (40, 'djstripe', 'subscriptionitem');
INSERT INTO `django_content_type` VALUES (34, 'djstripe', 'transfer');
INSERT INTO `django_content_type` VALUES (41, 'djstripe', 'transferreversal');
INSERT INTO `django_content_type` VALUES (36, 'djstripe', 'upcominginvoice');
INSERT INTO `django_content_type` VALUES (42, 'djstripe', 'usagerecord');
INSERT INTO `django_content_type` VALUES (35, 'djstripe', 'webhookeventtrigger');
INSERT INTO `django_content_type` VALUES (70, 'reports', 'address');
INSERT INTO `django_content_type` VALUES (55, 'reports', 'company');
INSERT INTO `django_content_type` VALUES (56, 'reports', 'domain');
INSERT INTO `django_content_type` VALUES (57, 'reports', 'riskreport');
INSERT INTO `django_content_type` VALUES (58, 'reports', 'scoreitem');
INSERT INTO `django_content_type` VALUES (54, 'reports', 'sector');
INSERT INTO `django_content_type` VALUES (59, 'reports', 'testdefinition');
INSERT INTO `django_content_type` VALUES (60, 'reports', 'testresult');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (7, 'sites', 'site');
INSERT INTO `django_content_type` VALUES (48, 'socialaccount', 'socialaccount');
INSERT INTO `django_content_type` VALUES (49, 'socialaccount', 'socialapp');
INSERT INTO `django_content_type` VALUES (50, 'socialaccount', 'socialtoken');
INSERT INTO `django_content_type` VALUES (51, 'users', 'contact');
INSERT INTO `django_content_type` VALUES (69, 'users', 'customuser');
INSERT INTO `django_content_type` VALUES (52, 'users', 'domainprofile');
INSERT INTO `django_content_type` VALUES (53, 'users', 'profile');

-- ----------------------------
-- Table structure for django_fsm_log_statelog
-- ----------------------------
DROP TABLE IF EXISTS `django_fsm_log_statelog`;
CREATE TABLE `django_fsm_log_statelog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` datetime(6) NOT NULL,
  `state` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `transition` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `by_id` int(11) NULL DEFAULT NULL,
  `content_type_id` int(11) NOT NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `source_state` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_fsm_log_statelog_by_id_df6b9a17_fk_auth_user_id`(`by_id`) USING BTREE,
  INDEX `django_fsm_log_state_content_type_id_e63b15b9_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_fsm_log_statelog_state_7a86232b`(`state`) USING BTREE,
  INDEX `django_fsm_log_statelog_object_id_21cdf73c`(`object_id`) USING BTREE,
  INDEX `django_fsm_log_statelog_source_state_07608825`(`source_state`) USING BTREE,
  CONSTRAINT `django_fsm_log_state_content_type_id_e63b15b9_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_fsm_log_statelog_by_id_df6b9a17_fk_auth_user_id` FOREIGN KEY (`by_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2019-10-01 22:19:31.797368');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2019-10-01 22:19:31.943811');
INSERT INTO `django_migrations` VALUES (3, 'account', '0001_initial', '2019-10-01 22:19:32.261458');
INSERT INTO `django_migrations` VALUES (4, 'account', '0002_email_max_length', '2019-10-01 22:19:32.339413');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0001_initial', '2019-10-01 22:19:32.386613');
INSERT INTO `django_migrations` VALUES (6, 'admin', '0002_logentry_remove_auto_add', '2019-10-01 22:19:32.465570');
INSERT INTO `django_migrations` VALUES (7, 'admin', '0003_logentry_add_action_flag_choices', '2019-10-01 22:19:32.489333');
INSERT INTO `django_migrations` VALUES (8, 'contenttypes', '0002_remove_content_type_name', '2019-10-01 22:19:32.579269');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0002_alter_permission_name_max_length', '2019-10-01 22:19:32.590117');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0003_alter_user_email_max_length', '2019-10-01 22:19:32.608751');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0004_alter_user_username_opts', '2019-10-01 22:19:32.625215');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0005_alter_user_last_login_null', '2019-10-01 22:19:32.670517');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0006_require_contenttypes_0002', '2019-10-01 22:19:32.674689');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0007_alter_validators_add_error_messages', '2019-10-01 22:19:32.699186');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0008_alter_user_username_max_length', '2019-10-01 22:19:32.730934');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0009_alter_user_last_name_max_length', '2019-10-01 22:19:32.762795');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0010_alter_group_name_max_length', '2019-10-01 22:19:32.792134');
INSERT INTO `django_migrations` VALUES (18, 'auth', '0011_update_proxy_permissions', '2019-10-01 22:19:32.819234');
INSERT INTO `django_migrations` VALUES (19, 'django_celery_beat', '0001_initial', '2019-10-01 22:19:32.919112');
INSERT INTO `django_migrations` VALUES (20, 'django_celery_beat', '0002_auto_20161118_0346', '2019-10-01 22:19:33.051519');
INSERT INTO `django_migrations` VALUES (21, 'django_celery_beat', '0003_auto_20161209_0049', '2019-10-01 22:19:33.118356');
INSERT INTO `django_migrations` VALUES (22, 'django_celery_beat', '0004_auto_20170221_0000', '2019-10-01 22:19:33.131519');
INSERT INTO `django_migrations` VALUES (23, 'django_celery_beat', '0005_add_solarschedule_events_choices', '2019-10-01 22:19:33.144380');
INSERT INTO `django_migrations` VALUES (24, 'django_celery_beat', '0006_auto_20180322_0932', '2019-10-01 22:19:33.228319');
INSERT INTO `django_migrations` VALUES (25, 'django_celery_beat', '0007_auto_20180521_0826', '2019-10-01 22:19:33.328623');
INSERT INTO `django_migrations` VALUES (26, 'django_celery_beat', '0008_auto_20180914_1922', '2019-10-01 22:19:33.374630');
INSERT INTO `django_migrations` VALUES (27, 'django_celery_beat', '0006_auto_20180210_1226', '2019-10-01 22:19:33.402149');
INSERT INTO `django_migrations` VALUES (28, 'django_celery_beat', '0006_periodictask_priority', '2019-10-01 22:19:33.446804');
INSERT INTO `django_migrations` VALUES (29, 'django_celery_beat', '0009_periodictask_headers', '2019-10-01 22:19:33.496482');
INSERT INTO `django_migrations` VALUES (30, 'django_celery_beat', '0010_auto_20190429_0326', '2019-10-01 22:19:33.986817');
INSERT INTO `django_migrations` VALUES (31, 'django_celery_beat', '0011_auto_20190508_0153', '2019-10-01 22:19:34.062051');
INSERT INTO `django_migrations` VALUES (32, 'django_celery_results', '0001_initial', '2019-10-01 22:19:34.155420');
INSERT INTO `django_migrations` VALUES (33, 'django_celery_results', '0002_add_task_name_args_kwargs', '2019-10-01 22:19:34.288981');
INSERT INTO `django_migrations` VALUES (34, 'django_celery_results', '0003_auto_20181106_1101', '2019-10-01 22:19:34.302303');
INSERT INTO `django_migrations` VALUES (35, 'django_celery_results', '0004_auto_20190516_0412', '2019-10-01 22:19:34.433980');
INSERT INTO `django_migrations` VALUES (36, 'django_fsm_log', '0001_initial', '2019-10-01 22:19:34.482279');
INSERT INTO `django_migrations` VALUES (37, 'django_fsm_log', '0002_auto_20151207_1521', '2019-10-01 22:19:34.608942');
INSERT INTO `django_migrations` VALUES (38, 'django_fsm_log', '0003_statelog_description', '2019-10-01 22:19:34.738804');
INSERT INTO `django_migrations` VALUES (39, 'django_fsm_log', '0004_add_source_state', '2019-10-01 22:19:34.743534');
INSERT INTO `django_migrations` VALUES (40, 'django_fsm_log', '0005_description_null', '2019-10-01 22:19:34.747177');
INSERT INTO `django_migrations` VALUES (41, 'djstripe', '0001_initial', '2019-10-01 22:19:37.876749');
INSERT INTO `django_migrations` VALUES (42, 'djstripe', '0002_auto_20180627_1121', '2019-10-01 22:19:39.175467');
INSERT INTO `django_migrations` VALUES (43, 'djstripe', '0003_auto_20181117_2328_squashed_0004_auto_20190227_2114', '2019-10-01 22:19:50.752386');
INSERT INTO `django_migrations` VALUES (44, 'reports', '0001_initial', '2019-10-01 22:19:51.457160');
INSERT INTO `django_migrations` VALUES (45, 'reports', '0002_auto_20191001_2219', '2019-10-01 22:19:52.186775');
INSERT INTO `django_migrations` VALUES (46, 'sessions', '0001_initial', '2019-10-01 22:19:52.377242');
INSERT INTO `django_migrations` VALUES (47, 'sites', '0001_initial', '2019-10-01 22:19:52.420766');
INSERT INTO `django_migrations` VALUES (48, 'sites', '0002_alter_domain_unique', '2019-10-01 22:19:52.456935');
INSERT INTO `django_migrations` VALUES (49, 'socialaccount', '0001_initial', '2019-10-01 22:19:52.832386');
INSERT INTO `django_migrations` VALUES (50, 'socialaccount', '0002_token_max_lengths', '2019-10-01 22:19:53.163761');
INSERT INTO `django_migrations` VALUES (51, 'socialaccount', '0003_extra_data_default_dict', '2019-10-01 22:19:53.249187');
INSERT INTO `django_migrations` VALUES (52, 'users', '0001_initial', '2019-10-01 22:19:53.299015');
INSERT INTO `django_migrations` VALUES (53, 'users', '0002_auto_20191001_2219', '2019-10-01 22:19:53.710790');
INSERT INTO `django_migrations` VALUES (54, 'django_fsm_log', '0003_statelog_description_squashed_0005_description_null', '2019-10-01 22:19:53.882189');
INSERT INTO `django_migrations` VALUES (55, 'assessments', '0001_initial', '2019-11-09 09:49:33.081482');
INSERT INTO `django_migrations` VALUES (56, 'djstripe', '0004_2_1', '2019-11-28 04:48:34.633606');
INSERT INTO `django_migrations` VALUES (57, 'reports', '0002_auto_20191128_0154', '2019-11-28 13:14:46.530545');
INSERT INTO `django_migrations` VALUES (58, 'reports', '0003_auto_20191128_0254', '2019-11-28 13:14:46.569578');
INSERT INTO `django_migrations` VALUES (59, 'users', '0002_auto_20191128_0154', '2019-11-28 13:14:46.593644');
INSERT INTO `django_migrations` VALUES (60, 'users', '0003_auto_20191128_0254', '2019-11-28 13:14:46.618143');
INSERT INTO `django_migrations` VALUES (61, 'users', '0003_auto_20191128_1317', '2019-11-28 13:24:36.119404');
INSERT INTO `django_migrations` VALUES (62, 'reports', '0002_auto_20191128_1337', '2019-11-28 13:38:05.403008');
INSERT INTO `django_migrations` VALUES (63, 'users', '0002_auto_20191128_1337', '2019-11-28 13:38:05.442367');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `session_data` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('1ylnlwbglxzeclhnwijsjupv0zjmbc25', 'NTljY2ZiYjE3ODVhOTdjMjAwZjJiMDA1M2RmZGNlYmM2NDU0NjUwNzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTBmMmE4ZGQ5YTM5ZDNkNjU4ZDZlMzJhNTk1NWFlMjliOGYyNWY2ZSIsIl9zZXNzaW9uX2V4cGlyeSI6MTIwOTYwMH0=', '2019-10-23 08:58:23.321321');
INSERT INTO `django_session` VALUES ('4u8s2pr2u4soca4tn358yae75ujt9rs3', 'MjY3OTNkMzdjMThlNTI0MmJkNWIyYmY5YWY5MWNhYjk1MTkzZDBlMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTEyNjMzNzU1M2VhMTRlZmU1ZTEyZGUzMDRhYTM1MmQ3ZjkzNjczNSIsIl9zZXNzaW9uX2V4cGlyeSI6MTIwOTYwMH0=', '2019-10-18 04:56:53.515266');
INSERT INTO `django_session` VALUES ('74m6ff0hvxardooae6larabcfjtwtf4a', 'M2NmMjc3ZWJjMWY5ZTA4N2U0NGNkZjFiMmE4MzYwZGY3NTY0OGI5ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjAyMTA0OGRjMjdhNzYyNDEyYmM1ZTJlMDVhYmIzMzUwYTVhOGRmZCIsIl9zZXNzaW9uX2V4cGlyeSI6MTIwOTYwMH0=', '2019-11-03 19:26:31.705177');
INSERT INTO `django_session` VALUES ('919a7jcbksc7ws0kougnk806v85cbsah', 'M2NmMjc3ZWJjMWY5ZTA4N2U0NGNkZjFiMmE4MzYwZGY3NTY0OGI5ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjAyMTA0OGRjMjdhNzYyNDEyYmM1ZTJlMDVhYmIzMzUwYTVhOGRmZCIsIl9zZXNzaW9uX2V4cGlyeSI6MTIwOTYwMH0=', '2019-11-21 16:58:58.321663');
INSERT INTO `django_session` VALUES ('akm0ju0p1x920ejpc3z3cectlqdyf0km', 'YzQwMGZiYjQzZTU0Y2Y4NmExZGIzODhjZThiYzYwMmQ5N2YyODBmZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjVhOTNkYzc0MjNkNTFhOTQxMDQ3NDNhNDhjNGFhNzZjZTE5YzBlYyIsIl9zZXNzaW9uX2V4cGlyeSI6MTIwOTYwMH0=', '2019-12-21 17:34:44.490943');
INSERT INTO `django_session` VALUES ('djypgg3zyredn0kie27jmi00txze8vng', 'YzQwMGZiYjQzZTU0Y2Y4NmExZGIzODhjZThiYzYwMmQ5N2YyODBmZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjVhOTNkYzc0MjNkNTFhOTQxMDQ3NDNhNDhjNGFhNzZjZTE5YzBlYyIsIl9zZXNzaW9uX2V4cGlyeSI6MTIwOTYwMH0=', '2020-02-11 12:14:51.798152');
INSERT INTO `django_session` VALUES ('igw9lgs1j2sdy4vhpsgy0n2ukh0ts0ft', 'MjY3OTNkMzdjMThlNTI0MmJkNWIyYmY5YWY5MWNhYjk1MTkzZDBlMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTEyNjMzNzU1M2VhMTRlZmU1ZTEyZGUzMDRhYTM1MmQ3ZjkzNjczNSIsIl9zZXNzaW9uX2V4cGlyeSI6MTIwOTYwMH0=', '2019-11-03 08:09:25.054457');
INSERT INTO `django_session` VALUES ('ljxd90kua0ukd397xx0pyoip605s1pha', 'MGJiMTNlZGFmOTM0ODExZGE1MTBjM2I2NDQwNWZhMzgwNTBiMjg1ZDp7ImFjY291bnRfdmVyaWZpZWRfZW1haWwiOm51bGwsImFjY291bnRfdXNlciI6IjYiLCJfYXV0aF91c2VyX2lkIjoiNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFsbGF1dGguYWNjb3VudC5hdXRoX2JhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjM4OTA5ZDUwNjY1NWE5YTI3NDUwOTYyZjAyYTc2ZTc0NzljNzMyNWMifQ==', '2019-10-26 16:05:15.079082');
INSERT INTO `django_session` VALUES ('sssdi6tqppmb3af394r350v56y3ogpdo', 'ZDBkMzE0OGFjZTIwMzI2MTEyNTM3YTA0Mjc1MGJiNGZmODExYWVkODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMTI2MzM3NTUzZWExNGVmZTVlMTJkZTMwNGFhMzUyZDdmOTM2NzM1In0=', '2019-10-15 22:52:08.474925');
INSERT INTO `django_session` VALUES ('vtvrbpg0umvx5xpbp8kymqiipx53j54b', 'Mzg1MTg3NzA1NmQwNjkxODBmYTg0YmRlZDJjOTEwNDk5ZWVmYzNjNjp7ImFjY291bnRfdmVyaWZpZWRfZW1haWwiOm51bGwsIl9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTU4NmYyMjZkZjEzOWEyMmNkNDg2MTEyMzA1MjE2ZDdjZjNhMTE5NiIsIl9zZXNzaW9uX2V4cGlyeSI6MTIwOTYwMH0=', '2019-10-21 14:09:14.744652');
INSERT INTO `django_session` VALUES ('wcgx28zveg8b1qrnvuvjv3aba65u45ns', 'M2NmMjc3ZWJjMWY5ZTA4N2U0NGNkZjFiMmE4MzYwZGY3NTY0OGI5ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjAyMTA0OGRjMjdhNzYyNDEyYmM1ZTJlMDVhYmIzMzUwYTVhOGRmZCIsIl9zZXNzaW9uX2V4cGlyeSI6MTIwOTYwMH0=', '2019-11-04 06:00:36.532188');
INSERT INTO `django_session` VALUES ('x28vhghfbmmm3zwlgts40jc89sk1vy1p', 'MDlkZGVjMzYxMDkzYWE1YWZhMzMwOGRjN2ZiMDY2NGZmYWI3NmU2Nzp7ImFjY291bnRfdmVyaWZpZWRfZW1haWwiOm51bGwsImFjY291bnRfdXNlciI6IjcifQ==', '2019-12-12 15:58:21.678919');
INSERT INTO `django_session` VALUES ('y976u903ibm45a4unn1v9i5px5o5ygn4', 'M2NmMjc3ZWJjMWY5ZTA4N2U0NGNkZjFiMmE4MzYwZGY3NTY0OGI5ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjAyMTA0OGRjMjdhNzYyNDEyYmM1ZTJlMDVhYmIzMzUwYTVhOGRmZCIsIl9zZXNzaW9uX2V4cGlyeSI6MTIwOTYwMH0=', '2019-11-03 19:26:03.581984');
INSERT INTO `django_session` VALUES ('z7zedyr3mn4hv63ukisup56s1fhy0g70', 'NTcxZTQ1Nzc3NDc1MmNkZGMwMWZhZDg2MmU1Nzk1MTZmNGJiYzgxMTp7ImFjY291bnRfdmVyaWZpZWRfZW1haWwiOm51bGwsIl9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2QyOWEzNWQ3ZWMzMTkyMTBjOTIxM2EyM2JlYjk2NTc3Y2E5MDNiNiIsIl9zZXNzaW9uX2V4cGlyeSI6MTIwOTYwMH0=', '2019-10-22 09:44:30.110978');

-- ----------------------------
-- Table structure for django_site
-- ----------------------------
DROP TABLE IF EXISTS `django_site`;
CREATE TABLE `django_site`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_site_domain_a2e37b91_uniq`(`domain`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_site
-- ----------------------------
INSERT INTO `django_site` VALUES (1, 'example.com', 'example.com');

-- ----------------------------
-- Table structure for djstripe_account
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_account`;
CREATE TABLE `djstripe_account`  (
  `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `livemode` tinyint(1) NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `metadata` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `business_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `business_primary_color` varchar(7) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `business_url` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `charges_enabled` tinyint(1) NOT NULL,
  `country` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `debit_negative_balances` tinyint(1) NULL DEFAULT NULL,
  `decline_charge_on` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `default_currency` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `details_submitted` tinyint(1) NOT NULL,
  `display_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `legal_entity` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `payout_schedule` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `payout_statement_descriptor` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payouts_enabled` tinyint(1) NOT NULL,
  `product_description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `statement_descriptor` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `support_email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `support_phone` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `support_url` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `timezone` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `type` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tos_acceptance` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `verification` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `branding_icon_id` bigint(20) NULL DEFAULT NULL,
  `branding_logo_id` bigint(20) NULL DEFAULT NULL,
  `business_profile` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `business_type` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `company` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `individual` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `requirements` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `settings` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`djstripe_id`) USING BTREE,
  UNIQUE INDEX `stripe_id`(`id`) USING BTREE,
  INDEX `djstripe_account_business_logo_id_b3f124c3_fk_djstripe_`(`branding_icon_id`) USING BTREE,
  INDEX `djstripe_account_branding_logo_id_d525e9cd_fk_djstripe_`(`branding_logo_id`) USING BTREE,
  CONSTRAINT `djstripe_account_branding_icon_id_9d56e74d_fk_djstripe_` FOREIGN KEY (`branding_icon_id`) REFERENCES `djstripe_fileupload` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_account_branding_logo_id_d525e9cd_fk_djstripe_` FOREIGN KEY (`branding_logo_id`) REFERENCES `djstripe_fileupload` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for djstripe_applicationfee
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_applicationfee`;
CREATE TABLE `djstripe_applicationfee`  (
  `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `livemode` tinyint(1) NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `metadata` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_refunded` int(11) NOT NULL,
  `currency` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `refunded` tinyint(1) NOT NULL,
  `balance_transaction_id` bigint(20) NOT NULL,
  `charge_id` bigint(20) NOT NULL,
  PRIMARY KEY (`djstripe_id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `djstripe_application_balance_transaction__ff735754_fk_djstripe_`(`balance_transaction_id`) USING BTREE,
  INDEX `djstripe_application_charge_id_8ba8ce37_fk_djstripe_`(`charge_id`) USING BTREE,
  CONSTRAINT `djstripe_application_balance_transaction__ff735754_fk_djstripe_` FOREIGN KEY (`balance_transaction_id`) REFERENCES `djstripe_balancetransaction` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_application_charge_id_8ba8ce37_fk_djstripe_` FOREIGN KEY (`charge_id`) REFERENCES `djstripe_charge` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for djstripe_applicationfeerefund
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_applicationfeerefund`;
CREATE TABLE `djstripe_applicationfeerefund`  (
  `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `livemode` tinyint(1) NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `metadata` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `amount` int(11) NOT NULL,
  `currency` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `balance_transaction_id` bigint(20) NOT NULL,
  `fee_id` bigint(20) NOT NULL,
  PRIMARY KEY (`djstripe_id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `djstripe_application_balance_transaction__bc35b031_fk_djstripe_`(`balance_transaction_id`) USING BTREE,
  INDEX `djstripe_application_fee_id_8fabef2d_fk_djstripe_`(`fee_id`) USING BTREE,
  CONSTRAINT `djstripe_application_balance_transaction__bc35b031_fk_djstripe_` FOREIGN KEY (`balance_transaction_id`) REFERENCES `djstripe_balancetransaction` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_application_fee_id_8fabef2d_fk_djstripe_` FOREIGN KEY (`fee_id`) REFERENCES `djstripe_applicationfee` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for djstripe_balancetransaction
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_balancetransaction`;
CREATE TABLE `djstripe_balancetransaction`  (
  `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `livemode` tinyint(1) NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `metadata` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `amount` int(11) NOT NULL,
  `available_on` datetime(6) NOT NULL,
  `currency` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `exchange_rate` decimal(8, 6) NULL DEFAULT NULL,
  `fee` int(11) NOT NULL,
  `fee_details` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `net` int(11) NOT NULL,
  `status` varchar(9) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `type` varchar(29) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`djstripe_id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for djstripe_bankaccount
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_bankaccount`;
CREATE TABLE `djstripe_bankaccount`  (
  `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `livemode` tinyint(1) NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `metadata` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `account_holder_name` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `account_holder_type` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `bank_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `country` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `currency` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `default_for_currency` tinyint(1) NULL DEFAULT NULL,
  `fingerprint` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `last4` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `routing_number` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` varchar(19) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `account_id` bigint(20) NULL DEFAULT NULL,
  `customer_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`djstripe_id`) USING BTREE,
  UNIQUE INDEX `stripe_id`(`id`) USING BTREE,
  INDEX `djstripe_bankaccount_account_id_5434506d_fk_djstripe_`(`account_id`) USING BTREE,
  INDEX `djstripe_bankaccount_customer_id_0f696e1d_fk_djstripe_`(`customer_id`) USING BTREE,
  CONSTRAINT `djstripe_bankaccount_account_id_5434506d_fk_djstripe_` FOREIGN KEY (`account_id`) REFERENCES `djstripe_account` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_bankaccount_customer_id_0f696e1d_fk_djstripe_` FOREIGN KEY (`customer_id`) REFERENCES `djstripe_customer` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for djstripe_card
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_card`;
CREATE TABLE `djstripe_card`  (
  `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `livemode` tinyint(1) NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `metadata` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `address_city` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `address_country` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `address_line1` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `address_line1_check` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `address_line2` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `address_state` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `address_zip` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `address_zip_check` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `brand` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `country` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cvc_check` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `dynamic_last4` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `exp_month` int(11) NOT NULL,
  `exp_year` int(11) NOT NULL,
  `fingerprint` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `funding` varchar(7) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `last4` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tokenization_method` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `customer_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`djstripe_id`) USING BTREE,
  UNIQUE INDEX `stripe_id`(`id`) USING BTREE,
  INDEX `djstripe_card_customer_id_9601f29c_fk_djstripe_`(`customer_id`) USING BTREE,
  CONSTRAINT `djstripe_card_customer_id_9601f29c_fk_djstripe_` FOREIGN KEY (`customer_id`) REFERENCES `djstripe_customer` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for djstripe_charge
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_charge`;
CREATE TABLE `djstripe_charge`  (
  `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `livemode` tinyint(1) NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `metadata` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `amount` decimal(8, 2) NOT NULL,
  `amount_refunded` decimal(8, 2) NOT NULL,
  `captured` tinyint(1) NOT NULL,
  `currency` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `failure_code` varchar(42) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `failure_message` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fraud_details` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `outcome` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `paid` tinyint(1) NOT NULL,
  `receipt_email` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `receipt_number` varchar(14) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `refunded` tinyint(1) NOT NULL,
  `shipping` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `statement_descriptor` varchar(22) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` varchar(9) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `transfer_group` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `account_id` bigint(20) NULL DEFAULT NULL,
  `customer_id` bigint(20) NULL DEFAULT NULL,
  `dispute_id` bigint(20) NULL DEFAULT NULL,
  `invoice_id` bigint(20) NULL DEFAULT NULL,
  `source_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `transfer_id` bigint(20) NULL DEFAULT NULL,
  `balance_transaction_id` bigint(20) NULL DEFAULT NULL,
  `payment_intent_id` bigint(20) NULL DEFAULT NULL,
  `payment_method_details` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `receipt_url` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payment_method_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`djstripe_id`) USING BTREE,
  UNIQUE INDEX `stripe_id`(`id`) USING BTREE,
  INDEX `djstripe_charge_account_id_597fef70_fk_djstripe_`(`account_id`) USING BTREE,
  INDEX `djstripe_charge_customer_id_fb15eb2b_fk_djstripe_`(`customer_id`) USING BTREE,
  INDEX `djstripe_charge_dispute_id_86a03043_fk_djstripe_`(`dispute_id`) USING BTREE,
  INDEX `djstripe_charge_invoice_id_bb36cca4_fk_djstripe_`(`invoice_id`) USING BTREE,
  INDEX `djstripe_charge_source_id_2502db60`(`source_id`) USING BTREE,
  INDEX `djstripe_charge_transfer_id_bbfc2bbc_fk_djstripe_`(`transfer_id`) USING BTREE,
  INDEX `djstripe_charge_balance_transaction__2eac625e_fk_djstripe_`(`balance_transaction_id`) USING BTREE,
  INDEX `djstripe_charge_payment_intent_id_e2c03053_fk_djstripe_`(`payment_intent_id`) USING BTREE,
  INDEX `djstripe_charge_payment_method_id_061d5812_fk_djstripe_`(`payment_method_id`) USING BTREE,
  CONSTRAINT `djstripe_charge_account_id_597fef70_fk_djstripe_` FOREIGN KEY (`account_id`) REFERENCES `djstripe_account` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_charge_balance_transaction__2eac625e_fk_djstripe_` FOREIGN KEY (`balance_transaction_id`) REFERENCES `djstripe_balancetransaction` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_charge_customer_id_fb15eb2b_fk_djstripe_` FOREIGN KEY (`customer_id`) REFERENCES `djstripe_customer` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_charge_dispute_id_86a03043_fk_djstripe_` FOREIGN KEY (`dispute_id`) REFERENCES `djstripe_dispute` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_charge_invoice_id_bb36cca4_fk_djstripe_` FOREIGN KEY (`invoice_id`) REFERENCES `djstripe_invoice` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_charge_payment_intent_id_e2c03053_fk_djstripe_` FOREIGN KEY (`payment_intent_id`) REFERENCES `djstripe_paymentintent` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_charge_payment_method_id_061d5812_fk_djstripe_` FOREIGN KEY (`payment_method_id`) REFERENCES `djstripe_paymentmethod` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_charge_source_id_2502db60_fk_djstripe_` FOREIGN KEY (`source_id`) REFERENCES `djstripe_djstripepaymentmethod` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_charge_transfer_id_bbfc2bbc_fk_djstripe_` FOREIGN KEY (`transfer_id`) REFERENCES `djstripe_transfer` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for djstripe_countryspec
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_countryspec`;
CREATE TABLE `djstripe_countryspec`  (
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `id` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `default_currency` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `supported_bank_account_currencies` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `supported_payment_currencies` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `supported_payment_methods` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `supported_transfer_countries` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `verification_fields` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for djstripe_coupon
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_coupon`;
CREATE TABLE `djstripe_coupon`  (
  `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `livemode` tinyint(1) NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `metadata` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `id` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `amount_off` decimal(8, 2) NULL DEFAULT NULL,
  `currency` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `duration` varchar(9) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `duration_in_months` int(10) UNSIGNED NULL DEFAULT NULL,
  `max_redemptions` int(10) UNSIGNED NULL DEFAULT NULL,
  `percent_off` decimal(5, 2) NULL DEFAULT NULL,
  `redeem_by` datetime(6) NULL DEFAULT NULL,
  `times_redeemed` int(10) UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`djstripe_id`) USING BTREE,
  UNIQUE INDEX `djstripe_coupon_stripe_id_livemode_a3687fb2_uniq`(`id`, `livemode`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for djstripe_customer
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_customer`;
CREATE TABLE `djstripe_customer`  (
  `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `livemode` tinyint(1) NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `metadata` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `balance` int(11) NOT NULL,
  `business_vat_id` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `currency` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `delinquent` tinyint(1) NOT NULL,
  `coupon_start` datetime(6) NULL DEFAULT NULL,
  `coupon_end` datetime(6) NULL DEFAULT NULL,
  `email` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `shipping` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `date_purged` datetime(6) NULL DEFAULT NULL,
  `coupon_id` bigint(20) NULL DEFAULT NULL,
  `default_source_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `subscriber_id` int(11) NULL DEFAULT NULL,
  `address` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `invoice_prefix` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `invoice_settings` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `name` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `phone` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `preferred_locales` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `tax_exempt` varchar(7) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `default_payment_method_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`djstripe_id`) USING BTREE,
  UNIQUE INDEX `stripe_id`(`id`) USING BTREE,
  UNIQUE INDEX `djstripe_customer_subscriber_id_livemode_962f4a46_uniq`(`subscriber_id`, `livemode`) USING BTREE,
  INDEX `djstripe_customer_coupon_id_ff032fb1_fk_djstripe_`(`coupon_id`) USING BTREE,
  INDEX `djstripe_customer_default_source_id_24020f62`(`default_source_id`) USING BTREE,
  INDEX `djstripe_customer_default_payment_meth_00268b63_fk_djstripe_`(`default_payment_method_id`) USING BTREE,
  CONSTRAINT `djstripe_customer_coupon_id_ff032fb1_fk_djstripe_` FOREIGN KEY (`coupon_id`) REFERENCES `djstripe_coupon` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_customer_default_payment_meth_00268b63_fk_djstripe_` FOREIGN KEY (`default_payment_method_id`) REFERENCES `djstripe_paymentmethod` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_customer_default_source_id_24020f62_fk_djstripe_` FOREIGN KEY (`default_source_id`) REFERENCES `djstripe_djstripepaymentmethod` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_customer_subscriber_id_60f5c7bc_fk_auth_user_id` FOREIGN KEY (`subscriber_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of djstripe_customer
-- ----------------------------
INSERT INTO `djstripe_customer` VALUES (1, 'cus_FujAQh80IYRwMU', 0, NULL, NULL, NULL, '2019-10-01 22:21:04.183303', '2019-10-01 22:21:04.183370', 0, '', '', 0, NULL, NULL, '', NULL, NULL, NULL, NULL, 1, NULL, '', NULL, '', '', NULL, '', NULL);
INSERT INTO `djstripe_customer` VALUES (2, 'cus_Fwmxo0AyXNGUgu', 0, NULL, NULL, NULL, '2019-10-07 10:23:24.816318', '2019-10-07 10:23:24.816393', 0, '', '', 0, NULL, NULL, '', NULL, NULL, NULL, NULL, 2, NULL, '', NULL, '', '', NULL, '', NULL);
INSERT INTO `djstripe_customer` VALUES (3, 'cus_FwqXg8lBnqvey9', 0, NULL, NULL, NULL, '2019-10-07 14:06:09.267508', '2019-10-07 14:06:09.267582', 0, '', '', 0, NULL, NULL, '', NULL, NULL, NULL, NULL, 3, NULL, '', NULL, '', '', NULL, '', NULL);
INSERT INTO `djstripe_customer` VALUES (4, 'cus_Fx95z1jpJK0d9d', 0, NULL, NULL, NULL, '2019-10-08 09:15:50.358402', '2019-10-08 09:15:50.358476', 0, '', '', 0, NULL, NULL, '', NULL, NULL, NULL, NULL, 4, NULL, '', NULL, '', '', NULL, '', NULL);
INSERT INTO `djstripe_customer` VALUES (5, 'cus_Fx9WZCSlbOUBBn', 0, NULL, NULL, NULL, '2019-10-08 09:43:00.857850', '2019-10-08 09:44:10.025659', 0, '', '', 0, NULL, NULL, '', NULL, NULL, NULL, 'src_1FRFEiJKWVx52XCjfp9TflKl', 5, NULL, '', NULL, '', '', NULL, '', NULL);
INSERT INTO `djstripe_customer` VALUES (6, 'cus_FykanrR2qS1mV4', 0, NULL, NULL, NULL, '2019-10-12 16:05:14.203431', '2019-10-16 08:42:41.380772', 0, '', '', 0, NULL, NULL, '', NULL, '2019-10-16 08:42:41.380399', NULL, NULL, NULL, NULL, '', NULL, '', '', NULL, '', NULL);
INSERT INTO `djstripe_customer` VALUES (7, 'cus_GGBLUvSPWfGx7M', 0, NULL, NULL, NULL, '2019-11-28 13:49:44.449938', '2019-11-28 13:49:44.450067', 0, '', '', 0, NULL, NULL, '', NULL, NULL, NULL, NULL, 6, NULL, '', NULL, '', '', NULL, '', NULL);
INSERT INTO `djstripe_customer` VALUES (8, 'cus_GGM5GELrvUCSzj', 0, NULL, NULL, NULL, '2019-11-28 15:58:17.462080', '2019-11-28 15:58:17.462219', 0, '', '', 0, NULL, NULL, '', NULL, NULL, NULL, NULL, 7, NULL, '', NULL, '', '', NULL, '', NULL);
INSERT INTO `djstripe_customer` VALUES (9, 'cus_GZ4UEhEKAMWMJx', 0, NULL, NULL, NULL, '2020-01-17 15:03:11.774881', '2020-01-17 15:03:11.774919', 0, '', '', 0, NULL, NULL, '', NULL, NULL, NULL, NULL, 8, NULL, '', NULL, '', '', NULL, '', NULL);

-- ----------------------------
-- Table structure for djstripe_dispute
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_dispute`;
CREATE TABLE `djstripe_dispute`  (
  `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `livemode` tinyint(1) NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `metadata` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `amount` int(11) NOT NULL,
  `currency` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `evidence` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `evidence_details` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `is_charge_refundable` tinyint(1) NOT NULL,
  `reason` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` varchar(22) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`djstripe_id`) USING BTREE,
  UNIQUE INDEX `stripe_id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for djstripe_djstripepaymentmethod
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_djstripepaymentmethod`;
CREATE TABLE `djstripe_djstripepaymentmethod`  (
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `type` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `djstripe_paymentmethod_type_0585203a`(`type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of djstripe_djstripepaymentmethod
-- ----------------------------
INSERT INTO `djstripe_djstripepaymentmethod` VALUES ('src_1FRFEiJKWVx52XCjfp9TflKl', 'source');

-- ----------------------------
-- Table structure for djstripe_event
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_event`;
CREATE TABLE `djstripe_event`  (
  `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `livemode` tinyint(1) NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `metadata` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `api_version` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `data` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `request_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `idempotency_key` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `type` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`djstripe_id`) USING BTREE,
  UNIQUE INDEX `stripe_id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for djstripe_fileupload
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_fileupload`;
CREATE TABLE `djstripe_fileupload`  (
  `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `livemode` tinyint(1) NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `metadata` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `filename` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `purpose` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `size` int(11) NOT NULL,
  `type` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `url` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`djstripe_id`) USING BTREE,
  UNIQUE INDEX `stripe_id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for djstripe_idempotencykey
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_idempotencykey`;
CREATE TABLE `djstripe_idempotencykey`  (
  `uuid` char(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `action` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `livemode` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  PRIMARY KEY (`uuid`) USING BTREE,
  UNIQUE INDEX `djstripe_idempotencykey_action_livemode_5003eb11_uniq`(`action`, `livemode`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of djstripe_idempotencykey
-- ----------------------------
INSERT INTO `djstripe_idempotencykey` VALUES ('0ae13351d32a49e7ab425f765288c97e', 'customer:create:1', 0, '2019-10-01 22:21:03.893162');
INSERT INTO `djstripe_idempotencykey` VALUES ('2f69b9352356454cb71cf3af3d7ae2bd', 'customer:create:2', 0, '2019-10-07 10:23:24.455165');
INSERT INTO `djstripe_idempotencykey` VALUES ('320ced64594a4ed2ab9850a796cfdbd0', 'customer:create:7', 0, '2019-11-28 15:58:16.654122');
INSERT INTO `djstripe_idempotencykey` VALUES ('4a0a09b8afa84c70a533e9ff3afc5019', 'customer:create:4', 0, '2019-10-08 09:15:49.967056');
INSERT INTO `djstripe_idempotencykey` VALUES ('6c2d715af8e44a8a88a9def3a0f33307', 'customer:create:3', 0, '2019-10-07 14:06:08.986517');
INSERT INTO `djstripe_idempotencykey` VALUES ('ab880d286dab4981b4f88739956e2996', 'customer:create:8', 0, '2020-01-17 15:03:10.248171');
INSERT INTO `djstripe_idempotencykey` VALUES ('e301192c999d4169a4ac1edab8f21339', 'customer:create:6', 0, '2019-10-12 16:05:13.735861');
INSERT INTO `djstripe_idempotencykey` VALUES ('e7fb3a6e180149438066e98c9046da6d', 'customer:create:5', 0, '2019-10-08 09:43:00.568961');

-- ----------------------------
-- Table structure for djstripe_invoice
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_invoice`;
CREATE TABLE `djstripe_invoice`  (
  `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `livemode` tinyint(1) NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `metadata` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `amount_due` decimal(8, 2) NOT NULL,
  `amount_paid` decimal(8, 2) NULL DEFAULT NULL,
  `amount_remaining` decimal(8, 2) NULL DEFAULT NULL,
  `application_fee_amount` decimal(8, 2) NULL DEFAULT NULL,
  `attempt_count` int(11) NOT NULL,
  `attempted` tinyint(1) NOT NULL,
  `billing` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `closed` tinyint(1) NULL DEFAULT NULL,
  `currency` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `due_date` datetime(6) NULL DEFAULT NULL,
  `ending_balance` int(11) NULL DEFAULT NULL,
  `forgiven` tinyint(1) NULL DEFAULT NULL,
  `hosted_invoice_url` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `invoice_pdf` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `next_payment_attempt` datetime(6) NULL DEFAULT NULL,
  `number` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `period_end` datetime(6) NOT NULL,
  `period_start` datetime(6) NOT NULL,
  `receipt_number` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `starting_balance` int(11) NOT NULL,
  `statement_descriptor` varchar(22) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `subscription_proration_date` datetime(6) NULL DEFAULT NULL,
  `subtotal` decimal(8, 2) NOT NULL,
  `tax` decimal(8, 2) NULL DEFAULT NULL,
  `tax_percent` decimal(5, 2) NULL DEFAULT NULL,
  `total` decimal(8, 2) NOT NULL,
  `webhooks_delivered_at` datetime(6) NULL DEFAULT NULL,
  `charge_id` bigint(20) NULL DEFAULT NULL,
  `customer_id` bigint(20) NOT NULL,
  `subscription_id` bigint(20) NULL DEFAULT NULL,
  `auto_advance` tinyint(1) NULL DEFAULT NULL,
  `status_transitions` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `payment_intent_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`djstripe_id`) USING BTREE,
  UNIQUE INDEX `stripe_id`(`id`) USING BTREE,
  UNIQUE INDEX `charge_id`(`charge_id`) USING BTREE,
  UNIQUE INDEX `payment_intent_id`(`payment_intent_id`) USING BTREE,
  INDEX `djstripe_invoice_customer_id_c0cd871c_fk_djstripe_`(`customer_id`) USING BTREE,
  INDEX `djstripe_invoice_subscription_id_2dbc2461_fk_djstripe_`(`subscription_id`) USING BTREE,
  CONSTRAINT `djstripe_invoice_charge_id_1e660b26_fk_djstripe_` FOREIGN KEY (`charge_id`) REFERENCES `djstripe_charge` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_invoice_customer_id_c0cd871c_fk_djstripe_` FOREIGN KEY (`customer_id`) REFERENCES `djstripe_customer` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_invoice_payment_intent_id_280d90d8_fk_djstripe_` FOREIGN KEY (`payment_intent_id`) REFERENCES `djstripe_paymentintent` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_invoice_subscription_id_2dbc2461_fk_djstripe_` FOREIGN KEY (`subscription_id`) REFERENCES `djstripe_subscription` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for djstripe_invoiceitem
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_invoiceitem`;
CREATE TABLE `djstripe_invoiceitem`  (
  `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `livemode` tinyint(1) NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `metadata` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `amount` decimal(8, 2) NOT NULL,
  `currency` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` datetime(6) NOT NULL,
  `discountable` tinyint(1) NOT NULL,
  `period` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `period_end` datetime(6) NOT NULL,
  `period_start` datetime(6) NOT NULL,
  `proration` tinyint(1) NOT NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  `customer_id` bigint(20) NOT NULL,
  `invoice_id` bigint(20) NULL DEFAULT NULL,
  `plan_id` bigint(20) NULL DEFAULT NULL,
  `subscription_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`djstripe_id`) USING BTREE,
  UNIQUE INDEX `stripe_id`(`id`) USING BTREE,
  INDEX `djstripe_invoiceitem_customer_id_259466b8_fk_djstripe_`(`customer_id`) USING BTREE,
  INDEX `djstripe_invoiceitem_invoice_id_d302912e_fk_djstripe_`(`invoice_id`) USING BTREE,
  INDEX `djstripe_invoiceitem_plan_id_a01e229a_fk_djstripe_`(`plan_id`) USING BTREE,
  INDEX `djstripe_invoiceitem_subscription_id_a7760178_fk_djstripe_`(`subscription_id`) USING BTREE,
  CONSTRAINT `djstripe_invoiceitem_customer_id_259466b8_fk_djstripe_` FOREIGN KEY (`customer_id`) REFERENCES `djstripe_customer` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_invoiceitem_invoice_id_d302912e_fk_djstripe_` FOREIGN KEY (`invoice_id`) REFERENCES `djstripe_invoice` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_invoiceitem_plan_id_a01e229a_fk_djstripe_` FOREIGN KEY (`plan_id`) REFERENCES `djstripe_plan` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_invoiceitem_subscription_id_a7760178_fk_djstripe_` FOREIGN KEY (`subscription_id`) REFERENCES `djstripe_subscription` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for djstripe_paymentintent
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_paymentintent`;
CREATE TABLE `djstripe_paymentintent`  (
  `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `livemode` tinyint(1) NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `metadata` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_capturable` int(11) NOT NULL,
  `amount_received` int(11) NOT NULL,
  `canceled_at` datetime(6) NULL DEFAULT NULL,
  `cancellation_reason` varchar(21) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `capture_method` varchar(9) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `client_secret` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `confirmation_method` varchar(9) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `currency` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `last_payment_error` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `next_action` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `payment_method_types` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `receipt_email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `setup_future_usage` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `shipping` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `statement_descriptor` varchar(22) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` varchar(23) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `transfer_data` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `transfer_group` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `customer_id` bigint(20) NULL DEFAULT NULL,
  `on_behalf_of_id` bigint(20) NULL DEFAULT NULL,
  `payment_method_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`djstripe_id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `djstripe_paymentinte_customer_id_93ee54a2_fk_djstripe_`(`customer_id`) USING BTREE,
  INDEX `djstripe_paymentinte_on_behalf_of_id_4db305db_fk_djstripe_`(`on_behalf_of_id`) USING BTREE,
  INDEX `djstripe_paymentinte_payment_method_id_814dd02d_fk_djstripe_`(`payment_method_id`) USING BTREE,
  CONSTRAINT `djstripe_paymentinte_customer_id_93ee54a2_fk_djstripe_` FOREIGN KEY (`customer_id`) REFERENCES `djstripe_customer` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_paymentinte_on_behalf_of_id_4db305db_fk_djstripe_` FOREIGN KEY (`on_behalf_of_id`) REFERENCES `djstripe_account` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_paymentinte_payment_method_id_814dd02d_fk_djstripe_` FOREIGN KEY (`payment_method_id`) REFERENCES `djstripe_paymentmethod` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for djstripe_paymentmethod
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_paymentmethod`;
CREATE TABLE `djstripe_paymentmethod`  (
  `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `livemode` tinyint(1) NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `metadata` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `billing_details` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `card` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `card_present` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `customer_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`djstripe_id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `djstripe_paymentmeth_customer_id_c482a8b6_fk_djstripe_`(`customer_id`) USING BTREE,
  CONSTRAINT `djstripe_paymentmeth_customer_id_c482a8b6_fk_djstripe_` FOREIGN KEY (`customer_id`) REFERENCES `djstripe_customer` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for djstripe_payout
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_payout`;
CREATE TABLE `djstripe_payout`  (
  `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `livemode` tinyint(1) NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `metadata` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `amount` decimal(8, 2) NOT NULL,
  `arrival_date` datetime(6) NOT NULL,
  `currency` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `failure_code` varchar(23) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `failure_message` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `method` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `statement_descriptor` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `type` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `destination_id` bigint(20) NULL DEFAULT NULL,
  `balance_transaction_id` bigint(20) NULL DEFAULT NULL,
  `failure_balance_transaction_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`djstripe_id`) USING BTREE,
  UNIQUE INDEX `stripe_id`(`id`) USING BTREE,
  INDEX `djstripe_payout_destination_id_a5fa55c2_fk_djstripe_`(`destination_id`) USING BTREE,
  INDEX `djstripe_payout_balance_transaction__a9393fb6_fk_djstripe_`(`balance_transaction_id`) USING BTREE,
  INDEX `djstripe_payout_failure_balance_tran_77d442db_fk_djstripe_`(`failure_balance_transaction_id`) USING BTREE,
  CONSTRAINT `djstripe_payout_balance_transaction__a9393fb6_fk_djstripe_` FOREIGN KEY (`balance_transaction_id`) REFERENCES `djstripe_balancetransaction` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_payout_destination_id_a5fa55c2_fk_djstripe_` FOREIGN KEY (`destination_id`) REFERENCES `djstripe_bankaccount` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_payout_failure_balance_tran_77d442db_fk_djstripe_` FOREIGN KEY (`failure_balance_transaction_id`) REFERENCES `djstripe_balancetransaction` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for djstripe_plan
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_plan`;
CREATE TABLE `djstripe_plan`  (
  `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `livemode` tinyint(1) NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `metadata` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `aggregate_usage` varchar(18) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `amount` decimal(8, 2) NULL DEFAULT NULL,
  `billing_scheme` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `currency` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `interval` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `interval_count` int(11) NULL DEFAULT NULL,
  `nickname` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tiers` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `tiers_mode` varchar(9) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `transform_usage` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `trial_period_days` int(11) NULL DEFAULT NULL,
  `usage_type` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `statement_descriptor` varchar(22) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `product_id` bigint(20) NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`djstripe_id`) USING BTREE,
  UNIQUE INDEX `stripe_id`(`id`) USING BTREE,
  INDEX `djstripe_plan_product_id_5773384d_fk_djstripe_`(`product_id`) USING BTREE,
  CONSTRAINT `djstripe_plan_product_id_5773384d_fk_djstripe_` FOREIGN KEY (`product_id`) REFERENCES `djstripe_product` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of djstripe_plan
-- ----------------------------
INSERT INTO `djstripe_plan` VALUES (1, 'plan_ent01', 0, '2019-07-29 04:44:14.000000', '{}', '', '2019-10-01 22:20:32.733596', '2019-10-01 22:20:32.733638', '', 69.99, 'per_unit', 'usd', 'month', 1, 'Enterprise (ACME Inc.)', '\"\"', '', '\"\"', 5, 'licensed', '', '', 1, 1);
INSERT INTO `djstripe_plan` VALUES (2, 'plan_pro01', 0, '2019-07-27 20:35:15.000000', '{}', '', '2019-10-01 22:20:32.744415', '2019-10-01 22:20:32.744483', '', 149.99, 'per_unit', 'usd', 'year', 1, 'Professional', '\"\"', '', '\"\"', 3, 'licensed', '', '', 1, 1);
INSERT INTO `djstripe_plan` VALUES (3, 'plan_free01', 0, '2019-07-27 16:28:51.000000', '{}', '', '2019-10-01 22:20:32.755655', '2019-10-01 22:20:32.755704', '', 0.00, 'per_unit', 'usd', 'year', 1, 'Free', '\"\"', '', '\"\"', NULL, 'licensed', '', '', 1, 1);
INSERT INTO `djstripe_plan` VALUES (4, 'plan_sme01', 0, '2019-07-27 16:28:51.000000', '{}', NULL, '2019-10-01 22:20:32.755655', '2019-10-01 22:20:32.755704', '', 34.00, '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, 1, 1);

-- ----------------------------
-- Table structure for djstripe_product
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_product`;
CREATE TABLE `djstripe_product`  (
  `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `livemode` tinyint(1) NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `metadata` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `name` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `type` varchar(7) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `active` tinyint(1) NULL DEFAULT NULL,
  `attributes` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `caption` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deactivate_on` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `images` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `package_dimensions` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `shippable` tinyint(1) NULL DEFAULT NULL,
  `url` varchar(799) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `statement_descriptor` varchar(22) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `unit_label` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`djstripe_id`) USING BTREE,
  UNIQUE INDEX `stripe_id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of djstripe_product
-- ----------------------------
INSERT INTO `djstripe_product` VALUES (1, 'prod_FTKB77gmW6dLxG', 0, '2019-07-20 18:44:01.000000', '{}', '', '2019-10-01 22:20:32.730936', '2019-10-01 22:20:32.730986', 'Riskrate.me Subscription', 'service', 1, '[]', '', '[]', '[]', '\"\"', NULL, '', 'Riskrate.me Sub', '');

-- ----------------------------
-- Table structure for djstripe_refund
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_refund`;
CREATE TABLE `djstripe_refund`  (
  `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `livemode` tinyint(1) NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `metadata` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `amount` int(11) NOT NULL,
  `currency` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `failure_reason` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `reason` varchar(21) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `receipt_number` varchar(9) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `charge_id` bigint(20) NOT NULL,
  `balance_transaction_id` bigint(20) NULL DEFAULT NULL,
  `failure_balance_transaction_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`djstripe_id`) USING BTREE,
  UNIQUE INDEX `stripe_id`(`id`) USING BTREE,
  INDEX `djstripe_refund_charge_id_e7efd717_fk_djstripe_`(`charge_id`) USING BTREE,
  INDEX `djstripe_refund_balance_transaction__dec480cf_fk_djstripe_`(`balance_transaction_id`) USING BTREE,
  INDEX `djstripe_refund_failure_balance_tran_817ae640_fk_djstripe_`(`failure_balance_transaction_id`) USING BTREE,
  CONSTRAINT `djstripe_refund_balance_transaction__dec480cf_fk_djstripe_` FOREIGN KEY (`balance_transaction_id`) REFERENCES `djstripe_balancetransaction` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_refund_charge_id_e7efd717_fk_djstripe_` FOREIGN KEY (`charge_id`) REFERENCES `djstripe_charge` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_refund_failure_balance_tran_817ae640_fk_djstripe_` FOREIGN KEY (`failure_balance_transaction_id`) REFERENCES `djstripe_balancetransaction` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for djstripe_scheduledqueryrun
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_scheduledqueryrun`;
CREATE TABLE `djstripe_scheduledqueryrun`  (
  `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `livemode` tinyint(1) NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `metadata` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `data_load_time` datetime(6) NOT NULL,
  `error` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `result_available_until` datetime(6) NOT NULL,
  `sql` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` varchar(9) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `title` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `file_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`djstripe_id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `djstripe_scheduledqu_file_id_707bbc03_fk_djstripe_`(`file_id`) USING BTREE,
  CONSTRAINT `djstripe_scheduledqu_file_id_707bbc03_fk_djstripe_` FOREIGN KEY (`file_id`) REFERENCES `djstripe_fileupload` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for djstripe_session
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_session`;
CREATE TABLE `djstripe_session`  (
  `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `livemode` tinyint(1) NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `metadata` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `billing_address_collection` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cancel_url` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `client_reference_id` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `customer_email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `display_items` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `locale` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payment_method_types` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `submit_type` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `success_url` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `customer_id` bigint(20) NULL DEFAULT NULL,
  `payment_intent_id` bigint(20) NULL DEFAULT NULL,
  `subscription_id` bigint(20) NULL DEFAULT NULL,
  `mode` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`djstripe_id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `djstripe_session_customer_id_b4510dc3_fk_djstripe_`(`customer_id`) USING BTREE,
  INDEX `djstripe_session_payment_intent_id_cae83ebf_fk_djstripe_`(`payment_intent_id`) USING BTREE,
  INDEX `djstripe_session_subscription_id_29499760_fk_djstripe_`(`subscription_id`) USING BTREE,
  CONSTRAINT `djstripe_session_customer_id_b4510dc3_fk_djstripe_` FOREIGN KEY (`customer_id`) REFERENCES `djstripe_customer` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_session_payment_intent_id_cae83ebf_fk_djstripe_` FOREIGN KEY (`payment_intent_id`) REFERENCES `djstripe_paymentintent` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_session_subscription_id_29499760_fk_djstripe_` FOREIGN KEY (`subscription_id`) REFERENCES `djstripe_subscription` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for djstripe_setupintent
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_setupintent`;
CREATE TABLE `djstripe_setupintent`  (
  `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `livemode` tinyint(1) NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `metadata` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `application` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cancellation_reason` varchar(21) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `client_secret` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `last_setup_error` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `next_action` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `payment_method_types` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` varchar(23) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `usage` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `customer_id` bigint(20) NULL DEFAULT NULL,
  `on_behalf_of_id` bigint(20) NULL DEFAULT NULL,
  `payment_method_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`djstripe_id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `djstripe_setupintent_customer_id_6ff5bbcc_fk_djstripe_`(`customer_id`) USING BTREE,
  INDEX `djstripe_setupintent_on_behalf_of_id_1ea4d941_fk_djstripe_`(`on_behalf_of_id`) USING BTREE,
  INDEX `djstripe_setupintent_payment_method_id_0ca17b5e_fk_djstripe_`(`payment_method_id`) USING BTREE,
  CONSTRAINT `djstripe_setupintent_customer_id_6ff5bbcc_fk_djstripe_` FOREIGN KEY (`customer_id`) REFERENCES `djstripe_customer` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_setupintent_on_behalf_of_id_1ea4d941_fk_djstripe_` FOREIGN KEY (`on_behalf_of_id`) REFERENCES `djstripe_account` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_setupintent_payment_method_id_0ca17b5e_fk_djstripe_` FOREIGN KEY (`payment_method_id`) REFERENCES `djstripe_paymentmethod` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for djstripe_source
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_source`;
CREATE TABLE `djstripe_source`  (
  `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `livemode` tinyint(1) NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `metadata` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `amount` decimal(8, 2) NULL DEFAULT NULL,
  `client_secret` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `currency` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `flow` varchar(17) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `owner` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `statement_descriptor` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `type` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `usage` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `code_verification` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `receiver` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `redirect` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `source_data` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `customer_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`djstripe_id`) USING BTREE,
  UNIQUE INDEX `stripe_id`(`id`) USING BTREE,
  INDEX `djstripe_source_customer_id_4d678557_fk_djstripe_`(`customer_id`) USING BTREE,
  CONSTRAINT `djstripe_source_customer_id_4d678557_fk_djstripe_` FOREIGN KEY (`customer_id`) REFERENCES `djstripe_customer` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of djstripe_source
-- ----------------------------
INSERT INTO `djstripe_source` VALUES (1, 'src_1FRFEiJKWVx52XCjfp9TflKl', 0, '2019-10-08 09:44:08.000000', '{}', '', '2019-10-08 09:44:10.016268', '2019-10-08 09:44:10.016313', NULL, 'src_client_secret_Fx9XSa4TzfebTpZwBCe6IeIs', '', 'none', '{\"address\":{\"city\":null,\"country\":null,\"line1\":null,\"line2\":null,\"postal_code\":\"12345\",\"state\":null},\"email\":null,\"name\":null,\"phone\":null,\"verified_address\":null,\"verified_email\":null,\"verified_name\":null,\"verified_phone\":null}', '', 'chargeable', 'card', 'reusable', '\"\"', '\"\"', '\"\"', '{\"exp_month\":1,\"exp_year\":2020,\"last4\":\"4242\",\"country\":\"US\",\"brand\":\"Visa\",\"address_zip_check\":\"pass\",\"cvc_check\":\"pass\",\"funding\":\"credit\",\"fingerprint\":\"vxapVMMXludxSdcM\",\"three_d_secure\":\"optional\",\"name\":null,\"address_line1_check\":null,\"tokenization_method\":null,\"dynamic_last4\":null}', 5);

-- ----------------------------
-- Table structure for djstripe_subscription
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_subscription`;
CREATE TABLE `djstripe_subscription`  (
  `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `livemode` tinyint(1) NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `metadata` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `application_fee_percent` decimal(5, 2) NULL DEFAULT NULL,
  `billing` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `billing_cycle_anchor` datetime(6) NULL DEFAULT NULL,
  `cancel_at_period_end` tinyint(1) NOT NULL,
  `canceled_at` datetime(6) NULL DEFAULT NULL,
  `current_period_end` datetime(6) NOT NULL,
  `current_period_start` datetime(6) NOT NULL,
  `days_until_due` int(11) NULL DEFAULT NULL,
  `ended_at` datetime(6) NULL DEFAULT NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  `start` datetime(6) NOT NULL,
  `status` varchar(18) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tax_percent` decimal(5, 2) NULL DEFAULT NULL,
  `trial_end` datetime(6) NULL DEFAULT NULL,
  `trial_start` datetime(6) NULL DEFAULT NULL,
  `customer_id` bigint(20) NOT NULL,
  `plan_id` bigint(20) NULL DEFAULT NULL,
  `pending_setup_intent_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`djstripe_id`) USING BTREE,
  UNIQUE INDEX `stripe_id`(`id`) USING BTREE,
  INDEX `djstripe_subscriptio_customer_id_aff64ee5_fk_djstripe_`(`customer_id`) USING BTREE,
  INDEX `djstripe_subscriptio_plan_id_9129d5d5_fk_djstripe_`(`plan_id`) USING BTREE,
  INDEX `djstripe_subscriptio_pending_setup_intent_fe875ca5_fk_djstripe_`(`pending_setup_intent_id`) USING BTREE,
  CONSTRAINT `djstripe_subscriptio_customer_id_aff64ee5_fk_djstripe_` FOREIGN KEY (`customer_id`) REFERENCES `djstripe_customer` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_subscriptio_pending_setup_intent_fe875ca5_fk_djstripe_` FOREIGN KEY (`pending_setup_intent_id`) REFERENCES `djstripe_setupintent` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_subscriptio_plan_id_9129d5d5_fk_djstripe_` FOREIGN KEY (`plan_id`) REFERENCES `djstripe_plan` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of djstripe_subscription
-- ----------------------------
INSERT INTO `djstripe_subscription` VALUES (1, 'sub_FujA8nH4zRYj7v', 0, '2019-10-01 22:21:04.000000', '{}', '', '2019-10-01 22:21:04.698629', '2019-10-01 22:21:04.698674', NULL, 'charge_automatically', '2019-10-01 22:21:04.000000', 0, NULL, '2020-10-01 22:21:04.000000', '2019-10-01 22:21:04.000000', NULL, NULL, 1, '2019-10-01 22:21:04.000000', 'active', NULL, NULL, NULL, 1, 3, NULL);
INSERT INTO `djstripe_subscription` VALUES (2, 'sub_Fwmx9rwGbjdT8N', 0, '2019-10-07 10:23:24.000000', '{}', '', '2019-10-07 10:23:25.349227', '2019-10-09 09:04:54.004356', NULL, 'charge_automatically', '2019-10-07 10:23:24.000000', 0, NULL, '2020-10-07 10:23:24.000000', '2019-10-07 10:23:24.000000', NULL, NULL, 1, '2019-10-07 10:23:24.000000', 'active', NULL, NULL, NULL, 2, 3, NULL);
INSERT INTO `djstripe_subscription` VALUES (3, 'sub_FwqXId2drZz1EW', 0, '2019-10-07 14:06:09.000000', '{}', '', '2019-10-07 14:06:09.851861', '2019-10-07 14:06:09.851905', NULL, 'charge_automatically', '2019-10-07 14:06:09.000000', 0, NULL, '2020-10-07 14:06:09.000000', '2019-10-07 14:06:09.000000', NULL, NULL, 1, '2019-10-07 14:06:09.000000', 'active', NULL, NULL, NULL, 3, 3, NULL);
INSERT INTO `djstripe_subscription` VALUES (4, 'sub_Fx95QY5bQJcXA0', 0, '2019-10-08 09:15:50.000000', '{}', '', '2019-10-08 09:15:50.916059', '2019-10-08 09:15:50.916111', NULL, 'charge_automatically', '2019-10-08 09:15:50.000000', 0, NULL, '2020-10-08 09:15:50.000000', '2019-10-08 09:15:50.000000', NULL, NULL, 1, '2019-10-08 09:15:50.000000', 'active', NULL, NULL, NULL, 4, 3, NULL);
INSERT INTO `djstripe_subscription` VALUES (5, 'sub_Fx9W60NB3udKhU', 0, '2019-10-08 09:43:00.000000', '{}', '', '2019-10-08 09:43:01.484849', '2019-10-08 09:44:10.511612', NULL, 'charge_automatically', '2019-10-08 09:43:00.000000', 0, NULL, '2020-10-08 09:43:00.000000', '2019-10-08 09:43:00.000000', NULL, NULL, 1, '2019-10-08 09:44:10.000000', 'active', NULL, NULL, NULL, 5, 3, NULL);
INSERT INTO `djstripe_subscription` VALUES (6, 'sub_FykakKXUT120dQ', 0, '2019-10-12 16:05:14.000000', '{}', '', '2019-10-12 16:05:14.975901', '2019-10-12 16:05:14.975956', NULL, 'charge_automatically', '2019-10-12 16:05:14.000000', 0, NULL, '2020-10-12 16:05:14.000000', '2019-10-12 16:05:14.000000', NULL, NULL, 1, '2019-10-12 16:05:14.000000', 'active', NULL, NULL, NULL, 6, 3, NULL);
INSERT INTO `djstripe_subscription` VALUES (7, 'sub_GGK1GTQsUesbsv', 0, '2019-11-28 13:49:43.000000', '{}', '', '2019-11-28 13:49:45.947731', '2019-11-28 13:49:45.947858', NULL, 'charge_automatically', '2019-11-28 13:49:43.000000', 0, NULL, '2020-11-28 13:49:43.000000', '2019-11-28 13:49:43.000000', NULL, NULL, 1, '2019-11-28 13:49:43.000000', 'active', NULL, NULL, NULL, 7, 3, NULL);
INSERT INTO `djstripe_subscription` VALUES (8, 'sub_GGM5ZbHhMrbrGs', 0, '2019-11-28 15:58:16.000000', '{}', '', '2019-11-28 15:58:18.215670', '2019-11-28 15:58:18.215783', NULL, 'charge_automatically', '2019-11-28 15:58:16.000000', 0, NULL, '2020-11-28 15:58:16.000000', '2019-11-28 15:58:16.000000', NULL, NULL, 1, '2019-11-28 15:58:16.000000', 'active', NULL, NULL, NULL, 8, 3, NULL);
INSERT INTO `djstripe_subscription` VALUES (9, 'sub_GZ4U1pJcrPukoA', 0, '2020-01-17 15:03:10.000000', '{}', '', '2020-01-17 15:03:12.764752', '2020-01-17 15:03:12.764773', NULL, 'charge_automatically', '2020-01-17 15:03:10.000000', 0, NULL, '2021-01-17 15:03:10.000000', '2020-01-17 15:03:10.000000', NULL, NULL, 1, '2020-01-17 15:03:10.000000', 'active', NULL, NULL, NULL, 9, 3, NULL);

-- ----------------------------
-- Table structure for djstripe_subscriptionitem
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_subscriptionitem`;
CREATE TABLE `djstripe_subscriptionitem`  (
  `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `livemode` tinyint(1) NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `metadata` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `quantity` int(10) UNSIGNED NULL DEFAULT NULL,
  `plan_id` bigint(20) NOT NULL,
  `subscription_id` bigint(20) NOT NULL,
  PRIMARY KEY (`djstripe_id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `djstripe_subscriptio_plan_id_cc68cb43_fk_djstripe_`(`plan_id`) USING BTREE,
  INDEX `djstripe_subscriptio_subscription_id_992d9919_fk_djstripe_`(`subscription_id`) USING BTREE,
  CONSTRAINT `djstripe_subscriptio_plan_id_cc68cb43_fk_djstripe_` FOREIGN KEY (`plan_id`) REFERENCES `djstripe_plan` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_subscriptio_subscription_id_992d9919_fk_djstripe_` FOREIGN KEY (`subscription_id`) REFERENCES `djstripe_subscription` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of djstripe_subscriptionitem
-- ----------------------------
INSERT INTO `djstripe_subscriptionitem` VALUES (1, 'si_FujAkBxUVsoLZA', NULL, '2019-10-01 22:21:04.000000', '{}', '', '2019-10-01 22:21:04.713228', '2019-10-01 22:21:04.713272', 1, 3, 1);
INSERT INTO `djstripe_subscriptionitem` VALUES (2, 'si_FwmxnqZ7CEiHPl', NULL, '2019-10-07 10:23:25.000000', '{}', '', '2019-10-07 10:23:25.365621', '2019-10-09 09:04:54.007802', 1, 3, 2);
INSERT INTO `djstripe_subscriptionitem` VALUES (3, 'si_FwqXllwfnwh7Hl', NULL, '2019-10-07 14:06:09.000000', '{}', '', '2019-10-07 14:06:09.869257', '2019-10-07 14:06:09.869311', 1, 3, 3);
INSERT INTO `djstripe_subscriptionitem` VALUES (4, 'si_Fx95CjQhDHOFrS', NULL, '2019-10-08 09:15:50.000000', '{}', '', '2019-10-08 09:15:50.926795', '2019-10-08 09:15:50.926836', 1, 3, 4);
INSERT INTO `djstripe_subscriptionitem` VALUES (5, 'si_Fx9WACFxYsgOdc', NULL, '2019-10-08 09:43:01.000000', '{}', '', '2019-10-08 09:43:01.506701', '2019-10-08 09:43:01.507033', 1, 3, 5);
INSERT INTO `djstripe_subscriptionitem` VALUES (6, 'si_FykaoDaYQkGrf1', NULL, '2019-10-12 16:05:14.000000', '{}', '', '2019-10-12 16:05:14.987042', '2019-10-12 16:05:14.987084', 1, 3, 6);
INSERT INTO `djstripe_subscriptionitem` VALUES (7, 'si_GGK1kcrHRGUCuO', NULL, '2019-11-28 13:49:44.000000', '{}', '', '2019-11-28 13:49:45.997645', '2019-11-28 13:49:45.997740', 1, 3, 7);
INSERT INTO `djstripe_subscriptionitem` VALUES (8, 'si_GGM5uvwLOY0Rhc', NULL, '2019-11-28 15:58:17.000000', '{}', '', '2019-11-28 15:58:18.302062', '2019-11-28 15:58:18.302162', 1, 3, 8);
INSERT INTO `djstripe_subscriptionitem` VALUES (9, 'si_GZ4Ut3NLY0lIwe', NULL, '2020-01-17 15:03:11.000000', '{}', '', '2020-01-17 15:03:12.781209', '2020-01-17 15:03:12.781227', 1, 3, 9);

-- ----------------------------
-- Table structure for djstripe_transfer
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_transfer`;
CREATE TABLE `djstripe_transfer`  (
  `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `livemode` tinyint(1) NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `metadata` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `amount` decimal(8, 2) NOT NULL,
  `amount_reversed` decimal(8, 2) NULL DEFAULT NULL,
  `currency` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `destination` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `destination_payment` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `reversed` tinyint(1) NOT NULL,
  `source_transaction` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `source_type` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `transfer_group` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `balance_transaction_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`djstripe_id`) USING BTREE,
  UNIQUE INDEX `stripe_id`(`id`) USING BTREE,
  INDEX `djstripe_transfer_balance_transaction__b5b00270_fk_djstripe_`(`balance_transaction_id`) USING BTREE,
  CONSTRAINT `djstripe_transfer_balance_transaction__b5b00270_fk_djstripe_` FOREIGN KEY (`balance_transaction_id`) REFERENCES `djstripe_balancetransaction` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for djstripe_transferreversal
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_transferreversal`;
CREATE TABLE `djstripe_transferreversal`  (
  `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `livemode` tinyint(1) NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `metadata` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `amount` int(11) NOT NULL,
  `currency` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `balance_transaction_id` bigint(20) NULL DEFAULT NULL,
  `transfer_id` bigint(20) NOT NULL,
  PRIMARY KEY (`djstripe_id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `djstripe_transferrev_balance_transaction__5044f084_fk_djstripe_`(`balance_transaction_id`) USING BTREE,
  INDEX `djstripe_transferrev_transfer_id_8f250dd3_fk_djstripe_`(`transfer_id`) USING BTREE,
  CONSTRAINT `djstripe_transferrev_balance_transaction__5044f084_fk_djstripe_` FOREIGN KEY (`balance_transaction_id`) REFERENCES `djstripe_balancetransaction` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djstripe_transferrev_transfer_id_8f250dd3_fk_djstripe_` FOREIGN KEY (`transfer_id`) REFERENCES `djstripe_transfer` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for djstripe_upcominginvoice
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_upcominginvoice`;
CREATE TABLE `djstripe_upcominginvoice`  (
  `invoice_ptr_id` bigint(20) NOT NULL,
  PRIMARY KEY (`invoice_ptr_id`) USING BTREE,
  CONSTRAINT `djstripe_upcominginv_invoice_ptr_id_2d6ed50f_fk_djstripe_` FOREIGN KEY (`invoice_ptr_id`) REFERENCES `djstripe_invoice` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for djstripe_usagerecord
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_usagerecord`;
CREATE TABLE `djstripe_usagerecord`  (
  `djstripe_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `livemode` tinyint(1) NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `metadata` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `djstripe_created` datetime(6) NOT NULL,
  `djstripe_updated` datetime(6) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `subscription_item_id` bigint(20) NOT NULL,
  PRIMARY KEY (`djstripe_id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `djstripe_usagerecord_subscription_item_id_5a38e1e2_fk_djstripe_`(`subscription_item_id`) USING BTREE,
  CONSTRAINT `djstripe_usagerecord_subscription_item_id_5a38e1e2_fk_djstripe_` FOREIGN KEY (`subscription_item_id`) REFERENCES `djstripe_subscriptionitem` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for djstripe_webhookeventtrigger
-- ----------------------------
DROP TABLE IF EXISTS `djstripe_webhookeventtrigger`;
CREATE TABLE `djstripe_webhookeventtrigger`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `remote_ip` char(39) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `headers` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `body` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `valid` tinyint(1) NOT NULL,
  `processed` tinyint(1) NOT NULL,
  `exception` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `traceback` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `djstripe_version` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `event_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `djstripe_webhookeven_event_id_b2e08de6_fk_djstripe_`(`event_id`) USING BTREE,
  CONSTRAINT `djstripe_webhookeven_event_id_b2e08de6_fk_djstripe_` FOREIGN KEY (`event_id`) REFERENCES `djstripe_event` (`djstripe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for reports_company
-- ----------------------------
DROP TABLE IF EXISTS `reports_company`;
CREATE TABLE `reports_company`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `other_names` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `website` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sector_id` int(11) NULL DEFAULT NULL,
  `city` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `country` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `postal_code` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `region` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `street_1` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `street_2` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `reports_company_sector_id_9adfc52f_fk_reports_sector_id`(`sector_id`) USING BTREE,
  CONSTRAINT `reports_company_sector_id_9adfc52f_fk_reports_sector_id` FOREIGN KEY (`sector_id`) REFERENCES `reports_sector` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of reports_company
-- ----------------------------
INSERT INTO `reports_company` VALUES (1, 'Security Train Me', '', '', 1, '', '', '', '', '', '');
INSERT INTO `reports_company` VALUES (3, 'kadfire', '', '', 1, '', '', '', '', '', '');
INSERT INTO `reports_company` VALUES (6, 'JEC', '', '', 1, '', '', '', '', '', '');
INSERT INTO `reports_company` VALUES (7, 'Risk Rate Me', '', '', 1, '', '', '', '', '', '');
INSERT INTO `reports_company` VALUES (9, 'Equatorial Marine Fuel Management Services Pte Ltd', '', '', 1, '', '', '', '', '', '');
INSERT INTO `reports_company` VALUES (11, 'EZ-Link Pte Ltd', '', '', 1, '', '', '', '', '', '');
INSERT INTO `reports_company` VALUES (13, 'Alliance 21 Group', '', '', 1, '', '', '', '', '', '');
INSERT INTO `reports_company` VALUES (15, 'Security Train Me', '', 'https://securitytrain.me', NULL, '', '', '', '', '', '');
INSERT INTO `reports_company` VALUES (17, 'GRP Group Ltd', '', 'http://www.grpgroup.co.uk', 69, '', '', '', '', '', '');
INSERT INTO `reports_company` VALUES (19, 'MOM', '', '', 1, '', '', '', '', '', '');
INSERT INTO `reports_company` VALUES (21, 'DP', '', 'https://dp.com', NULL, '', '', '', '', '', '');
INSERT INTO `reports_company` VALUES (24, 'Design Format', '', '', 1, '', '', '', '', '', '');
INSERT INTO `reports_company` VALUES (26, 'Renesas Electronics Singapore Pt.e. Ltd.', '', '', 1, '', '', '', '', '', '');
INSERT INTO `reports_company` VALUES (28, 'Matex Holdings Pte Ltd', '', '', 1, '', '', '', '', '', '');
INSERT INTO `reports_company` VALUES (30, 'The Vatican', '', 'http://w2.vatican.va', NULL, '', '', '', '', '', '');
INSERT INTO `reports_company` VALUES (35, 'Google', '', 'https://google.com', NULL, '', '', '', '', '', '');
INSERT INTO `reports_company` VALUES (38, 'Acme', '', 'https://cartus.com', NULL, '', '', '', '', '', '');
INSERT INTO `reports_company` VALUES (41, 'RailPoint', '', '', 1, '', '', '', '', '', '');
INSERT INTO `reports_company` VALUES (43, 'The Metal Store', '', '', 1, '', '', '', '', '', '');
INSERT INTO `reports_company` VALUES (45, 'PLYMOUTH BRETHREN', '', '', 1, '', '', '', '', '', '');
INSERT INTO `reports_company` VALUES (47, 'European Consumer Centre for Services', '', '', 1, '', '', '', '', '', '');
INSERT INTO `reports_company` VALUES (49, 'Upwork', '', '', 1, '', '', '', '', '', '');
INSERT INTO `reports_company` VALUES (51, 'Vanify', '', '', 1, '', '', '', '', '', '');
INSERT INTO `reports_company` VALUES (53, 'Serverfault', '', '', 1, '', '', '', '', '', '');
INSERT INTO `reports_company` VALUES (56, 'Stack Exchange', '', '', 1, '', '', '', '', '', '');
INSERT INTO `reports_company` VALUES (58, 'Porn Hub', '', '', 1, '', '', '', '', '', '');
INSERT INTO `reports_company` VALUES (61, 'Xhamster', '', '', 1, '', '', '', '', '', '');
INSERT INTO `reports_company` VALUES (63, 'British Chambers of Commerce', '', '', 1, '', '', '', '', '', '');
INSERT INTO `reports_company` VALUES (64, 'Kadfire Ltd', '', 'http://www.kadfire.com', 68, '', '', '', '', '', '');
INSERT INTO `reports_company` VALUES (65, 'Sirva', '', 'http://www.sirva.com', 122, '', '', '', '', '', '');

-- ----------------------------
-- Table structure for reports_domain
-- ----------------------------
DROP TABLE IF EXISTS `reports_domain`;
CREATE TABLE `reports_domain`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tags` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `company_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `domain`(`domain`) USING BTREE,
  INDEX `reports_domain_company_id_9d7952a9_fk_reports_company_id`(`company_id`) USING BTREE,
  CONSTRAINT `reports_domain_company_id_9d7952a9_fk_reports_company_id` FOREIGN KEY (`company_id`) REFERENCES `reports_company` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of reports_domain
-- ----------------------------
INSERT INTO `reports_domain` VALUES (1, 'securitytrain.me', '', NULL);
INSERT INTO `reports_domain` VALUES (2, 'kadfire.com', '', 64);
INSERT INTO `reports_domain` VALUES (3, 'jec.com', '', 6);
INSERT INTO `reports_domain` VALUES (4, 'emf.com.sg', '', 9);
INSERT INTO `reports_domain` VALUES (5, 'ezlink.com.sg', '', 11);
INSERT INTO `reports_domain` VALUES (6, 'alex.world', '', NULL);
INSERT INTO `reports_domain` VALUES (7, 'grpgroup.co.uk', '', 17);
INSERT INTO `reports_domain` VALUES (8, 'mom.gov.sg', '', 19);
INSERT INTO `reports_domain` VALUES (9, 'dezignformat.com', '', NULL);
INSERT INTO `reports_domain` VALUES (10, 'renesas.com', '', NULL);
INSERT INTO `reports_domain` VALUES (11, 'matex.com.sg', '', NULL);
INSERT INTO `reports_domain` VALUES (12, 'vatican.va', '', NULL);
INSERT INTO `reports_domain` VALUES (13, 'google.com', '', NULL);
INSERT INTO `reports_domain` VALUES (14, 'cartus.com', '', NULL);
INSERT INTO `reports_domain` VALUES (15, 'railpoint.co.uk', '', NULL);
INSERT INTO `reports_domain` VALUES (16, 'themetalstore.co.uk', '', NULL);
INSERT INTO `reports_domain` VALUES (17, 'plymouthbrethrenchristianchurch.org', '', NULL);
INSERT INTO `reports_domain` VALUES (18, 'ukecc-services.net', '', NULL);
INSERT INTO `reports_domain` VALUES (19, 'upwork.com', '', 49);
INSERT INTO `reports_domain` VALUES (20, 'vanify.co.uk', '', 51);
INSERT INTO `reports_domain` VALUES (21, 'serverfault.com', '', NULL);
INSERT INTO `reports_domain` VALUES (22, 'stackexchange.com', '', 56);
INSERT INTO `reports_domain` VALUES (23, 'Pornhub.com', '', NULL);
INSERT INTO `reports_domain` VALUES (24, 'xhamster.com', '', 61);
INSERT INTO `reports_domain` VALUES (25, 'britishchambers.org.uk', '', 63);
INSERT INTO `reports_domain` VALUES (26, 'sirva.com', '', 65);
INSERT INTO `reports_domain` VALUES (27, 'akaraka.org.sg', '', NULL);
INSERT INTO `reports_domain` VALUES (28, 'example.com', '', NULL);

-- ----------------------------
-- Table structure for reports_riskreport
-- ----------------------------
DROP TABLE IF EXISTS `reports_riskreport`;
CREATE TABLE `reports_riskreport`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `generated_on` datetime(6) NOT NULL,
  `latest` tinyint(1) NOT NULL,
  `domain_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `reports_riskreport_domain_id_32e97038_fk_reports_domain_id`(`domain_id`) USING BTREE,
  CONSTRAINT `reports_riskreport_domain_id_32e97038_fk_reports_domain_id` FOREIGN KEY (`domain_id`) REFERENCES `reports_domain` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of reports_riskreport
-- ----------------------------
INSERT INTO `reports_riskreport` VALUES (1, '2019-10-06 14:25:25.804675', 1, 1);
INSERT INTO `reports_riskreport` VALUES (2, '2019-10-06 14:25:46.580915', 1, 2);
INSERT INTO `reports_riskreport` VALUES (3, '2019-10-06 14:26:10.953829', 1, 3);
INSERT INTO `reports_riskreport` VALUES (4, '2019-10-07 09:13:56.721562', 1, 4);
INSERT INTO `reports_riskreport` VALUES (5, '2019-10-07 09:14:36.547577', 1, 5);
INSERT INTO `reports_riskreport` VALUES (6, '2019-10-07 09:14:59.256396', 1, 6);
INSERT INTO `reports_riskreport` VALUES (7, '2019-10-07 10:46:18.875777', 1, 7);
INSERT INTO `reports_riskreport` VALUES (8, '2019-10-07 12:26:00.758537', 1, 8);
INSERT INTO `reports_riskreport` VALUES (9, '2019-10-08 08:31:09.805427', 1, 9);
INSERT INTO `reports_riskreport` VALUES (10, '2019-10-08 08:50:42.716780', 1, 10);
INSERT INTO `reports_riskreport` VALUES (11, '2019-10-08 08:58:51.653467', 1, 11);
INSERT INTO `reports_riskreport` VALUES (15, '2019-10-12 16:05:15.168463', 0, 14);
INSERT INTO `reports_riskreport` VALUES (16, '2019-10-14 13:21:43.228617', 1, 15);
INSERT INTO `reports_riskreport` VALUES (17, '2019-10-14 13:36:57.132759', 1, 16);
INSERT INTO `reports_riskreport` VALUES (18, '2019-10-15 08:46:16.645599', 1, 17);
INSERT INTO `reports_riskreport` VALUES (19, '2019-10-15 14:59:05.282582', 1, 18);
INSERT INTO `reports_riskreport` VALUES (20, '2019-10-16 12:00:12.456357', 1, 19);
INSERT INTO `reports_riskreport` VALUES (21, '2019-10-17 08:50:06.371953', 0, 20);
INSERT INTO `reports_riskreport` VALUES (22, '2019-10-17 09:05:20.306760', 1, 21);
INSERT INTO `reports_riskreport` VALUES (23, '2019-10-17 09:09:19.305052', 1, 22);
INSERT INTO `reports_riskreport` VALUES (24, '2019-10-20 19:34:21.570905', 1, 23);
INSERT INTO `reports_riskreport` VALUES (25, '2019-10-20 19:36:36.274022', 1, 24);
INSERT INTO `reports_riskreport` VALUES (26, '2019-10-22 09:44:11.555137', 1, 25);
INSERT INTO `reports_riskreport` VALUES (27, '2019-11-07 17:53:58.938830', 1, 20);
INSERT INTO `reports_riskreport` VALUES (28, '2019-11-07 19:03:12.817161', 1, 26);
INSERT INTO `reports_riskreport` VALUES (29, '2019-11-07 19:05:47.475654', 1, 14);
INSERT INTO `reports_riskreport` VALUES (30, '2019-11-08 18:26:21.752900', 1, 27);
INSERT INTO `reports_riskreport` VALUES (31, '2019-11-28 13:51:08.786794', 1, 28);

-- ----------------------------
-- Table structure for reports_scoreitem
-- ----------------------------
DROP TABLE IF EXISTS `reports_scoreitem`;
CREATE TABLE `reports_scoreitem`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `score` decimal(7, 4) NOT NULL,
  `rating` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `report_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `reports_scoreitem_report_id_6b59402e_fk_reports_riskreport_id`(`report_id`) USING BTREE,
  CONSTRAINT `reports_scoreitem_report_id_6b59402e_fk_reports_riskreport_id` FOREIGN KEY (`report_id`) REFERENCES `reports_riskreport` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 511 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of reports_scoreitem
-- ----------------------------
INSERT INTO `reports_scoreitem` VALUES (1, 'score_overall', 0.3000, 'E', 1);
INSERT INTO `reports_scoreitem` VALUES (2, 'score_email_security', 3.0000, 'A', 1);
INSERT INTO `reports_scoreitem` VALUES (3, 'score_web_security', 0.0000, 'F', 1);
INSERT INTO `reports_scoreitem` VALUES (4, 'score_web_application', 0.0000, 'F', 1);
INSERT INTO `reports_scoreitem` VALUES (5, 'score_infrastructure', 3.0000, 'A', 1);
INSERT INTO `reports_scoreitem` VALUES (6, 'score_spf', 1.5000, 'A', 1);
INSERT INTO `reports_scoreitem` VALUES (7, 'score_dkim', 0.0000, 'F', 1);
INSERT INTO `reports_scoreitem` VALUES (8, 'score_dmarc', 0.0000, 'F', 1);
INSERT INTO `reports_scoreitem` VALUES (9, 'score_mail_agents', 1.0000, 'A', 1);
INSERT INTO `reports_scoreitem` VALUES (10, 'score_dnssec', 0.0000, 'F', 1);
INSERT INTO `reports_scoreitem` VALUES (11, 'score_https', 0.0000, 'F', 1);
INSERT INTO `reports_scoreitem` VALUES (12, 'score_http_headers', 0.0571, 'F', 1);
INSERT INTO `reports_scoreitem` VALUES (13, 'score_http_cookies', 1.0000, 'A', 1);
INSERT INTO `reports_scoreitem` VALUES (14, 'score_reputation', 1.3000, 'A', 1);
INSERT INTO `reports_scoreitem` VALUES (15, 'score_ports', 0.0000, 'F', 1);
INSERT INTO `reports_scoreitem` VALUES (16, 'score_cves', 0.0000, 'F', 1);
INSERT INTO `reports_scoreitem` VALUES (17, 'score_leaks', 1.0000, 'A', 1);
INSERT INTO `reports_scoreitem` VALUES (18, 'score_overall', 0.4000, 'E', 2);
INSERT INTO `reports_scoreitem` VALUES (19, 'score_email_security', 3.0000, 'A', 2);
INSERT INTO `reports_scoreitem` VALUES (20, 'score_web_security', 0.0000, 'F', 2);
INSERT INTO `reports_scoreitem` VALUES (21, 'score_web_application', 0.0000, 'F', 2);
INSERT INTO `reports_scoreitem` VALUES (22, 'score_infrastructure', 5.0000, 'A', 2);
INSERT INTO `reports_scoreitem` VALUES (23, 'score_spf', 1.5000, 'A', 2);
INSERT INTO `reports_scoreitem` VALUES (24, 'score_dkim', 1.0000, 'A', 2);
INSERT INTO `reports_scoreitem` VALUES (25, 'score_dmarc', 0.0000, 'F', 2);
INSERT INTO `reports_scoreitem` VALUES (26, 'score_mail_agents', 0.0000, 'F', 2);
INSERT INTO `reports_scoreitem` VALUES (27, 'score_dnssec', 0.0000, 'F', 2);
INSERT INTO `reports_scoreitem` VALUES (28, 'score_https', 0.0000, 'F', 2);
INSERT INTO `reports_scoreitem` VALUES (29, 'score_http_headers', 0.0571, 'F', 2);
INSERT INTO `reports_scoreitem` VALUES (30, 'score_http_cookies', 1.0000, 'A', 2);
INSERT INTO `reports_scoreitem` VALUES (31, 'score_reputation', 1.0000, 'A', 2);
INSERT INTO `reports_scoreitem` VALUES (32, 'score_ports', 1.0000, 'A', 2);
INSERT INTO `reports_scoreitem` VALUES (33, 'score_cves', 1.0000, 'A', 2);
INSERT INTO `reports_scoreitem` VALUES (34, 'score_leaks', 0.0000, 'F', 2);
INSERT INTO `reports_scoreitem` VALUES (35, 'score_overall', 0.4000, 'E', 3);
INSERT INTO `reports_scoreitem` VALUES (36, 'score_email_security', 3.0000, 'A', 3);
INSERT INTO `reports_scoreitem` VALUES (37, 'score_web_security', 0.0000, 'F', 3);
INSERT INTO `reports_scoreitem` VALUES (38, 'score_web_application', 0.0000, 'F', 3);
INSERT INTO `reports_scoreitem` VALUES (39, 'score_infrastructure', 5.0000, 'A', 3);
INSERT INTO `reports_scoreitem` VALUES (40, 'score_spf', 0.0000, 'F', 3);
INSERT INTO `reports_scoreitem` VALUES (41, 'score_dkim', 1.0000, 'A', 3);
INSERT INTO `reports_scoreitem` VALUES (42, 'score_dmarc', 0.0000, 'F', 3);
INSERT INTO `reports_scoreitem` VALUES (43, 'score_mail_agents', 0.0000, 'F', 3);
INSERT INTO `reports_scoreitem` VALUES (44, 'score_dnssec', 0.0000, 'F', 3);
INSERT INTO `reports_scoreitem` VALUES (45, 'score_https', 0.0000, 'F', 3);
INSERT INTO `reports_scoreitem` VALUES (46, 'score_http_headers', 0.0571, 'F', 3);
INSERT INTO `reports_scoreitem` VALUES (47, 'score_http_cookies', 1.0000, 'A', 3);
INSERT INTO `reports_scoreitem` VALUES (48, 'score_reputation', 1.0000, 'A', 3);
INSERT INTO `reports_scoreitem` VALUES (49, 'score_ports', 1.0000, 'A', 3);
INSERT INTO `reports_scoreitem` VALUES (50, 'score_cves', 1.0000, 'A', 3);
INSERT INTO `reports_scoreitem` VALUES (51, 'score_leaks', 0.0000, 'F', 3);
INSERT INTO `reports_scoreitem` VALUES (52, 'score_overall', 0.3000, 'E', 4);
INSERT INTO `reports_scoreitem` VALUES (53, 'score_email_security', 3.0000, 'A', 4);
INSERT INTO `reports_scoreitem` VALUES (54, 'score_web_security', 0.0000, 'F', 4);
INSERT INTO `reports_scoreitem` VALUES (55, 'score_web_application', 0.0000, 'F', 4);
INSERT INTO `reports_scoreitem` VALUES (56, 'score_infrastructure', 3.0000, 'A', 4);
INSERT INTO `reports_scoreitem` VALUES (57, 'score_spf', 1.5000, 'A', 4);
INSERT INTO `reports_scoreitem` VALUES (58, 'score_dkim', 0.0000, 'F', 4);
INSERT INTO `reports_scoreitem` VALUES (59, 'score_dmarc', 0.0000, 'F', 4);
INSERT INTO `reports_scoreitem` VALUES (60, 'score_mail_agents', 1.0000, 'A', 4);
INSERT INTO `reports_scoreitem` VALUES (61, 'score_dnssec', 0.0000, 'F', 4);
INSERT INTO `reports_scoreitem` VALUES (62, 'score_https', 0.0000, 'F', 4);
INSERT INTO `reports_scoreitem` VALUES (63, 'score_http_headers', 0.0571, 'F', 4);
INSERT INTO `reports_scoreitem` VALUES (64, 'score_http_cookies', 0.0000, 'F', 4);
INSERT INTO `reports_scoreitem` VALUES (65, 'score_reputation', 1.0000, 'A', 4);
INSERT INTO `reports_scoreitem` VALUES (66, 'score_ports', 0.0000, 'F', 4);
INSERT INTO `reports_scoreitem` VALUES (67, 'score_cves', 1.0000, 'A', 4);
INSERT INTO `reports_scoreitem` VALUES (68, 'score_leaks', 0.0000, 'F', 4);
INSERT INTO `reports_scoreitem` VALUES (69, 'score_overall', 0.3000, 'E', 5);
INSERT INTO `reports_scoreitem` VALUES (70, 'score_email_security', 3.0000, 'A', 5);
INSERT INTO `reports_scoreitem` VALUES (71, 'score_web_security', 0.0000, 'F', 5);
INSERT INTO `reports_scoreitem` VALUES (72, 'score_web_application', 0.0000, 'F', 5);
INSERT INTO `reports_scoreitem` VALUES (73, 'score_infrastructure', 3.0000, 'A', 5);
INSERT INTO `reports_scoreitem` VALUES (74, 'score_spf', 1.5000, 'A', 5);
INSERT INTO `reports_scoreitem` VALUES (75, 'score_dkim', 1.0000, 'A', 5);
INSERT INTO `reports_scoreitem` VALUES (76, 'score_dmarc', 0.0000, 'F', 5);
INSERT INTO `reports_scoreitem` VALUES (77, 'score_mail_agents', 1.0000, 'A', 5);
INSERT INTO `reports_scoreitem` VALUES (78, 'score_dnssec', 0.0000, 'F', 5);
INSERT INTO `reports_scoreitem` VALUES (79, 'score_https', 0.0000, 'F', 5);
INSERT INTO `reports_scoreitem` VALUES (80, 'score_http_headers', 0.2571, 'E', 5);
INSERT INTO `reports_scoreitem` VALUES (81, 'score_http_cookies', 0.0000, 'F', 5);
INSERT INTO `reports_scoreitem` VALUES (82, 'score_reputation', 1.0000, 'A', 5);
INSERT INTO `reports_scoreitem` VALUES (83, 'score_ports', 0.0000, 'F', 5);
INSERT INTO `reports_scoreitem` VALUES (84, 'score_cves', 0.0000, 'F', 5);
INSERT INTO `reports_scoreitem` VALUES (85, 'score_leaks', 0.0000, 'F', 5);
INSERT INTO `reports_scoreitem` VALUES (86, 'score_overall', 0.1500, 'F', 6);
INSERT INTO `reports_scoreitem` VALUES (87, 'score_email_security', 0.0000, 'F', 6);
INSERT INTO `reports_scoreitem` VALUES (88, 'score_web_security', 0.0000, 'F', 6);
INSERT INTO `reports_scoreitem` VALUES (89, 'score_web_application', 0.0000, 'F', 6);
INSERT INTO `reports_scoreitem` VALUES (90, 'score_infrastructure', 3.0000, 'A', 6);
INSERT INTO `reports_scoreitem` VALUES (91, 'score_spf', 0.3000, 'E', 6);
INSERT INTO `reports_scoreitem` VALUES (92, 'score_dkim', 0.0000, 'F', 6);
INSERT INTO `reports_scoreitem` VALUES (93, 'score_dmarc', 0.0000, 'F', 6);
INSERT INTO `reports_scoreitem` VALUES (94, 'score_mail_agents', 1.0000, 'A', 6);
INSERT INTO `reports_scoreitem` VALUES (95, 'score_dnssec', 0.0000, 'F', 6);
INSERT INTO `reports_scoreitem` VALUES (96, 'score_https', 0.0000, 'F', 6);
INSERT INTO `reports_scoreitem` VALUES (97, 'score_http_headers', 0.4571, 'D', 6);
INSERT INTO `reports_scoreitem` VALUES (98, 'score_http_cookies', 0.0000, 'F', 6);
INSERT INTO `reports_scoreitem` VALUES (99, 'score_reputation', 1.3000, 'A', 6);
INSERT INTO `reports_scoreitem` VALUES (100, 'score_ports', 0.1000, 'F', 6);
INSERT INTO `reports_scoreitem` VALUES (101, 'score_cves', 1.0000, 'A', 6);
INSERT INTO `reports_scoreitem` VALUES (102, 'score_leaks', 1.0000, 'A', 6);
INSERT INTO `reports_scoreitem` VALUES (103, 'score_overall', 0.7000, 'B', 7);
INSERT INTO `reports_scoreitem` VALUES (104, 'score_email_security', 3.0000, 'A', 7);
INSERT INTO `reports_scoreitem` VALUES (105, 'score_web_security', 3.0000, 'A', 7);
INSERT INTO `reports_scoreitem` VALUES (106, 'score_web_application', 3.0000, 'A', 7);
INSERT INTO `reports_scoreitem` VALUES (107, 'score_infrastructure', 5.0000, 'A', 7);
INSERT INTO `reports_scoreitem` VALUES (108, 'score_spf', 1.5000, 'A', 7);
INSERT INTO `reports_scoreitem` VALUES (109, 'score_dkim', 1.0000, 'A', 7);
INSERT INTO `reports_scoreitem` VALUES (110, 'score_dmarc', 0.0000, 'F', 7);
INSERT INTO `reports_scoreitem` VALUES (111, 'score_mail_agents', 1.0000, 'A', 7);
INSERT INTO `reports_scoreitem` VALUES (112, 'score_dnssec', 0.0000, 'F', 7);
INSERT INTO `reports_scoreitem` VALUES (113, 'score_https', 1.0000, 'A', 7);
INSERT INTO `reports_scoreitem` VALUES (114, 'score_http_headers', 0.7571, 'B', 7);
INSERT INTO `reports_scoreitem` VALUES (115, 'score_http_cookies', 1.0000, 'A', 7);
INSERT INTO `reports_scoreitem` VALUES (116, 'score_reputation', 1.3000, 'A', 7);
INSERT INTO `reports_scoreitem` VALUES (117, 'score_ports', 1.0000, 'A', 7);
INSERT INTO `reports_scoreitem` VALUES (118, 'score_cves', 1.0000, 'A', 7);
INSERT INTO `reports_scoreitem` VALUES (119, 'score_leaks', 0.7000, 'B', 7);
INSERT INTO `reports_scoreitem` VALUES (120, 'score_overall', 0.6000, 'C', 8);
INSERT INTO `reports_scoreitem` VALUES (121, 'score_email_security', 3.0000, 'A', 8);
INSERT INTO `reports_scoreitem` VALUES (122, 'score_web_security', 3.0000, 'A', 8);
INSERT INTO `reports_scoreitem` VALUES (123, 'score_web_application', 3.0000, 'A', 8);
INSERT INTO `reports_scoreitem` VALUES (124, 'score_infrastructure', 3.0000, 'A', 8);
INSERT INTO `reports_scoreitem` VALUES (125, 'score_spf', 1.5000, 'A', 8);
INSERT INTO `reports_scoreitem` VALUES (126, 'score_dkim', 1.0000, 'A', 8);
INSERT INTO `reports_scoreitem` VALUES (127, 'score_dmarc', 0.0000, 'F', 8);
INSERT INTO `reports_scoreitem` VALUES (128, 'score_mail_agents', 1.0000, 'A', 8);
INSERT INTO `reports_scoreitem` VALUES (129, 'score_dnssec', 0.0000, 'F', 8);
INSERT INTO `reports_scoreitem` VALUES (130, 'score_https', 1.0000, 'A', 8);
INSERT INTO `reports_scoreitem` VALUES (131, 'score_http_headers', 0.6571, 'B', 8);
INSERT INTO `reports_scoreitem` VALUES (132, 'score_http_cookies', 0.0000, 'F', 8);
INSERT INTO `reports_scoreitem` VALUES (133, 'score_reputation', 1.3000, 'A', 8);
INSERT INTO `reports_scoreitem` VALUES (134, 'score_ports', 0.0000, 'F', 8);
INSERT INTO `reports_scoreitem` VALUES (135, 'score_cves', 1.0000, 'A', 8);
INSERT INTO `reports_scoreitem` VALUES (136, 'score_leaks', 0.0000, 'F', 8);
INSERT INTO `reports_scoreitem` VALUES (137, 'score_overall', 0.3000, 'E', 9);
INSERT INTO `reports_scoreitem` VALUES (138, 'score_email_security', 3.0000, 'A', 9);
INSERT INTO `reports_scoreitem` VALUES (139, 'score_web_security', 0.0000, 'F', 9);
INSERT INTO `reports_scoreitem` VALUES (140, 'score_web_application', 0.0000, 'F', 9);
INSERT INTO `reports_scoreitem` VALUES (141, 'score_infrastructure', 3.0000, 'A', 9);
INSERT INTO `reports_scoreitem` VALUES (142, 'score_spf', 1.5000, 'A', 9);
INSERT INTO `reports_scoreitem` VALUES (143, 'score_dkim', 1.0000, 'A', 9);
INSERT INTO `reports_scoreitem` VALUES (144, 'score_dmarc', 0.0000, 'F', 9);
INSERT INTO `reports_scoreitem` VALUES (145, 'score_mail_agents', 0.0000, 'F', 9);
INSERT INTO `reports_scoreitem` VALUES (146, 'score_dnssec', 0.0000, 'F', 9);
INSERT INTO `reports_scoreitem` VALUES (147, 'score_https', 0.0000, 'F', 9);
INSERT INTO `reports_scoreitem` VALUES (148, 'score_http_headers', 0.0571, 'F', 9);
INSERT INTO `reports_scoreitem` VALUES (149, 'score_http_cookies', 0.0000, 'F', 9);
INSERT INTO `reports_scoreitem` VALUES (150, 'score_reputation', 1.3000, 'A', 9);
INSERT INTO `reports_scoreitem` VALUES (151, 'score_ports', 0.0000, 'F', 9);
INSERT INTO `reports_scoreitem` VALUES (152, 'score_cves', 0.7000, 'B', 9);
INSERT INTO `reports_scoreitem` VALUES (153, 'score_leaks', 1.0000, 'A', 9);
INSERT INTO `reports_scoreitem` VALUES (154, 'score_overall', 0.4000, 'E', 10);
INSERT INTO `reports_scoreitem` VALUES (155, 'score_email_security', 3.0000, 'A', 10);
INSERT INTO `reports_scoreitem` VALUES (156, 'score_web_security', 0.0000, 'F', 10);
INSERT INTO `reports_scoreitem` VALUES (157, 'score_web_application', 0.0000, 'F', 10);
INSERT INTO `reports_scoreitem` VALUES (158, 'score_infrastructure', 5.0000, 'A', 10);
INSERT INTO `reports_scoreitem` VALUES (159, 'score_spf', 0.5000, 'D', 10);
INSERT INTO `reports_scoreitem` VALUES (160, 'score_dkim', 0.0000, 'F', 10);
INSERT INTO `reports_scoreitem` VALUES (161, 'score_dmarc', 0.0000, 'F', 10);
INSERT INTO `reports_scoreitem` VALUES (162, 'score_mail_agents', 1.0000, 'A', 10);
INSERT INTO `reports_scoreitem` VALUES (163, 'score_dnssec', 0.0000, 'F', 10);
INSERT INTO `reports_scoreitem` VALUES (164, 'score_https', 0.0000, 'F', 10);
INSERT INTO `reports_scoreitem` VALUES (165, 'score_http_headers', 0.0571, 'F', 10);
INSERT INTO `reports_scoreitem` VALUES (166, 'score_http_cookies', 0.0000, 'F', 10);
INSERT INTO `reports_scoreitem` VALUES (167, 'score_reputation', 1.3000, 'A', 10);
INSERT INTO `reports_scoreitem` VALUES (168, 'score_ports', 1.0000, 'A', 10);
INSERT INTO `reports_scoreitem` VALUES (169, 'score_cves', 0.7000, 'B', 10);
INSERT INTO `reports_scoreitem` VALUES (170, 'score_leaks', 0.0000, 'F', 10);
INSERT INTO `reports_scoreitem` VALUES (171, 'score_overall', 0.1500, 'F', 11);
INSERT INTO `reports_scoreitem` VALUES (172, 'score_email_security', 0.0000, 'F', 11);
INSERT INTO `reports_scoreitem` VALUES (173, 'score_web_security', 0.0000, 'F', 11);
INSERT INTO `reports_scoreitem` VALUES (174, 'score_web_application', 0.0000, 'F', 11);
INSERT INTO `reports_scoreitem` VALUES (175, 'score_infrastructure', 3.0000, 'A', 11);
INSERT INTO `reports_scoreitem` VALUES (176, 'score_spf', 0.0000, 'F', 11);
INSERT INTO `reports_scoreitem` VALUES (177, 'score_dkim', 0.0000, 'F', 11);
INSERT INTO `reports_scoreitem` VALUES (178, 'score_dmarc', 0.0000, 'F', 11);
INSERT INTO `reports_scoreitem` VALUES (179, 'score_mail_agents', 1.0000, 'A', 11);
INSERT INTO `reports_scoreitem` VALUES (180, 'score_dnssec', 0.0000, 'F', 11);
INSERT INTO `reports_scoreitem` VALUES (181, 'score_https', 0.0000, 'F', 11);
INSERT INTO `reports_scoreitem` VALUES (182, 'score_http_headers', 0.0571, 'F', 11);
INSERT INTO `reports_scoreitem` VALUES (183, 'score_http_cookies', 1.0000, 'A', 11);
INSERT INTO `reports_scoreitem` VALUES (184, 'score_reputation', 1.3000, 'A', 11);
INSERT INTO `reports_scoreitem` VALUES (185, 'score_ports', 0.0000, 'F', 11);
INSERT INTO `reports_scoreitem` VALUES (186, 'score_cves', 1.0000, 'A', 11);
INSERT INTO `reports_scoreitem` VALUES (187, 'score_leaks', 0.0000, 'F', 11);
INSERT INTO `reports_scoreitem` VALUES (239, 'score_overall', 0.5500, 'C', 15);
INSERT INTO `reports_scoreitem` VALUES (240, 'score_email_security', 3.0000, 'A', 15);
INSERT INTO `reports_scoreitem` VALUES (241, 'score_web_security', 0.0000, 'F', 15);
INSERT INTO `reports_scoreitem` VALUES (242, 'score_web_application', 3.0000, 'A', 15);
INSERT INTO `reports_scoreitem` VALUES (243, 'score_infrastructure', 5.0000, 'A', 15);
INSERT INTO `reports_scoreitem` VALUES (244, 'score_spf', 1.5000, 'A', 15);
INSERT INTO `reports_scoreitem` VALUES (245, 'score_dkim', 1.0000, 'A', 15);
INSERT INTO `reports_scoreitem` VALUES (246, 'score_dmarc', 0.0000, 'F', 15);
INSERT INTO `reports_scoreitem` VALUES (247, 'score_mail_agents', 2.0000, 'A', 15);
INSERT INTO `reports_scoreitem` VALUES (248, 'score_dnssec', 0.0000, 'F', 15);
INSERT INTO `reports_scoreitem` VALUES (249, 'score_https', 0.0000, 'F', 15);
INSERT INTO `reports_scoreitem` VALUES (250, 'score_http_headers', 0.2571, 'E', 15);
INSERT INTO `reports_scoreitem` VALUES (251, 'score_http_cookies', 0.6000, 'C', 15);
INSERT INTO `reports_scoreitem` VALUES (252, 'score_reputation', 1.3000, 'A', 15);
INSERT INTO `reports_scoreitem` VALUES (253, 'score_ports', 1.0000, 'A', 15);
INSERT INTO `reports_scoreitem` VALUES (254, 'score_cves', 0.0000, 'F', 15);
INSERT INTO `reports_scoreitem` VALUES (255, 'score_leaks', 0.0000, 'F', 15);
INSERT INTO `reports_scoreitem` VALUES (256, 'score_overall', 0.4000, 'E', 16);
INSERT INTO `reports_scoreitem` VALUES (257, 'score_email_security', 3.0000, 'A', 16);
INSERT INTO `reports_scoreitem` VALUES (258, 'score_web_security', 0.0000, 'F', 16);
INSERT INTO `reports_scoreitem` VALUES (259, 'score_web_application', 0.0000, 'F', 16);
INSERT INTO `reports_scoreitem` VALUES (260, 'score_infrastructure', 5.0000, 'A', 16);
INSERT INTO `reports_scoreitem` VALUES (261, 'score_spf', 1.5000, 'A', 16);
INSERT INTO `reports_scoreitem` VALUES (262, 'score_dkim', 0.0000, 'F', 16);
INSERT INTO `reports_scoreitem` VALUES (263, 'score_dmarc', 0.0000, 'F', 16);
INSERT INTO `reports_scoreitem` VALUES (264, 'score_mail_agents', 0.5000, 'D', 16);
INSERT INTO `reports_scoreitem` VALUES (265, 'score_dnssec', 0.0000, 'F', 16);
INSERT INTO `reports_scoreitem` VALUES (266, 'score_https', 0.0000, 'F', 16);
INSERT INTO `reports_scoreitem` VALUES (267, 'score_http_headers', 0.0571, 'F', 16);
INSERT INTO `reports_scoreitem` VALUES (268, 'score_http_cookies', 1.0000, 'A', 16);
INSERT INTO `reports_scoreitem` VALUES (269, 'score_reputation', 1.3000, 'A', 16);
INSERT INTO `reports_scoreitem` VALUES (270, 'score_ports', 0.5500, 'C', 16);
INSERT INTO `reports_scoreitem` VALUES (271, 'score_cves', 1.0000, 'A', 16);
INSERT INTO `reports_scoreitem` VALUES (272, 'score_leaks', 1.0000, 'A', 16);
INSERT INTO `reports_scoreitem` VALUES (273, 'score_overall', 0.5500, 'C', 17);
INSERT INTO `reports_scoreitem` VALUES (274, 'score_email_security', 3.0000, 'A', 17);
INSERT INTO `reports_scoreitem` VALUES (275, 'score_web_security', 0.0000, 'F', 17);
INSERT INTO `reports_scoreitem` VALUES (276, 'score_web_application', 3.0000, 'A', 17);
INSERT INTO `reports_scoreitem` VALUES (277, 'score_infrastructure', 5.0000, 'A', 17);
INSERT INTO `reports_scoreitem` VALUES (278, 'score_spf', 1.5000, 'A', 17);
INSERT INTO `reports_scoreitem` VALUES (279, 'score_dkim', 0.0000, 'F', 17);
INSERT INTO `reports_scoreitem` VALUES (280, 'score_dmarc', 0.0000, 'F', 17);
INSERT INTO `reports_scoreitem` VALUES (281, 'score_mail_agents', 2.0000, 'A', 17);
INSERT INTO `reports_scoreitem` VALUES (282, 'score_dnssec', 0.0000, 'F', 17);
INSERT INTO `reports_scoreitem` VALUES (283, 'score_https', 0.0000, 'F', 17);
INSERT INTO `reports_scoreitem` VALUES (284, 'score_http_headers', 0.6571, 'B', 17);
INSERT INTO `reports_scoreitem` VALUES (285, 'score_http_cookies', 0.2000, 'F', 17);
INSERT INTO `reports_scoreitem` VALUES (286, 'score_reputation', 1.3000, 'A', 17);
INSERT INTO `reports_scoreitem` VALUES (287, 'score_ports', 1.0000, 'A', 17);
INSERT INTO `reports_scoreitem` VALUES (288, 'score_cves', 1.0000, 'A', 17);
INSERT INTO `reports_scoreitem` VALUES (289, 'score_leaks', 0.6000, 'C', 17);
INSERT INTO `reports_scoreitem` VALUES (290, 'score_overall', 0.3000, 'E', 18);
INSERT INTO `reports_scoreitem` VALUES (291, 'score_email_security', 3.0000, 'A', 18);
INSERT INTO `reports_scoreitem` VALUES (292, 'score_web_security', 0.0000, 'F', 18);
INSERT INTO `reports_scoreitem` VALUES (293, 'score_web_application', 0.0000, 'F', 18);
INSERT INTO `reports_scoreitem` VALUES (294, 'score_infrastructure', 3.0000, 'A', 18);
INSERT INTO `reports_scoreitem` VALUES (295, 'score_spf', 1.5000, 'A', 18);
INSERT INTO `reports_scoreitem` VALUES (296, 'score_dkim', 0.0000, 'F', 18);
INSERT INTO `reports_scoreitem` VALUES (297, 'score_dmarc', 0.0000, 'F', 18);
INSERT INTO `reports_scoreitem` VALUES (298, 'score_mail_agents', 2.0000, 'A', 18);
INSERT INTO `reports_scoreitem` VALUES (299, 'score_dnssec', 0.0000, 'F', 18);
INSERT INTO `reports_scoreitem` VALUES (300, 'score_https', 0.0000, 'F', 18);
INSERT INTO `reports_scoreitem` VALUES (301, 'score_http_headers', 0.4571, 'D', 18);
INSERT INTO `reports_scoreitem` VALUES (302, 'score_http_cookies', 0.0000, 'F', 18);
INSERT INTO `reports_scoreitem` VALUES (303, 'score_reputation', 1.3000, 'A', 18);
INSERT INTO `reports_scoreitem` VALUES (304, 'score_ports', 0.0000, 'F', 18);
INSERT INTO `reports_scoreitem` VALUES (305, 'score_cves', 0.0000, 'F', 18);
INSERT INTO `reports_scoreitem` VALUES (306, 'score_leaks', 0.5000, 'D', 18);
INSERT INTO `reports_scoreitem` VALUES (307, 'score_overall', 0.1500, 'F', 19);
INSERT INTO `reports_scoreitem` VALUES (308, 'score_email_security', 0.0000, 'F', 19);
INSERT INTO `reports_scoreitem` VALUES (309, 'score_web_security', 0.0000, 'F', 19);
INSERT INTO `reports_scoreitem` VALUES (310, 'score_web_application', 0.0000, 'F', 19);
INSERT INTO `reports_scoreitem` VALUES (311, 'score_infrastructure', 3.0000, 'A', 19);
INSERT INTO `reports_scoreitem` VALUES (312, 'score_spf', 0.0000, 'F', 19);
INSERT INTO `reports_scoreitem` VALUES (313, 'score_dkim', 0.0000, 'F', 19);
INSERT INTO `reports_scoreitem` VALUES (314, 'score_dmarc', 0.0000, 'F', 19);
INSERT INTO `reports_scoreitem` VALUES (315, 'score_mail_agents', 0.0000, 'F', 19);
INSERT INTO `reports_scoreitem` VALUES (316, 'score_dnssec', 0.0000, 'F', 19);
INSERT INTO `reports_scoreitem` VALUES (317, 'score_https', 0.0000, 'F', 19);
INSERT INTO `reports_scoreitem` VALUES (318, 'score_http_headers', 0.0571, 'F', 19);
INSERT INTO `reports_scoreitem` VALUES (319, 'score_http_cookies', 1.0000, 'A', 19);
INSERT INTO `reports_scoreitem` VALUES (320, 'score_reputation', 1.3000, 'A', 19);
INSERT INTO `reports_scoreitem` VALUES (321, 'score_ports', 0.0000, 'F', 19);
INSERT INTO `reports_scoreitem` VALUES (322, 'score_cves', 0.0000, 'F', 19);
INSERT INTO `reports_scoreitem` VALUES (323, 'score_leaks', 1.0000, 'A', 19);
INSERT INTO `reports_scoreitem` VALUES (324, 'score_overall', 0.8000, 'B', 20);
INSERT INTO `reports_scoreitem` VALUES (325, 'score_email_security', 5.0000, 'A', 20);
INSERT INTO `reports_scoreitem` VALUES (326, 'score_web_security', 3.0000, 'A', 20);
INSERT INTO `reports_scoreitem` VALUES (327, 'score_web_application', 3.0000, 'A', 20);
INSERT INTO `reports_scoreitem` VALUES (328, 'score_infrastructure', 5.0000, 'A', 20);
INSERT INTO `reports_scoreitem` VALUES (329, 'score_spf', 1.5000, 'A', 20);
INSERT INTO `reports_scoreitem` VALUES (330, 'score_dkim', 1.0000, 'A', 20);
INSERT INTO `reports_scoreitem` VALUES (331, 'score_dmarc', 1.0000, 'A', 20);
INSERT INTO `reports_scoreitem` VALUES (332, 'score_mail_agents', 2.0000, 'A', 20);
INSERT INTO `reports_scoreitem` VALUES (333, 'score_dnssec', 0.0000, 'F', 20);
INSERT INTO `reports_scoreitem` VALUES (334, 'score_https', 1.0000, 'A', 20);
INSERT INTO `reports_scoreitem` VALUES (335, 'score_http_headers', 0.8000, 'B', 20);
INSERT INTO `reports_scoreitem` VALUES (336, 'score_http_cookies', 0.0000, 'F', 20);
INSERT INTO `reports_scoreitem` VALUES (337, 'score_reputation', 1.3000, 'A', 20);
INSERT INTO `reports_scoreitem` VALUES (338, 'score_ports', 0.4000, 'E', 20);
INSERT INTO `reports_scoreitem` VALUES (339, 'score_cves', 1.0000, 'A', 20);
INSERT INTO `reports_scoreitem` VALUES (340, 'score_leaks', 0.0000, 'F', 20);
INSERT INTO `reports_scoreitem` VALUES (341, 'score_overall', 0.3000, 'E', 21);
INSERT INTO `reports_scoreitem` VALUES (342, 'score_email_security', 3.0000, 'A', 21);
INSERT INTO `reports_scoreitem` VALUES (343, 'score_web_security', 0.0000, 'F', 21);
INSERT INTO `reports_scoreitem` VALUES (344, 'score_web_application', 0.0000, 'F', 21);
INSERT INTO `reports_scoreitem` VALUES (345, 'score_infrastructure', 3.0000, 'A', 21);
INSERT INTO `reports_scoreitem` VALUES (346, 'score_spf', 0.0000, 'F', 21);
INSERT INTO `reports_scoreitem` VALUES (347, 'score_dkim', 1.0000, 'A', 21);
INSERT INTO `reports_scoreitem` VALUES (348, 'score_dmarc', 0.0000, 'F', 21);
INSERT INTO `reports_scoreitem` VALUES (349, 'score_mail_agents', 2.0000, 'A', 21);
INSERT INTO `reports_scoreitem` VALUES (350, 'score_dnssec', 0.0000, 'F', 21);
INSERT INTO `reports_scoreitem` VALUES (351, 'score_https', 0.0000, 'F', 21);
INSERT INTO `reports_scoreitem` VALUES (352, 'score_http_headers', 0.2000, 'F', 21);
INSERT INTO `reports_scoreitem` VALUES (353, 'score_http_cookies', 0.0000, 'F', 21);
INSERT INTO `reports_scoreitem` VALUES (354, 'score_reputation', 1.3000, 'A', 21);
INSERT INTO `reports_scoreitem` VALUES (355, 'score_ports', 0.0000, 'F', 21);
INSERT INTO `reports_scoreitem` VALUES (356, 'score_cves', 1.0000, 'A', 21);
INSERT INTO `reports_scoreitem` VALUES (357, 'score_leaks', 1.0000, 'A', 21);
INSERT INTO `reports_scoreitem` VALUES (358, 'score_overall', 0.4000, 'E', 22);
INSERT INTO `reports_scoreitem` VALUES (359, 'score_email_security', 3.0000, 'A', 22);
INSERT INTO `reports_scoreitem` VALUES (360, 'score_web_security', 0.0000, 'F', 22);
INSERT INTO `reports_scoreitem` VALUES (361, 'score_web_application', 0.0000, 'F', 22);
INSERT INTO `reports_scoreitem` VALUES (362, 'score_infrastructure', 5.0000, 'A', 22);
INSERT INTO `reports_scoreitem` VALUES (363, 'score_spf', 1.5000, 'A', 22);
INSERT INTO `reports_scoreitem` VALUES (364, 'score_dkim', 1.0000, 'A', 22);
INSERT INTO `reports_scoreitem` VALUES (365, 'score_dmarc', 0.0000, 'F', 22);
INSERT INTO `reports_scoreitem` VALUES (366, 'score_mail_agents', 0.0000, 'F', 22);
INSERT INTO `reports_scoreitem` VALUES (367, 'score_dnssec', 0.0000, 'F', 22);
INSERT INTO `reports_scoreitem` VALUES (368, 'score_https', 0.0000, 'F', 22);
INSERT INTO `reports_scoreitem` VALUES (369, 'score_http_headers', 0.5000, 'D', 22);
INSERT INTO `reports_scoreitem` VALUES (370, 'score_http_cookies', 0.0000, 'F', 22);
INSERT INTO `reports_scoreitem` VALUES (371, 'score_reputation', 1.0000, 'A', 22);
INSERT INTO `reports_scoreitem` VALUES (372, 'score_ports', 1.0000, 'A', 22);
INSERT INTO `reports_scoreitem` VALUES (373, 'score_cves', 1.0000, 'A', 22);
INSERT INTO `reports_scoreitem` VALUES (374, 'score_leaks', 0.8000, 'B', 22);
INSERT INTO `reports_scoreitem` VALUES (375, 'score_overall', 0.5000, 'D', 23);
INSERT INTO `reports_scoreitem` VALUES (376, 'score_email_security', 5.0000, 'A', 23);
INSERT INTO `reports_scoreitem` VALUES (377, 'score_web_security', 0.0000, 'F', 23);
INSERT INTO `reports_scoreitem` VALUES (378, 'score_web_application', 0.0000, 'F', 23);
INSERT INTO `reports_scoreitem` VALUES (379, 'score_infrastructure', 5.0000, 'A', 23);
INSERT INTO `reports_scoreitem` VALUES (380, 'score_spf', 1.5000, 'A', 23);
INSERT INTO `reports_scoreitem` VALUES (381, 'score_dkim', 1.0000, 'A', 23);
INSERT INTO `reports_scoreitem` VALUES (382, 'score_dmarc', 1.0000, 'A', 23);
INSERT INTO `reports_scoreitem` VALUES (383, 'score_mail_agents', 2.0000, 'A', 23);
INSERT INTO `reports_scoreitem` VALUES (384, 'score_dnssec', 0.0000, 'F', 23);
INSERT INTO `reports_scoreitem` VALUES (385, 'score_https', 0.0000, 'F', 23);
INSERT INTO `reports_scoreitem` VALUES (386, 'score_http_headers', 0.4000, 'E', 23);
INSERT INTO `reports_scoreitem` VALUES (387, 'score_http_cookies', 0.0000, 'F', 23);
INSERT INTO `reports_scoreitem` VALUES (388, 'score_reputation', 1.0000, 'A', 23);
INSERT INTO `reports_scoreitem` VALUES (389, 'score_ports', 1.0000, 'A', 23);
INSERT INTO `reports_scoreitem` VALUES (390, 'score_cves', 1.0000, 'A', 23);
INSERT INTO `reports_scoreitem` VALUES (391, 'score_leaks', 0.0000, 'F', 23);
INSERT INTO `reports_scoreitem` VALUES (392, 'score_overall', 0.5500, 'C', 25);
INSERT INTO `reports_scoreitem` VALUES (393, 'score_email_security', 3.0000, 'A', 25);
INSERT INTO `reports_scoreitem` VALUES (394, 'score_web_security', 3.0000, 'A', 25);
INSERT INTO `reports_scoreitem` VALUES (395, 'score_web_application', 0.0000, 'F', 25);
INSERT INTO `reports_scoreitem` VALUES (396, 'score_infrastructure', 5.0000, 'A', 25);
INSERT INTO `reports_scoreitem` VALUES (397, 'score_spf', 1.5000, 'A', 25);
INSERT INTO `reports_scoreitem` VALUES (398, 'score_dkim', 1.0000, 'A', 25);
INSERT INTO `reports_scoreitem` VALUES (399, 'score_dmarc', 0.0000, 'F', 25);
INSERT INTO `reports_scoreitem` VALUES (400, 'score_mail_agents', 2.0000, 'A', 25);
INSERT INTO `reports_scoreitem` VALUES (401, 'score_dnssec', 0.0000, 'F', 25);
INSERT INTO `reports_scoreitem` VALUES (402, 'score_https', 0.5000, 'D', 25);
INSERT INTO `reports_scoreitem` VALUES (403, 'score_http_headers', 0.2000, 'F', 25);
INSERT INTO `reports_scoreitem` VALUES (404, 'score_http_cookies', 0.0000, 'F', 25);
INSERT INTO `reports_scoreitem` VALUES (405, 'score_reputation', 1.3000, 'A', 25);
INSERT INTO `reports_scoreitem` VALUES (406, 'score_ports', 1.0000, 'A', 25);
INSERT INTO `reports_scoreitem` VALUES (407, 'score_cves', 1.0000, 'A', 25);
INSERT INTO `reports_scoreitem` VALUES (408, 'score_leaks', 0.0000, 'F', 25);
INSERT INTO `reports_scoreitem` VALUES (409, 'score_overall', 0.4500, 'D', 26);
INSERT INTO `reports_scoreitem` VALUES (410, 'score_email_security', 3.0000, 'A', 26);
INSERT INTO `reports_scoreitem` VALUES (411, 'score_web_security', 0.0000, 'F', 26);
INSERT INTO `reports_scoreitem` VALUES (412, 'score_web_application', 3.0000, 'A', 26);
INSERT INTO `reports_scoreitem` VALUES (413, 'score_infrastructure', 3.0000, 'A', 26);
INSERT INTO `reports_scoreitem` VALUES (414, 'score_spf', 1.5000, 'A', 26);
INSERT INTO `reports_scoreitem` VALUES (415, 'score_dkim', 1.0000, 'A', 26);
INSERT INTO `reports_scoreitem` VALUES (416, 'score_dmarc', 0.0000, 'F', 26);
INSERT INTO `reports_scoreitem` VALUES (417, 'score_mail_agents', 2.0000, 'A', 26);
INSERT INTO `reports_scoreitem` VALUES (418, 'score_dnssec', 0.0000, 'F', 26);
INSERT INTO `reports_scoreitem` VALUES (419, 'score_https', 0.0000, 'F', 26);
INSERT INTO `reports_scoreitem` VALUES (420, 'score_http_headers', 0.6000, 'C', 26);
INSERT INTO `reports_scoreitem` VALUES (421, 'score_http_cookies', 0.0000, 'F', 26);
INSERT INTO `reports_scoreitem` VALUES (422, 'score_reputation', 1.3000, 'A', 26);
INSERT INTO `reports_scoreitem` VALUES (423, 'score_ports', 0.2500, 'F', 26);
INSERT INTO `reports_scoreitem` VALUES (424, 'score_cves', 1.0000, 'A', 26);
INSERT INTO `reports_scoreitem` VALUES (425, 'score_leaks', 0.0000, 'F', 26);
INSERT INTO `reports_scoreitem` VALUES (426, 'score_overall', 0.2500, 'E', 27);
INSERT INTO `reports_scoreitem` VALUES (427, 'score_email_security', 0.0000, 'F', 27);
INSERT INTO `reports_scoreitem` VALUES (428, 'score_web_security', 0.0000, 'F', 27);
INSERT INTO `reports_scoreitem` VALUES (429, 'score_web_application', 0.0000, 'F', 27);
INSERT INTO `reports_scoreitem` VALUES (430, 'score_infrastructure', 5.0000, 'A', 27);
INSERT INTO `reports_scoreitem` VALUES (431, 'score_spf', 0.0000, 'F', 27);
INSERT INTO `reports_scoreitem` VALUES (432, 'score_dkim', 1.0000, 'A', 27);
INSERT INTO `reports_scoreitem` VALUES (433, 'score_dmarc', 0.0000, 'F', 27);
INSERT INTO `reports_scoreitem` VALUES (434, 'score_mail_agents', 2.0000, 'A', 27);
INSERT INTO `reports_scoreitem` VALUES (435, 'score_dnssec', 0.0000, 'F', 27);
INSERT INTO `reports_scoreitem` VALUES (436, 'score_https', 0.0000, 'F', 27);
INSERT INTO `reports_scoreitem` VALUES (437, 'score_http_headers', 0.2000, 'E', 27);
INSERT INTO `reports_scoreitem` VALUES (438, 'score_http_cookies', 0.0000, 'F', 27);
INSERT INTO `reports_scoreitem` VALUES (439, 'score_reputation', 1.3000, 'A', 27);
INSERT INTO `reports_scoreitem` VALUES (440, 'score_ports', 0.0000, 'F', 27);
INSERT INTO `reports_scoreitem` VALUES (441, 'score_cves', 0.0000, 'F', 27);
INSERT INTO `reports_scoreitem` VALUES (442, 'score_leaks', 1.0000, 'A', 27);
INSERT INTO `reports_scoreitem` VALUES (443, 'score_overall', 0.7000, 'C', 28);
INSERT INTO `reports_scoreitem` VALUES (444, 'score_email_security', 2.0000, 'A', 28);
INSERT INTO `reports_scoreitem` VALUES (445, 'score_web_security', 5.0000, 'A', 28);
INSERT INTO `reports_scoreitem` VALUES (446, 'score_web_application', 2.0000, 'A', 28);
INSERT INTO `reports_scoreitem` VALUES (447, 'score_infrastructure', 5.0000, 'A', 28);
INSERT INTO `reports_scoreitem` VALUES (448, 'score_spf', 1.5000, 'A', 28);
INSERT INTO `reports_scoreitem` VALUES (449, 'score_dkim', 1.0000, 'A', 28);
INSERT INTO `reports_scoreitem` VALUES (450, 'score_dmarc', 0.0000, 'F', 28);
INSERT INTO `reports_scoreitem` VALUES (451, 'score_mail_agents', 2.0000, 'A', 28);
INSERT INTO `reports_scoreitem` VALUES (452, 'score_dnssec', 0.0000, 'F', 28);
INSERT INTO `reports_scoreitem` VALUES (453, 'score_https', 1.0000, 'A', 28);
INSERT INTO `reports_scoreitem` VALUES (454, 'score_http_headers', 0.6000, 'C', 28);
INSERT INTO `reports_scoreitem` VALUES (455, 'score_http_cookies', 1.0000, 'A', 28);
INSERT INTO `reports_scoreitem` VALUES (456, 'score_reputation', 1.3000, 'A', 28);
INSERT INTO `reports_scoreitem` VALUES (457, 'score_ports', 1.0000, 'A', 28);
INSERT INTO `reports_scoreitem` VALUES (458, 'score_cves', 1.0000, 'A', 28);
INSERT INTO `reports_scoreitem` VALUES (459, 'score_leaks', 0.0000, 'F', 28);
INSERT INTO `reports_scoreitem` VALUES (460, 'score_overall', 0.4500, 'D', 29);
INSERT INTO `reports_scoreitem` VALUES (461, 'score_email_security', 2.0000, 'A', 29);
INSERT INTO `reports_scoreitem` VALUES (462, 'score_web_security', 0.0000, 'F', 29);
INSERT INTO `reports_scoreitem` VALUES (463, 'score_web_application', 2.0000, 'A', 29);
INSERT INTO `reports_scoreitem` VALUES (464, 'score_infrastructure', 5.0000, 'A', 29);
INSERT INTO `reports_scoreitem` VALUES (465, 'score_spf', 1.5000, 'A', 29);
INSERT INTO `reports_scoreitem` VALUES (466, 'score_dkim', 1.0000, 'A', 29);
INSERT INTO `reports_scoreitem` VALUES (467, 'score_dmarc', 0.0000, 'F', 29);
INSERT INTO `reports_scoreitem` VALUES (468, 'score_mail_agents', 2.0000, 'A', 29);
INSERT INTO `reports_scoreitem` VALUES (469, 'score_dnssec', 0.0000, 'F', 29);
INSERT INTO `reports_scoreitem` VALUES (470, 'score_https', 0.0000, 'F', 29);
INSERT INTO `reports_scoreitem` VALUES (471, 'score_http_headers', 0.4000, 'D', 29);
INSERT INTO `reports_scoreitem` VALUES (472, 'score_http_cookies', 0.6000, 'C', 29);
INSERT INTO `reports_scoreitem` VALUES (473, 'score_reputation', 1.3000, 'A', 29);
INSERT INTO `reports_scoreitem` VALUES (474, 'score_ports', 1.0000, 'A', 29);
INSERT INTO `reports_scoreitem` VALUES (475, 'score_cves', 0.0000, 'F', 29);
INSERT INTO `reports_scoreitem` VALUES (476, 'score_leaks', 0.0000, 'F', 29);
INSERT INTO `reports_scoreitem` VALUES (477, 'score_overall', 0.2500, 'E', 30);
INSERT INTO `reports_scoreitem` VALUES (478, 'score_email_security', 0.0000, 'F', 30);
INSERT INTO `reports_scoreitem` VALUES (479, 'score_web_security', 0.0000, 'F', 30);
INSERT INTO `reports_scoreitem` VALUES (480, 'score_web_application', 0.0000, 'F', 30);
INSERT INTO `reports_scoreitem` VALUES (481, 'score_infrastructure', 5.0000, 'A', 30);
INSERT INTO `reports_scoreitem` VALUES (482, 'score_spf', 0.5000, 'D', 30);
INSERT INTO `reports_scoreitem` VALUES (483, 'score_dkim', 0.0000, 'F', 30);
INSERT INTO `reports_scoreitem` VALUES (484, 'score_dmarc', 0.0000, 'F', 30);
INSERT INTO `reports_scoreitem` VALUES (485, 'score_mail_agents', 2.0000, 'A', 30);
INSERT INTO `reports_scoreitem` VALUES (486, 'score_dnssec', 0.0000, 'F', 30);
INSERT INTO `reports_scoreitem` VALUES (487, 'score_https', 0.0000, 'F', 30);
INSERT INTO `reports_scoreitem` VALUES (488, 'score_http_headers', 0.2000, 'E', 30);
INSERT INTO `reports_scoreitem` VALUES (489, 'score_http_cookies', 0.0000, 'F', 30);
INSERT INTO `reports_scoreitem` VALUES (490, 'score_reputation', 1.3000, 'A', 30);
INSERT INTO `reports_scoreitem` VALUES (491, 'score_ports', 0.0000, 'F', 30);
INSERT INTO `reports_scoreitem` VALUES (492, 'score_cves', 0.0000, 'F', 30);
INSERT INTO `reports_scoreitem` VALUES (493, 'score_leaks', 0.6000, 'C', 30);
INSERT INTO `reports_scoreitem` VALUES (494, 'score_overall', 0.1000, 'F', 31);
INSERT INTO `reports_scoreitem` VALUES (495, 'score_email_security', 2.0000, 'A', 31);
INSERT INTO `reports_scoreitem` VALUES (496, 'score_web_security', 0.0000, 'F', 31);
INSERT INTO `reports_scoreitem` VALUES (497, 'score_web_application', 0.0000, 'F', 31);
INSERT INTO `reports_scoreitem` VALUES (498, 'score_infrastructure', 0.0000, 'F', 31);
INSERT INTO `reports_scoreitem` VALUES (499, 'score_spf', 1.5000, 'A', 31);
INSERT INTO `reports_scoreitem` VALUES (500, 'score_dkim', 0.0000, 'F', 31);
INSERT INTO `reports_scoreitem` VALUES (501, 'score_dmarc', 0.0000, 'F', 31);
INSERT INTO `reports_scoreitem` VALUES (502, 'score_mail_agents', 0.0000, 'F', 31);
INSERT INTO `reports_scoreitem` VALUES (503, 'score_dnssec', 0.0000, 'F', 31);
INSERT INTO `reports_scoreitem` VALUES (504, 'score_https', 0.0000, 'F', 31);
INSERT INTO `reports_scoreitem` VALUES (505, 'score_http_headers', 0.2000, 'E', 31);
INSERT INTO `reports_scoreitem` VALUES (506, 'score_http_cookies', 1.0000, 'A', 31);
INSERT INTO `reports_scoreitem` VALUES (507, 'score_reputation', 0.0000, 'F', 31);
INSERT INTO `reports_scoreitem` VALUES (508, 'score_ports', 1.0000, 'A', 31);
INSERT INTO `reports_scoreitem` VALUES (509, 'score_cves', 1.0000, 'A', 31);
INSERT INTO `reports_scoreitem` VALUES (510, 'score_leaks', 0.0000, 'F', 31);

-- ----------------------------
-- Table structure for reports_sector
-- ----------------------------
DROP TABLE IF EXISTS `reports_sector`;
CREATE TABLE `reports_sector`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(96) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 145 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of reports_sector
-- ----------------------------
INSERT INTO `reports_sector` VALUES (1, 'NA', 'Not Available');
INSERT INTO `reports_sector` VALUES (2, 'ACC', 'Accounting');
INSERT INTO `reports_sector` VALUES (3, 'ADE', 'Aerospace and Defense');
INSERT INTO `reports_sector` VALUES (4, 'AGR', 'Agriculture');
INSERT INTO `reports_sector` VALUES (5, 'AIR', 'Airlines');
INSERT INTO `reports_sector` VALUES (6, 'ALM', 'Alternative Medicine');
INSERT INTO `reports_sector` VALUES (7, 'ANI', 'Animation');
INSERT INTO `reports_sector` VALUES (8, 'APF', 'Apparel and Footwear');
INSERT INTO `reports_sector` VALUES (9, 'ARC', 'Architecture');
INSERT INTO `reports_sector` VALUES (10, 'ART', 'Arts');
INSERT INTO `reports_sector` VALUES (11, 'ACR', 'Arts and Crafts');
INSERT INTO `reports_sector` VALUES (12, 'AMG', 'Asset Management');
INSERT INTO `reports_sector` VALUES (13, 'AUD', 'Audio');
INSERT INTO `reports_sector` VALUES (14, 'ATM', 'Automation');
INSERT INTO `reports_sector` VALUES (15, 'AUTO', 'Automotive');
INSERT INTO `reports_sector` VALUES (16, 'BANK', 'Banking and Mortgages');
INSERT INTO `reports_sector` VALUES (17, 'BEV', 'Beverages');
INSERT INTO `reports_sector` VALUES (18, 'BIO', 'Biotechnology');
INSERT INTO `reports_sector` VALUES (19, 'BRO', 'Broadcasting');
INSERT INTO `reports_sector` VALUES (20, 'BMAT', 'Building Materials');
INSERT INTO `reports_sector` VALUES (21, 'BSUP', 'Business Supplies');
INSERT INTO `reports_sector` VALUES (22, 'CHE', 'Chemicals');
INSERT INTO `reports_sector` VALUES (23, 'CIV', 'Civil Engineering');
INSERT INTO `reports_sector` VALUES (24, 'CLOUD', 'Cloud Services');
INSERT INTO `reports_sector` VALUES (25, 'COMM', 'Communications');
INSERT INTO `reports_sector` VALUES (26, 'CHARD', 'Computer Hardware');
INSERT INTO `reports_sector` VALUES (27, 'CON', 'Construction');
INSERT INTO `reports_sector` VALUES (28, 'CCS', 'Construction Contractors and Services');
INSERT INTO `reports_sector` VALUES (29, 'CPS', 'Consulting and Professional Services');
INSERT INTO `reports_sector` VALUES (30, 'CDI', 'Consumer Discretionary');
INSERT INTO `reports_sector` VALUES (31, 'CELE', 'Consumer Electronics');
INSERT INTO `reports_sector` VALUES (32, 'CGOOD', 'Consumer Goods');
INSERT INTO `reports_sector` VALUES (33, 'CSA', 'Consumer Staples');
INSERT INTO `reports_sector` VALUES (34, 'CORP', 'Corporate and Business');
INSERT INTO `reports_sector` VALUES (35, 'COSM', 'Cosmetics');
INSERT INTO `reports_sector` VALUES (36, 'DSIGN', 'Design');
INSERT INTO `reports_sector` VALUES (37, 'ECOM', 'E-Commerce and Marketplaces');
INSERT INTO `reports_sector` VALUES (38, 'LEARN', 'E-Learning');
INSERT INTO `reports_sector` VALUES (39, 'EDU', 'Education');
INSERT INTO `reports_sector` VALUES (40, 'ELCT', 'Electrical');
INSERT INTO `reports_sector` VALUES (41, 'ENE', 'Energy');
INSERT INTO `reports_sector` VALUES (42, 'ENERU', 'Energy and Utilities');
INSERT INTO `reports_sector` VALUES (43, 'ENTR', 'Entertainment and Recreation');
INSERT INTO `reports_sector` VALUES (44, 'EVENT', 'Events');
INSERT INTO `reports_sector` VALUES (45, 'EYE', 'Eyewear');
INSERT INTO `reports_sector` VALUES (46, 'FAC', 'Facilities');
INSERT INTO `reports_sector` VALUES (47, 'FAMS', 'Family Services');
INSERT INTO `reports_sector` VALUES (48, 'FIN', 'Finance');
INSERT INTO `reports_sector` VALUES (49, 'FSVC', 'Financial Services');
INSERT INTO `reports_sector` VALUES (50, 'FART', 'Fine Art');
INSERT INTO `reports_sector` VALUES (51, 'FIRE', 'Firearms');
INSERT INTO `reports_sector` VALUES (52, 'FISH', 'Fishery');
INSERT INTO `reports_sector` VALUES (53, 'FOOD', 'Food');
INSERT INTO `reports_sector` VALUES (54, 'FPROD', 'Food Production');
INSERT INTO `reports_sector` VALUES (55, 'FORUM', 'Forums');
INSERT INTO `reports_sector` VALUES (56, 'FUND', 'Fundraising');
INSERT INTO `reports_sector` VALUES (57, 'GAMB', 'Gambling and Casinos');
INSERT INTO `reports_sector` VALUES (58, 'GOV', 'Government');
INSERT INTO `reports_sector` VALUES (59, 'GTRAN', 'Ground Transportation');
INSERT INTO `reports_sector` VALUES (60, 'HWELL', 'Health and Wellness');
INSERT INTO `reports_sector` VALUES (61, 'HCARE', 'Health Care');
INSERT INTO `reports_sector` VALUES (62, 'HEDU', 'Higher Education');
INSERT INTO `reports_sector` VALUES (63, 'FURN', 'Home and Furniture');
INSERT INTO `reports_sector` VALUES (64, 'HIMPR', 'Home Improvement');
INSERT INTO `reports_sector` VALUES (65, 'HR', 'Human Resources');
INSERT INTO `reports_sector` VALUES (66, 'IMEX', 'Import and Export');
INSERT INTO `reports_sector` VALUES (67, 'INMA', 'Industrials and Manufacturing');
INSERT INTO `reports_sector` VALUES (68, 'ITS', 'Information Technology and Services');
INSERT INTO `reports_sector` VALUES (69, 'INS', 'Insurance');
INSERT INTO `reports_sector` VALUES (70, 'INTR', 'International Relations');
INSERT INTO `reports_sector` VALUES (71, 'ITRAD', 'International Trade');
INSERT INTO `reports_sector` VALUES (72, 'INET', 'Internet');
INSERT INTO `reports_sector` VALUES (73, 'INV', 'Investment');
INSERT INTO `reports_sector` VALUES (74, 'INVBK', 'Investment Banking');
INSERT INTO `reports_sector` VALUES (75, 'INVMG', 'Investment Management');
INSERT INTO `reports_sector` VALUES (76, 'JWL', 'Jewelry, Watches and Luxury Goods');
INSERT INTO `reports_sector` VALUES (77, 'JUST', 'Judiciary');
INSERT INTO `reports_sector` VALUES (78, 'LAW', 'Law Enforcement');
INSERT INTO `reports_sector` VALUES (79, 'LEGAL', 'Legal Services');
INSERT INTO `reports_sector` VALUES (80, 'LIB', 'Libraries');
INSERT INTO `reports_sector` VALUES (81, 'MACH', 'Machinery');
INSERT INTO `reports_sector` VALUES (82, 'MAR', 'Maritime');
INSERT INTO `reports_sector` VALUES (83, 'MKTR', 'Market Research');
INSERT INTO `reports_sector` VALUES (84, 'MKTA', 'Marketing and Advertising');
INSERT INTO `reports_sector` VALUES (85, 'MENG', 'Mechanical Engineering');
INSERT INTO `reports_sector` VALUES (86, 'MEDIA', 'Media');
INSERT INTO `reports_sector` VALUES (87, 'MED', 'Medicine');
INSERT INTO `reports_sector` VALUES (88, 'MIL', 'Military');
INSERT INTO `reports_sector` VALUES (89, 'MINE', 'Mining and Metals');
INSERT INTO `reports_sector` VALUES (90, 'MTV', 'Movies and TV');
INSERT INTO `reports_sector` VALUES (91, 'MUSE', 'Museums');
INSERT INTO `reports_sector` VALUES (92, 'MUSIC', 'Music');
INSERT INTO `reports_sector` VALUES (93, 'NANO', 'Nanotechnology');
INSERT INTO `reports_sector` VALUES (94, 'NET', 'Networking');
INSERT INTO `reports_sector` VALUES (95, 'NGO', 'Non-Profit and Philanthropy');
INSERT INTO `reports_sector` VALUES (96, 'GAS', 'Oil and Gas');
INSERT INTO `reports_sector` VALUES (97, 'OUTS', 'Outsourcing');
INSERT INTO `reports_sector` VALUES (98, 'PACK', 'Packaging and Containers');
INSERT INTO `reports_sector` VALUES (99, 'PAPER', 'Paper Goods');
INSERT INTO `reports_sector` VALUES (100, 'PAY', 'Payments');
INSERT INTO `reports_sector` VALUES (101, 'PART', 'Performing Arts');
INSERT INTO `reports_sector` VALUES (102, 'PHARM', 'Pharmaceuticals');
INSERT INTO `reports_sector` VALUES (103, 'PHA', 'Pharmacy');
INSERT INTO `reports_sector` VALUES (104, 'PHOTO', 'Photography');
INSERT INTO `reports_sector` VALUES (105, 'PLA', 'Plastics');
INSERT INTO `reports_sector` VALUES (106, 'PLUM', 'Plumbing');
INSERT INTO `reports_sector` VALUES (107, 'POL', 'Political Organization');
INSERT INTO `reports_sector` VALUES (108, 'PORN', 'Pornography');
INSERT INTO `reports_sector` VALUES (109, 'PEDU', 'Primary and Secondary Education');
INSERT INTO `reports_sector` VALUES (110, 'PRINT', 'Printing');
INSERT INTO `reports_sector` VALUES (111, 'PR', 'Public Relations');
INSERT INTO `reports_sector` VALUES (112, 'PUB', 'Publishing');
INSERT INTO `reports_sector` VALUES (113, 'RAN', 'Ranching');
INSERT INTO `reports_sector` VALUES (114, 'REALE', 'Real Estate');
INSERT INTO `reports_sector` VALUES (115, 'REL', 'Religion');
INSERT INTO `reports_sector` VALUES (116, 'RENER', 'Renewables and Environment');
INSERT INTO `reports_sector` VALUES (117, 'RESTO', 'Restaurants');
INSERT INTO `reports_sector` VALUES (118, 'RET', 'Retail');
INSERT INTO `reports_sector` VALUES (119, 'SAN', 'Sanitization Services');
INSERT INTO `reports_sector` VALUES (120, 'SCI', 'Scientific and Academic Research');
INSERT INTO `reports_sector` VALUES (121, 'SEC', 'Security');
INSERT INTO `reports_sector` VALUES (122, 'SVCS', 'Services');
INSERT INTO `reports_sector` VALUES (123, 'SHIP', 'Shipbuilding');
INSERT INTO `reports_sector` VALUES (124, 'SHILO', 'Shipping and Logistics');
INSERT INTO `reports_sector` VALUES (125, 'SOC', 'Society');
INSERT INTO `reports_sector` VALUES (126, 'SPORT', 'Sporting Goods');
INSERT INTO `reports_sector` VALUES (127, 'SPOFI', 'Sports and Fitness');
INSERT INTO `reports_sector` VALUES (128, 'STORE', 'Stores');
INSERT INTO `reports_sector` VALUES (129, 'TAL', 'Talent Agencies');
INSERT INTO `reports_sector` VALUES (130, 'TECH', 'Technology');
INSERT INTO `reports_sector` VALUES (131, 'TELCO', 'Telecommunications');
INSERT INTO `reports_sector` VALUES (132, 'TEXT', 'Textiles');
INSERT INTO `reports_sector` VALUES (133, 'TOBAC', 'Tobacco');
INSERT INTO `reports_sector` VALUES (134, 'TOOL', 'Tools');
INSERT INTO `reports_sector` VALUES (135, 'TRANS', 'Translation');
INSERT INTO `reports_sector` VALUES (136, 'TSPOR', 'Transportation');
INSERT INTO `reports_sector` VALUES (137, 'TRAVE', 'Travel and Leisure');
INSERT INTO `reports_sector` VALUES (138, 'UTI', 'Utilities');
INSERT INTO `reports_sector` VALUES (139, 'VCAP', 'Venture Capital');
INSERT INTO `reports_sector` VALUES (140, 'VET', 'Veterinary');
INSERT INTO `reports_sector` VALUES (141, 'VIDEG', 'Video Games');
INSERT INTO `reports_sector` VALUES (142, 'WAREH', 'Warehousing');
INSERT INTO `reports_sector` VALUES (143, 'WEB', 'Web Services and Apps');
INSERT INTO `reports_sector` VALUES (144, 'WSALE', 'Wholesale');

-- ----------------------------
-- Table structure for reports_testdefinition
-- ----------------------------
DROP TABLE IF EXISTS `reports_testdefinition`;
CREATE TABLE `reports_testdefinition`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `category` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keywords` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `weight` decimal(7, 4) NOT NULL,
  `passing_score` decimal(7, 4) NOT NULL,
  `failing_score` decimal(7, 4) NOT NULL,
  `information_only` tinyint(1) NOT NULL,
  `score_failed` decimal(7, 4) NOT NULL,
  `score_partial` decimal(7, 4) NOT NULL,
  `score_success` decimal(7, 4) NOT NULL,
  `score_error` decimal(7, 4) NOT NULL,
  `score_na` decimal(7, 4) NOT NULL,
  `message_failed` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `message_partial` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `message_success` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `message_error` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `message_na` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `label`(`label`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of reports_testdefinition
-- ----------------------------
INSERT INTO `reports_testdefinition` VALUES (1, 'spfrecordcount', 'Single SPF Exists', 'This test verifies if more than one SPF records exists for your domain.', 'email_security', 'email,dns,spf', 1.0000, 0.0000, -1.0000, 0, -1.0000, 0.0000, 0.0000, 0.0000, 0.0000, 'No SPF record is defined for your domain.\r\n</br></br>\r\nSPF is an email authentication method designed to detect forged sender addresses in emails (email spoofing), a technique often used in phishing and email spam.\r\n</br></br>\r\nSPF allows the receiver to check that an email claiming to come from a specific domain comes from an IP address authorised by that domain\'s administrators. The list of authorised sending hosts and IP addresses for a domain is published in the DNS records for that domain.', 'More than one (1) SPF record is defined for your domain. Having multiple records by definition of the RFCs should result in a permanent error.</br></br>Multiple SPF records are easily resolved by merging the records into a single statement.', 'A single SPF record is defined for your domain.', 'This test needs manual review.', 'The result of this test is not available.');
INSERT INTO `reports_testdefinition` VALUES (2, 'spfsyntaxisvalid', 'SPF Record Syntax', 'This test validate the syntax of your SPF record.', 'email_security', 'email,dns,spf', 1.0000, 0.0000, -1.0000, 0, -1.0000, 0.0000, 0.0000, 0.0000, 0.0000, 'The syntax of your SPF record is invalid.  Review your SPF record and ensure it conforms to RFC specifications.', 'Minor issues were found in the syntax of your SPF record.', 'The syntax of your SPF record is valid.', '', '');
INSERT INTO `reports_testdefinition` VALUES (3, 'spfrecordnottoopermissive', 'SPF Record Policy', 'Verifies if the record restricts usage of the domain by using the proper qualifier for \'all\'.', 'email_security', 'email,dns,spf', 1.0000, 0.0000, -1.0000, 0, -1.0000, -0.5000, 0.0000, 0.0000, 0.0000, 'Your SPF record is too permissive. An SPF record can be overly permissive is if you terminate your SPF record in “+all”. This essentially causes your record to include the entire Internet as permitted to send mail on your behalf. </br></br>The record should terminate with \"~all\" or \"-all\".', 'Your SPF record is too permissive.', 'Your SPF record prevents unrestricted use of the domain.', '', '');
INSERT INTO `reports_testdefinition` VALUES (4, 'spfvalidlookupcount', 'SPF Valid Lookup Count', 'This test verifies that the number of lookup mechanisms does not exceed 10.', 'email_security', 'email,dns,spf', 1.0000, 0.0000, -1.0000, 0, -1.0000, 0.0000, 0.0000, 0.0000, 0.0000, 'The SPF records uses less than ten (10) lookup mechanisms. it is against RFC specifications to cause more than ten DNS look-ups in your record. This limit is designed to prevent denial of service attacks and infinite DNS loops. If you have more than ten lookups in your record, a permanent error could be returned during the SPF authentication process.', '', 'The SPF records uses less than ten (10) lookup mechanisms.', '', '');
INSERT INTO `reports_testdefinition` VALUES (5, 'spfvoidlookupscount', 'Void Lookups Count', 'Verifies if the count of void lookups is below or equal to 2.', 'email_security', 'email,dns,spf', 1.0000, 0.0000, -1.0000, 0, -0.5000, 0.0000, 0.0000, 0.0000, 0.0000, 'The count of void lookups is greater than 2. This  refers to DNS lookups which either return an empty response (NOERROR with no answers) or an NXDOMAIN response. This is a separate count from the 10 DNS lookup overall count.\r\n</br></br>SPF implementations SHOULD limit \"void lookups\" to two, exceeding the limit produces a \"permerror\" result.', '', 'The count of void lookups is below or equal to 2.', '', '');
INSERT INTO `reports_testdefinition` VALUES (6, 'spfrecordnotdeprecatedcheck', 'Not using deprecated SPF records', 'This test verifies the SPF records uses a deprecated record type.', 'email_security', 'email,dns,spf', 1.0000, 0.0000, -0.1000, 0, -0.2000, 0.0000, 0.0000, 0.0000, 0.0000, 'Update your SPF record to use TXT records instead of SPF records. </br></br>\r\nThe use of alternative DNS RR types that was formerly supported during the experimental phase of SPF was discontinued in 2014. SPF records must now only be published as a DNS TXT (type 16) Resource Records.', '', 'Your SPF record is using the the proper TXT record type.', '', '');
INSERT INTO `reports_testdefinition` VALUES (7, 'spfrecorddontuseptr', 'Avoidance of the PTR Mechanism', 'Verifies if the record makes use of the PTR mechanism.', 'email_security', 'email,dns,spf', 0.5000, 0.5000, 0.0000, 0, 0.5000, 0.0000, 1.0000, 0.0000, 0.0000, 'The record uses the PTR mechanism.', '', 'The record does not use the PTR mechanism.', '', '');
INSERT INTO `reports_testdefinition` VALUES (8, 'spfrecordexpectedterminator', 'Standard SPF Record Termination', 'Confirms that the record ends with the \'all\' mechanism.', 'email_security', 'email,dns,spf', 1.0000, 0.0000, -0.1000, 0, -0.2000, 0.0000, 0.0000, 0.0000, 0.0000, 'Some data was found following the \'all\' mechanism. Data after the \"all\" tag will be ignored by mail servers.', 'Some data was found following the \'all\' mechanism. Data after the \"all\" tag will be ignored by mail servers.', 'There is no trailing data after the \'all\' mechanism.', '', '');
INSERT INTO `reports_testdefinition` VALUES (9, 'dkimrecordsexisttest', 'DKIM Record', 'Attempts to confirm the existence of one or more DKIM records.', 'email_security', 'email,dns,dkim', 1.0000, 0.0000, -1.0000, 0, -1.0000, 0.0000, 0.0000, 0.0000, 0.0000, 'There is no indication that DKIM records exist for the given domain.\r\n</br></br>\r\nDKIM is an authentication protocol that links a domain name to a message. The purpose of the DKIM protocol is not only to prove that the domain name has not been usurped, but also that the message has not been altered during transmission.\r\n</br></br>This test cannot definitively detect a record without the exact identifier, and is weighted accordingly in the scoring.', '', 'DKIM records are supported for your domain.', '', '');
INSERT INTO `reports_testdefinition` VALUES (10, 'dmarcrecordcounttest', 'DMARC Record', 'Verifies if one or more DMARC records exists for a specific domain.', 'email_security', 'email,dns,dmarc', 1.0000, 0.0000, -1.0000, 0, -1.0000, 0.5000, 0.0000, 0.0000, 0.0000, 'No DMARC record was found. \r\n</br></br>\r\nSPF and DKIM on their own (or even together) contain various weaknesses. When both are combined with DMARC, they create an enhanced layer of security and sender identification. Part of the DMARC requirements involves the concept of domain alignment, so it makes it much more difficult for fraudsters to spoof a domain.', 'Multiple DMARC records were found for a single domain. You should only have one DMARC record for your domain.  \r\n</br></br>\r\nWhen multiple records are found policy discovery terminates and DMARC processing is not applied.', 'A DMARC record was found for your domain.', '', '');
INSERT INTO `reports_testdefinition` VALUES (11, 'dmarcsyntaxisvalid', 'DMARC Record Syntax', 'Verifies if the syntax of the DMARC record is valid.', 'email_security', 'email,dns,dmarc', 1.0000, 0.0000, -1.0000, 0, -1.0000, 0.5000, 0.0000, 0.0000, 0.0000, 'The syntax of yourDMARC record is invalid.', 'Minor issues were detected with your DMARC record.', 'The syntax of your DMARC record is valid.', '', '');
INSERT INTO `reports_testdefinition` VALUES (12, 'dmarcexternalreportstest', 'DMARC External Reporting', 'If you want to send your DMARC reports to a domain other than the one that the record is for, then the receiving domain needs to configure a DNS record so that Email Service Providers know that the recipient is authorizing the the reports.', 'email_security', 'email,dns,dmarc', 1.0000, 0.0000, -0.3000, 0, -0.3000, -0.1000, 0.0000, 0.0000, 0.0000, 'The destination domain is not setup to receive your reports.', '', 'The destination domain has the proper TXT record to receive domains.', '', '');
INSERT INTO `reports_testdefinition` VALUES (13, 'dnskeyandrrsigrecordsexists', 'DNSSEC Records', 'Verifies if a DNSKEY and RRSIG records exist for the domain.', 'web_security', 'dns,dnssec,integrity', 1.0000, 0.0000, -1.0000, 0, -1.0000, 0.0000, 0.0000, 0.0000, 0.0000, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 'Your domain returned DNSKEY and RRSIG records.', '', '');
INSERT INTO `reports_testdefinition` VALUES (14, 'dnssecrecordisvalid', 'DNSSEC Validation', 'Verifies if the DNSSEC record is valid.', 'web_security', 'dns,dnssec,integrity', 1.0000, 0.0000, -1.0000, 0, -1.0000, 0.0000, 0.0000, 0.0000, 0.0000, 'The DNSSEC record failed validation.', '', 'The DNSSEC record has validated successfully.', '', '');
INSERT INTO `reports_testdefinition` VALUES (15, 'dmarcpolicyisnotnone', 'DMARC Policy', 'Verifies if the DMARC policy is set to none.', 'email_security', 'email,dns,dmarc', 1.0000, 0.0000, -1.0000, 0, -1.0000, -0.5000, 0.0000, 0.0000, 0.0000, 'The DMARC policy is set to none. \r\n\r\nWith the DMARC policy none, no action will be taken against email that fails the DMARC check. The email just goes into the inbox / folder of the receiver. This DMARC policy can be used to start monitoring who is sending emails on behalf of a domain.', 'Your DMARC policy could be set to a more strict policy.', 'The DMARC policy is configured to quarantine or reject invalid emails.', '', '');
INSERT INTO `reports_testdefinition` VALUES (16, 'dmarcpctis100', 'DMARC Full Reporting', 'Verifies what percentage of emails are being filtered.', 'email_security', 'email,dns,dmarc', 1.0000, 0.0000, -0.5000, 0, -1.0000, -0.2500, 0.0000, 0.0000, 0.0000, 'No emails are being validated by your DMARC installation.', 'Not all emails are being authenticated via DMARC.', 'All emails are being vetted by DMARC.', '', '');
INSERT INTO `reports_testdefinition` VALUES (17, 'dmarcruaisset', 'DMARC Aggregate Reporting', 'Checks if an email address has been set for DMARC aggregate reporting.', 'email_security', 'email,dns,dmarc', 1.0000, 0.0000, -1.0000, 0, -1.0000, -0.5000, 0.0000, 0.0000, 0.0000, 'You are not receiving aggregate reports from your DMARC setup.', 'The email set to receive aggregate reports is invalid.', 'You are receiving aggregate reports for your domain.', '', '');
INSERT INTO `reports_testdefinition` VALUES (18, 'dmarcrufisset', 'DMARC Forensics Reporting', 'Checks if an email address have been set for DMARC forensics reporting.', 'email_security', 'email,dmarc,dns', 1.0000, 0.0000, -0.1000, 0, -0.1000, -0.0500, 0.0000, 0.0000, 0.0000, 'You are not receiving forensics reports for your domain.', 'The email address for receiving forensics reports is invalid.', 'You are receiving forensics reports for your domain.', '', '');
INSERT INTO `reports_testdefinition` VALUES (19, 'httpsenabledtest', 'Secure Web Communications', 'Verifies if HTTPS is enabled for the website linked to the domain.', 'web_security', 'web,https,encryption,confidentiality', 1.0000, 0.0000, -1.0000, 0, -1.0000, -0.5000, 0.0000, 0.0000, 0.0000, 'Unable to connect to the website via HTTPS.  HTTPS prevents attackers from reading and modifying data sent between a website and a user\'s browser. \r\n\r\nHTTPS should be considered a minimum security requirement for all websites.', '', 'A successful connection to the website was established using secure HTTP.', '', '');
INSERT INTO `reports_testdefinition` VALUES (20, 'hstsenabledtest', 'HTTP Strict-Transport-Security Header', 'Verifies if the Strict-Transport-Security mechanism is enabled.', 'web_security', 'web,server,https', 1.0000, 0.0000, -1.0000, 0, -1.0000, -0.5000, 0.0000, 0.0000, 0.0000, 'A HSTS header was not provided by the server. HSTS is a response header that forces your browser to only be able to access the HTTPS version of a  website and any resources on it.</br></br>\r\nEnabling HSTS will stop SSL protocol attacks and cookie hijacking, two vulnerabilities in SSL-enabled websites. And in addition to making a website more secure, HSTS makes sites load quicker by removing a step in the loading procedure.', '', 'A HSTS header was provided from the server.', '', '');
INSERT INTO `reports_testdefinition` VALUES (21, 'httpscertificateisvalid', 'SSL Certificate Validation', 'Validates the SSL certificate for the web server.', 'web_security', 'ssl,web,https,encryption,integrity', 1.0000, 0.0000, -0.5000, 0, -1.0000, -0.5000, 0.0000, 0.0000, 0.0000, 'The certificate is invalid.', '', 'The certificate is valid.', '', '');
INSERT INTO `reports_testdefinition` VALUES (22, 'httpscertificatecipherstrength', 'Cipher Suites', 'Tests to confirm that the website is using a strong and modern cipher.', 'web_security', 'web,ssl,https,encryption,integrity', 1.0000, 0.0000, -0.5000, 0, -1.0000, -0.5000, 0.0000, 0.0000, 0.0000, 'Your webserver is advertising weak encryption protocols.', '', 'The HTTPS server is using strong and modern encryption.', '', '');
INSERT INTO `reports_testdefinition` VALUES (23, 'automatichttpsredirection', 'Automatic Redirection to Secure Website', 'Verifies if a request to the unsecure version of a website redirects to HTTPS.', 'web_security', 'web,https,encryption,confidentiality', 1.0000, 0.0000, -1.0000, 0, -1.0000, 0.0000, 0.0000, 0.0000, 0.0000, 'The request was not redirected to the HTTPS version. Even though this site has HTTPS enabled visitors can still access the site over insecure  HTTP. \r\n</br><br>\r\nYou should ensure that all visitors to your site are automatically redirected to the secure HTTPS connection. Implementing HTTPS is of no use if visitors can still access your site via HTTP.', '', 'Request is redirected to the HTTPS version.', '', '');
INSERT INTO `reports_testdefinition` VALUES (24, 'smtpserverfoundtest', 'Mail Servers', 'Checks if the application was able to find to at least one SMTP server.', 'email_security', 'email,mail-agent', 1.0000, 0.0000, -1.0000, 0, -1.0000, 0.0000, 0.0000, 0.0000, 0.0000, 'No SMTP server was found based on the given domain.', '', 'One or more SMTP server(s) were found.', '', '');
INSERT INTO `reports_testdefinition` VALUES (25, 'smtpcertificatecn', 'Certificate Common Name', 'This test verifies if your certificate appears legitimate to outside agents by having it signed for your mail servers only.', 'email_security', 'email,mail-agent-cipher,encryption,mail-agent', 1.0000, 0.0000, -1.0000, 0, -1.0000, -0.5000, 0.0000, 0.0000, 0.0000, 'The certificate is invalid.', '', 'The certificate is valid.', '', '');
INSERT INTO `reports_testdefinition` VALUES (26, 'smtpprotocols', 'TLS Version', 'Verifies if the server(s) offer secure versions of the TLS protocol.', 'email_security', 'email,mail-agent-cipher,encryption,mail-agent', 1.0000, 0.0000, -1.0000, 0, -1.0000, -0.5000, 0.0000, 0.0000, 0.0000, 'All servers only support weak TLS versions.', 'One or more servers provided support for weaker TLS versions.', 'All servers support only TLS v1.0 or higher only.', '', '');
INSERT INTO `reports_testdefinition` VALUES (27, 'smtpciphers', 'SSL Cipher Suite', 'This verifies the certificate used to encrypt SMTP traffic is legitimate by confirming the name and domain of the certificate.', 'email_security', 'email,mail-agent-cipher,encryption,mail-agent', 1.0000, 0.0000, -1.0000, 0, -1.0000, -0.5000, 0.0000, 0.0000, 0.0000, 'The certificate is invalid.', '', 'The certificate is valid.', '', '');
INSERT INTO `reports_testdefinition` VALUES (28, 'smtpstarttlsisenabled', 'STARTTLS Support', 'Verifies if STARTTLS is enabled on the remote SMTP server.', 'email_security', 'email,mail-agent,mail-agent-starttls,encryption,confidentiality', 1.0000, 1.0000, 0.0000, 0, -1.0000, 1.0000, 1.0000, 0.0000, 0.0000, 'STARTLS is disabled on the remote SMTP server. It’s important to use TLS as unsecured email is a common attack vector. </br><br/>\r\n\r\nEncryption in transit helps protect your emails from being snooped on while they travel between you and your intended recipients. Without encryption they present a prime target for eavesdropping and mass interception as they cross dozens of optical fibres and routers.', '', 'STARTTLS is enabled on the remote SMTP server.', '', '');
INSERT INTO `reports_testdefinition` VALUES (29, 'smtpisclosedrelay', 'Closed Relay', 'Verifies if the SMTP server acts as open-relay.', 'email_security', 'email,mail-agent,mail-agent-relay', 1.0000, 0.0000, -1.0000, 0, -1.0000, 0.0000, 0.0000, 0.0000, 0.0000, 'Your SMTP server(s) can be used by malicious actors for spoofing purposes.', '', 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '', '');
INSERT INTO `reports_testdefinition` VALUES (30, 'xframeoptionheadertest', 'X-Frame-Options Header', 'Verifies if the X-Frame-Options header is defined in responses from the web server.', 'web_application', 'web,headers,application', 1.0000, 0.0000, -0.1600, 0, -0.2000, -0.1500, 0.0000, 0.0000, 0.0000, 'The X-Frame-Options header is not sent by the server. This header protects web applications against clickjacking. This is  a malicious technique of tricking a user into clicking on something different from what the user perceives, thus potentially revealing confidential information or allowing others to take control of their computer.', 'The X-Frame-Options header is returnedbut is not properly configured. This header protects web applications against clickjacking. This is  a malicious technique of tricking a user into clicking on something different from what the user perceives, thus potentially revealing confidential information or allowing others to take control of their computer.', 'The X-Frame-Options header is returned and is properly configured.', '', '');
INSERT INTO `reports_testdefinition` VALUES (31, 'xxssprotectionheadertest', 'X-XSS-Protection Header', 'Verifies if the X-XSS-Protection header is properly defined in responses from the web server.', 'web_application', 'web,headers,application', 1.0000, 0.0000, -0.0100, 0, -0.2000, -0.1000, 0.0000, 0.0000, 0.0000, 'The X-XSS-Protection header was not sent by the server. This header is designed to defend against Cross Site Scripting that is one of the most widespread and critical weaknesses that can lead to serious vulnerabilities. It\'s easy and simple to implement, see link for details.', 'The X-XSS-Protection header is returned but is not properly configured. This header is designed to defend against Cross Site Scripting that is one of the most widespread and critical weaknesses that can lead to serious vulnerabilities. It\'s easy and simple to implement, see link for details.', 'The X-XSS-Protection header is returned and is properly configured.', '', '');
INSERT INTO `reports_testdefinition` VALUES (32, 'xcontenttypeoptionsheadertest', 'X-Content-Type-Options Header', 'Verifies if the X-Content-Type-Options header is properly defined in responses from the web server.', 'web_application', 'web,headers,application', 0.0000, 0.0000, -0.0100, 0, -0.2000, -0.1000, 0.0000, 0.0000, 0.0000, 'The X-Content-Type-Options header is not sent by the server. This header  helps to protect against attacks such as Drive by Downloads - that is any download that happens without a person\'s knowledge, often a computer virus, spyware, malware, or crimeware.', 'The X-Content-Type-Options header is returned but is not properly configured.  This header  helps to protect against attacks such as Drive by Downloads - that is any download that happens without a person\'s knowledge, often a computer virus, spyware, malware, or crimeware.', 'The X-Content-Type-Options header is returned and is properly configured.', '', '');
INSERT INTO `reports_testdefinition` VALUES (33, 'contentsecurityheadertest', 'Content Security Policy Header', 'Verifies if the Content Security Policy header is properly defined in responses from the web server.', 'web_application', 'web,headers,application', 1.0000, 0.0000, -0.1500, 0, -0.2000, -0.1000, 0.0000, 0.0000, 0.0000, 'The Content Security Policy (CSP) was not sent by the server. This header can be considered as an improved version of the X-XSS-Protection header. It adds another layer of security to protect against cross site scripting, one of the most widespread and critical weaknesses that can lead to serious vulnerabilities.', 'The Content Security Policy header is returned but is not properly configured. This header can be considered as an improved version of the X-XSS-Protection header. It adds another layer of security to protect against cross site scripting, one of the most widespread and critical weaknesses that can lead to serious vulnerabilities.', 'The Content Security Policy header is returned and is properly configured.', '', '');
INSERT INTO `reports_testdefinition` VALUES (34, 'referrerpolicyheadertest', 'Referrer-Policy Header', 'Verifies if the Referrer-Policy header is properly defined in responses from the web server.', 'web_application', 'web,headers,application', 1.0000, 0.0000, -0.0100, 0, -0.1000, -0.0500, 0.0000, 0.0000, 0.0000, 'The Referrer-Policy header is not sent by the server. This header enables you to specify when the browser should set Referer headers. The use of this header can be considered as “optional”, but is advised to protect the privacy of your visitors.', 'The Referrer-Policy header is returned but is not properly configured. This header enables you to specify when the browser should set Referer headers. The use of this header can be considered as “optional”, but is advised to protect the privacy of your visitors.', 'The Referrer-Policy header is returned and is properly configured.', '', '');
INSERT INTO `reports_testdefinition` VALUES (35, 'serverheadertest', 'Server Header', 'Verifies if the Server header is returned by the server.', 'web_application', 'web,headers,application', 1.0000, 0.0000, -0.0100, 1, -0.1429, -0.7145, 0.0000, 0.0000, 0.0000, 'The Server header is sent by the server. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence. Server values should be avoided as they potentially reveal internal implementation details that might make it  easier for attackers to find and exploit known security holes.', 'The Server header is sent by the server. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence. Server values should be avoided as they potentially reveal internal implementation details that might make it  easier for attackers to find and exploit known security holes.', 'The Server header is not returned by the server.', 'This test requires manual review.', 'No result available for this test.');
INSERT INTO `reports_testdefinition` VALUES (36, 'xpoweredbyheadertest', 'X-Powered-By Header', 'Verifies if the X-Powered-By header is returned by the server.', 'web_application', 'web,headers,application', 1.0000, 1.0000, 0.0000, 1, 0.0000, 0.5000, 1.0000, 0.0000, 1.0000, 'The X-Powered-By header is returned and contains the details of the web framework or programming language used in the web application. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence.', 'The X-Powered-By header is returned and contains product information, but no version data was found. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence.', 'The X-Powered-By header is not returned by the server.', '', '');
INSERT INTO `reports_testdefinition` VALUES (37, 'featurepolicyheadertest', 'Feature-Policy Header', 'Verifies if the Feature-Policy header is returned by the server.', 'web_application', 'web,headers,application', 1.0000, 0.0000, -0.0100, 0, -0.1000, -0.0500, 0.0000, 0.0000, 0.0000, 'The Feature-Policy header was not returned by the server. This header can help protect your site from third parties using APIs that have security and privacy implications', 'The Feature-Policy header is returned, but appears to be misconfigured. This header can help protect your site from third parties using APIs that have security and privacy implications.', 'The Feature-Policy header is returned by the server.', '', '');
INSERT INTO `reports_testdefinition` VALUES (38, 'cookiesyntaxisvalid', 'Cookie Syntax', 'Verifies the lexical syntax of a cookie.', 'web_application', 'web,cookies,application', 1.0000, 0.0000, -0.0100, 0, -0.4000, -0.3000, 0.0000, 0.0000, 0.0000, 'None of the cookie found has a valid syntax.', 'At least one cookie had an invalid syntax.', 'All cookies found had a valid syntax.', 'This test requires manual review.', '');
INSERT INTO `reports_testdefinition` VALUES (39, 'httpcookienoprefix', 'Unsecure Cookies Prefix', 'Confirms that HTTP cookies sent via unsecure HTTP do no use secure prefixes.', 'web_application', 'web,cookies,application', 1.0000, 0.0000, -0.0100, 0, -0.4000, -0.3000, 0.0000, 0.0000, 0.0000, 'All cookies sent via unsecure HTTP uses a secure prefix.', 'At least one cookie sent via unsecure HTTP uses a secure prefix.', 'None of the cookies sent via unsecure HTTP are prefixed.', '', '');
INSERT INTO `reports_testdefinition` VALUES (40, 'httpcookiehttponly', 'Usage of HttpOnly Flag', 'Confirms that cookies sent via unsecure HTTP have the \'HttpOnly\' flag set.', 'web_application', 'web,cookie,application', 1.0000, 0.0000, -0.0100, 0, -0.4000, -0.3000, 0.0000, 0.0000, 0.0000, 'None of the cookies found had the \'HttpOnly\' flag.', 'At least one cookie did not have the \'HttpOnly\' flag.', 'All of the cookies sent via HTTP uses the \'HttpOnly\'.', '', '');
INSERT INTO `reports_testdefinition` VALUES (41, 'httpcookieisnotsecure', 'Improper use of the \'Secure\' Flag', 'Verifies that none of the cookies sent via unsecure HTTP has the \'Secure\' flag set.', 'web_application', 'web, application,cookies', 1.0000, 0.0000, -0.0100, 0, -0.4000, -0.3000, 0.0000, 0.0000, 0.0000, 'All of the cookies sent via unsecure HTTP had the \'Secure\' flag enabled.', 'At least one cookie sent via unsecure HTTP had the \'Secure\' flag enabled.', 'None of the cookies sent via unsecure HTTP had the \'Secure\' flag enabled.', '', '');
INSERT INTO `reports_testdefinition` VALUES (42, 'cookiesamesite', 'Usage of the \'SameSite\' Flag', 'Verifies if cookies are set with the Samesite flag.', 'web_application', 'web,application,cookies', 1.0000, 0.0000, -0.0100, 0, -0.4000, -0.3000, 0.0000, 0.0000, 0.0000, 'At least one cookie did not have the \'SameSite\' flag set.', 'All cookies had the SameSite flag set at least to \'lax\'.', 'All cookies had the SameSite flag set to strict.', '', '');
INSERT INTO `reports_testdefinition` VALUES (43, 'httpscookieissecure', 'Usage of the \'Secure\' Flag for Secure Cookies', 'Verifies that all cookies sent via encrypted HTTP has the \'Secure\' flag set.', 'web_application', 'web,cookies,application', 1.0000, 0.0000, -0.0100, 0, -0.4000, -0.3000, 0.0000, 0.0000, 0.0000, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', 'At least one cookie sent via secure HTTP did not have the \'Secure\' flag enabled.', 'All of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '', '');
INSERT INTO `reports_testdefinition` VALUES (44, 'httpscookiehostprefixisvalid', 'Usage of the \'__Host\' Prefix', 'Verifies that all cookies enforces usage of the \'__Host\' prefix.', 'web_application', 'web,cookies,application', 1.0000, 0.0000, -0.0100, 0, -0.4000, -0.2000, 0.0000, 0.0000, 0.0000, 'None of the cookies sent via secure HTTP had the \'__Host\' prefix.', 'At least one cookie sent via secure HTTP did not have the \'__Host\' prefix.', 'All of the cookies sent via secure HTTP had the \'__Host\' prefix.', '', '');
INSERT INTO `reports_testdefinition` VALUES (45, 'httpscookiesecureprefixisvalid', 'Usage of the \'__Secure\' Prefix', 'Verifies that all cookies enforces usage of the \'__Secure\' prefix.', 'web_application', 'web,cookies,application', 1.0000, 0.0000, -0.0100, 0, -0.4000, -0.4000, 0.0000, 0.0000, 0.0000, 'At least one cookie prefixed with \'__Secure-\' does not have the \'secure\' flag.', 'At least one cookie prefixed with \'__Secure-\' does not have the \'secure\' flag.', 'All cookies prefixed with \'__Secure-\' do not have the \'secure\' flag.', '', '');
INSERT INTO `reports_testdefinition` VALUES (46, 'nocookietest', 'Website is Using Cookies', 'Verifies if the target website sends one or more cookies.', 'web_application', 'web,cookies,application', 1.0000, 0.0000, -0.0100, 0, -0.1000, 0.0000, 0.0000, 0.0000, 0.0000, 'The target website sent one or more cookies.', 'The target website is not sending any cookies.', 'The target website is not sending any cookies.', 'This test requires manual review.', '');
INSERT INTO `reports_testdefinition` VALUES (47, 'ipblocklist', 'Malicious Activity from IP', 'Verifies if IP addresses relating to the domain are involved in any malicious activity.', 'infrastructure', 'ip,reputation', 1.0000, 0.7000, 0.0000, 1, -2.0000, 0.0000, 0.7000, 0.0000, 0.0000, 'Your IP address is associated with malicious activity.', '', 'Your IP address is not associated with any malicious activity.', '', '');
INSERT INTO `reports_testdefinition` VALUES (48, 'hostreputation', 'Unsolicited Communications', 'Verifies if IP addresses relating to the domain are on any Domain Name System Blacklists (DNSBL)', 'infrastructure', 'infrastructure,reputation,ip', 1.0000, 0.3000, 0.0000, 0, -2.0000, 0.0000, 0.3000, 0.0000, 0.0000, 'Your host is listed on a DNSBL. A domain name system based list (DNSBL) is an anti-spam technique used to track IP addresses that send spam. DNSBL is a database of IP addresses that includes the addresses of known spammers, open relays, proxy servers and computers compromised by crackers and malicious code, also known as zombie computers.', '', 'Your host is not listed on any DNSBL', 'This test requires manual review.', '');
INSERT INTO `reports_testdefinition` VALUES (49, 'hosthaspotentialvulnerabilities', 'Potential Vulnerabilities Detected', 'Verifies if the host exposes potentially vulnerable services.', 'infrastructure', 'vulnerabilities,cves', 1.0000, 1.0000, 0.0000, 0, 0.0000, 1.0000, 1.0000, 0.0000, 0.0000, 'One of more hosts may expose services with known vulnerabilities. See the links below for information on each specific item. \r\n</br></br>\r\nCVE Vulnerabilities are identified by passive fingerprinting of server software and version. The vulnerabilities are implied based on the software and version. This is a passive test and so the server may not be impacted by all of the issues detected.\r\n</br></br>\r\nYou can request an ACTIVE vulnerability scan by following the remediation link below.', 'Some vulnerabilities were potentially identified. See the links below for information on each specific item. \r\n</br></br>\r\nCVE Vulnerabilities are identified by passive fingerprinting of server software and version. The vulnerabilities are implied based on the software and version. This is a passive test and so the server may not be impacted by all of the issues detected.\r\n</br></br>\r\nYou can request an ACTIVE vulnerability scan by following the remediation link below.', 'No known vulnerability has been found for your host.', 'This test requires manual review.', '');
INSERT INTO `reports_testdefinition` VALUES (50, 'hostopenports', 'Open Ports', 'Enumerates ports opened on the target host.', 'infrastructure', 'ports,vulnerabilities', 1.0000, 1.0000, 0.0000, 1, 0.0000, 1.0000, 1.0000, 0.0000, 0.0000, 'A large number of services are exposed to the Internet. An open port is an attack surface. An important principle in security is reducing your attack surface, and ensure that servers have the minimum number of exposed services. \r\n</br></br>\r\nCheck to make sure that only necessary ports are open. Our scan uses PASSIVE identification of open ports - active scans on remote systems are not allowed without prior permission. A full ACTIVE scan can be requested by following the remediation link below.', '', 'No or few ports are exposed to the Internet.', 'This test requires manual review.', '');
INSERT INTO `reports_testdefinition` VALUES (51, 'emailleaks', 'Emails Leaked Online', 'Searches for email credentials relating to a given domain from public data leaks.', 'infrastructure', 'confidentiality,leaks,trust,privacy', 1.0000, 1.0000, 0.0000, 1, 0.0000, 1.0000, 1.0000, 0.0000, 0.0000, 'Your domain was found at least once in known, public data leaks.', '', 'Your domain was not found in any known public leaks.', 'This test requires manual review.', '');

-- ----------------------------
-- Table structure for reports_testresult
-- ----------------------------
DROP TABLE IF EXISTS `reports_testresult`;
CREATE TABLE `reports_testresult`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `score` double NOT NULL,
  `message` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `data` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `definition_id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `reports_testresult_definition_id_85651fc7_fk_reports_t`(`definition_id`) USING BTREE,
  INDEX `reports_testresult_report_id_ab0b375c_fk_reports_riskreport_id`(`report_id`) USING BTREE,
  CONSTRAINT `reports_testresult_definition_id_85651fc7_fk_reports_t` FOREIGN KEY (`definition_id`) REFERENCES `reports_testdefinition` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `reports_testresult_report_id_ab0b375c_fk_reports_riskreport_id` FOREIGN KEY (`report_id`) REFERENCES `reports_riskreport` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1569 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of reports_testresult
-- ----------------------------
INSERT INTO `reports_testresult` VALUES (1, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 include:_spf.protonmail.ch mx ~all\']}', 1, 1);
INSERT INTO `reports_testresult` VALUES (2, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 1);
INSERT INTO `reports_testresult` VALUES (3, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 1);
INSERT INTO `reports_testresult` VALUES (4, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 0}', 4, 1);
INSERT INTO `reports_testresult` VALUES (5, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 1);
INSERT INTO `reports_testresult` VALUES (6, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 1);
INSERT INTO `reports_testresult` VALUES (7, 'success', 0, 'Your SPF record is too permissive.', '{\'policy\': \'~all\'}', 3, 1);
INSERT INTO `reports_testresult` VALUES (8, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 include:_spf.protonmail.ch mx ~all\'}', 8, 1);
INSERT INTO `reports_testresult` VALUES (9, 'failed', -1, 'There is no indication that DKIM records exist for the given domain.', '', 9, 1);
INSERT INTO `reports_testresult` VALUES (10, 'success', 0, 'A DMARC record was found for your domain.', '{\'record\': [\'v=DMARC1; p=none; rua=mailto:dmarc@bdsfx.com\']}', 10, 1);
INSERT INTO `reports_testresult` VALUES (11, 'success', 0, 'The syntax of your DMARC record is valid.', '{\'record\': \'v=DMARC1; p=none; rua=mailto:dmarc@bdsfx.com\'}', 11, 1);
INSERT INTO `reports_testresult` VALUES (12, 'failed', -1, 'The DMARC policy is set to none. No message is filtered.', '{\'policy\': \'none\'}', 15, 1);
INSERT INTO `reports_testresult` VALUES (13, 'success', 0, 'All emails are being vetted by DMARC.', '', 16, 1);
INSERT INTO `reports_testresult` VALUES (14, 'failed', -0.3, 'The destination domain is not setup to receive your reports.', '{\'RAF\': \'The domain used for reporting does not appear to have a DMARC record.\', \'RUF\': \'Forensics reporting is properly setup for your domain.\'}', 12, 1);
INSERT INTO `reports_testresult` VALUES (15, 'success', 0, 'You are receiving aggregate reports for your domain.', '{\'rua\': \'mailto:dmarc@bdsfx.com\'}', 17, 1);
INSERT INTO `reports_testresult` VALUES (16, 'failed', -0.1, 'You are not receiving forensics reports for your domain.', '', 18, 1);
INSERT INTO `reports_testresult` VALUES (17, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'mail.protonmail.ch\', \'data\': \'success\'}, {\'host\': \'mailsec.protonmail.ch\', \'data\': \'success\'}]', 24, 1);
INSERT INTO `reports_testresult` VALUES (18, 'failed', 0, 'STARTLS is disabled on the remote SMTP server.', '[{\'host\': \'mail.protonmail.ch\', \'data\': \'success\'}, {\'host\': \'mailsec.protonmail.ch\', \'data\': \'success\'}]', 28, 1);
INSERT INTO `reports_testresult` VALUES (19, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mail.protonmail.ch\', \'data\': \'success\'}, {\'host\': \'mailsec.protonmail.ch\', \'data\': \'success\'}]', 25, 1);
INSERT INTO `reports_testresult` VALUES (20, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'mail.protonmail.ch\', \'data\': \'success\'}, {\'host\': \'mailsec.protonmail.ch\', \'data\': \'success\'}]', 26, 1);
INSERT INTO `reports_testresult` VALUES (21, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mail.protonmail.ch\', \'data\': \'success\'}, {\'host\': \'mailsec.protonmail.ch\', \'data\': \'success\'}]', 27, 1);
INSERT INTO `reports_testresult` VALUES (22, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'mail.protonmail.ch\', \'data\': \'success\'}, {\'host\': \'mailsec.protonmail.ch\', \'data\': \'success\'}]', 29, 1);
INSERT INTO `reports_testresult` VALUES (23, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 1);
INSERT INTO `reports_testresult` VALUES (24, 'not_available', 0, '', '', 14, 1);
INSERT INTO `reports_testresult` VALUES (25, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.securitytrain.me\'}', 19, 1);
INSERT INTO `reports_testresult` VALUES (26, 'success', 0, 'The certificate is valid.', '', 21, 1);
INSERT INTO `reports_testresult` VALUES (27, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 1);
INSERT INTO `reports_testresult` VALUES (28, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.securitytrain.me\'}', 23, 1);
INSERT INTO `reports_testresult` VALUES (29, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 1);
INSERT INTO `reports_testresult` VALUES (30, 'failed', -0.2, 'The X-Frame-Options header is not sent by the server.', '', 30, 1);
INSERT INTO `reports_testresult` VALUES (31, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server.', '', 31, 1);
INSERT INTO `reports_testresult` VALUES (32, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 1);
INSERT INTO `reports_testresult` VALUES (33, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server.', '', 33, 1);
INSERT INTO `reports_testresult` VALUES (34, 'failed', -0.2, 'The Referrer-Policy header is not sent by the server.', '', 34, 1);
INSERT INTO `reports_testresult` VALUES (35, 'failed', -0.1429, 'The Server header is sent by the server.', '{\'header\': \'Server\', \'value\': \'Apache/2.4.29\'}', 35, 1);
INSERT INTO `reports_testresult` VALUES (36, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 1);
INSERT INTO `reports_testresult` VALUES (37, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 1);
INSERT INTO `reports_testresult` VALUES (38, 'success', 0, 'The target website is not sending any cookies.', '', 46, 1);
INSERT INTO `reports_testresult` VALUES (39, 'not_available', 0, '', '', 38, 1);
INSERT INTO `reports_testresult` VALUES (40, 'not_available', 0, '', '', 39, 1);
INSERT INTO `reports_testresult` VALUES (41, 'not_available', 0, '', '', 40, 1);
INSERT INTO `reports_testresult` VALUES (42, 'not_available', 0, '', '', 41, 1);
INSERT INTO `reports_testresult` VALUES (43, 'not_available', 0, '', '', 42, 1);
INSERT INTO `reports_testresult` VALUES (44, 'not_available', 0, '', '', 43, 1);
INSERT INTO `reports_testresult` VALUES (45, 'not_available', 0, '', '', 44, 1);
INSERT INTO `reports_testresult` VALUES (46, 'not_available', 0, '', '', 45, 1);
INSERT INTO `reports_testresult` VALUES (47, 'success', 0.7, 'Your IP address(es) are not listed on any blacklist.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'159.65.115.59\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 1);
INSERT INTO `reports_testresult` VALUES (48, 'success', 0.3, 'Your host has not been associated with malicious activities.', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 158, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 803, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 702, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 718, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 5008, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 600, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 277, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 281, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 287, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 52, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 48, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 51, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 51, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 50, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 4, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 79, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 48, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 498, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 701, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 274, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 257, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 258, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 275, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 766, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 609, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 628, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 620, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'securitytrain.me\', \'is-listed\': False}', 48, 1);
INSERT INTO `reports_testresult` VALUES (49, 'not_available', 0, '', '', 49, 1);
INSERT INTO `reports_testresult` VALUES (50, 'error', 0, 'This test requires manual review.', '{\'error\': \"Invalid response received from \'https://api.shodan.io/shodan/host/159.65.115.59?key=ggGl4i0SG48tnlp5ZjziW6c3vttQ7zfc\': 404\"}', 50, 1);
INSERT INTO `reports_testresult` VALUES (51, 'success', 1, 'Your domain was not found in any known public leaks.', '{\'total\': 0, \'groups\': [], \'query\': \'securitytrain.me\'}', 51, 1);
INSERT INTO `reports_testresult` VALUES (52, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 a:support.kadfire.com include:spf.messagelabs.com include:spf.protection.outlook.com include:spf.mandrillapp.com -all\']}', 1, 2);
INSERT INTO `reports_testresult` VALUES (53, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 2);
INSERT INTO `reports_testresult` VALUES (54, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 2);
INSERT INTO `reports_testresult` VALUES (55, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 6}', 4, 2);
INSERT INTO `reports_testresult` VALUES (56, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 2);
INSERT INTO `reports_testresult` VALUES (57, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 2);
INSERT INTO `reports_testresult` VALUES (58, 'success', 0, 'Your SPF record is too permissive.', '{\'policy\': \'-all\'}', 3, 2);
INSERT INTO `reports_testresult` VALUES (59, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 a:support.kadfire.com include:spf.messagelabs.com include:spf.protection.outlook.com include:spf.mandrillapp.com -all\'}', 8, 2);
INSERT INTO `reports_testresult` VALUES (60, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 2);
INSERT INTO `reports_testresult` VALUES (61, 'failed', -1, 'No DMARC record was found.', '{\'records\': 0}', 10, 2);
INSERT INTO `reports_testresult` VALUES (62, 'not_available', 0, '', '{\'records\': 0}', 11, 2);
INSERT INTO `reports_testresult` VALUES (63, 'not_available', 0, '', '{\'records\': 0}', 12, 2);
INSERT INTO `reports_testresult` VALUES (64, 'not_available', 0, '', '{\'records\': 0}', 15, 2);
INSERT INTO `reports_testresult` VALUES (65, 'not_available', 0, '', '{\'records\': 0}', 16, 2);
INSERT INTO `reports_testresult` VALUES (66, 'not_available', 0, '', '{\'records\': 0}', 17, 2);
INSERT INTO `reports_testresult` VALUES (67, 'not_available', 0, '', '{\'records\': 0}', 18, 2);
INSERT INTO `reports_testresult` VALUES (68, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[]', 29, 2);
INSERT INTO `reports_testresult` VALUES (69, 'failed', -1, 'STARTLS is disabled on the remote SMTP server.', '[{\'host\': \'cluster8.eu.messagelabs.com\', \'data\': \'failed\'}, {\'host\': \'cluster8a.eu.messagelabs.com\', \'data\': \'failed\'}]', 28, 2);
INSERT INTO `reports_testresult` VALUES (70, 'partial', -0.5, '', '[{\'host\': \'cluster8.eu.messagelabs.com\', \'data\': \'partial\'}, {\'host\': \'cluster8a.eu.messagelabs.com\', \'data\': \'not_available\'}]', 25, 2);
INSERT INTO `reports_testresult` VALUES (71, 'not_available', 0, '', '[{\'host\': \'cluster8.eu.messagelabs.com\', \'data\': \'not_available\'}, {\'host\': \'cluster8a.eu.messagelabs.com\', \'data\': \'not_available\'}]', 26, 2);
INSERT INTO `reports_testresult` VALUES (72, 'not_available', 0, '', '[{\'host\': \'cluster8.eu.messagelabs.com\', \'data\': \'not_available\'}, {\'host\': \'cluster8a.eu.messagelabs.com\', \'data\': \'not_available\'}]', 27, 2);
INSERT INTO `reports_testresult` VALUES (73, 'success', 0, 'One or more SMTP server(s) were found.', '[\'cluster8.eu.messagelabs.com\', \'cluster8a.eu.messagelabs.com\']', 24, 2);
INSERT INTO `reports_testresult` VALUES (74, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 2);
INSERT INTO `reports_testresult` VALUES (75, 'not_available', 0, '', '', 14, 2);
INSERT INTO `reports_testresult` VALUES (76, 'failed', -1, 'Unable to connect to the website via HTTPS.', '{\'website\': \'https://www.kadfire.com\'}', 19, 2);
INSERT INTO `reports_testresult` VALUES (77, 'not_available', 0, '', '', 21, 2);
INSERT INTO `reports_testresult` VALUES (78, 'not_available', 0, '', '', 22, 2);
INSERT INTO `reports_testresult` VALUES (79, 'not_available', 0, '', '', 23, 2);
INSERT INTO `reports_testresult` VALUES (80, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 2);
INSERT INTO `reports_testresult` VALUES (81, 'failed', -0.2, 'The X-Frame-Options header is not sent by the server.', '', 30, 2);
INSERT INTO `reports_testresult` VALUES (82, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server.', '', 31, 2);
INSERT INTO `reports_testresult` VALUES (83, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 2);
INSERT INTO `reports_testresult` VALUES (84, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server.', '', 33, 2);
INSERT INTO `reports_testresult` VALUES (85, 'failed', -0.2, 'The Referrer-Policy header is not sent by the server.', '', 34, 2);
INSERT INTO `reports_testresult` VALUES (86, 'failed', -0.1429, 'The Server header is sent by the server.', '{\'header\': \'Server\', \'value\': \'Microsoft-IIS/8.5\'}', 35, 2);
INSERT INTO `reports_testresult` VALUES (87, 'partial', 0.5, 'The X-Powered-By header is returned and contains product information, but no version data was found.', '{\'header\': \'X-Powered-By\', \'value\': \'ASP.NET\'}', 36, 2);
INSERT INTO `reports_testresult` VALUES (88, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 2);
INSERT INTO `reports_testresult` VALUES (89, 'not_available', 0, '', '', 38, 2);
INSERT INTO `reports_testresult` VALUES (90, 'not_available', 0, '', '', 39, 2);
INSERT INTO `reports_testresult` VALUES (91, 'not_available', 0, '', '', 40, 2);
INSERT INTO `reports_testresult` VALUES (92, 'not_available', 0, '', '', 41, 2);
INSERT INTO `reports_testresult` VALUES (93, 'not_available', 0, '', '', 42, 2);
INSERT INTO `reports_testresult` VALUES (94, 'not_available', 0, '', '', 43, 2);
INSERT INTO `reports_testresult` VALUES (95, 'not_available', 0, '', '', 44, 2);
INSERT INTO `reports_testresult` VALUES (96, 'not_available', 0, '', '', 45, 2);
INSERT INTO `reports_testresult` VALUES (97, 'success', 0.7, 'Your IP address(es) are not listed on any blacklist.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'217.69.38.186\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 2);
INSERT INTO `reports_testresult` VALUES (98, 'error', 0, 'This test requires manual review.', '{\'error\': \"HTTPSConnectionPool(host=\'neutrinoapi.com\', port=443): Read timed out. (read timeout=5.5)\"}', 48, 2);
INSERT INTO `reports_testresult` VALUES (99, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 2);
INSERT INTO `reports_testresult` VALUES (100, 'success', 1, 'No or few ports are exposed to the Internet.', '[80, 21, 445]', 50, 2);
INSERT INTO `reports_testresult` VALUES (101, 'failed', -4.7, 'Your domain was found at least once in known, public data leaks.', '{\'total\': 57, \'groups\': [{\'leak\': \'adobe\', \'count\': 2}, {\'leak\': \'dropbox\', \'count\': 5}, {\'leak\': \'verificationsio\', \'count\': 18}, {\'leak\': \'customerslive\', \'count\': 2}, {\'leak\': \'the-collections\', \'count\': 9}, {\'leak\': \'data-contacts\', \'count\': 4}, {\'leak\': \'linkedin\', \'count\': 3}, {\'leak\': \'pdlcollection\', \'count\': 1}, {\'leak\': \'breachcompilation\', \'count\': 4}, {\'leak\': \'exploitin\', \'count\': 4}, {\'leak\': \'myfitnesspal\', \'count\': 2}, {\'leak\': \'antipublic\', \'count\': 1}, {\'leak\': \'badoo\', \'count\': 1}, {\'leak\': \'pcrai\', \'count\': 1}], \'query\': \'kadfire.com\'}', 51, 2);
INSERT INTO `reports_testresult` VALUES (102, 'failed', -1, 'More than one (1) SPF record is defined for your domain.', '', 1, 3);
INSERT INTO `reports_testresult` VALUES (103, 'not_available', 0, '', '', 6, 3);
INSERT INTO `reports_testresult` VALUES (104, 'not_available', 0, '', '', 4, 3);
INSERT INTO `reports_testresult` VALUES (105, 'not_available', 0, '', '', 2, 3);
INSERT INTO `reports_testresult` VALUES (106, 'not_available', 0, '', '', 7, 3);
INSERT INTO `reports_testresult` VALUES (107, 'not_available', 0, '', '', 5, 3);
INSERT INTO `reports_testresult` VALUES (108, 'not_available', 0, '', '', 3, 3);
INSERT INTO `reports_testresult` VALUES (109, 'not_available', 0, '', '', 8, 3);
INSERT INTO `reports_testresult` VALUES (110, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 3);
INSERT INTO `reports_testresult` VALUES (111, 'failed', -1, 'No DMARC record was found.', '{\'records\': 0}', 10, 3);
INSERT INTO `reports_testresult` VALUES (112, 'not_available', 0, '', '{\'records\': 0}', 11, 3);
INSERT INTO `reports_testresult` VALUES (113, 'not_available', 0, '', '{\'records\': 0}', 12, 3);
INSERT INTO `reports_testresult` VALUES (114, 'not_available', 0, '', '{\'records\': 0}', 15, 3);
INSERT INTO `reports_testresult` VALUES (115, 'not_available', 0, '', '{\'records\': 0}', 16, 3);
INSERT INTO `reports_testresult` VALUES (116, 'not_available', 0, '', '{\'records\': 0}', 17, 3);
INSERT INTO `reports_testresult` VALUES (117, 'not_available', 0, '', '{\'records\': 0}', 18, 3);
INSERT INTO `reports_testresult` VALUES (118, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[]', 29, 3);
INSERT INTO `reports_testresult` VALUES (119, 'failed', -1, 'STARTLS is disabled on the remote SMTP server.', '[{\'host\': \'cluster5.us.messagelabs.com\', \'data\': \'failed\'}, {\'host\': \'cluster5a.us.messagelabs.com\', \'data\': \'failed\'}]', 28, 3);
INSERT INTO `reports_testresult` VALUES (120, 'partial', -0.5, '', '[{\'host\': \'cluster5.us.messagelabs.com\', \'data\': \'partial\'}, {\'host\': \'cluster5a.us.messagelabs.com\', \'data\': \'not_available\'}]', 25, 3);
INSERT INTO `reports_testresult` VALUES (121, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'cluster5.us.messagelabs.com\', \'data\': \'success\'}, {\'host\': \'cluster5a.us.messagelabs.com\', \'data\': \'not_available\'}]', 26, 3);
INSERT INTO `reports_testresult` VALUES (122, 'not_available', 0, '', '[{\'host\': \'cluster5.us.messagelabs.com\', \'data\': \'not_available\'}, {\'host\': \'cluster5a.us.messagelabs.com\', \'data\': \'not_available\'}]', 27, 3);
INSERT INTO `reports_testresult` VALUES (123, 'success', 0, 'One or more SMTP server(s) were found.', '[\'cluster5.us.messagelabs.com\', \'cluster5a.us.messagelabs.com\', \'mime.jec.com\']', 24, 3);
INSERT INTO `reports_testresult` VALUES (124, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 3);
INSERT INTO `reports_testresult` VALUES (125, 'not_available', 0, '', '', 14, 3);
INSERT INTO `reports_testresult` VALUES (126, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.jec.com\'}', 19, 3);
INSERT INTO `reports_testresult` VALUES (127, 'success', 0, 'The certificate is valid.', '', 21, 3);
INSERT INTO `reports_testresult` VALUES (128, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 3);
INSERT INTO `reports_testresult` VALUES (129, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.jec.com\'}', 23, 3);
INSERT INTO `reports_testresult` VALUES (130, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 3);
INSERT INTO `reports_testresult` VALUES (131, 'failed', -0.2, 'The X-Frame-Options header is not sent by the server.', '', 30, 3);
INSERT INTO `reports_testresult` VALUES (132, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server.', '', 31, 3);
INSERT INTO `reports_testresult` VALUES (133, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 3);
INSERT INTO `reports_testresult` VALUES (134, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server.', '', 33, 3);
INSERT INTO `reports_testresult` VALUES (135, 'failed', -0.2, 'The Referrer-Policy header is not sent by the server.', '', 34, 3);
INSERT INTO `reports_testresult` VALUES (136, 'failed', -0.1429, 'The Server header is sent by the server.', '{\'header\': \'Server\', \'value\': \'Microsoft-IIS/8.5\'}', 35, 3);
INSERT INTO `reports_testresult` VALUES (137, 'partial', 0.5, 'The X-Powered-By header is returned and contains product information, but no version data was found.', '{\'header\': \'X-Powered-By\', \'value\': \'ASP.NET\'}', 36, 3);
INSERT INTO `reports_testresult` VALUES (138, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 3);
INSERT INTO `reports_testresult` VALUES (139, 'success', 0, 'The target website is not sending any cookies.', '', 46, 3);
INSERT INTO `reports_testresult` VALUES (140, 'not_available', 0, '', '', 38, 3);
INSERT INTO `reports_testresult` VALUES (141, 'not_available', 0, '', '', 39, 3);
INSERT INTO `reports_testresult` VALUES (142, 'not_available', 0, '', '', 40, 3);
INSERT INTO `reports_testresult` VALUES (143, 'not_available', 0, '', '', 41, 3);
INSERT INTO `reports_testresult` VALUES (144, 'not_available', 0, '', '', 42, 3);
INSERT INTO `reports_testresult` VALUES (145, 'not_available', 0, '', '', 43, 3);
INSERT INTO `reports_testresult` VALUES (146, 'not_available', 0, '', '', 44, 3);
INSERT INTO `reports_testresult` VALUES (147, 'not_available', 0, '', '', 45, 3);
INSERT INTO `reports_testresult` VALUES (148, 'success', 0.7, 'Your IP address(es) are not listed on any blacklist.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'118.143.65.136\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 3);
INSERT INTO `reports_testresult` VALUES (149, 'error', 0, 'This test requires manual review.', '{\'error\': \"HTTPSConnectionPool(host=\'neutrinoapi.com\', port=443): Read timed out. (read timeout=5.5)\"}', 48, 3);
INSERT INTO `reports_testresult` VALUES (150, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 3);
INSERT INTO `reports_testresult` VALUES (151, 'success', 1, 'No or few ports are exposed to the Internet.', '[443, 80]', 50, 3);
INSERT INTO `reports_testresult` VALUES (152, 'failed', -55.900000000000006, 'Your domain was found at least once in known, public data leaks.', '{\'total\': 569, \'groups\': [{\'leak\': \'the-collections\', \'count\': 103}, {\'leak\': \'breachcompilation\', \'count\': 96}, {\'leak\': \'exploitin\', \'count\': 55}, {\'leak\': \'dropbox\', \'count\': 30}, {\'leak\': \'verificationsio\', \'count\': 64}, {\'leak\': \'linkedin\', \'count\': 96}, {\'leak\': \'antipublic\', \'count\': 62}, {\'leak\': \'pdlcollection\', \'count\': 23}, {\'leak\': \'adobe\', \'count\': 7}, {\'leak\': \'customerslive\', \'count\': 12}, {\'leak\': \'pcrai\', \'count\': 4}, {\'leak\': \'myfitnesspal\', \'count\': 3}, {\'leak\': \'datanleads\', \'count\': 2}, {\'leak\': \'badoo\', \'count\': 1}, {\'leak\': \'fling\', \'count\': 1}, {\'leak\': \'myspace\', \'count\': 4}, {\'leak\': \'tumblr\', \'count\': 2}, {\'leak\': \'data-contacts\', \'count\': 1}, {\'leak\': \'7k7k\', \'count\': 1}, {\'leak\': \'imesh\', \'count\': 1}, {\'leak\': \'disqus\', \'count\': 1}], \'query\': \'jec.com\'}', 51, 3);
INSERT INTO `reports_testresult` VALUES (153, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 include:spf.protection.outlook.com -all\']}', 1, 4);
INSERT INTO `reports_testresult` VALUES (154, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 4);
INSERT INTO `reports_testresult` VALUES (155, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 4);
INSERT INTO `reports_testresult` VALUES (156, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 1}', 4, 4);
INSERT INTO `reports_testresult` VALUES (157, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 4);
INSERT INTO `reports_testresult` VALUES (158, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 4);
INSERT INTO `reports_testresult` VALUES (159, 'success', 0, 'Your SPF record is too permissive.', '{\'policy\': \'-all\'}', 3, 4);
INSERT INTO `reports_testresult` VALUES (160, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 include:spf.protection.outlook.com -all\'}', 8, 4);
INSERT INTO `reports_testresult` VALUES (161, 'failed', -1, 'There is no indication that DKIM records exist for the given domain.', '', 9, 4);
INSERT INTO `reports_testresult` VALUES (162, 'failed', -1, 'No DMARC record was found.', '{\'records\': 0}', 10, 4);
INSERT INTO `reports_testresult` VALUES (163, 'not_available', 0, '', '{\'records\': 0}', 11, 4);
INSERT INTO `reports_testresult` VALUES (164, 'not_available', 0, '', '{\'records\': 0}', 12, 4);
INSERT INTO `reports_testresult` VALUES (165, 'not_available', 0, '', '{\'records\': 0}', 15, 4);
INSERT INTO `reports_testresult` VALUES (166, 'not_available', 0, '', '{\'records\': 0}', 16, 4);
INSERT INTO `reports_testresult` VALUES (167, 'not_available', 0, '', '{\'records\': 0}', 17, 4);
INSERT INTO `reports_testresult` VALUES (168, 'not_available', 0, '', '{\'records\': 0}', 18, 4);
INSERT INTO `reports_testresult` VALUES (169, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'emf-com-sg.mail.protection.outlook.com\', \'data\': \'success\'}]', 24, 4);
INSERT INTO `reports_testresult` VALUES (170, 'failed', 0, 'STARTLS is disabled on the remote SMTP server.', '[{\'host\': \'emf-com-sg.mail.protection.outlook.com\', \'data\': \'success\'}]', 28, 4);
INSERT INTO `reports_testresult` VALUES (171, 'success', 0, 'The certificate is valid.', '[{\'host\': \'emf-com-sg.mail.protection.outlook.com\', \'data\': \'success\'}]', 25, 4);
INSERT INTO `reports_testresult` VALUES (172, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'emf-com-sg.mail.protection.outlook.com\', \'data\': \'success\'}]', 26, 4);
INSERT INTO `reports_testresult` VALUES (173, 'success', 0, 'The certificate is valid.', '[{\'host\': \'emf-com-sg.mail.protection.outlook.com\', \'data\': \'success\'}]', 27, 4);
INSERT INTO `reports_testresult` VALUES (174, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'emf-com-sg.mail.protection.outlook.com\', \'data\': \'success\'}]', 29, 4);
INSERT INTO `reports_testresult` VALUES (175, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 4);
INSERT INTO `reports_testresult` VALUES (176, 'not_available', 0, '', '', 14, 4);
INSERT INTO `reports_testresult` VALUES (177, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.emf.com.sg\'}', 19, 4);
INSERT INTO `reports_testresult` VALUES (178, 'success', 0, 'The certificate is valid.', '', 21, 4);
INSERT INTO `reports_testresult` VALUES (179, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 4);
INSERT INTO `reports_testresult` VALUES (180, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.emf.com.sg\'}', 23, 4);
INSERT INTO `reports_testresult` VALUES (181, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 4);
INSERT INTO `reports_testresult` VALUES (182, 'failed', -0.2, 'The X-Frame-Options header is not sent by the server.', '', 30, 4);
INSERT INTO `reports_testresult` VALUES (183, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server.', '', 31, 4);
INSERT INTO `reports_testresult` VALUES (184, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 4);
INSERT INTO `reports_testresult` VALUES (185, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server.', '', 33, 4);
INSERT INTO `reports_testresult` VALUES (186, 'failed', -0.2, 'The Referrer-Policy header is not sent by the server.', '', 34, 4);
INSERT INTO `reports_testresult` VALUES (187, 'failed', -0.7145, 'The Server header is sent by the server.', '{\'header\': \'Server\', \'value\': \'Apache\'}', 35, 4);
INSERT INTO `reports_testresult` VALUES (188, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 4);
INSERT INTO `reports_testresult` VALUES (189, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 4);
INSERT INTO `reports_testresult` VALUES (190, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 2}', 46, 4);
INSERT INTO `reports_testresult` VALUES (191, 'failed', -0.8, 'None of the cookie found has a valid syntax.', '[{\'invalid\': [{\'cookie\': \'qtrans_front_language\', \'value\': 1601975665, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}, {\'invalid\': [{\'cookie\': \'qtrans_front_language\', \'value\': 1601975666, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}]', 38, 4);
INSERT INTO `reports_testresult` VALUES (192, 'failed', -0.8, 'None of the cookies found had the \'HttpOnly\' flag.', '[{\'unsecure\': [\'qtrans_front_language\']}, {\'unsecure\': [\'qtrans_front_language\']}]', 40, 4);
INSERT INTO `reports_testresult` VALUES (193, 'failed', -0.8, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 4);
INSERT INTO `reports_testresult` VALUES (194, 'success', 0, 'None of the cookies sent via unsecure HTTP had the \'Secure\' flag enabled.', '', 41, 4);
INSERT INTO `reports_testresult` VALUES (195, 'success', 0, 'None of the cookies sent via unsecure HTTP are prefixed.', '', 39, 4);
INSERT INTO `reports_testresult` VALUES (196, 'failed', -0.4, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'qtrans_front_language\']}', 43, 4);
INSERT INTO `reports_testresult` VALUES (197, 'not_available', 0, '', '', 44, 4);
INSERT INTO `reports_testresult` VALUES (198, 'not_available', 0, '', '', 45, 4);
INSERT INTO `reports_testresult` VALUES (199, 'success', 0.7, 'Your IP address(es) are not listed on any blacklist.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'103.9.100.52\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 4);
INSERT INTO `reports_testresult` VALUES (200, 'error', 0, 'This test requires manual review.', '{\'error\': \"HTTPSConnectionPool(host=\'neutrinoapi.com\', port=443): Read timed out. (read timeout=5.5)\"}', 48, 4);
INSERT INTO `reports_testresult` VALUES (201, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 4);
INSERT INTO `reports_testresult` VALUES (202, 'failed', -1, 'A large number of services are exposed to the Internet.', '[443, 2096, 80, 110, 26, 465, 2082, 143, 3306, 2086, 995, 2077, 993, 2087, 2095, 21, 2083]', 50, 4);
INSERT INTO `reports_testresult` VALUES (203, 'failed', -2, 'Your domain was found at least once in known, public data leaks.', '{\'total\': 30, \'groups\': [{\'leak\': \'adobe\', \'count\': 1}, {\'leak\': \'antipublic\', \'count\': 5}, {\'leak\': \'breachcompilation\', \'count\': 6}, {\'leak\': \'neopets\', \'count\': 4}, {\'leak\': \'the-collections\', \'count\': 5}, {\'leak\': \'linkedin\', \'count\': 3}, {\'leak\': \'customerslive\', \'count\': 2}, {\'leak\': \'dropbox\', \'count\': 3}, {\'leak\': \'pdlcollection\', \'count\': 1}], \'query\': \'emf.com.sg\'}', 51, 4);
INSERT INTO `reports_testresult` VALUES (204, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 a mx ip4:3.1.152.20 ip4:203.142.17.222 ip4:13.228.127.53 ip4:173.243.134.66 ip4:203.92.80.204 -all\']}', 1, 5);
INSERT INTO `reports_testresult` VALUES (205, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 5);
INSERT INTO `reports_testresult` VALUES (206, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 5);
INSERT INTO `reports_testresult` VALUES (207, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 0}', 4, 5);
INSERT INTO `reports_testresult` VALUES (208, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 5);
INSERT INTO `reports_testresult` VALUES (209, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 1}', 5, 5);
INSERT INTO `reports_testresult` VALUES (210, 'success', 0, 'Your SPF record is too permissive.', '{\'policy\': \'-all\'}', 3, 5);
INSERT INTO `reports_testresult` VALUES (211, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 a mx ip4:3.1.152.20 ip4:203.142.17.222 ip4:13.228.127.53 ip4:173.243.134.66 ip4:203.92.80.204 -all\'}', 8, 5);
INSERT INTO `reports_testresult` VALUES (212, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 5);
INSERT INTO `reports_testresult` VALUES (213, 'failed', -1, 'No DMARC record was found.', '{\'records\': 0}', 10, 5);
INSERT INTO `reports_testresult` VALUES (214, 'not_available', 0, '', '{\'records\': 0}', 11, 5);
INSERT INTO `reports_testresult` VALUES (215, 'not_available', 0, '', '{\'records\': 0}', 12, 5);
INSERT INTO `reports_testresult` VALUES (216, 'not_available', 0, '', '{\'records\': 0}', 15, 5);
INSERT INTO `reports_testresult` VALUES (217, 'not_available', 0, '', '{\'records\': 0}', 16, 5);
INSERT INTO `reports_testresult` VALUES (218, 'not_available', 0, '', '{\'records\': 0}', 17, 5);
INSERT INTO `reports_testresult` VALUES (219, 'not_available', 0, '', '{\'records\': 0}', 18, 5);
INSERT INTO `reports_testresult` VALUES (220, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'gw4066.fortimail.com\', \'data\': \'success\'}]', 24, 5);
INSERT INTO `reports_testresult` VALUES (221, 'failed', 0, 'STARTLS is disabled on the remote SMTP server.', '[{\'host\': \'gw4066.fortimail.com\', \'data\': \'success\'}]', 28, 5);
INSERT INTO `reports_testresult` VALUES (222, 'success', 0, 'The certificate is valid.', '[{\'host\': \'gw4066.fortimail.com\', \'data\': \'success\'}]', 25, 5);
INSERT INTO `reports_testresult` VALUES (223, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'gw4066.fortimail.com\', \'data\': \'success\'}]', 26, 5);
INSERT INTO `reports_testresult` VALUES (224, 'success', 0, 'The certificate is valid.', '[{\'host\': \'gw4066.fortimail.com\', \'data\': \'success\'}]', 27, 5);
INSERT INTO `reports_testresult` VALUES (225, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'gw4066.fortimail.com\', \'data\': \'success\'}]', 29, 5);
INSERT INTO `reports_testresult` VALUES (226, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 5);
INSERT INTO `reports_testresult` VALUES (227, 'not_available', 0, '', '', 14, 5);
INSERT INTO `reports_testresult` VALUES (228, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.ezlink.com.sg\'}', 19, 5);
INSERT INTO `reports_testresult` VALUES (229, 'failed', -1, 'The certificate is invalid.', '{\'self-signed\': False, \'is-expired\': False, \'invalid-cn\': True}', 21, 5);
INSERT INTO `reports_testresult` VALUES (230, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 5);
INSERT INTO `reports_testresult` VALUES (231, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.ezlink.com.sg\'}', 23, 5);
INSERT INTO `reports_testresult` VALUES (232, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 5);
INSERT INTO `reports_testresult` VALUES (233, 'failed', -0.2, 'The X-Frame-Options header is not sent by the server.', '', 30, 5);
INSERT INTO `reports_testresult` VALUES (234, 'success', 0, 'The X-XSS-Protection header is returned and is properly configured.', '{\'header\': \'X-Xss-Protection\', \'value\': \'1; mode=block\'}', 31, 5);
INSERT INTO `reports_testresult` VALUES (235, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '{\'header\': \'X-Content-Type-Options\', \'value\': \'nosniffâ\\x80\\x9d\'}', 32, 5);
INSERT INTO `reports_testresult` VALUES (236, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server.', '', 33, 5);
INSERT INTO `reports_testresult` VALUES (237, 'failed', -0.2, 'The Referrer-Policy header is not sent by the server.', '', 34, 5);
INSERT INTO `reports_testresult` VALUES (238, 'failed', -0.7145, 'The Server header is sent by the server.', '{\'header\': \'Server\', \'value\': \'Apache\'}', 35, 5);
INSERT INTO `reports_testresult` VALUES (239, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 5);
INSERT INTO `reports_testresult` VALUES (240, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 5);
INSERT INTO `reports_testresult` VALUES (241, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 6}', 46, 5);
INSERT INTO `reports_testresult` VALUES (242, 'failed', -0.6, 'None of the cookie found has a valid syntax.', '[{\'invalid\': [{\'cookie\': \'visid_incap_1848920\', \'value\': 1601891106, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}, {\'invalid\': [{\'cookie\': \'visid_incap_1848920\', \'value\': 1601891105, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}, {\'cookie\': \'wYv\', \'value\': 1570450490, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}]', 38, 5);
INSERT INTO `reports_testresult` VALUES (243, 'failed', -0.8, 'None of the cookies found had the \'HttpOnly\' flag.', '[{\'unsecure\': [\'incap_ses_220_1848920\', \'visid_incap_1848920\']}, {\'unsecure\': [\'incap_ses_220_1848920\', \'visid_incap_1848920\', \'PHPSESSID\', \'wYv\']}]', 40, 5);
INSERT INTO `reports_testresult` VALUES (244, 'failed', -0.8, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 5);
INSERT INTO `reports_testresult` VALUES (245, 'success', 0, 'None of the cookies sent via unsecure HTTP had the \'Secure\' flag enabled.', '', 41, 5);
INSERT INTO `reports_testresult` VALUES (246, 'success', 0, 'None of the cookies sent via unsecure HTTP are prefixed.', '', 39, 5);
INSERT INTO `reports_testresult` VALUES (247, 'failed', -0.4, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'incap_ses_220_1848920\', \'visid_incap_1848920\', \'PHPSESSID\', \'wYv\']}', 43, 5);
INSERT INTO `reports_testresult` VALUES (248, 'not_available', 0, '', '', 44, 5);
INSERT INTO `reports_testresult` VALUES (249, 'not_available', 0, '', '', 45, 5);
INSERT INTO `reports_testresult` VALUES (250, 'error', 0, '', '{\'error\': \"\'NoneType\' object has no attribute \'split\'\"}', 47, 5);
INSERT INTO `reports_testresult` VALUES (251, 'error', 0, 'This test requires manual review.', '{\'error\': \"HTTPSConnectionPool(host=\'neutrinoapi.com\', port=443): Read timed out. (read timeout=5.5)\"}', 48, 5);
INSERT INTO `reports_testresult` VALUES (252, 'error', 0, 'This test requires manual review.', '{\'error\': \"Failed to resolve host \'ezlink.com.sg\' to an IP address.\"}', 49, 5);
INSERT INTO `reports_testresult` VALUES (253, 'error', 0, 'This test requires manual review.', '{\'error\': \"Failed to resolve host \'ezlink.com.sg\' to an IP address.\"}', 50, 5);
INSERT INTO `reports_testresult` VALUES (254, 'failed', -1.1, 'Your domain was found at least once in known, public data leaks.', '{\'total\': 21, \'groups\': [{\'leak\': \'myfitnesspal\', \'count\': 1}, {\'leak\': \'the-collections\', \'count\': 9}, {\'leak\': \'linkedin\', \'count\': 3}, {\'leak\': \'pdlcollection\', \'count\': 1}, {\'leak\': \'antipublic\', \'count\': 1}, {\'leak\': \'breachcompilation\', \'count\': 2}, {\'leak\': \'exploitin\', \'count\': 1}, {\'leak\': \'verificationsio\', \'count\': 1}, {\'leak\': \'customerslive\', \'count\': 2}], \'query\': \'ezlink.com.sg\'}', 51, 5);
INSERT INTO `reports_testresult` VALUES (255, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 include:_spf.m1net.com.sg\']}', 1, 6);
INSERT INTO `reports_testresult` VALUES (256, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 6);
INSERT INTO `reports_testresult` VALUES (257, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 6);
INSERT INTO `reports_testresult` VALUES (258, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 0}', 4, 6);
INSERT INTO `reports_testresult` VALUES (259, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 6);
INSERT INTO `reports_testresult` VALUES (260, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 6);
INSERT INTO `reports_testresult` VALUES (261, 'failed', -1, 'Your SPF record prevents unrestricted use of the domain.', '', 3, 6);
INSERT INTO `reports_testresult` VALUES (262, 'failed', -0.2, 'Some data was found following the \'all\' mechanism.', '{\'record\': \'v=spf1 include:_spf.m1net.com.sg\'}', 8, 6);
INSERT INTO `reports_testresult` VALUES (263, 'failed', -1, 'There is no indication that DKIM records exist for the given domain.', '', 9, 6);
INSERT INTO `reports_testresult` VALUES (264, 'failed', -1, 'No DMARC record was found.', '{\'records\': 0}', 10, 6);
INSERT INTO `reports_testresult` VALUES (265, 'not_available', 0, '', '{\'records\': 0}', 11, 6);
INSERT INTO `reports_testresult` VALUES (266, 'not_available', 0, '', '{\'records\': 0}', 12, 6);
INSERT INTO `reports_testresult` VALUES (267, 'not_available', 0, '', '{\'records\': 0}', 15, 6);
INSERT INTO `reports_testresult` VALUES (268, 'not_available', 0, '', '{\'records\': 0}', 16, 6);
INSERT INTO `reports_testresult` VALUES (269, 'not_available', 0, '', '{\'records\': 0}', 17, 6);
INSERT INTO `reports_testresult` VALUES (270, 'not_available', 0, '', '{\'records\': 0}', 18, 6);
INSERT INTO `reports_testresult` VALUES (271, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'mxgate.m1net.com.sg\', \'data\': \'success\'}]', 24, 6);
INSERT INTO `reports_testresult` VALUES (272, 'failed', 0, 'STARTLS is disabled on the remote SMTP server.', '[{\'host\': \'mxgate.m1net.com.sg\', \'data\': \'success\'}]', 28, 6);
INSERT INTO `reports_testresult` VALUES (273, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mxgate.m1net.com.sg\', \'data\': \'success\'}]', 25, 6);
INSERT INTO `reports_testresult` VALUES (274, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'mxgate.m1net.com.sg\', \'data\': \'success\'}]', 26, 6);
INSERT INTO `reports_testresult` VALUES (275, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mxgate.m1net.com.sg\', \'data\': \'success\'}]', 27, 6);
INSERT INTO `reports_testresult` VALUES (276, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'mxgate.m1net.com.sg\', \'data\': \'success\'}]', 29, 6);
INSERT INTO `reports_testresult` VALUES (277, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 6);
INSERT INTO `reports_testresult` VALUES (278, 'not_available', 0, '', '', 14, 6);
INSERT INTO `reports_testresult` VALUES (279, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.alex.world\'}', 19, 6);
INSERT INTO `reports_testresult` VALUES (280, 'failed', -1, 'The certificate is invalid.', '{\'self-signed\': False, \'is-expired\': False, \'invalid-cn\': True}', 21, 6);
INSERT INTO `reports_testresult` VALUES (281, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 6);
INSERT INTO `reports_testresult` VALUES (282, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.alex.world\'}', 23, 6);
INSERT INTO `reports_testresult` VALUES (283, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 6);
INSERT INTO `reports_testresult` VALUES (284, 'success', 0, 'The X-Frame-Options header is returned and is properly configured.', '{\'header\': \'X-Frame-Options\', \'value\': \'SAMEORIGIN\'}', 30, 6);
INSERT INTO `reports_testresult` VALUES (285, 'success', 0, 'The X-XSS-Protection header is returned and is properly configured.', '{\'header\': \'X-Xss-Protection\', \'value\': \'1; mode=block\'}', 31, 6);
INSERT INTO `reports_testresult` VALUES (286, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '{\'header\': \'X-Content-Type-Options\', \'value\': \'nosniff\'}', 32, 6);
INSERT INTO `reports_testresult` VALUES (287, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server.', '', 33, 6);
INSERT INTO `reports_testresult` VALUES (288, 'failed', -0.2, 'The Referrer-Policy header is not sent by the server.', '', 34, 6);
INSERT INTO `reports_testresult` VALUES (289, 'failed', -0.7145, 'The Server header is sent by the server.', '{\'header\': \'Server\', \'value\': \'cloudflare\'}', 35, 6);
INSERT INTO `reports_testresult` VALUES (290, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 6);
INSERT INTO `reports_testresult` VALUES (291, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 6);
INSERT INTO `reports_testresult` VALUES (292, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 2}', 46, 6);
INSERT INTO `reports_testresult` VALUES (293, 'failed', -0.3, 'None of the cookie found has a valid syntax.', '[\'\', {\'invalid\': [{\'cookie\': \'__cfduid\', \'value\': 1601975708, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}]', 38, 6);
INSERT INTO `reports_testresult` VALUES (294, 'success', 0, 'All of the cookies sent via HTTP uses the \'HttpOnly\'.', '[\'\', \'\']', 40, 6);
INSERT INTO `reports_testresult` VALUES (295, 'failed', -0.4, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 6);
INSERT INTO `reports_testresult` VALUES (296, 'not_available', 0, '', '', 41, 6);
INSERT INTO `reports_testresult` VALUES (297, 'not_available', 0, '', '', 39, 6);
INSERT INTO `reports_testresult` VALUES (298, 'failed', -0.3, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'_alex_session\']}', 43, 6);
INSERT INTO `reports_testresult` VALUES (299, 'not_available', 0, '', '', 44, 6);
INSERT INTO `reports_testresult` VALUES (300, 'not_available', 0, '', '', 45, 6);
INSERT INTO `reports_testresult` VALUES (301, 'success', 0.7, 'Your IP address(es) are not listed on any blacklist.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'104.31.84.4\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 6);
INSERT INTO `reports_testresult` VALUES (302, 'success', 0.3, 'Your host has not been associated with malicious activities.', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 298, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 624, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 280, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 784, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 799, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 592, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 146, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 144, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 143, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 139, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 139, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 138, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 135, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 135, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 599, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 578, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 571, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 5018, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 271, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 768, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 768, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 765, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 765, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 1142, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 66, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 255, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 224, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'alex.world\', \'is-listed\': False}', 48, 6);
INSERT INTO `reports_testresult` VALUES (303, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 6);
INSERT INTO `reports_testresult` VALUES (304, 'partial', 0.10000000000000009, '', '[443, 80, 2083, 8443, 2086, 8880, 2082, 8080, 2052]', 50, 6);
INSERT INTO `reports_testresult` VALUES (305, 'success', 1, 'Your domain was not found in any known public leaks.', '{\'total\': 0, \'groups\': [], \'query\': \'alex.world\'}', 51, 6);
INSERT INTO `reports_testresult` VALUES (306, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 ip4:93.191.26.224/29 include:spf.protection.outlook.com include:spf.sotaconnect.net ~all\']}', 1, 7);
INSERT INTO `reports_testresult` VALUES (307, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 7);
INSERT INTO `reports_testresult` VALUES (308, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 7);
INSERT INTO `reports_testresult` VALUES (309, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 2}', 4, 7);
INSERT INTO `reports_testresult` VALUES (310, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 7);
INSERT INTO `reports_testresult` VALUES (311, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 7);
INSERT INTO `reports_testresult` VALUES (312, 'success', 0, 'Your SPF record is too permissive.', '{\'policy\': \'~all\'}', 3, 7);
INSERT INTO `reports_testresult` VALUES (313, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 ip4:93.191.26.224/29 include:spf.protection.outlook.com include:spf.sotaconnect.net ~all\'}', 8, 7);
INSERT INTO `reports_testresult` VALUES (314, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 7);
INSERT INTO `reports_testresult` VALUES (315, 'failed', -1, 'No DMARC record was found.', '{\'records\': 0}', 10, 7);
INSERT INTO `reports_testresult` VALUES (316, 'not_available', 0, '', '{\'records\': 0}', 11, 7);
INSERT INTO `reports_testresult` VALUES (317, 'not_available', 0, '', '{\'records\': 0}', 12, 7);
INSERT INTO `reports_testresult` VALUES (318, 'not_available', 0, '', '{\'records\': 0}', 15, 7);
INSERT INTO `reports_testresult` VALUES (319, 'not_available', 0, '', '{\'records\': 0}', 16, 7);
INSERT INTO `reports_testresult` VALUES (320, 'not_available', 0, '', '{\'records\': 0}', 17, 7);
INSERT INTO `reports_testresult` VALUES (321, 'not_available', 0, '', '{\'records\': 0}', 18, 7);
INSERT INTO `reports_testresult` VALUES (322, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'mx-es2.sotaconnect.net\', \'data\': \'success\'}, {\'host\': \'mx-es1.sotaconnect.net\', \'data\': \'success\'}]', 24, 7);
INSERT INTO `reports_testresult` VALUES (323, 'failed', 0, 'STARTLS is disabled on the remote SMTP server.', '[{\'host\': \'mx-es2.sotaconnect.net\', \'data\': \'success\'}, {\'host\': \'mx-es1.sotaconnect.net\', \'data\': \'success\'}]', 28, 7);
INSERT INTO `reports_testresult` VALUES (324, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mx-es2.sotaconnect.net\', \'data\': \'success\'}, {\'host\': \'mx-es1.sotaconnect.net\', \'data\': \'success\'}]', 25, 7);
INSERT INTO `reports_testresult` VALUES (325, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'mx-es2.sotaconnect.net\', \'data\': \'success\'}, {\'host\': \'mx-es1.sotaconnect.net\', \'data\': \'success\'}]', 26, 7);
INSERT INTO `reports_testresult` VALUES (326, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mx-es2.sotaconnect.net\', \'data\': \'success\'}, {\'host\': \'mx-es1.sotaconnect.net\', \'data\': \'success\'}]', 27, 7);
INSERT INTO `reports_testresult` VALUES (327, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'mx-es2.sotaconnect.net\', \'data\': \'success\'}, {\'host\': \'mx-es1.sotaconnect.net\', \'data\': \'success\'}]', 29, 7);
INSERT INTO `reports_testresult` VALUES (328, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 7);
INSERT INTO `reports_testresult` VALUES (329, 'not_available', 0, '', '', 14, 7);
INSERT INTO `reports_testresult` VALUES (330, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.grpgroup.co.uk\'}', 19, 7);
INSERT INTO `reports_testresult` VALUES (331, 'success', 0, 'The certificate is valid.', '', 21, 7);
INSERT INTO `reports_testresult` VALUES (332, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 7);
INSERT INTO `reports_testresult` VALUES (333, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.grpgroup.co.uk\'}', 23, 7);
INSERT INTO `reports_testresult` VALUES (334, 'success', 0, 'A HSTS header was provided from the server.', '{\'header\': \'Strict-Transport-Security\', \'value\': \'max-age=31536000; includeSubDomains\'}', 20, 7);
INSERT INTO `reports_testresult` VALUES (335, 'success', 0, 'The X-Frame-Options header is returned and is properly configured.', '{\'header\': \'X-Frame-Options\', \'value\': \'SAMEORIGIN\'}', 30, 7);
INSERT INTO `reports_testresult` VALUES (336, 'success', 0, 'The X-XSS-Protection header is returned and is properly configured.', '{\'header\': \'X-Xss-Protection\', \'value\': \'1; mode=block\'}', 31, 7);
INSERT INTO `reports_testresult` VALUES (337, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '{\'header\': \'X-Content-Type-Options\', \'value\': \'nosniff\'}', 32, 7);
INSERT INTO `reports_testresult` VALUES (338, 'failed', -0.1, 'The Content Security Policy (CSP) was not sent by the server.', '{\'header\': \'Content-Security-Policy\', \'value\': \"block-all-mixed-content; base-uri \'none\'; default-src \'none\'; frame-ancestors \'none\'; frame-src player.vimeo.com www.google.com www.youtube.com; object-src \'self\'; media-src \'self\'; form-action \'self\'; script-src \'self\' \'nonce-78nNfsFCoSMymhNlvK1rQOGge0HoG75QbSHS8/2GluA=\' bam.nr-data.net js-agent.newrelic.com vimeo.com player.vimeo.com maps.googleapis.com ssl.google-analytics.com www.googleadservices.com www.google-analytics.com www.google.com/recaptcha/ www.googletagmanager.com www.gstatic.com/recaptcha/; connect-src \'self\' our.umbraco.com skyfire.vimeocdn.com maps.googleapis.com; img-src * data:; style-src \'self\' \'unsafe-inline\' maps.googleapis.com fonts.googleapis.com; font-src \'self\' fonts.gstatic.com fonts.googleapis.com data:;\"}', 33, 7);
INSERT INTO `reports_testresult` VALUES (339, 'success', 0, 'The Referrer-Policy header is returned and is properly configured.', '{\'header\': \'Referrer-Policy\', \'value\': \'strict-origin-when-cross-origin\'}', 34, 7);
INSERT INTO `reports_testresult` VALUES (340, 'failed', -0.7145, 'The Server header is sent by the server.', '{\'header\': \'Server\', \'value\': \'nginx\'}', 35, 7);
INSERT INTO `reports_testresult` VALUES (341, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 7);
INSERT INTO `reports_testresult` VALUES (342, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 7);
INSERT INTO `reports_testresult` VALUES (343, 'success', 0, 'The target website is not sending any cookies.', '', 46, 7);
INSERT INTO `reports_testresult` VALUES (344, 'not_available', 0, '', '', 38, 7);
INSERT INTO `reports_testresult` VALUES (345, 'not_available', 0, '', '', 39, 7);
INSERT INTO `reports_testresult` VALUES (346, 'not_available', 0, '', '', 40, 7);
INSERT INTO `reports_testresult` VALUES (347, 'not_available', 0, '', '', 41, 7);
INSERT INTO `reports_testresult` VALUES (348, 'not_available', 0, '', '', 42, 7);
INSERT INTO `reports_testresult` VALUES (349, 'not_available', 0, '', '', 43, 7);
INSERT INTO `reports_testresult` VALUES (350, 'not_available', 0, '', '', 44, 7);
INSERT INTO `reports_testresult` VALUES (351, 'not_available', 0, '', '', 45, 7);
INSERT INTO `reports_testresult` VALUES (352, 'success', 0.7, 'Your IP address(es) are not listed on any blacklist.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'35.246.91.140\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 7);
INSERT INTO `reports_testresult` VALUES (353, 'success', 0.3, 'Your host has not been associated with malicious activities.', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 410, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 560, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 1115, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 299, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 243, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 536, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1731, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1729, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1727, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 225, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 225, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 224, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 224, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 223, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 231, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 269, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 262, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 747, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 214, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 228, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 227, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 226, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 226, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 509, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 99, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 209, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 208, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'grpgroup.co.uk\', \'is-listed\': False}', 48, 7);
INSERT INTO `reports_testresult` VALUES (354, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 7);
INSERT INTO `reports_testresult` VALUES (355, 'success', 1, 'No or few ports are exposed to the Internet.', '[80, 443]', 50, 7);
INSERT INTO `reports_testresult` VALUES (356, 'partial', 0.7, '', '{\'total\': 3, \'groups\': [{\'leak\': \'myfitnesspal\', \'count\': 1}, {\'leak\': \'verificationsio\', \'count\': 1}, {\'leak\': \'customerslive\', \'count\': 1}], \'query\': \'grpgroup.co.uk\'}', 51, 7);
INSERT INTO `reports_testresult` VALUES (357, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 include:support.gov.sg include:spf2.mom.gov.sg include:spf.mandrillapp.com -all\']}', 1, 8);
INSERT INTO `reports_testresult` VALUES (358, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 8);
INSERT INTO `reports_testresult` VALUES (359, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 8);
INSERT INTO `reports_testresult` VALUES (360, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 9}', 4, 8);
INSERT INTO `reports_testresult` VALUES (361, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 8);
INSERT INTO `reports_testresult` VALUES (362, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 8);
INSERT INTO `reports_testresult` VALUES (363, 'success', 0, 'Your SPF record is too permissive.', '{\'policy\': \'-all\'}', 3, 8);
INSERT INTO `reports_testresult` VALUES (364, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 include:support.gov.sg include:spf2.mom.gov.sg include:spf.mandrillapp.com -all\'}', 8, 8);
INSERT INTO `reports_testresult` VALUES (365, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 8);
INSERT INTO `reports_testresult` VALUES (366, 'failed', -1, 'No DMARC record was found.', '{\'records\': 0}', 10, 8);
INSERT INTO `reports_testresult` VALUES (367, 'not_available', 0, '', '{\'records\': 0}', 11, 8);
INSERT INTO `reports_testresult` VALUES (368, 'not_available', 0, '', '{\'records\': 0}', 12, 8);
INSERT INTO `reports_testresult` VALUES (369, 'not_available', 0, '', '{\'records\': 0}', 15, 8);
INSERT INTO `reports_testresult` VALUES (370, 'not_available', 0, '', '{\'records\': 0}', 16, 8);
INSERT INTO `reports_testresult` VALUES (371, 'not_available', 0, '', '{\'records\': 0}', 17, 8);
INSERT INTO `reports_testresult` VALUES (372, 'not_available', 0, '', '{\'records\': 0}', 18, 8);
INSERT INTO `reports_testresult` VALUES (373, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'mx2.sgict.gov.sg\', \'data\': \'success\'}, {\'host\': \'mx1.sgict.gov.sg\', \'data\': \'success\'}, {\'host\': \'mx4.sgict.gov.sg\', \'data\': \'success\'}]', 24, 8);
INSERT INTO `reports_testresult` VALUES (374, 'failed', 0, 'STARTLS is disabled on the remote SMTP server.', '[{\'host\': \'mx2.sgict.gov.sg\', \'data\': \'success\'}, {\'host\': \'mx1.sgict.gov.sg\', \'data\': \'success\'}, {\'host\': \'mx4.sgict.gov.sg\', \'data\': \'success\'}]', 28, 8);
INSERT INTO `reports_testresult` VALUES (375, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mx2.sgict.gov.sg\', \'data\': \'success\'}, {\'host\': \'mx1.sgict.gov.sg\', \'data\': \'success\'}, {\'host\': \'mx4.sgict.gov.sg\', \'data\': \'success\'}]', 25, 8);
INSERT INTO `reports_testresult` VALUES (376, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'mx2.sgict.gov.sg\', \'data\': \'success\'}, {\'host\': \'mx1.sgict.gov.sg\', \'data\': \'success\'}, {\'host\': \'mx4.sgict.gov.sg\', \'data\': \'success\'}]', 26, 8);
INSERT INTO `reports_testresult` VALUES (377, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mx2.sgict.gov.sg\', \'data\': \'success\'}, {\'host\': \'mx1.sgict.gov.sg\', \'data\': \'success\'}, {\'host\': \'mx4.sgict.gov.sg\', \'data\': \'success\'}]', 27, 8);
INSERT INTO `reports_testresult` VALUES (378, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'mx2.sgict.gov.sg\', \'data\': \'success\'}, {\'host\': \'mx1.sgict.gov.sg\', \'data\': \'success\'}, {\'host\': \'mx4.sgict.gov.sg\', \'data\': \'success\'}]', 29, 8);
INSERT INTO `reports_testresult` VALUES (379, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 8);
INSERT INTO `reports_testresult` VALUES (380, 'not_available', 0, '', '', 14, 8);
INSERT INTO `reports_testresult` VALUES (381, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.mom.gov.sg\'}', 19, 8);
INSERT INTO `reports_testresult` VALUES (382, 'success', 0, 'The certificate is valid.', '', 21, 8);
INSERT INTO `reports_testresult` VALUES (383, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 8);
INSERT INTO `reports_testresult` VALUES (384, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.mom.gov.sg\'}', 23, 8);
INSERT INTO `reports_testresult` VALUES (385, 'success', 0, 'A HSTS header was provided from the server.', '{\'header\': \'Strict-Transport-Security\', \'value\': \'max-age=31536000; includeSubDomains;, max-age=31536000; includeSubDomains;\'}', 20, 8);
INSERT INTO `reports_testresult` VALUES (386, 'success', 0, 'The X-Frame-Options header is returned and is properly configured.', '{\'header\': \'X-Frame-Options\', \'value\': \'SAMEORIGIN, SAMEORIGIN\'}', 30, 8);
INSERT INTO `reports_testresult` VALUES (387, 'success', 0, 'The X-XSS-Protection header is returned and is properly configured.', '{\'header\': \'X-Xss-Protection\', \'value\': \'1; mode=block\'}', 31, 8);
INSERT INTO `reports_testresult` VALUES (388, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '{\'header\': \'X-Content-Type-Options\', \'value\': \'nosniff\'}', 32, 8);
INSERT INTO `reports_testresult` VALUES (389, 'success', 0, 'The Content Security Policy header is returned and is properly configured.', '{\'header\': \'Content-Security-Policy\', \'value\': \"default-src \'self\'; style-src \'self\' \'unsafe-inline\' fonts.googleapis.com https://*.cloudfront.net; script-src \'self\' \'unsafe-inline\' www.google-analytics.com ajax.googleapis.com *.webengage.com https://www.googletagmanager.com *.amazonaws.com assets.adobedtm.com wogadobeanalytics.sc.omtrdc.net *.facebook.net *.bizographics.com https://va.ecitizen.gov.sg https://www.facebook.com https://*.cloudfront.net https://px.ads.linkedin.com \'unsafe-eval\'; connect-src \'self\' https://www.google-analytics.com *.webengage.com *.webengage.co https://www.googletagmanager.com *.amazonaws.com dpm.demdex.net wogadobeanalytics.sc.omtrdc.net *.facebook.net *.bizographics.com https://stats.g.doubleclick.net https://www.facebook.com https://*.cloudfront.net https://px.ads.linkedin.com; img-src * data:; media-src *; font-src * data: ; frame-src *\"}', 33, 8);
INSERT INTO `reports_testresult` VALUES (390, 'failed', -0.2, 'The Referrer-Policy header is not sent by the server.', '', 34, 8);
INSERT INTO `reports_testresult` VALUES (391, 'success', 0, 'The Server header is not returned by the server.', '', 35, 8);
INSERT INTO `reports_testresult` VALUES (392, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 8);
INSERT INTO `reports_testresult` VALUES (393, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 8);
INSERT INTO `reports_testresult` VALUES (394, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 6}', 46, 8);
INSERT INTO `reports_testresult` VALUES (395, 'failed', -0.3, 'None of the cookie found has a valid syntax.', '[\'\', {\'invalid\': [{\'cookie\': \'visid_incap_130760\', \'value\': 1601978686, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}, {\'cookie\': \'SC_ANALYTICS_GLOBAL_COOKIE\', \'value\': 1885811172, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}]', 38, 8);
INSERT INTO `reports_testresult` VALUES (396, 'failed', -0.3, 'None of the cookies found had the \'HttpOnly\' flag.', '[\'\', {\'unsecure\': [\'incap_ses_488_130760\', \'visid_incap_130760\']}]', 40, 8);
INSERT INTO `reports_testresult` VALUES (397, 'failed', -0.4, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 8);
INSERT INTO `reports_testresult` VALUES (398, 'not_available', 0, '', '', 41, 8);
INSERT INTO `reports_testresult` VALUES (399, 'not_available', 0, '', '', 39, 8);
INSERT INTO `reports_testresult` VALUES (400, 'failed', -0.3, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'incap_ses_488_130760\', \'visid_incap_130760\', \'BIGipServerPOOL_T00189BENW006_80\']}', 43, 8);
INSERT INTO `reports_testresult` VALUES (401, 'not_available', 0, '', '', 44, 8);
INSERT INTO `reports_testresult` VALUES (402, 'not_available', 0, '', '', 45, 8);
INSERT INTO `reports_testresult` VALUES (403, 'success', 0.7, 'Your IP address(es) are not listed on any blacklist.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'103.28.249.191\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 8);
INSERT INTO `reports_testresult` VALUES (404, 'success', 0.3, 'Your host has not been associated with malicious activities.', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 1175, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 1600, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 1169, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 1164, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 1163, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 1161, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1160, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1150, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1143, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 1142, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 1139, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 1139, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 1138, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 1138, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 1290, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 1282, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 1274, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 2038, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 1121, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 1121, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 1117, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 1116, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 1116, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 1801, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 512, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 1110, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 1108, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'mom.gov.sg\', \'is-listed\': False}', 48, 8);
INSERT INTO `reports_testresult` VALUES (405, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 8);
INSERT INTO `reports_testresult` VALUES (406, 'failed', -1, 'A large number of services are exposed to the Internet.', '[81, 8009, 2083, 25, 5269, 9009, 10443, 1935, 5901, 7779, 9100, 389, 9001, 7777, 2222, 8080, 1024, 9002, 8098, 1234, 1111, 8086, 3299, 8081, 12345, 9080, 9000, 82, 6001, 8888, 8443, 80, 4022, 6000, 9443, 5007, 2087, 7001]', 50, 8);
INSERT INTO `reports_testresult` VALUES (407, 'failed', -55.5, 'Your domain was found at least once in known, public data leaks.', '{\'total\': 565, \'groups\': [{\'leak\': \'verificationsio\', \'count\': 83}, {\'leak\': \'customerslive\', \'count\': 13}, {\'leak\': \'adobe\', \'count\': 5}, {\'leak\': \'breachcompilation\', \'count\': 94}, {\'leak\': \'linkedin\', \'count\': 107}, {\'leak\': \'pdlcollection\', \'count\': 26}, {\'leak\': \'the-collections\', \'count\': 68}, {\'leak\': \'antipublic\', \'count\': 45}, {\'leak\': \'exploitin\', \'count\': 26}, {\'leak\': \'disqus\', \'count\': 13}, {\'leak\': \'adaptio\', \'count\': 36}, {\'leak\': \'dropbox\', \'count\': 35}, {\'leak\': \'badoo\', \'count\': 6}, {\'leak\': \'myfitnesspal\', \'count\': 2}, {\'leak\': \'neopets\', \'count\': 2}, {\'leak\': \'bitly\', \'count\': 1}, {\'leak\': \'myspace\', \'count\': 1}, {\'leak\': \'pastebin\', \'count\': 2}], \'query\': \'mom.gov.sg\'}', 51, 8);
INSERT INTO `reports_testresult` VALUES (408, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 ip4:119.81.118.5 +a +mx +ip4:119.81.8.68 +ip4:119.81.118.6 +ip4:132.147.96.140 +ip4:119.81.111.94 ~all\']}', 1, 9);
INSERT INTO `reports_testresult` VALUES (409, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 9);
INSERT INTO `reports_testresult` VALUES (410, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 9);
INSERT INTO `reports_testresult` VALUES (411, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 0}', 4, 9);
INSERT INTO `reports_testresult` VALUES (412, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 9);
INSERT INTO `reports_testresult` VALUES (413, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 9);
INSERT INTO `reports_testresult` VALUES (414, 'success', 0, 'Your SPF record is too permissive.', '{\'policy\': \'~all\'}', 3, 9);
INSERT INTO `reports_testresult` VALUES (415, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 ip4:119.81.118.5 +a +mx +ip4:119.81.8.68 +ip4:119.81.118.6 +ip4:132.147.96.140 +ip4:119.81.111.94 ~all\'}', 8, 9);
INSERT INTO `reports_testresult` VALUES (416, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 9);
INSERT INTO `reports_testresult` VALUES (417, 'failed', -1, 'No DMARC record was found.', '{\'records\': 0}', 10, 9);
INSERT INTO `reports_testresult` VALUES (418, 'not_available', 0, '', '{\'records\': 0}', 11, 9);
INSERT INTO `reports_testresult` VALUES (419, 'not_available', 0, '', '{\'records\': 0}', 12, 9);
INSERT INTO `reports_testresult` VALUES (420, 'not_available', 0, '', '{\'records\': 0}', 15, 9);
INSERT INTO `reports_testresult` VALUES (421, 'not_available', 0, '', '{\'records\': 0}', 16, 9);
INSERT INTO `reports_testresult` VALUES (422, 'not_available', 0, '', '{\'records\': 0}', 17, 9);
INSERT INTO `reports_testresult` VALUES (423, 'not_available', 0, '', '{\'records\': 0}', 18, 9);
INSERT INTO `reports_testresult` VALUES (424, 'failed', -1, 'No SMTP server was found based on the given domain.', '', 24, 9);
INSERT INTO `reports_testresult` VALUES (425, 'not_available', 0, '', '', 28, 9);
INSERT INTO `reports_testresult` VALUES (426, 'not_available', 0, '', '', 25, 9);
INSERT INTO `reports_testresult` VALUES (427, 'not_available', 0, '', '', 26, 9);
INSERT INTO `reports_testresult` VALUES (428, 'not_available', 0, '', '', 27, 9);
INSERT INTO `reports_testresult` VALUES (429, 'not_available', 0, '', '', 29, 9);
INSERT INTO `reports_testresult` VALUES (430, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 9);
INSERT INTO `reports_testresult` VALUES (431, 'not_available', 0, '', '', 14, 9);
INSERT INTO `reports_testresult` VALUES (432, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.dezignformat.com\'}', 19, 9);
INSERT INTO `reports_testresult` VALUES (433, 'error', 0, '', '{\'error\': \'[SSL: CERTIFICATE_VERIFY_FAILED] certificate verify failed (_ssl.c:852)\'}', 21, 9);
INSERT INTO `reports_testresult` VALUES (434, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 9);
INSERT INTO `reports_testresult` VALUES (435, 'failed', -1, 'The request was not redirected to the HTTPS version.', '{\'website\': \'http://www.dezignformat.com\'}', 23, 9);
INSERT INTO `reports_testresult` VALUES (436, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 9);
INSERT INTO `reports_testresult` VALUES (437, 'failed', -0.2, 'The X-Frame-Options header is not sent by the server.', '', 30, 9);
INSERT INTO `reports_testresult` VALUES (438, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server.', '', 31, 9);
INSERT INTO `reports_testresult` VALUES (439, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 9);
INSERT INTO `reports_testresult` VALUES (440, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server.', '', 33, 9);
INSERT INTO `reports_testresult` VALUES (441, 'failed', -0.2, 'The Referrer-Policy header is not sent by the server.', '', 34, 9);
INSERT INTO `reports_testresult` VALUES (442, 'failed', -0.7145, 'The Server header is sent by the server.', '{\'header\': \'Server\', \'value\': \'nginx\'}', 35, 9);
INSERT INTO `reports_testresult` VALUES (443, 'partial', 0.5, 'The X-Powered-By header is returned and contains product information, but no version data was found.', '{\'header\': \'X-Powered-By\', \'value\': \'PleskLin\'}', 36, 9);
INSERT INTO `reports_testresult` VALUES (444, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 9);
INSERT INTO `reports_testresult` VALUES (445, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 2}', 46, 9);
INSERT INTO `reports_testresult` VALUES (446, 'failed', -0.8, 'None of the cookie found has a valid syntax.', '[{\'invalid\': [{\'cookie\': \'wfvt_70024754\', \'value\': 1570525283, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}, {\'invalid\': [{\'cookie\': \'wfvt_2522718761\', \'value\': 1570525284, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}]', 38, 9);
INSERT INTO `reports_testresult` VALUES (447, 'success', 0, 'All of the cookies sent via HTTP uses the \'HttpOnly\'.', '[\'\', \'\']', 40, 9);
INSERT INTO `reports_testresult` VALUES (448, 'failed', -0.8, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 9);
INSERT INTO `reports_testresult` VALUES (449, 'success', 0, 'None of the cookies sent via unsecure HTTP had the \'Secure\' flag enabled.', '', 41, 9);
INSERT INTO `reports_testresult` VALUES (450, 'success', 0, 'None of the cookies sent via unsecure HTTP are prefixed.', '', 39, 9);
INSERT INTO `reports_testresult` VALUES (451, 'failed', -0.4, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'wfvt_2522718761\']}', 43, 9);
INSERT INTO `reports_testresult` VALUES (452, 'not_available', 0, '', '', 44, 9);
INSERT INTO `reports_testresult` VALUES (453, 'not_available', 0, '', '', 45, 9);
INSERT INTO `reports_testresult` VALUES (454, 'success', 0.7, 'Your IP address(es) are not listed on any blacklist.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'103.26.40.75\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 9);
INSERT INTO `reports_testresult` VALUES (455, 'success', 0.3, 'Your host has not been associated with malicious activities.', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 165, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 692, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 703, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 314, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 267, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 484, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1715, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1712, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1760, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 102, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 101, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 98, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 98, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 97, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 558, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 558, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 538, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 622, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 1118, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 236, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 237, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 233, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 232, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 463, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 209, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 1106, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 1098, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'dezignformat.com\', \'is-listed\': False}', 48, 9);
INSERT INTO `reports_testresult` VALUES (456, 'partial', 0.7000000000000001, 'Some vulnerabilities were potentially identified.', '[\'CVE-2018-15919\', \'CVE-2017-15906\']', 49, 9);
INSERT INTO `reports_testresult` VALUES (457, 'failed', -1, 'A large number of services are exposed to the Internet.', '[2002, 25, 993, 143, 53, 80, 443, 21, 8880, 587, 3306, 8443]', 50, 9);
INSERT INTO `reports_testresult` VALUES (458, 'success', 1, 'Your domain was not found in any known public leaks.', '{\'total\': 0, \'groups\': [], \'query\': \'dezignformat.com\'}', 51, 9);
INSERT INTO `reports_testresult` VALUES (459, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 +ip4:210.160.252.171 +ip4:210.160.252.172 +ip4:192.157.179.201 +ip4:192.157.179.202 +ip4:192.91.135.107\" \" +ip4:155.56.221.13 +ip4:155.56.221.14 +ip4:1.1.114.0/25 +ip4:124.109.181.7 +ip4:219.106.250.246 include:spf.protection.outlook.com +ip4:52.23.49.7 +ip4:34.192.86.36 include:spf.messagelabs.com ?all\']}', 1, 10);
INSERT INTO `reports_testresult` VALUES (460, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 10);
INSERT INTO `reports_testresult` VALUES (461, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 10);
INSERT INTO `reports_testresult` VALUES (462, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 4}', 4, 10);
INSERT INTO `reports_testresult` VALUES (463, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 10);
INSERT INTO `reports_testresult` VALUES (464, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 10);
INSERT INTO `reports_testresult` VALUES (465, 'failed', -1, 'Your SPF record prevents unrestricted use of the domain.', '{\'policy\': \'?all\'}', 3, 10);
INSERT INTO `reports_testresult` VALUES (466, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 +ip4:210.160.252.171 +ip4:210.160.252.172 +ip4:192.157.179.201 +ip4:192.157.179.202 +ip4:192.91.135.107\" \" +ip4:155.56.221.13 +ip4:155.56.221.14 +ip4:1.1.114.0/25 +ip4:124.109.181.7 +ip4:219.106.250.246 include:spf.protection.outlook.com +ip4:52.23.49.7 +ip4:34.192.86.36 include:spf.messagelabs.com ?all\'}', 8, 10);
INSERT INTO `reports_testresult` VALUES (467, 'failed', -1, 'There is no indication that DKIM records exist for the given domain.', '', 9, 10);
INSERT INTO `reports_testresult` VALUES (468, 'failed', -1, 'No DMARC record was found.', '{\'records\': 0}', 10, 10);
INSERT INTO `reports_testresult` VALUES (469, 'not_available', 0, '', '{\'records\': 0}', 11, 10);
INSERT INTO `reports_testresult` VALUES (470, 'not_available', 0, '', '{\'records\': 0}', 12, 10);
INSERT INTO `reports_testresult` VALUES (471, 'not_available', 0, '', '{\'records\': 0}', 15, 10);
INSERT INTO `reports_testresult` VALUES (472, 'not_available', 0, '', '{\'records\': 0}', 16, 10);
INSERT INTO `reports_testresult` VALUES (473, 'not_available', 0, '', '{\'records\': 0}', 17, 10);
INSERT INTO `reports_testresult` VALUES (474, 'not_available', 0, '', '{\'records\': 0}', 18, 10);
INSERT INTO `reports_testresult` VALUES (475, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'renesas-com.mail.protection.outlook.com\', \'data\': \'success\'}]', 24, 10);
INSERT INTO `reports_testresult` VALUES (476, 'failed', 0, 'STARTLS is disabled on the remote SMTP server.', '[{\'host\': \'renesas-com.mail.protection.outlook.com\', \'data\': \'success\'}]', 28, 10);
INSERT INTO `reports_testresult` VALUES (477, 'success', 0, 'The certificate is valid.', '[{\'host\': \'renesas-com.mail.protection.outlook.com\', \'data\': \'success\'}]', 25, 10);
INSERT INTO `reports_testresult` VALUES (478, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'renesas-com.mail.protection.outlook.com\', \'data\': \'success\'}]', 26, 10);
INSERT INTO `reports_testresult` VALUES (479, 'success', 0, 'The certificate is valid.', '[{\'host\': \'renesas-com.mail.protection.outlook.com\', \'data\': \'success\'}]', 27, 10);
INSERT INTO `reports_testresult` VALUES (480, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'renesas-com.mail.protection.outlook.com\', \'data\': \'success\'}]', 29, 10);
INSERT INTO `reports_testresult` VALUES (481, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 10);
INSERT INTO `reports_testresult` VALUES (482, 'not_available', 0, '', '', 14, 10);
INSERT INTO `reports_testresult` VALUES (483, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.renesas.com\'}', 19, 10);
INSERT INTO `reports_testresult` VALUES (484, 'success', 0, 'The certificate is valid.', '', 21, 10);
INSERT INTO `reports_testresult` VALUES (485, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 10);
INSERT INTO `reports_testresult` VALUES (486, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.renesas.com\'}', 23, 10);
INSERT INTO `reports_testresult` VALUES (487, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 10);
INSERT INTO `reports_testresult` VALUES (488, 'failed', -0.2, 'The X-Frame-Options header is not sent by the server.', '', 30, 10);
INSERT INTO `reports_testresult` VALUES (489, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server.', '', 31, 10);
INSERT INTO `reports_testresult` VALUES (490, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 10);
INSERT INTO `reports_testresult` VALUES (491, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server.', '', 33, 10);
INSERT INTO `reports_testresult` VALUES (492, 'failed', -0.2, 'The Referrer-Policy header is not sent by the server.', '', 34, 10);
INSERT INTO `reports_testresult` VALUES (493, 'failed', -0.7145, 'The Server header is sent by the server.', '{\'header\': \'Server\', \'value\': \'Apache\'}', 35, 10);
INSERT INTO `reports_testresult` VALUES (494, 'failed', 0, 'The X-Powered-By header is returned and contains product and information data.', '{\'header\': \'X-Powered-By\', \'value\': \'Jetty(9.2.9.v20150224)\'}', 36, 10);
INSERT INTO `reports_testresult` VALUES (495, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 10);
INSERT INTO `reports_testresult` VALUES (496, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 4}', 46, 10);
INSERT INTO `reports_testresult` VALUES (497, 'failed', -0.8, 'None of the cookie found has a valid syntax.', '[{\'invalid\': [{\'cookie\': \'_abck\', \'value\': 1602060662, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}, {\'cookie\': \'bm_sz\', \'value\': 1570539059, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}, {\'invalid\': [{\'cookie\': \'_abck\', \'value\': 1602060664, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}, {\'cookie\': \'bm_sz\', \'value\': 1570539062, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}]', 38, 10);
INSERT INTO `reports_testresult` VALUES (498, 'failed', -0.6, 'None of the cookies found had the \'HttpOnly\' flag.', '[{\'unsecure\': [\'_abck\']}, {\'unsecure\': [\'_abck\']}]', 40, 10);
INSERT INTO `reports_testresult` VALUES (499, 'failed', -0.8, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 10);
INSERT INTO `reports_testresult` VALUES (500, 'success', 0, 'None of the cookies sent via unsecure HTTP had the \'Secure\' flag enabled.', '', 41, 10);
INSERT INTO `reports_testresult` VALUES (501, 'success', 0, 'None of the cookies sent via unsecure HTTP are prefixed.', '', 39, 10);
INSERT INTO `reports_testresult` VALUES (502, 'failed', -0.3, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'bm_sz\']}', 43, 10);
INSERT INTO `reports_testresult` VALUES (503, 'not_available', 0, '', '', 44, 10);
INSERT INTO `reports_testresult` VALUES (504, 'not_available', 0, '', '', 45, 10);
INSERT INTO `reports_testresult` VALUES (505, 'success', 0.7, 'Your IP address(es) are not listed on any blacklist.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'210.248.164.218\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 10);
INSERT INTO `reports_testresult` VALUES (506, 'success', 0.3, 'Your host has not been associated with malicious activities.', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 7, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 805, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 73, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 405, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 161, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 173, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1150, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1130, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 3564, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 220, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 212, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 205, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 206, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 214, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 2, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 305, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 193, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 986, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 187, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 278, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 277, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 277, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 277, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 161, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 3, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 245, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 179, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'renesas.com\', \'is-listed\': False}', 48, 10);
INSERT INTO `reports_testresult` VALUES (507, 'partial', 0.7000000000000001, 'Some vulnerabilities were potentially identified.', '[\'CVE-2015-0204\', \'CVE-2015-4000\']', 49, 10);
INSERT INTO `reports_testresult` VALUES (508, 'success', 1, 'No or few ports are exposed to the Internet.', '[443, 80]', 50, 10);
INSERT INTO `reports_testresult` VALUES (509, 'failed', -621.4000000000001, 'Your domain was found at least once in known, public data leaks.', '{\'total\': 6224, \'groups\': [{\'leak\': \'verificationsio\', \'count\': 1971}, {\'leak\': \'adaptio\', \'count\': 652}, {\'leak\': \'breachcompilation\', \'count\': 526}, {\'leak\': \'datanleads\', \'count\': 699}, {\'leak\': \'linkedin\', \'count\': 622}, {\'leak\': \'pdlcollection\', \'count\': 276}, {\'leak\': \'exploitin\', \'count\': 158}, {\'leak\': \'the-collections\', \'count\': 490}, {\'leak\': \'adobe\', \'count\': 190}, {\'leak\': \'antipublic\', \'count\': 233}, {\'leak\': \'data-contacts\', \'count\': 101}, {\'leak\': \'pcrai\', \'count\': 49}, {\'leak\': \'dropbox\', \'count\': 154}, {\'leak\': \'badoo\', \'count\': 6}, {\'leak\': \'zoosk\', \'count\': 4}, {\'leak\': \'customerslive\', \'count\': 36}, {\'leak\': \'lastfm\', \'count\': 4}, {\'leak\': \'unknown-btc\', \'count\': 2}, {\'leak\': \'neopets\', \'count\': 3}, {\'leak\': \'tumblr\', \'count\': 2}, {\'leak\': \'myfitnesspal\', \'count\': 8}, {\'leak\': \'pastebin\', \'count\': 8}, {\'leak\': \'tianya\', \'count\': 5}, {\'leak\': \'myspace\', \'count\': 7}, {\'leak\': \'bitly\', \'count\': 8}, {\'leak\': \'disqus\', \'count\': 5}, {\'leak\': \'8tracks\', \'count\': 2}, {\'leak\': \'edmodo\', \'count\': 1}, {\'leak\': \'7k7k\', \'count\': 1}, {\'leak\': \'moneybookers\', \'count\': 1}], \'query\': \'renesas.com\'}', 51, 10);
INSERT INTO `reports_testresult` VALUES (510, 'failed', -1, 'More than one (1) SPF record is defined for your domain.', '', 1, 11);
INSERT INTO `reports_testresult` VALUES (511, 'not_available', 0, '', '', 6, 11);
INSERT INTO `reports_testresult` VALUES (512, 'not_available', 0, '', '', 4, 11);
INSERT INTO `reports_testresult` VALUES (513, 'not_available', 0, '', '', 2, 11);
INSERT INTO `reports_testresult` VALUES (514, 'not_available', 0, '', '', 7, 11);
INSERT INTO `reports_testresult` VALUES (515, 'not_available', 0, '', '', 5, 11);
INSERT INTO `reports_testresult` VALUES (516, 'not_available', 0, '', '', 3, 11);
INSERT INTO `reports_testresult` VALUES (517, 'not_available', 0, '', '', 8, 11);
INSERT INTO `reports_testresult` VALUES (518, 'failed', -1, 'There is no indication that DKIM records exist for the given domain.', '', 9, 11);
INSERT INTO `reports_testresult` VALUES (519, 'failed', -1, 'No DMARC record was found.', '{\'records\': 0}', 10, 11);
INSERT INTO `reports_testresult` VALUES (520, 'not_available', 0, '', '{\'records\': 0}', 11, 11);
INSERT INTO `reports_testresult` VALUES (521, 'not_available', 0, '', '{\'records\': 0}', 12, 11);
INSERT INTO `reports_testresult` VALUES (522, 'not_available', 0, '', '{\'records\': 0}', 15, 11);
INSERT INTO `reports_testresult` VALUES (523, 'not_available', 0, '', '{\'records\': 0}', 16, 11);
INSERT INTO `reports_testresult` VALUES (524, 'not_available', 0, '', '{\'records\': 0}', 17, 11);
INSERT INTO `reports_testresult` VALUES (525, 'not_available', 0, '', '{\'records\': 0}', 18, 11);
INSERT INTO `reports_testresult` VALUES (526, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}]', 24, 11);
INSERT INTO `reports_testresult` VALUES (527, 'failed', 0, 'STARTLS is disabled on the remote SMTP server.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}]', 28, 11);
INSERT INTO `reports_testresult` VALUES (528, 'success', 0, 'The certificate is valid.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}]', 25, 11);
INSERT INTO `reports_testresult` VALUES (529, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}]', 26, 11);
INSERT INTO `reports_testresult` VALUES (530, 'success', 0, 'The certificate is valid.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}]', 27, 11);
INSERT INTO `reports_testresult` VALUES (531, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}]', 29, 11);
INSERT INTO `reports_testresult` VALUES (532, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 11);
INSERT INTO `reports_testresult` VALUES (533, 'not_available', 0, '', '', 14, 11);
INSERT INTO `reports_testresult` VALUES (534, 'failed', -1, 'Unable to connect to the website via HTTPS.', '{\'website\': \'https://www.matex.com.sg\'}', 19, 11);
INSERT INTO `reports_testresult` VALUES (535, 'not_available', 0, '', '', 21, 11);
INSERT INTO `reports_testresult` VALUES (536, 'not_available', 0, '', '', 22, 11);
INSERT INTO `reports_testresult` VALUES (537, 'not_available', 0, '', '', 23, 11);
INSERT INTO `reports_testresult` VALUES (538, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 11);
INSERT INTO `reports_testresult` VALUES (539, 'failed', -0.2, 'The X-Frame-Options header is not sent by the server.', '', 30, 11);
INSERT INTO `reports_testresult` VALUES (540, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server.', '', 31, 11);
INSERT INTO `reports_testresult` VALUES (541, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 11);
INSERT INTO `reports_testresult` VALUES (542, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server.', '', 33, 11);
INSERT INTO `reports_testresult` VALUES (543, 'failed', -0.2, 'The Referrer-Policy header is not sent by the server.', '', 34, 11);
INSERT INTO `reports_testresult` VALUES (544, 'failed', -0.7145, 'The Server header is sent by the server.', '{\'header\': \'Server\', \'value\': \'nginx\'}', 35, 11);
INSERT INTO `reports_testresult` VALUES (545, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 11);
INSERT INTO `reports_testresult` VALUES (546, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 11);
INSERT INTO `reports_testresult` VALUES (547, 'not_available', 0, '', '', 38, 11);
INSERT INTO `reports_testresult` VALUES (548, 'not_available', 0, '', '', 39, 11);
INSERT INTO `reports_testresult` VALUES (549, 'not_available', 0, '', '', 40, 11);
INSERT INTO `reports_testresult` VALUES (550, 'not_available', 0, '', '', 41, 11);
INSERT INTO `reports_testresult` VALUES (551, 'not_available', 0, '', '', 42, 11);
INSERT INTO `reports_testresult` VALUES (552, 'not_available', 0, '', '', 43, 11);
INSERT INTO `reports_testresult` VALUES (553, 'not_available', 0, '', '', 44, 11);
INSERT INTO `reports_testresult` VALUES (554, 'not_available', 0, '', '', 45, 11);
INSERT INTO `reports_testresult` VALUES (555, 'success', 0.7, 'Your IP address(es) are not listed on any blacklist.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'116.12.54.94\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 11);
INSERT INTO `reports_testresult` VALUES (556, 'success', 0.3, 'Your host has not been associated with malicious activities.', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 10, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 114, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 9, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 93, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 85, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 106, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 2861, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 2857, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 2856, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 42, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 42, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 40, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 37, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 36, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 39, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 46, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 105, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 512, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 95, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 157, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 157, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 140, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 142, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 113, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 18, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 89, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 37, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'matex.com.sg\', \'is-listed\': False}', 48, 11);
INSERT INTO `reports_testresult` VALUES (557, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 11);
INSERT INTO `reports_testresult` VALUES (558, 'failed', -1, 'A large number of services are exposed to the Internet.', '[110, 995, 465, 80, 3306, 53, 25, 143, 8083, 587]', 50, 11);
INSERT INTO `reports_testresult` VALUES (559, 'failed', -1.9000000000000004, 'Your domain was found at least once in known, public data leaks.', '{\'total\': 29, \'groups\': [{\'leak\': \'linkedin\', \'count\': 7}, {\'leak\': \'breachcompilation\', \'count\': 5}, {\'leak\': \'verificationsio\', \'count\': 4}, {\'leak\': \'edmodo\', \'count\': 1}, {\'leak\': \'the-collections\', \'count\': 6}, {\'leak\': \'dropbox\', \'count\': 1}, {\'leak\': \'antipublic\', \'count\': 2}, {\'leak\': \'exploitin\', \'count\': 2}, {\'leak\': \'pdlcollection\', \'count\': 1}], \'query\': \'matex.com.sg\'}', 51, 11);
INSERT INTO `reports_testresult` VALUES (711, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 ip4:198.175.38.172 ip4:168.143.175.116 ip4:168.143.175.117 ip4:167.182.124.33 ip4:67.192.203.103 ip4:167.182.124.98 ip4:216.71.147.73 include:realogy.com -all\']}', 1, 15);
INSERT INTO `reports_testresult` VALUES (712, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 15);
INSERT INTO `reports_testresult` VALUES (713, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 15);
INSERT INTO `reports_testresult` VALUES (714, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 1}', 4, 15);
INSERT INTO `reports_testresult` VALUES (715, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 15);
INSERT INTO `reports_testresult` VALUES (716, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 15);
INSERT INTO `reports_testresult` VALUES (717, 'success', 0, 'Your SPF record prevents unrestricted use of the domain.', '{\'policy\': \'-all\'}', 3, 15);
INSERT INTO `reports_testresult` VALUES (718, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 ip4:198.175.38.172 ip4:168.143.175.116 ip4:168.143.175.117 ip4:167.182.124.33 ip4:67.192.203.103 ip4:167.182.124.98 ip4:216.71.147.73 include:realogy.com -all\'}', 8, 15);
INSERT INTO `reports_testresult` VALUES (719, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 15);
INSERT INTO `reports_testresult` VALUES (720, 'success', 0, 'A DMARC record was found for your domain.', '{\'record\': [\'v=DMARC1; p=none; rua=mailto:dmarcadmin@cartus.com; ruf=mailto:dmarcadmin@cartus.com; fo=1;\']}', 10, 15);
INSERT INTO `reports_testresult` VALUES (721, 'failed', -1, 'The syntax of yourDMARC record is invalid.', '{\'record\': \'v=DMARC1; p=none; rua=mailto:dmarcadmin@cartus.com; ruf=mailto:dmarcadmin@cartus.com; fo=1;\'}', 11, 15);
INSERT INTO `reports_testresult` VALUES (722, 'failed', -1, 'The DMARC policy is set to none. No message is filtered.', '{\'policy\': \'none\'}', 15, 15);
INSERT INTO `reports_testresult` VALUES (723, 'success', 0, 'All emails are being vetted by DMARC.', '', 16, 15);
INSERT INTO `reports_testresult` VALUES (724, 'success', 0, 'The destination domain has the proper TXT record to receive domains.', '', 12, 15);
INSERT INTO `reports_testresult` VALUES (725, 'success', 0, 'You are receiving aggregate reports for your domain.', '{\'rua\': \'mailto:dmarcadmin@cartus.com\'}', 17, 15);
INSERT INTO `reports_testresult` VALUES (726, 'success', 0, 'You are receiving forensics reports for your domain.', '{\'ruf\': \'mailto:dmarcadmin@cartus.com\'}', 18, 15);
INSERT INTO `reports_testresult` VALUES (727, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'mailin3.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin5.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin4.cartus.com\', \'data\': \'success\'}]', 24, 15);
INSERT INTO `reports_testresult` VALUES (728, 'success', 1, 'STARTTLS is enabled on the remote SMTP server.', '[{\'host\': \'mailin3.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin5.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin4.cartus.com\', \'data\': \'success\'}]', 28, 15);
INSERT INTO `reports_testresult` VALUES (729, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mailin3.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin5.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin4.cartus.com\', \'data\': \'success\'}]', 25, 15);
INSERT INTO `reports_testresult` VALUES (730, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'mailin3.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin5.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin4.cartus.com\', \'data\': \'success\'}]', 26, 15);
INSERT INTO `reports_testresult` VALUES (731, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mailin3.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin5.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin4.cartus.com\', \'data\': \'success\'}]', 27, 15);
INSERT INTO `reports_testresult` VALUES (732, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'mailin3.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin5.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin4.cartus.com\', \'data\': \'success\'}]', 29, 15);
INSERT INTO `reports_testresult` VALUES (733, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 15);
INSERT INTO `reports_testresult` VALUES (734, 'not_available', 0, '', '', 14, 15);
INSERT INTO `reports_testresult` VALUES (735, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.cartus.com\'}', 19, 15);
INSERT INTO `reports_testresult` VALUES (736, 'success', 0, 'The certificate is valid.', '', 21, 15);
INSERT INTO `reports_testresult` VALUES (737, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 15);
INSERT INTO `reports_testresult` VALUES (738, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.cartus.com\'}', 23, 15);
INSERT INTO `reports_testresult` VALUES (739, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 15);
INSERT INTO `reports_testresult` VALUES (740, 'success', 0, 'The X-Frame-Options header is returned and is properly configured.', '{\'header\': \'X-Frame-Options\', \'value\': \'SAMEORIGIN\'}', 30, 15);
INSERT INTO `reports_testresult` VALUES (741, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server.', '', 31, 15);
INSERT INTO `reports_testresult` VALUES (742, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 15);
INSERT INTO `reports_testresult` VALUES (743, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server.', '', 33, 15);
INSERT INTO `reports_testresult` VALUES (744, 'failed', -0.2, 'The Referrer-Policy header is not sent by the server.', '', 34, 15);
INSERT INTO `reports_testresult` VALUES (745, 'failed', -0.7145, 'The Server header is sent by the server.', '{\'header\': \'Server\', \'value\': \'Apache\'}', 35, 15);
INSERT INTO `reports_testresult` VALUES (746, 'failed', 0, 'The X-Powered-By header is returned and contains product and information data.', '{\'header\': \'X-Powered-By\', \'value\': \'PHP/5.5.38\'}', 36, 15);
INSERT INTO `reports_testresult` VALUES (747, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 15);
INSERT INTO `reports_testresult` VALUES (748, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 1}', 46, 15);
INSERT INTO `reports_testresult` VALUES (749, 'success', 0, 'All cookies found had a valid syntax.', '[\'\', \'\']', 38, 15);
INSERT INTO `reports_testresult` VALUES (750, 'success', 0, 'All of the cookies sent via HTTP uses the \'HttpOnly\'.', '[\'\', \'\']', 40, 15);
INSERT INTO `reports_testresult` VALUES (751, 'failed', -0.4, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 15);
INSERT INTO `reports_testresult` VALUES (752, 'not_available', 0, '', '', 41, 15);
INSERT INTO `reports_testresult` VALUES (753, 'not_available', 0, '', '', 39, 15);
INSERT INTO `reports_testresult` VALUES (754, 'success', 0, 'All of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '', 43, 15);
INSERT INTO `reports_testresult` VALUES (755, 'not_available', 0, '', '', 44, 15);
INSERT INTO `reports_testresult` VALUES (756, 'not_available', 0, '', '', 45, 15);
INSERT INTO `reports_testresult` VALUES (757, 'success', 0.7, 'Your IP address(es) are not listed on any blacklist.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'204.232.226.18\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 15);
INSERT INTO `reports_testresult` VALUES (758, 'success', 0.3, 'Your host has not been associated with malicious activities.', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 522, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 795, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 517, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 514, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 667, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 1118, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1424, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1423, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1421, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 502, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 502, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 500, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 499, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 498, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 632, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 494, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 441, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 955, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 489, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 489, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 488, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 483, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 483, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 482, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 510, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 516, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 515, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'cartus.com\', \'is-listed\': False}', 48, 15);
INSERT INTO `reports_testresult` VALUES (759, 'failed', -1, 'One of more hosts may expose many services with known vulnerabilities.', '[\'CVE-2018-10549\', \'CVE-2018-10548\', \'CVE-2018-10545\', \'CVE-2018-10547\', \'CVE-2018-10546\', \'CVE-2019-9641\', \'CVE-2018-19520\', \'CVE-2018-19396\', \'CVE-2018-19395\', \'CVE-2018-19935\', \'CVE-2018-17082\', \'CVE-2019-9639\', \'CVE-2019-9638\', \'CVE-2019-9637\', \'CVE-2018-14883\', \'CVE-2017-12868\', \'CVE-2018-20783\', \'CVE-2019-6977\', \'CVE-2019-9023\', \'CVE-2019-9020\', \'CVE-2019-9021\', \'CVE-2017-16642\', \'CVE-2019-9024\', \'CVE-2018-15132\']', 49, 15);
INSERT INTO `reports_testresult` VALUES (760, 'success', 1, 'No or few ports are exposed to the Internet.', '[443, 80]', 50, 15);
INSERT INTO `reports_testresult` VALUES (761, 'failed', -647.7, 'Your domain was found at least once in known, public data leaks.', '{\'total\': 6487, \'groups\': [{\'leak\': \'verificationsio\', \'count\': 2393}, {\'leak\': \'datanleads\', \'count\': 73}, {\'leak\': \'pdlcollection\', \'count\': 1619}, {\'leak\': \'the-collections\', \'count\': 620}, {\'leak\': \'adaptio\', \'count\': 190}, {\'leak\': \'antipublic\', \'count\': 239}, {\'leak\': \'breachcompilation\', \'count\': 425}, {\'leak\': \'exploitin\', \'count\': 181}, {\'leak\': \'linkedin\', \'count\': 450}, {\'leak\': \'customerslive\', \'count\': 75}, {\'leak\': \'myfitnesspal\', \'count\': 82}, {\'leak\': \'myspace\', \'count\': 15}, {\'leak\': \'edmodo\', \'count\': 5}, {\'leak\': \'adobe\', \'count\': 14}, {\'leak\': \'dropbox\', \'count\': 17}, {\'leak\': \'data-contacts\', \'count\': 47}, {\'leak\': \'ashleymadison\', \'count\': 1}, {\'leak\': \'mate1\', \'count\': 2}, {\'leak\': \'pcrai\', \'count\': 11}, {\'leak\': \'tumblr\', \'count\': 1}, {\'leak\': \'modernbusinesssolutions\', \'count\': 10}, {\'leak\': \'unknown-btc\', \'count\': 1}, {\'leak\': \'disqus\', \'count\': 5}, {\'leak\': \'experian\', \'count\': 2}, {\'leak\': \'myheritage\', \'count\': 1}, {\'leak\': \'gawker\', \'count\': 1}, {\'leak\': \'lastfm\', \'count\': 1}, {\'leak\': \'apexsms\', \'count\': 2}, {\'leak\': \'forbes\', \'count\': 2}, {\'leak\': \'bitly\', \'count\': 2}], \'query\': \'cartus.com\'}', 51, 15);
INSERT INTO `reports_testresult` VALUES (762, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 include:spf.messagelabs.com include:mailgun.org include:spf.mandrillapp.com include:spf.protection.outlook.com -all\']}', 1, 16);
INSERT INTO `reports_testresult` VALUES (763, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 16);
INSERT INTO `reports_testresult` VALUES (764, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 16);
INSERT INTO `reports_testresult` VALUES (765, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 8}', 4, 16);
INSERT INTO `reports_testresult` VALUES (766, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 16);
INSERT INTO `reports_testresult` VALUES (767, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 16);
INSERT INTO `reports_testresult` VALUES (768, 'success', 0, 'Your SPF record prevents unrestricted use of the domain.', '{\'policy\': \'-all\'}', 3, 16);
INSERT INTO `reports_testresult` VALUES (769, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 include:spf.messagelabs.com include:mailgun.org include:spf.mandrillapp.com include:spf.protection.outlook.com -all\'}', 8, 16);
INSERT INTO `reports_testresult` VALUES (770, 'failed', -1, 'There is no indication that DKIM records exist for the given domain.\r\n\r\nDKIM is an authentication protocol that links a domain name to a message. The protocol allows you to sign your email with your domain name. The purpose of the DKIM protocol is not only to prove that the domain name has not been usurped, but also that the message has not been altered during transmission.', '', 9, 16);
INSERT INTO `reports_testresult` VALUES (771, 'failed', -1, 'No DMARC record was found. \r\n\r\nSPF and DKIM on their own (or even together) contain various weaknesses. When both are combined with DMARC, they create an enhanced layer of security and sender identification. Part of the DMARC requirements involves the concept of domain alignment, so it makes it much more difficult for fraudsters to spoof a domain.', '{\'records\': 0}', 10, 16);
INSERT INTO `reports_testresult` VALUES (772, 'not_available', 0, '', '{\'records\': 0}', 11, 16);
INSERT INTO `reports_testresult` VALUES (773, 'not_available', 0, '', '{\'records\': 0}', 12, 16);
INSERT INTO `reports_testresult` VALUES (774, 'not_available', 0, '', '{\'records\': 0}', 15, 16);
INSERT INTO `reports_testresult` VALUES (775, 'not_available', 0, '', '{\'records\': 0}', 16, 16);
INSERT INTO `reports_testresult` VALUES (776, 'not_available', 0, '', '{\'records\': 0}', 17, 16);
INSERT INTO `reports_testresult` VALUES (777, 'not_available', 0, '', '{\'records\': 0}', 18, 16);
INSERT INTO `reports_testresult` VALUES (778, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[]', 29, 16);
INSERT INTO `reports_testresult` VALUES (779, 'failed', 0, 'STARTLS is disabled on the remote SMTP server. It’s important to use TLS as unsecured email is a common attack vector. \r\n\r\nEncryption in transit helps protect your emails from being snooped on while they travel between you and your intended recipients. Without encryption they present a prime target for eavesdropping and mass interception as they cross dozens of optical fibres and routers.', '[{\'host\': \'cluster8.eu.messagelabs.com\', \'data\': \'success\'}, {\'host\': \'cluster8a.eu.messagelabs.com\', \'data\': \'failed\'}]', 28, 16);
INSERT INTO `reports_testresult` VALUES (780, 'partial', -0.5, '', '[{\'host\': \'cluster8.eu.messagelabs.com\', \'data\': \'partial\'}, {\'host\': \'cluster8a.eu.messagelabs.com\', \'data\': \'not_available\'}]', 25, 16);
INSERT INTO `reports_testresult` VALUES (781, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'cluster8.eu.messagelabs.com\', \'data\': \'success\'}, {\'host\': \'cluster8a.eu.messagelabs.com\', \'data\': \'not_available\'}]', 26, 16);
INSERT INTO `reports_testresult` VALUES (782, 'not_available', 0, '', '[{\'host\': \'cluster8.eu.messagelabs.com\', \'data\': \'not_available\'}, {\'host\': \'cluster8a.eu.messagelabs.com\', \'data\': \'not_available\'}]', 27, 16);
INSERT INTO `reports_testresult` VALUES (783, 'success', 0, 'One or more SMTP server(s) were found.', '[\'cluster8.eu.messagelabs.com\', \'cluster8a.eu.messagelabs.com\']', 24, 16);
INSERT INTO `reports_testresult` VALUES (784, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 16);
INSERT INTO `reports_testresult` VALUES (785, 'not_available', 0, '', '', 14, 16);
INSERT INTO `reports_testresult` VALUES (786, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.railpoint.co.uk\'}', 19, 16);
INSERT INTO `reports_testresult` VALUES (787, 'error', 0, '', '{\'error\': \'[SSL: CERTIFICATE_VERIFY_FAILED] certificate verify failed (_ssl.c:852)\'}', 21, 16);
INSERT INTO `reports_testresult` VALUES (788, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 16);
INSERT INTO `reports_testresult` VALUES (789, 'failed', -1, 'The request was not redirected to the HTTPS version.', '{\'website\': \'http://www.railpoint.co.uk\'}', 23, 16);
INSERT INTO `reports_testresult` VALUES (790, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 16);
INSERT INTO `reports_testresult` VALUES (791, 'failed', -0.2, 'The X-Frame-Options header is not sent by the server.', '', 30, 16);
INSERT INTO `reports_testresult` VALUES (792, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server.', '', 31, 16);
INSERT INTO `reports_testresult` VALUES (793, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 16);
INSERT INTO `reports_testresult` VALUES (794, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server.', '', 33, 16);
INSERT INTO `reports_testresult` VALUES (795, 'failed', -0.2, 'The Referrer-Policy header is not sent by the server.', '', 34, 16);
INSERT INTO `reports_testresult` VALUES (796, 'failed', -0.7145, 'The Server header is sent by the server.', '{\'header\': \'Server\', \'value\': \'Apache\'}', 35, 16);
INSERT INTO `reports_testresult` VALUES (797, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 16);
INSERT INTO `reports_testresult` VALUES (798, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 16);
INSERT INTO `reports_testresult` VALUES (799, 'success', 0, 'The target website is not sending any cookies.', '', 46, 16);
INSERT INTO `reports_testresult` VALUES (800, 'not_available', 0, '', '', 38, 16);
INSERT INTO `reports_testresult` VALUES (801, 'not_available', 0, '', '', 39, 16);
INSERT INTO `reports_testresult` VALUES (802, 'not_available', 0, '', '', 40, 16);
INSERT INTO `reports_testresult` VALUES (803, 'not_available', 0, '', '', 41, 16);
INSERT INTO `reports_testresult` VALUES (804, 'not_available', 0, '', '', 42, 16);
INSERT INTO `reports_testresult` VALUES (805, 'not_available', 0, '', '', 43, 16);
INSERT INTO `reports_testresult` VALUES (806, 'not_available', 0, '', '', 44, 16);
INSERT INTO `reports_testresult` VALUES (807, 'not_available', 0, '', '', 45, 16);
INSERT INTO `reports_testresult` VALUES (808, 'success', 0.7, 'Your IP address(es) are not listed on any blacklist.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'77.92.74.100\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 16);
INSERT INTO `reports_testresult` VALUES (809, 'success', 0.3, 'Your host has not been associated with malicious activities.', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 504, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 847, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 376, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 253, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 290, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 1349, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 243, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 239, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 238, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 238, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 237, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 238, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 237, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 235, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 61, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 233, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 98, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 764, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 246, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 233, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 231, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 231, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 230, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 1116, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 221, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 238, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 228, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'railpoint.co.uk\', \'is-listed\': False}', 48, 16);
INSERT INTO `reports_testresult` VALUES (810, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 16);
INSERT INTO `reports_testresult` VALUES (811, 'partial', 0.55, '', '[3306, 443, 2083, 21, 2096, 2082]', 50, 16);
INSERT INTO `reports_testresult` VALUES (812, 'success', 1, 'Your domain was not found in any known public leaks.', '{\'total\': 0, \'groups\': [], \'query\': \'railpoint.co.uk\'}', 51, 16);
INSERT INTO `reports_testresult` VALUES (813, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 include:mailgun.org include:spf.cloudplatform1.com mx a ~all\']}', 1, 17);
INSERT INTO `reports_testresult` VALUES (814, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 17);
INSERT INTO `reports_testresult` VALUES (815, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 17);
INSERT INTO `reports_testresult` VALUES (816, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 4}', 4, 17);
INSERT INTO `reports_testresult` VALUES (817, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 17);
INSERT INTO `reports_testresult` VALUES (818, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 17);
INSERT INTO `reports_testresult` VALUES (819, 'success', 0, 'Your SPF record prevents unrestricted use of the domain.', '{\'policy\': \'~all\'}', 3, 17);
INSERT INTO `reports_testresult` VALUES (820, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 include:mailgun.org include:spf.cloudplatform1.com mx a ~all\'}', 8, 17);
INSERT INTO `reports_testresult` VALUES (821, 'failed', -1, 'There is no indication that DKIM records exist for the given domain.\r\n</br></br>\r\nDKIM is an authentication protocol that links a domain name to a message. The protocol allows you to sign your email with your domain name. The purpose of the DKIM protocol is not only to prove that the domain name has not been usurped, but also that the message has not been altered during transmission.', '', 9, 17);
INSERT INTO `reports_testresult` VALUES (822, 'failed', -1, 'No DMARC record was found. \r\n</br></br>\r\nSPF and DKIM on their own (or even together) contain various weaknesses. When both are combined with DMARC, they create an enhanced layer of security and sender identification. Part of the DMARC requirements involves the concept of domain alignment, so it makes it much more difficult for fraudsters to spoof a domain.', '{\'records\': 0}', 10, 17);
INSERT INTO `reports_testresult` VALUES (823, 'not_available', 0, '', '{\'records\': 0}', 11, 17);
INSERT INTO `reports_testresult` VALUES (824, 'not_available', 0, '', '{\'records\': 0}', 12, 17);
INSERT INTO `reports_testresult` VALUES (825, 'not_available', 0, '', '{\'records\': 0}', 15, 17);
INSERT INTO `reports_testresult` VALUES (826, 'not_available', 0, '', '{\'records\': 0}', 16, 17);
INSERT INTO `reports_testresult` VALUES (827, 'not_available', 0, '', '{\'records\': 0}', 17, 17);
INSERT INTO `reports_testresult` VALUES (828, 'not_available', 0, '', '{\'records\': 0}', 18, 17);
INSERT INTO `reports_testresult` VALUES (829, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'inboundcluster1.cloudplatform1.com\', \'data\': \'success\'}, {\'host\': \'inboundcluster2.cloudplatform1.com\', \'data\': \'success\'}, {\'host\': \'inboundcluster3.cloudplatform1.com\', \'data\': \'success\'}]', 24, 17);
INSERT INTO `reports_testresult` VALUES (830, 'success', 1, 'STARTTLS is enabled on the remote SMTP server.', '[{\'host\': \'inboundcluster1.cloudplatform1.com\', \'data\': \'success\'}, {\'host\': \'inboundcluster2.cloudplatform1.com\', \'data\': \'success\'}, {\'host\': \'inboundcluster3.cloudplatform1.com\', \'data\': \'success\'}]', 28, 17);
INSERT INTO `reports_testresult` VALUES (831, 'success', 0, 'The certificate is valid.', '[{\'host\': \'inboundcluster1.cloudplatform1.com\', \'data\': \'success\'}, {\'host\': \'inboundcluster2.cloudplatform1.com\', \'data\': \'success\'}, {\'host\': \'inboundcluster3.cloudplatform1.com\', \'data\': \'success\'}]', 25, 17);
INSERT INTO `reports_testresult` VALUES (832, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'inboundcluster1.cloudplatform1.com\', \'data\': \'success\'}, {\'host\': \'inboundcluster2.cloudplatform1.com\', \'data\': \'success\'}, {\'host\': \'inboundcluster3.cloudplatform1.com\', \'data\': \'success\'}]', 26, 17);
INSERT INTO `reports_testresult` VALUES (833, 'success', 0, 'The certificate is valid.', '[{\'host\': \'inboundcluster1.cloudplatform1.com\', \'data\': \'success\'}, {\'host\': \'inboundcluster2.cloudplatform1.com\', \'data\': \'success\'}, {\'host\': \'inboundcluster3.cloudplatform1.com\', \'data\': \'success\'}]', 27, 17);
INSERT INTO `reports_testresult` VALUES (834, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'inboundcluster1.cloudplatform1.com\', \'data\': \'success\'}, {\'host\': \'inboundcluster2.cloudplatform1.com\', \'data\': \'success\'}, {\'host\': \'inboundcluster3.cloudplatform1.com\', \'data\': \'success\'}]', 29, 17);
INSERT INTO `reports_testresult` VALUES (835, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 17);
INSERT INTO `reports_testresult` VALUES (836, 'not_available', 0, '', '', 14, 17);
INSERT INTO `reports_testresult` VALUES (837, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.themetalstore.co.uk\'}', 19, 17);
INSERT INTO `reports_testresult` VALUES (838, 'success', 0, 'The certificate is valid.', '', 21, 17);
INSERT INTO `reports_testresult` VALUES (839, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 17);
INSERT INTO `reports_testresult` VALUES (840, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.themetalstore.co.uk\'}', 23, 17);
INSERT INTO `reports_testresult` VALUES (841, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 17);
INSERT INTO `reports_testresult` VALUES (842, 'success', 0, 'The X-Frame-Options header is returned and is properly configured.', '{\'header\': \'X-Frame-Options\', \'value\': \'SAMEORIGIN\'}', 30, 17);
INSERT INTO `reports_testresult` VALUES (843, 'success', 0, 'The X-XSS-Protection header is returned and is properly configured.', '{\'header\': \'X-Xss-Protection\', \'value\': \'1; mode=block\'}', 31, 17);
INSERT INTO `reports_testresult` VALUES (844, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '{\'header\': \'X-Content-Type-Options\', \'value\': \'nosniff\'}', 32, 17);
INSERT INTO `reports_testresult` VALUES (845, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server.', '', 33, 17);
INSERT INTO `reports_testresult` VALUES (846, 'success', 0, 'The Referrer-Policy header is returned and is properly configured.', '{\'header\': \'Referrer-Policy\', \'value\': \'strict-origin-when-cross-origin\'}', 34, 17);
INSERT INTO `reports_testresult` VALUES (847, 'failed', -0.1429, 'The Server header is sent by the server.', '{\'header\': \'Server\', \'value\': \'nginx/1.17.3 + Phusion Passenger 6.0.3\'}', 35, 17);
INSERT INTO `reports_testresult` VALUES (848, 'failed', 0, 'The X-Powered-By header is returned and contains product and information data.', '{\'header\': \'X-Powered-By\', \'value\': \'Phusion Passenger 6.0.3\'}', 36, 17);
INSERT INTO `reports_testresult` VALUES (849, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 17);
INSERT INTO `reports_testresult` VALUES (850, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 1}', 46, 17);
INSERT INTO `reports_testresult` VALUES (851, 'success', 0, 'All cookies found had a valid syntax.', '[\'\', \'\']', 38, 17);
INSERT INTO `reports_testresult` VALUES (852, 'success', 0, 'All of the cookies sent via HTTP uses the \'HttpOnly\'.', '[\'\', \'\']', 40, 17);
INSERT INTO `reports_testresult` VALUES (853, 'failed', -0.4, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 17);
INSERT INTO `reports_testresult` VALUES (854, 'not_available', 0, '', '', 41, 17);
INSERT INTO `reports_testresult` VALUES (855, 'not_available', 0, '', '', 39, 17);
INSERT INTO `reports_testresult` VALUES (856, 'failed', -0.4, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'_zmey_session\']}', 43, 17);
INSERT INTO `reports_testresult` VALUES (857, 'not_available', 0, '', '', 44, 17);
INSERT INTO `reports_testresult` VALUES (858, 'not_available', 0, '', '', 45, 17);
INSERT INTO `reports_testresult` VALUES (859, 'success', 0.7, 'Your IP address(es) are not listed on any blacklist.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'67.207.69.39\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 17);
INSERT INTO `reports_testresult` VALUES (860, 'success', 0.3, 'Your host has not been associated with malicious activities.', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 140, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 137, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 173, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 340, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 247, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 134, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 237, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 233, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 234, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 155, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 154, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 154, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 152, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 152, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 350, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 351, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 346, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 678, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 139, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 153, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 152, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 150, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 151, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 123, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 128, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 309, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 308, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'themetalstore.co.uk\', \'is-listed\': False}', 48, 17);
INSERT INTO `reports_testresult` VALUES (861, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 17);
INSERT INTO `reports_testresult` VALUES (862, 'success', 1, 'No or few ports are exposed to the Internet.', '[8080, 80, 22]', 50, 17);
INSERT INTO `reports_testresult` VALUES (863, 'partial', 0.6, '', '{\'total\': 4, \'groups\': [{\'leak\': \'antipublic\', \'count\': 1}, {\'leak\': \'breachcompilation\', \'count\': 1}, {\'leak\': \'exploitin\', \'count\': 1}, {\'leak\': \'the-collections\', \'count\': 1}], \'query\': \'themetalstore.co.uk\'}', 51, 17);
INSERT INTO `reports_testresult` VALUES (864, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 a mx include:_spf.servercontrol.com.au include:spf.protection.outlook.com ~all\']}', 1, 18);
INSERT INTO `reports_testresult` VALUES (865, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 18);
INSERT INTO `reports_testresult` VALUES (866, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 18);
INSERT INTO `reports_testresult` VALUES (867, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 1}', 4, 18);
INSERT INTO `reports_testresult` VALUES (868, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 18);
INSERT INTO `reports_testresult` VALUES (869, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 18);
INSERT INTO `reports_testresult` VALUES (870, 'success', 0, 'Your SPF record prevents unrestricted use of the domain.', '{\'policy\': \'~all\'}', 3, 18);
INSERT INTO `reports_testresult` VALUES (871, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 a mx include:_spf.servercontrol.com.au include:spf.protection.outlook.com ~all\'}', 8, 18);
INSERT INTO `reports_testresult` VALUES (872, 'failed', -1, 'There is no indication that DKIM records exist for the given domain.\r\n</br></br>\r\nDKIM is an authentication protocol that links a domain name to a message. The protocol allows you to sign your email with your domain name. The purpose of the DKIM protocol is not only to prove that the domain name has not been usurped, but also that the message has not been altered during transmission.', '', 9, 18);
INSERT INTO `reports_testresult` VALUES (873, 'failed', -1, 'No DMARC record was found. \r\n</br></br>\r\nSPF and DKIM on their own (or even together) contain various weaknesses. When both are combined with DMARC, they create an enhanced layer of security and sender identification. Part of the DMARC requirements involves the concept of domain alignment, so it makes it much more difficult for fraudsters to spoof a domain.', '{\'records\': 0}', 10, 18);
INSERT INTO `reports_testresult` VALUES (874, 'not_available', 0, '', '{\'records\': 0}', 11, 18);
INSERT INTO `reports_testresult` VALUES (875, 'not_available', 0, '', '{\'records\': 0}', 12, 18);
INSERT INTO `reports_testresult` VALUES (876, 'not_available', 0, '', '{\'records\': 0}', 15, 18);
INSERT INTO `reports_testresult` VALUES (877, 'not_available', 0, '', '{\'records\': 0}', 16, 18);
INSERT INTO `reports_testresult` VALUES (878, 'not_available', 0, '', '{\'records\': 0}', 17, 18);
INSERT INTO `reports_testresult` VALUES (879, 'not_available', 0, '', '{\'records\': 0}', 18, 18);
INSERT INTO `reports_testresult` VALUES (880, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'mx1.servercontrol.com.au\', \'data\': \'success\'}, {\'host\': \'mx2.servercontrol.com.au\', \'data\': \'success\'}]', 24, 18);
INSERT INTO `reports_testresult` VALUES (881, 'success', 1, 'STARTTLS is enabled on the remote SMTP server.', '[{\'host\': \'mx1.servercontrol.com.au\', \'data\': \'success\'}, {\'host\': \'mx2.servercontrol.com.au\', \'data\': \'success\'}]', 28, 18);
INSERT INTO `reports_testresult` VALUES (882, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mx1.servercontrol.com.au\', \'data\': \'success\'}, {\'host\': \'mx2.servercontrol.com.au\', \'data\': \'success\'}]', 25, 18);
INSERT INTO `reports_testresult` VALUES (883, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'mx1.servercontrol.com.au\', \'data\': \'success\'}, {\'host\': \'mx2.servercontrol.com.au\', \'data\': \'success\'}]', 26, 18);
INSERT INTO `reports_testresult` VALUES (884, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mx1.servercontrol.com.au\', \'data\': \'success\'}, {\'host\': \'mx2.servercontrol.com.au\', \'data\': \'success\'}]', 27, 18);
INSERT INTO `reports_testresult` VALUES (885, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'mx1.servercontrol.com.au\', \'data\': \'success\'}, {\'host\': \'mx2.servercontrol.com.au\', \'data\': \'success\'}]', 29, 18);
INSERT INTO `reports_testresult` VALUES (886, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 18);
INSERT INTO `reports_testresult` VALUES (887, 'not_available', 0, '', '', 14, 18);
INSERT INTO `reports_testresult` VALUES (888, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.plymouthbrethrenchristianchurch.org\'}', 19, 18);
INSERT INTO `reports_testresult` VALUES (889, 'failed', -1, 'The certificate is invalid.', '{\'self-signed\': False, \'is-expired\': False, \'invalid-cn\': True}', 21, 18);
INSERT INTO `reports_testresult` VALUES (890, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 18);
INSERT INTO `reports_testresult` VALUES (891, 'failed', -1, 'The request was not redirected to the HTTPS version. Even though this site has HTTPS enabled visitors can still access the site over insecure  HTTP. \r\n\r\nYou should ensure that all visitors to your site are automatically redirected to the secure HTTPS connection. Implementing HTTPS is of no use if visitors can still access your site via HTTP.', '{\'website\': \'http://www.plymouthbrethrenchristianchurch.org\'}', 23, 18);
INSERT INTO `reports_testresult` VALUES (892, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 18);
INSERT INTO `reports_testresult` VALUES (893, 'success', 0, 'The X-Frame-Options header is returned and is properly configured.', '{\'header\': \'X-Frame-Options\', \'value\': \'SAMEORIGIN\'}', 30, 18);
INSERT INTO `reports_testresult` VALUES (894, 'success', 0, 'The X-XSS-Protection header is returned and is properly configured.', '{\'header\': \'X-Xss-Protection\', \'value\': \'1; mode=block\'}', 31, 18);
INSERT INTO `reports_testresult` VALUES (895, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '{\'header\': \'X-Content-Type-Options\', \'value\': \'nosniff\'}', 32, 18);
INSERT INTO `reports_testresult` VALUES (896, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server.', '', 33, 18);
INSERT INTO `reports_testresult` VALUES (897, 'failed', -0.2, 'The Referrer-Policy header is not sent by the server.', '', 34, 18);
INSERT INTO `reports_testresult` VALUES (898, 'failed', -0.7145, 'The Server header is sent by the server.', '{\'header\': \'Server\', \'value\': \'cloudflare\'}', 35, 18);
INSERT INTO `reports_testresult` VALUES (899, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 18);
INSERT INTO `reports_testresult` VALUES (900, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 18);
INSERT INTO `reports_testresult` VALUES (901, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 2}', 46, 18);
INSERT INTO `reports_testresult` VALUES (902, 'failed', -0.8, 'None of the cookie found has a valid syntax.', '[{\'invalid\': [{\'cookie\': \'__cfduid\', \'value\': 1602665192, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}, {\'invalid\': [{\'cookie\': \'__cfduid\', \'value\': 1602665194, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}]', 38, 18);
INSERT INTO `reports_testresult` VALUES (903, 'success', 0, 'All of the cookies sent via HTTP uses the \'HttpOnly\'.', '[\'\', \'\']', 40, 18);
INSERT INTO `reports_testresult` VALUES (904, 'failed', -0.8, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 18);
INSERT INTO `reports_testresult` VALUES (905, 'success', 0, 'None of the cookies sent via unsecure HTTP had the \'Secure\' flag enabled.', '', 41, 18);
INSERT INTO `reports_testresult` VALUES (906, 'success', 0, 'None of the cookies sent via unsecure HTTP are prefixed.', '', 39, 18);
INSERT INTO `reports_testresult` VALUES (907, 'failed', -0.4, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'__cfduid\']}', 43, 18);
INSERT INTO `reports_testresult` VALUES (908, 'not_available', 0, '', '', 44, 18);
INSERT INTO `reports_testresult` VALUES (909, 'not_available', 0, '', '', 45, 18);
INSERT INTO `reports_testresult` VALUES (910, 'success', 0.7, 'Your IP address(es) are not listed on any blacklist.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'104.18.38.209\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 18);
INSERT INTO `reports_testresult` VALUES (911, 'success', 0.3, 'Your host has not been associated with malicious activities.', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 134, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 512, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 130, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 134, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 231, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 3005, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1060, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1059, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1057, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 142, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 141, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 137, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 135, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 134, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 6, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 106, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 27, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 654, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 175, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 243, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 242, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 242, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 240, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 110, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 128, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 129, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 125, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'plymouthbrethrenchristianchurch.org\', \'is-listed\': False}', 48, 18);
INSERT INTO `reports_testresult` VALUES (912, 'failed', -1, 'One of more hosts may expose services with known vulnerabilities. See the links below for information on each specific item. \r\n</br></br>\r\nCVE Vulnerabilities are identified by passive fingerprinting of server software and version. The vulnerabilities are implied based on the software and version. This is a passive test and so the server may not be impacted by all of the issues detected.\r\n</br></br>\r\nYou can request an ACTIVE vulnerability scan by following the remediation link below.', '[\'CVE-2018-1000773\', \'CVE-2019-8942\', \'CVE-2018-20148\', \'CVE-2018-20149\', \'CVE-2018-20151\', \'CVE-2018-20150\', \'CVE-2018-20153\', \'CVE-2018-20152\', \'CVE-2018-20147\', \'CVE-2019-9787\']', 49, 18);
INSERT INTO `reports_testresult` VALUES (913, 'failed', -1, 'A large number of services are exposed to the Internet. An open port is an attack surface. An important principle in security is reducing your attack surface, and ensure that servers have the minimum number of exposed services. \r\n</br></br>\r\nCheck to make sure that only necessary ports are open. Our scan uses PASSIVE identification of open ports - active scans on remote systems are not allowed without prior permission. A full ACTIVE scan can be requested by following the remediation link below.', '[8443, 8080, 443, 80, 2083, 2087, 8880, 2053, 2082, 2086]', 50, 18);
INSERT INTO `reports_testresult` VALUES (914, 'partial', 0.5, '', '{\'total\': 5, \'groups\': [{\'leak\': \'verificationsio\', \'count\': 3}, {\'leak\': \'the-collections\', \'count\': 2}], \'query\': \'plymouthbrethrenchristianchurch.org\'}', 51, 18);
INSERT INTO `reports_testresult` VALUES (915, 'failed', -1, 'No SPF record is defined for your domain.\r\n</br></br>\r\nSPF is an email authentication method designed to detect forged sender addresses in emails (email spoofing), a technique often used in phishing and email spam.\r\n</br></br>\r\nSPF allows the receiver to check that an email claiming to come from a specific domain comes from an IP address authorised by that domain\'s administrators. The list of authorised sending hosts and IP addresses for a domain is published in the DNS records for that domain.', '', 1, 19);
INSERT INTO `reports_testresult` VALUES (916, 'not_available', 0, '', '', 6, 19);
INSERT INTO `reports_testresult` VALUES (917, 'not_available', 0, '', '', 4, 19);
INSERT INTO `reports_testresult` VALUES (918, 'not_available', 0, '', '', 2, 19);
INSERT INTO `reports_testresult` VALUES (919, 'not_available', 0, '', '', 7, 19);
INSERT INTO `reports_testresult` VALUES (920, 'not_available', 0, '', '', 5, 19);
INSERT INTO `reports_testresult` VALUES (921, 'not_available', 0, '', '', 3, 19);
INSERT INTO `reports_testresult` VALUES (922, 'not_available', 0, '', '', 8, 19);
INSERT INTO `reports_testresult` VALUES (923, 'failed', -1, 'There is no indication that DKIM records exist for the given domain.\r\n</br></br>\r\nDKIM is an authentication protocol that links a domain name to a message. The protocol allows you to sign your email with your domain name. The purpose of the DKIM protocol is not only to prove that the domain name has not been usurped, but also that the message has not been altered during transmission.', '', 9, 19);
INSERT INTO `reports_testresult` VALUES (924, 'failed', -1, 'No DMARC record was found. \r\n</br></br>\r\nSPF and DKIM on their own (or even together) contain various weaknesses. When both are combined with DMARC, they create an enhanced layer of security and sender identification. Part of the DMARC requirements involves the concept of domain alignment, so it makes it much more difficult for fraudsters to spoof a domain.', '{\'records\': 0}', 10, 19);
INSERT INTO `reports_testresult` VALUES (925, 'not_available', 0, '', '{\'records\': 0}', 11, 19);
INSERT INTO `reports_testresult` VALUES (926, 'not_available', 0, '', '{\'records\': 0}', 12, 19);
INSERT INTO `reports_testresult` VALUES (927, 'not_available', 0, '', '{\'records\': 0}', 15, 19);
INSERT INTO `reports_testresult` VALUES (928, 'not_available', 0, '', '{\'records\': 0}', 16, 19);
INSERT INTO `reports_testresult` VALUES (929, 'not_available', 0, '', '{\'records\': 0}', 17, 19);
INSERT INTO `reports_testresult` VALUES (930, 'not_available', 0, '', '{\'records\': 0}', 18, 19);
INSERT INTO `reports_testresult` VALUES (931, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[]', 29, 19);
INSERT INTO `reports_testresult` VALUES (932, 'failed', -1, 'STARTLS is disabled on the remote SMTP server. It’s important to use TLS as unsecured email is a common attack vector.\r\n\r\nEncryption in transit helps protect your emails from being snooped on while they travel between you and your intended recipients. Without encryption they present a prime target for eavesdropping and mass interception as they cross dozens of optical fibres and routers.', '[{\'host\': \'ukecc-services.net\', \'data\': \'failed\'}]', 28, 19);
INSERT INTO `reports_testresult` VALUES (933, 'not_available', 0, '', '[{\'host\': \'ukecc-services.net\', \'data\': \'not_available\'}]', 25, 19);
INSERT INTO `reports_testresult` VALUES (934, 'not_available', 0, '', '[{\'host\': \'ukecc-services.net\', \'data\': \'not_available\'}]', 26, 19);
INSERT INTO `reports_testresult` VALUES (935, 'not_available', 0, '', '[{\'host\': \'ukecc-services.net\', \'data\': \'not_available\'}]', 27, 19);
INSERT INTO `reports_testresult` VALUES (936, 'success', 0, 'One or more SMTP server(s) were found.', '[\'ukecc-services.net\']', 24, 19);
INSERT INTO `reports_testresult` VALUES (937, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 19);
INSERT INTO `reports_testresult` VALUES (938, 'not_available', 0, '', '', 14, 19);
INSERT INTO `reports_testresult` VALUES (939, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.ukecc-services.net\'}', 19, 19);
INSERT INTO `reports_testresult` VALUES (940, 'success', 0, 'The certificate is valid.', '', 21, 19);
INSERT INTO `reports_testresult` VALUES (941, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 19);
INSERT INTO `reports_testresult` VALUES (942, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.ukecc-services.net\'}', 23, 19);
INSERT INTO `reports_testresult` VALUES (943, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 19);
INSERT INTO `reports_testresult` VALUES (944, 'failed', -0.2, 'The X-Frame-Options header is not sent by the server.', '', 30, 19);
INSERT INTO `reports_testresult` VALUES (945, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server.', '', 31, 19);
INSERT INTO `reports_testresult` VALUES (946, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 19);
INSERT INTO `reports_testresult` VALUES (947, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server.', '', 33, 19);
INSERT INTO `reports_testresult` VALUES (948, 'failed', -0.2, 'The Referrer-Policy header is not sent by the server.', '', 34, 19);
INSERT INTO `reports_testresult` VALUES (949, 'success', 0, 'The Server header is not returned by the server.', '', 35, 19);
INSERT INTO `reports_testresult` VALUES (950, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 19);
INSERT INTO `reports_testresult` VALUES (951, 'failed', -0.1429, 'The Feature-Policy header was not returned by the server.', '', 37, 19);
INSERT INTO `reports_testresult` VALUES (952, 'success', 0, 'The target website is not sending any cookies.', '', 46, 19);
INSERT INTO `reports_testresult` VALUES (953, 'not_available', 0, '', '', 38, 19);
INSERT INTO `reports_testresult` VALUES (954, 'not_available', 0, '', '', 39, 19);
INSERT INTO `reports_testresult` VALUES (955, 'not_available', 0, '', '', 40, 19);
INSERT INTO `reports_testresult` VALUES (956, 'not_available', 0, '', '', 41, 19);
INSERT INTO `reports_testresult` VALUES (957, 'not_available', 0, '', '', 42, 19);
INSERT INTO `reports_testresult` VALUES (958, 'not_available', 0, '', '', 43, 19);
INSERT INTO `reports_testresult` VALUES (959, 'not_available', 0, '', '', 44, 19);
INSERT INTO `reports_testresult` VALUES (960, 'not_available', 0, '', '', 45, 19);
INSERT INTO `reports_testresult` VALUES (961, 'success', 0.7, 'Your IP address(es) are not listed on any blacklist.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'194.176.69.43\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 19);
INSERT INTO `reports_testresult` VALUES (962, 'success', 0.3, 'Your host has not been associated with malicious activities.', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 155, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 514, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 349, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 197, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 195, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 263, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 962, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 960, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 959, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 141, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 140, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 139, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 138, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 137, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 525, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 533, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 525, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 659, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 120, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 150, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 148, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 147, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 143, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 396, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 121, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 123, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 122, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'ukecc-services.net\', \'is-listed\': False}', 48, 19);
INSERT INTO `reports_testresult` VALUES (963, 'not_available', 0, '', '', 49, 19);
INSERT INTO `reports_testresult` VALUES (964, 'error', 0, 'This test requires manual review.', '{\'error\': \"Invalid response received from \'https://api.shodan.io/shodan/host/194.176.69.43?key=ggGl4i0SG48tnlp5ZjziW6c3vttQ7zfc\': 404\"}', 50, 19);
INSERT INTO `reports_testresult` VALUES (965, 'success', 1, 'Your domain was not found in any known public leaks.', '{\'total\': 0, \'groups\': [], \'query\': \'ukecc-services.net\'}', 51, 19);
INSERT INTO `reports_testresult` VALUES (966, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 include:upwork.com._nspf.vali.email include:%{i}._ip.%{h}._ehlo.%{d}._spf.vali.email include:mail.clinchtalent.com ~all\']}', 1, 20);
INSERT INTO `reports_testresult` VALUES (967, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 20);
INSERT INTO `reports_testresult` VALUES (968, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 20);
INSERT INTO `reports_testresult` VALUES (969, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 4}', 4, 20);
INSERT INTO `reports_testresult` VALUES (970, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 20);
INSERT INTO `reports_testresult` VALUES (971, 'error', 0, '', '{\'error\': \'All nameservers failed to answer the query %{i}._ip.%{h}._ehlo.%{d}._spf.vali.email. IN TXT: Server 208.67.222.222 TCP port 53 answered SERVFAIL; Server 208.67.220.220 TCP port 53 answered SERVFAIL\'}', 5, 20);
INSERT INTO `reports_testresult` VALUES (972, 'success', 0, 'Your SPF record prevents unrestricted use of the domain.', '{\'policy\': \'~all\'}', 3, 20);
INSERT INTO `reports_testresult` VALUES (973, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 include:upwork.com._nspf.vali.email include:%{i}._ip.%{h}._ehlo.%{d}._spf.vali.email include:mail.clinchtalent.com ~all\'}', 8, 20);
INSERT INTO `reports_testresult` VALUES (974, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 20);
INSERT INTO `reports_testresult` VALUES (975, 'success', 0, 'A DMARC record was found for your domain.', '{\'record\': [\'v=DMARC1; p=reject; rua=mailto:dmarc_agg@vali.email,mailto:upwork@rua.agari.com; ruf=mailto:upwork@ruf.agari.com\']}', 10, 20);
INSERT INTO `reports_testresult` VALUES (976, 'success', 0, 'The syntax of your DMARC record is valid.', '{\'record\': \'v=DMARC1; p=reject; rua=mailto:dmarc_agg@vali.email,mailto:upwork@rua.agari.com; ruf=mailto:upwork@ruf.agari.com\'}', 11, 20);
INSERT INTO `reports_testresult` VALUES (977, 'success', 0, 'The DMARC policy is configured to quarantine or reject invalid emails.', '{\'policy\': \'reject\'}', 15, 20);
INSERT INTO `reports_testresult` VALUES (978, 'success', 0, 'All emails are being vetted by DMARC.', '', 16, 20);
INSERT INTO `reports_testresult` VALUES (979, 'success', 0, 'The destination domain has the proper TXT record to receive domains.', '', 12, 20);
INSERT INTO `reports_testresult` VALUES (980, 'success', 0, 'You are receiving aggregate reports for your domain.', '{\'rua\': \'mailto:dmarc_agg@vali.email,mailto:upwork@rua.agari.com\'}', 17, 20);
INSERT INTO `reports_testresult` VALUES (981, 'success', 0, 'You are receiving forensics reports for your domain.', '{\'ruf\': \'mailto:upwork@ruf.agari.com\'}', 18, 20);
INSERT INTO `reports_testresult` VALUES (982, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 24, 20);
INSERT INTO `reports_testresult` VALUES (983, 'success', 1, 'STARTTLS is enabled on the remote SMTP server.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 28, 20);
INSERT INTO `reports_testresult` VALUES (984, 'success', 0, 'The certificate is valid.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 25, 20);
INSERT INTO `reports_testresult` VALUES (985, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 26, 20);
INSERT INTO `reports_testresult` VALUES (986, 'success', 0, 'The certificate is valid.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 27, 20);
INSERT INTO `reports_testresult` VALUES (987, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 29, 20);
INSERT INTO `reports_testresult` VALUES (988, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 20);
INSERT INTO `reports_testresult` VALUES (989, 'not_available', 0, '', '', 14, 20);
INSERT INTO `reports_testresult` VALUES (990, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.upwork.com\'}', 19, 20);
INSERT INTO `reports_testresult` VALUES (991, 'success', 0, 'The certificate is valid.', '', 21, 20);
INSERT INTO `reports_testresult` VALUES (992, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 20);
INSERT INTO `reports_testresult` VALUES (993, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.upwork.com\'}', 23, 20);
INSERT INTO `reports_testresult` VALUES (994, 'success', 0, 'A HSTS header was provided from the server.', '{\'header\': \'Strict-Transport-Security\', \'value\': \'max-age=15552000; includeSubDomains; preload\'}', 20, 20);
INSERT INTO `reports_testresult` VALUES (995, 'success', 0, 'The X-Frame-Options header is returned and is properly configured.', '{\'header\': \'X-Frame-Options\', \'value\': \'SAMEORIGIN\'}', 30, 20);
INSERT INTO `reports_testresult` VALUES (996, 'success', 0, 'The X-XSS-Protection header is returned and is properly configured.', '{\'header\': \'X-Xss-Protection\', \'value\': \'1; mode=block\'}', 31, 20);
INSERT INTO `reports_testresult` VALUES (997, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '{\'header\': \'X-Content-Type-Options\', \'value\': \'nosniff\'}', 32, 20);
INSERT INTO `reports_testresult` VALUES (998, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server. This header can be considered as an improved version of the X-XSS-Protection header. It adds another layer of security to protect against cross site scripting, one of the most widespread and critical weaknesses that can lead to serious vulnerabilities.', '', 33, 20);
INSERT INTO `reports_testresult` VALUES (999, 'success', 0, 'The Referrer-Policy header is returned and is properly configured.', '{\'header\': \'Referrer-Policy\', \'value\': \'origin-when-cross-origin\'}', 34, 20);
INSERT INTO `reports_testresult` VALUES (1000, 'failed', -0.7145, 'The Server header is sent by the server. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence. Server values should be avoided as they potentially reveal internal implementation details that might make it  easier for attackers to find and exploit known security holes.', '{\'header\': \'Server\', \'value\': \'cloudflare\'}', 35, 20);
INSERT INTO `reports_testresult` VALUES (1001, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 20);
INSERT INTO `reports_testresult` VALUES (1002, 'success', 0, 'The Feature-Policy header is returned by the server.', '{\'header\': \'Feature-Policy\', \'value\': \"camera \'self\'; display-capture \'self\'; microphone \'self\'; speaker \'self\'; geolocation \'self\'\"}', 37, 20);
INSERT INTO `reports_testresult` VALUES (1003, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 4}', 46, 20);
INSERT INTO `reports_testresult` VALUES (1004, 'failed', -0.3, 'None of the cookie found has a valid syntax.', '[\'\', {\'invalid\': [{\'cookie\': \'__cfduid\', \'value\': 1602763217, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}, {\'cookie\': \'_pxhd\', \'value\': 1602763217, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}]', 38, 20);
INSERT INTO `reports_testresult` VALUES (1005, 'failed', -0.3, 'None of the cookies found had the \'HttpOnly\' flag.', '[\'\', {\'unsecure\': [\'_pxhd\']}]', 40, 20);
INSERT INTO `reports_testresult` VALUES (1006, 'failed', -0.8, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 20);
INSERT INTO `reports_testresult` VALUES (1007, 'success', 0, 'None of the cookies sent via unsecure HTTP had the \'Secure\' flag enabled.', '', 41, 20);
INSERT INTO `reports_testresult` VALUES (1008, 'success', 0, 'None of the cookies sent via unsecure HTTP are prefixed.', '', 39, 20);
INSERT INTO `reports_testresult` VALUES (1009, 'failed', -0.4, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'__cfduid\', \'__cfruid\', \'_pxhd\']}', 43, 20);
INSERT INTO `reports_testresult` VALUES (1010, 'not_available', 0, '', '', 44, 20);
INSERT INTO `reports_testresult` VALUES (1011, 'not_available', 0, '', '', 45, 20);
INSERT INTO `reports_testresult` VALUES (1012, 'success', 0.7, 'Your IP address is not associated with any malicious activity.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'104.18.90.237\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 20);
INSERT INTO `reports_testresult` VALUES (1013, 'success', 0.3, 'Your host is not listed on any DNSBL', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 262, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 860, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 347, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 251, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 246, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 548, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 961, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 955, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1778, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 205, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 203, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 202, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 201, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 200, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 510, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 508, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 502, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 760, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 191, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 208, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 200, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 200, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 202, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 626, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 34, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 205, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 204, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'upwork.com\', \'is-listed\': False}', 48, 20);
INSERT INTO `reports_testresult` VALUES (1014, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 20);
INSERT INTO `reports_testresult` VALUES (1015, 'partial', 0.4, '', '[443, 80, 2087, 2082, 8080, 2083, 8443]', 50, 20);
INSERT INTO `reports_testresult` VALUES (1016, 'failed', -165.60000000000002, 'Your domain was found at least once in known, public data leaks.', '{\'total\': 1666, \'groups\': [{\'leak\': \'adaptio\', \'count\': 1547}, {\'leak\': \'the-collections\', \'count\': 5}, {\'leak\': \'pdlcollection\', \'count\': 98}, {\'leak\': \'customerslive\', \'count\': 9}, {\'leak\': \'antipublic\', \'count\': 1}, {\'leak\': \'breachcompilation\', \'count\': 1}, {\'leak\': \'exploitin\', \'count\': 1}, {\'leak\': \'modernbusinesssolutions\', \'count\': 1}, {\'leak\': \'bulgaria\', \'count\': 1}, {\'leak\': \'gootkit\', \'count\': 1}, {\'leak\': \'data-contacts\', \'count\': 1}], \'query\': \'upwork.com\'}', 51, 20);
INSERT INTO `reports_testresult` VALUES (1017, 'failed', -1, 'No SPF record is defined for your domain.\r\n</br></br>\r\nSPF is an email authentication method designed to detect forged sender addresses in emails (email spoofing), a technique often used in phishing and email spam.\r\n</br></br>\r\nSPF allows the receiver to check that an email claiming to come from a specific domain comes from an IP address authorised by that domain\'s administrators. The list of authorised sending hosts and IP addresses for a domain is published in the DNS records for that domain.', '', 1, 21);
INSERT INTO `reports_testresult` VALUES (1018, 'not_available', 0, '', '', 6, 21);
INSERT INTO `reports_testresult` VALUES (1019, 'not_available', 0, '', '', 4, 21);
INSERT INTO `reports_testresult` VALUES (1020, 'not_available', 0, '', '', 2, 21);
INSERT INTO `reports_testresult` VALUES (1021, 'not_available', 0, '', '', 7, 21);
INSERT INTO `reports_testresult` VALUES (1022, 'not_available', 0, '', '', 5, 21);
INSERT INTO `reports_testresult` VALUES (1023, 'not_available', 0, '', '', 3, 21);
INSERT INTO `reports_testresult` VALUES (1024, 'not_available', 0, '', '', 8, 21);
INSERT INTO `reports_testresult` VALUES (1025, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 21);
INSERT INTO `reports_testresult` VALUES (1026, 'failed', -1, 'No DMARC record was found. \r\n</br></br>\r\nSPF and DKIM on their own (or even together) contain various weaknesses. When both are combined with DMARC, they create an enhanced layer of security and sender identification. Part of the DMARC requirements involves the concept of domain alignment, so it makes it much more difficult for fraudsters to spoof a domain.', '{\'records\': 0}', 10, 21);
INSERT INTO `reports_testresult` VALUES (1027, 'not_available', 0, '', '{\'records\': 0}', 11, 21);
INSERT INTO `reports_testresult` VALUES (1028, 'not_available', 0, '', '{\'records\': 0}', 12, 21);
INSERT INTO `reports_testresult` VALUES (1029, 'not_available', 0, '', '{\'records\': 0}', 15, 21);
INSERT INTO `reports_testresult` VALUES (1030, 'not_available', 0, '', '{\'records\': 0}', 16, 21);
INSERT INTO `reports_testresult` VALUES (1031, 'not_available', 0, '', '{\'records\': 0}', 17, 21);
INSERT INTO `reports_testresult` VALUES (1032, 'not_available', 0, '', '{\'records\': 0}', 18, 21);
INSERT INTO `reports_testresult` VALUES (1033, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'smx1.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx2.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx3.web-hosting.com\', \'data\': \'success\'}]', 24, 21);
INSERT INTO `reports_testresult` VALUES (1034, 'success', 1, 'STARTTLS is enabled on the remote SMTP server.', '[{\'host\': \'smx1.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx2.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx3.web-hosting.com\', \'data\': \'success\'}]', 28, 21);
INSERT INTO `reports_testresult` VALUES (1035, 'success', 0, 'The certificate is valid.', '[{\'host\': \'smx1.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx2.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx3.web-hosting.com\', \'data\': \'success\'}]', 25, 21);
INSERT INTO `reports_testresult` VALUES (1036, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'smx1.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx2.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx3.web-hosting.com\', \'data\': \'success\'}]', 26, 21);
INSERT INTO `reports_testresult` VALUES (1037, 'success', 0, 'The certificate is valid.', '[{\'host\': \'smx1.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx2.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx3.web-hosting.com\', \'data\': \'success\'}]', 27, 21);
INSERT INTO `reports_testresult` VALUES (1038, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'smx1.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx2.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx3.web-hosting.com\', \'data\': \'success\'}]', 29, 21);
INSERT INTO `reports_testresult` VALUES (1039, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 21);
INSERT INTO `reports_testresult` VALUES (1040, 'not_available', 0, '', '', 14, 21);
INSERT INTO `reports_testresult` VALUES (1041, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.vanify.co.uk\'}', 19, 21);
INSERT INTO `reports_testresult` VALUES (1042, 'failed', -1, 'The certificate is invalid.', '{\'issue\': \"hostname \'www.vanify.co.uk\' doesn\'t match either of \'*.registrar-servers.com\', \'registrar-servers.com\'\"}', 21, 21);
INSERT INTO `reports_testresult` VALUES (1043, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 21);
INSERT INTO `reports_testresult` VALUES (1044, 'failed', -1, 'The request was not redirected to the HTTPS version. Even though this site has HTTPS enabled visitors can still access the site over insecure  HTTP. \r\n\r\nYou should ensure that all visitors to your site are automatically redirected to the secure HTTPS connection. Implementing HTTPS is of no use if visitors can still access your site via HTTP.', '{\'website\': \'http://www.vanify.co.uk\'}', 23, 21);
INSERT INTO `reports_testresult` VALUES (1045, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 21);
INSERT INTO `reports_testresult` VALUES (1046, 'failed', -0.2, 'The X-Frame-Options header is not sent by the server. This header protects web applications against clickjacking. This is  a malicious technique of tricking a user into clicking on something different from what the user perceives, thus potentially revealing confidential information or allowing others to take control of their computer.', '', 30, 21);
INSERT INTO `reports_testresult` VALUES (1047, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server. This header is designed to defend against Cross Site Scripting that is one of the most widespread and critical weaknesses that can lead to serious vulnerabilities. It\'s easy and simple to implement, see link for details.', '', 31, 21);
INSERT INTO `reports_testresult` VALUES (1048, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 21);
INSERT INTO `reports_testresult` VALUES (1049, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server. This header can be considered as an improved version of the X-XSS-Protection header. It adds another layer of security to protect against cross site scripting, one of the most widespread and critical weaknesses that can lead to serious vulnerabilities.', '', 33, 21);
INSERT INTO `reports_testresult` VALUES (1050, 'failed', -0.1, 'The Referrer-Policy header is not sent by the server. This header enables you to specify when the browser should set Referer headers. The use of this header can be considered as “optional”, but is advised to protect the privacy of your visitors.', '', 34, 21);
INSERT INTO `reports_testresult` VALUES (1051, 'failed', -0.7145, 'The Server header is sent by the server. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence. Server values should be avoided as they potentially reveal internal implementation details that might make it  easier for attackers to find and exploit known security holes.', '{\'header\': \'Server\', \'value\': \'Apache\'}', 35, 21);
INSERT INTO `reports_testresult` VALUES (1052, 'failed', 0, 'The X-Powered-By header is returned and contains the details of the web framework or programming language used in the web application. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence.', '{\'header\': \'X-Powered-By\', \'value\': \'PHP/7.2.23\'}', 36, 21);
INSERT INTO `reports_testresult` VALUES (1053, 'failed', -0.1, 'The Feature-Policy header was not returned by the server. This header can help protect your site from third parties using APIs that have security and privacy implications', '', 37, 21);
INSERT INTO `reports_testresult` VALUES (1054, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 2}', 46, 21);
INSERT INTO `reports_testresult` VALUES (1055, 'success', 0, 'All cookies found had a valid syntax.', '[\'\', \'\']', 38, 21);
INSERT INTO `reports_testresult` VALUES (1056, 'failed', -0.8, 'None of the cookies found had the \'HttpOnly\' flag.', '[{\'unsecure\': [\'PHPSESSID\']}, {\'unsecure\': [\'PHPSESSID\']}]', 40, 21);
INSERT INTO `reports_testresult` VALUES (1057, 'failed', -0.8, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 21);
INSERT INTO `reports_testresult` VALUES (1058, 'success', 0, 'None of the cookies sent via unsecure HTTP had the \'Secure\' flag enabled.', '', 41, 21);
INSERT INTO `reports_testresult` VALUES (1059, 'success', 0, 'None of the cookies sent via unsecure HTTP are prefixed.', '', 39, 21);
INSERT INTO `reports_testresult` VALUES (1060, 'failed', -0.4, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'PHPSESSID\']}', 43, 21);
INSERT INTO `reports_testresult` VALUES (1061, 'not_available', 0, '', '', 44, 21);
INSERT INTO `reports_testresult` VALUES (1062, 'not_available', 0, '', '', 45, 21);
INSERT INTO `reports_testresult` VALUES (1063, 'success', 0.7, 'Your IP address is not associated with any malicious activity.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'185.61.152.51\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 21);
INSERT INTO `reports_testresult` VALUES (1064, 'success', 0.3, 'Your host is not listed on any DNSBL', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 618, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 1685, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 1563, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 1877, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 1244, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 623, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 603, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 617, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 599, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 970, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 965, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 963, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 964, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 962, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 211, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 584, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 211, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 610, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 1032, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 1030, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 1029, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 1029, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 1030, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 902, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 1087, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 980, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 968, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'vanify.co.uk\', \'is-listed\': False}', 48, 21);
INSERT INTO `reports_testresult` VALUES (1065, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 21);
INSERT INTO `reports_testresult` VALUES (1066, 'failed', -1, 'A large number of services are exposed to the Internet. An open port is an attack surface. An important principle in security is reducing your attack surface, and ensure that servers have the minimum number of exposed services. \r\n</br></br>\r\nCheck to make sure that only necessary ports are open. Our scan uses PASSIVE identification of open ports - active scans on remote systems are not allowed without prior permission. A full ACTIVE scan can be requested by following the remediation link below.', '[2083, 443, 2096, 2082, 587, 53, 143, 2086, 21, 2077, 80, 2087, 26, 993, 465, 110, 995]', 50, 21);
INSERT INTO `reports_testresult` VALUES (1067, 'success', 1, 'Your domain was not found in any known public leaks.', '{\'total\': 0, \'groups\': [], \'query\': \'vanify.co.uk\'}', 51, 21);
INSERT INTO `reports_testresult` VALUES (1068, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 -all\']}', 1, 22);
INSERT INTO `reports_testresult` VALUES (1069, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 22);
INSERT INTO `reports_testresult` VALUES (1070, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 22);
INSERT INTO `reports_testresult` VALUES (1071, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 0}', 4, 22);
INSERT INTO `reports_testresult` VALUES (1072, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 22);
INSERT INTO `reports_testresult` VALUES (1073, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 22);
INSERT INTO `reports_testresult` VALUES (1074, 'success', 0, 'Your SPF record prevents unrestricted use of the domain.', '{\'policy\': \'-all\'}', 3, 22);
INSERT INTO `reports_testresult` VALUES (1075, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 -all\'}', 8, 22);
INSERT INTO `reports_testresult` VALUES (1076, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 22);
INSERT INTO `reports_testresult` VALUES (1077, 'failed', -1, 'No DMARC record was found. \r\n</br></br>\r\nSPF and DKIM on their own (or even together) contain various weaknesses. When both are combined with DMARC, they create an enhanced layer of security and sender identification. Part of the DMARC requirements involves the concept of domain alignment, so it makes it much more difficult for fraudsters to spoof a domain.', '{\'records\': 0}', 10, 22);
INSERT INTO `reports_testresult` VALUES (1078, 'not_available', 0, '', '{\'records\': 0}', 11, 22);
INSERT INTO `reports_testresult` VALUES (1079, 'not_available', 0, '', '{\'records\': 0}', 12, 22);
INSERT INTO `reports_testresult` VALUES (1080, 'not_available', 0, '', '{\'records\': 0}', 15, 22);
INSERT INTO `reports_testresult` VALUES (1081, 'not_available', 0, '', '{\'records\': 0}', 16, 22);
INSERT INTO `reports_testresult` VALUES (1082, 'not_available', 0, '', '{\'records\': 0}', 17, 22);
INSERT INTO `reports_testresult` VALUES (1083, 'not_available', 0, '', '{\'records\': 0}', 18, 22);
INSERT INTO `reports_testresult` VALUES (1084, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[]', 29, 22);
INSERT INTO `reports_testresult` VALUES (1085, 'failed', -1, 'STARTLS is disabled on the remote SMTP server. It’s important to use TLS as unsecured email is a common attack vector. </br><br/>\r\n\r\nEncryption in transit helps protect your emails from being snooped on while they travel between you and your intended recipients. Without encryption they present a prime target for eavesdropping and mass interception as they cross dozens of optical fibres and routers.', '[{\'host\': \'serverfault.com\', \'data\': \'failed\'}]', 28, 22);
INSERT INTO `reports_testresult` VALUES (1086, 'not_available', 0, '', '[{\'host\': \'serverfault.com\', \'data\': \'not_available\'}]', 25, 22);
INSERT INTO `reports_testresult` VALUES (1087, 'not_available', 0, '', '[{\'host\': \'serverfault.com\', \'data\': \'not_available\'}]', 26, 22);
INSERT INTO `reports_testresult` VALUES (1088, 'not_available', 0, '', '[{\'host\': \'serverfault.com\', \'data\': \'not_available\'}]', 27, 22);
INSERT INTO `reports_testresult` VALUES (1089, 'success', 0, 'One or more SMTP server(s) were found.', '[\'serverfault.com\']', 24, 22);
INSERT INTO `reports_testresult` VALUES (1090, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 22);
INSERT INTO `reports_testresult` VALUES (1091, 'not_available', 0, '', '', 14, 22);
INSERT INTO `reports_testresult` VALUES (1092, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.serverfault.com\'}', 19, 22);
INSERT INTO `reports_testresult` VALUES (1093, 'failed', -1, 'The certificate is invalid.', '{\'self-signed\': False, \'is-expired\': False, \'invalid-cn\': True}', 21, 22);
INSERT INTO `reports_testresult` VALUES (1094, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 22);
INSERT INTO `reports_testresult` VALUES (1095, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.serverfault.com\'}', 23, 22);
INSERT INTO `reports_testresult` VALUES (1096, 'success', 0, 'A HSTS header was provided from the server.', '{\'header\': \'Strict-Transport-Security\', \'value\': \'max-age=15552000\'}', 20, 22);
INSERT INTO `reports_testresult` VALUES (1097, 'success', 0, 'The X-Frame-Options header is returned and is properly configured.', '{\'header\': \'X-Frame-Options\', \'value\': \'SAMEORIGIN\'}', 30, 22);
INSERT INTO `reports_testresult` VALUES (1098, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server. This header is designed to defend against Cross Site Scripting that is one of the most widespread and critical weaknesses that can lead to serious vulnerabilities. It\'s easy and simple to implement, see link for details.', '', 31, 22);
INSERT INTO `reports_testresult` VALUES (1099, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 22);
INSERT INTO `reports_testresult` VALUES (1100, 'partial', -0.1, 'The Content Security Policy header is returned but is not properly configured. This header can be considered as an improved version of the X-XSS-Protection header. It adds another layer of security to protect against cross site scripting, one of the most widespread and critical weaknesses that can lead to serious vulnerabilities.', '{\'header\': \'Content-Security-Policy\', \'value\': \"upgrade-insecure-requests; frame-ancestors \'self\' https://stackexchange.com\"}', 33, 22);
INSERT INTO `reports_testresult` VALUES (1101, 'failed', -0.1, 'The Referrer-Policy header is not sent by the server. This header enables you to specify when the browser should set Referer headers. The use of this header can be considered as “optional”, but is advised to protect the privacy of your visitors.', '', 34, 22);
INSERT INTO `reports_testresult` VALUES (1102, 'success', 0, 'The Server header is not returned by the server.', '', 35, 22);
INSERT INTO `reports_testresult` VALUES (1103, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 22);
INSERT INTO `reports_testresult` VALUES (1104, 'failed', -0.1, 'The Feature-Policy header was not returned by the server. This header can help protect your site from third parties using APIs that have security and privacy implications', '', 37, 22);
INSERT INTO `reports_testresult` VALUES (1105, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 2}', 46, 22);
INSERT INTO `reports_testresult` VALUES (1106, 'failed', -0.8, 'None of the cookie found has a valid syntax.', '[{\'invalid\': [{\'cookie\': \'prov\', \'value\': 2682374400, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}, {\'invalid\': [{\'cookie\': \'prov\', \'value\': 2682374400, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}]', 38, 22);
INSERT INTO `reports_testresult` VALUES (1107, 'success', 0, 'All of the cookies sent via HTTP uses the \'HttpOnly\'.', '[\'\', \'\']', 40, 22);
INSERT INTO `reports_testresult` VALUES (1108, 'failed', -0.8, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 22);
INSERT INTO `reports_testresult` VALUES (1109, 'success', 0, 'None of the cookies sent via unsecure HTTP had the \'Secure\' flag enabled.', '', 41, 22);
INSERT INTO `reports_testresult` VALUES (1110, 'success', 0, 'None of the cookies sent via unsecure HTTP are prefixed.', '', 39, 22);
INSERT INTO `reports_testresult` VALUES (1111, 'failed', -0.4, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'prov\']}', 43, 22);
INSERT INTO `reports_testresult` VALUES (1112, 'not_available', 0, '', '', 44, 22);
INSERT INTO `reports_testresult` VALUES (1113, 'not_available', 0, '', '', 45, 22);
INSERT INTO `reports_testresult` VALUES (1114, 'success', 0.7, 'Your IP address is not associated with any malicious activity.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'151.101.193.69\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 22);
INSERT INTO `reports_testresult` VALUES (1115, 'error', 0, 'This test requires manual review.', '{\'error\': \'An exception occured while requesting resources at \\\'https://neutrinoapi.com/host-reputation\\\': {\"api-error\":2,\"api-error-msg\":\"DAILY API LIMIT EXCEEDED\"}.\'}', 48, 22);
INSERT INTO `reports_testresult` VALUES (1116, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 22);
INSERT INTO `reports_testresult` VALUES (1117, 'success', 1, 'No or few ports are exposed to the Internet.', '[443]', 50, 22);
INSERT INTO `reports_testresult` VALUES (1118, 'partial', 0.7999999999999999, '', '{\'total\': 2, \'groups\': [{\'leak\': \'verificationsio\', \'count\': 2}], \'query\': \'serverfault.com\'}', 51, 22);
INSERT INTO `reports_testresult` VALUES (1119, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 ip4:198.252.206.0/24 ip4:192.111.0.0/24 ip4:52.38.191.241 ip4:35.190.247.0/24 ip4:64.233.160.0/19 ip4:66.102.0.0/20 ip4:66.249.80.0/20 ip4:72.14.192.0/18 ip4:74.125.0.0/16 ip4:108.177.8.0/21 ip4:173.194.0.0/16 include:_spf1.stackexchange.com ~all\']}', 1, 23);
INSERT INTO `reports_testresult` VALUES (1120, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 23);
INSERT INTO `reports_testresult` VALUES (1121, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 23);
INSERT INTO `reports_testresult` VALUES (1122, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 0}', 4, 23);
INSERT INTO `reports_testresult` VALUES (1123, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 23);
INSERT INTO `reports_testresult` VALUES (1124, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 23);
INSERT INTO `reports_testresult` VALUES (1125, 'success', 0, 'Your SPF record prevents unrestricted use of the domain.', '{\'policy\': \'~all\'}', 3, 23);
INSERT INTO `reports_testresult` VALUES (1126, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 ip4:198.252.206.0/24 ip4:192.111.0.0/24 ip4:52.38.191.241 ip4:35.190.247.0/24 ip4:64.233.160.0/19 ip4:66.102.0.0/20 ip4:66.249.80.0/20 ip4:72.14.192.0/18 ip4:74.125.0.0/16 ip4:108.177.8.0/21 ip4:173.194.0.0/16 include:_spf1.stackexchange.com ~all\'}', 8, 23);
INSERT INTO `reports_testresult` VALUES (1127, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 23);
INSERT INTO `reports_testresult` VALUES (1128, 'success', 0, 'A DMARC record was found for your domain.', '{\'record\': [\'v=DMARC1;p=reject;sp=reject;pct=100;rua=mailto:dmarc-aggregates@stackexchange.com;ruf=mailto:dmarc-forensics@stackexchange.com;fo=1\']}', 10, 23);
INSERT INTO `reports_testresult` VALUES (1129, 'success', 0, 'The syntax of your DMARC record is valid.', '{\'record\': \'v=DMARC1;p=reject;sp=reject;pct=100;rua=mailto:dmarc-aggregates@stackexchange.com;ruf=mailto:dmarc-forensics@stackexchange.com;fo=1\'}', 11, 23);
INSERT INTO `reports_testresult` VALUES (1130, 'success', 0, 'The DMARC policy is configured to quarantine or reject invalid emails.', '{\'policy\': \'reject\'}', 15, 23);
INSERT INTO `reports_testresult` VALUES (1131, 'success', 0, 'All emails are being vetted by DMARC.', '{\'pct\': \'100\'}', 16, 23);
INSERT INTO `reports_testresult` VALUES (1132, 'success', 0, 'The destination domain has the proper TXT record to receive domains.', '', 12, 23);
INSERT INTO `reports_testresult` VALUES (1133, 'success', 0, 'You are receiving aggregate reports for your domain.', '{\'rua\': \'mailto:dmarc-aggregates@stackexchange.com\'}', 17, 23);
INSERT INTO `reports_testresult` VALUES (1134, 'success', 0, 'You are receiving forensics reports for your domain.', '{\'ruf\': \'mailto:dmarc-forensics@stackexchange.com\'}', 18, 23);
INSERT INTO `reports_testresult` VALUES (1135, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 24, 23);
INSERT INTO `reports_testresult` VALUES (1136, 'success', 1, 'STARTTLS is enabled on the remote SMTP server.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 28, 23);
INSERT INTO `reports_testresult` VALUES (1137, 'success', 0, 'The certificate is valid.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 25, 23);
INSERT INTO `reports_testresult` VALUES (1138, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 26, 23);
INSERT INTO `reports_testresult` VALUES (1139, 'success', 0, 'The certificate is valid.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 27, 23);
INSERT INTO `reports_testresult` VALUES (1140, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 29, 23);
INSERT INTO `reports_testresult` VALUES (1141, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 23);
INSERT INTO `reports_testresult` VALUES (1142, 'not_available', 0, '', '', 14, 23);
INSERT INTO `reports_testresult` VALUES (1143, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.stackexchange.com\'}', 19, 23);
INSERT INTO `reports_testresult` VALUES (1144, 'success', 0, 'The certificate is valid.', '', 21, 23);
INSERT INTO `reports_testresult` VALUES (1145, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 23);
INSERT INTO `reports_testresult` VALUES (1146, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.stackexchange.com\'}', 23, 23);
INSERT INTO `reports_testresult` VALUES (1147, 'failed', -1, 'A HSTS header was not provided by the server.', '', 20, 23);
INSERT INTO `reports_testresult` VALUES (1148, 'success', 0, 'The X-Frame-Options header is returned and is properly configured.', '{\'header\': \'X-Frame-Options\', \'value\': \'SAMEORIGIN\'}', 30, 23);
INSERT INTO `reports_testresult` VALUES (1149, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server. This header is designed to defend against Cross Site Scripting that is one of the most widespread and critical weaknesses that can lead to serious vulnerabilities. It\'s easy and simple to implement, see link for details.', '', 31, 23);
INSERT INTO `reports_testresult` VALUES (1150, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 23);
INSERT INTO `reports_testresult` VALUES (1151, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server. This header can be considered as an improved version of the X-XSS-Protection header. It adds another layer of security to protect against cross site scripting, one of the most widespread and critical weaknesses that can lead to serious vulnerabilities.', '', 33, 23);
INSERT INTO `reports_testresult` VALUES (1152, 'failed', -0.1, 'The Referrer-Policy header is not sent by the server. This header enables you to specify when the browser should set Referer headers. The use of this header can be considered as “optional”, but is advised to protect the privacy of your visitors.', '', 34, 23);
INSERT INTO `reports_testresult` VALUES (1153, 'success', 0, 'The Server header is not returned by the server.', '', 35, 23);
INSERT INTO `reports_testresult` VALUES (1154, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 23);
INSERT INTO `reports_testresult` VALUES (1155, 'failed', -0.1, 'The Feature-Policy header was not returned by the server. This header can help protect your site from third parties using APIs that have security and privacy implications', '', 37, 23);
INSERT INTO `reports_testresult` VALUES (1156, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 2}', 46, 23);
INSERT INTO `reports_testresult` VALUES (1157, 'failed', -0.8, 'None of the cookie found has a valid syntax.', '[{\'invalid\': [{\'cookie\': \'prov\', \'value\': 2682374400, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}, {\'invalid\': [{\'cookie\': \'prov\', \'value\': 2682374400, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}]', 38, 23);
INSERT INTO `reports_testresult` VALUES (1158, 'success', 0, 'All of the cookies sent via HTTP uses the \'HttpOnly\'.', '[\'\', \'\']', 40, 23);
INSERT INTO `reports_testresult` VALUES (1159, 'failed', -0.8, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 23);
INSERT INTO `reports_testresult` VALUES (1160, 'success', 0, 'None of the cookies sent via unsecure HTTP had the \'Secure\' flag enabled.', '', 41, 23);
INSERT INTO `reports_testresult` VALUES (1161, 'success', 0, 'None of the cookies sent via unsecure HTTP are prefixed.', '', 39, 23);
INSERT INTO `reports_testresult` VALUES (1162, 'failed', -0.4, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'prov\']}', 43, 23);
INSERT INTO `reports_testresult` VALUES (1163, 'not_available', 0, '', '', 44, 23);
INSERT INTO `reports_testresult` VALUES (1164, 'not_available', 0, '', '', 45, 23);
INSERT INTO `reports_testresult` VALUES (1165, 'success', 0.7, 'Your IP address is not associated with any malicious activity.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'151.101.1.69\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 23);
INSERT INTO `reports_testresult` VALUES (1166, 'error', 0, 'This test requires manual review.', '{\'error\': \'An exception occured while requesting resources at \\\'https://neutrinoapi.com/host-reputation\\\': {\"api-error\":2,\"api-error-msg\":\"DAILY API LIMIT EXCEEDED\"}.\'}', 48, 23);
INSERT INTO `reports_testresult` VALUES (1167, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 23);
INSERT INTO `reports_testresult` VALUES (1168, 'success', 1, 'No or few ports are exposed to the Internet.', '[443]', 50, 23);
INSERT INTO `reports_testresult` VALUES (1169, 'failed', -29.8, 'Your domain was found at least once in known, public data leaks.', '{\'total\': 308, \'groups\': [{\'leak\': \'disqus\', \'count\': 2}, {\'leak\': \'dropbox\', \'count\': 7}, {\'leak\': \'verificationsio\', \'count\': 142}, {\'leak\': \'pdlcollection\', \'count\': 54}, {\'leak\': \'datanleads\', \'count\': 52}, {\'leak\': \'adaptio\', \'count\': 30}, {\'leak\': \'data-contacts\', \'count\': 16}, {\'leak\': \'bitly\', \'count\': 1}, {\'leak\': \'pcrai\', \'count\': 2}, {\'leak\': \'the-collections\', \'count\': 1}, {\'leak\': \'tumblr\', \'count\': 1}], \'query\': \'stackexchange.com\'}', 51, 23);
INSERT INTO `reports_testresult` VALUES (1170, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 mx a:smtp2.shopify.com ip4:94.199.255.10/32 ip4:208.91.206.64/26 ip4:66.254.113.78/32 ip4:66.254.119.174 ip4:66.254.113.78 ip4:66.254.112.72/30 -all\']}', 1, 24);
INSERT INTO `reports_testresult` VALUES (1171, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 24);
INSERT INTO `reports_testresult` VALUES (1172, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 24);
INSERT INTO `reports_testresult` VALUES (1173, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 1}', 4, 24);
INSERT INTO `reports_testresult` VALUES (1174, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 24);
INSERT INTO `reports_testresult` VALUES (1175, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 24);
INSERT INTO `reports_testresult` VALUES (1176, 'success', 0, 'Your SPF record prevents unrestricted use of the domain.', '{\'policy\': \'-all\'}', 3, 24);
INSERT INTO `reports_testresult` VALUES (1177, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 mx a:smtp2.shopify.com ip4:94.199.255.10/32 ip4:208.91.206.64/26 ip4:66.254.113.78/32 ip4:66.254.119.174 ip4:66.254.113.78 ip4:66.254.112.72/30 -all\'}', 8, 24);
INSERT INTO `reports_testresult` VALUES (1178, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 24);
INSERT INTO `reports_testresult` VALUES (1179, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'mxa-002a0701.gslb.pphosted.com\', \'data\': \'success\'}, {\'host\': \'mxb-002a0701.gslb.pphosted.com\', \'data\': \'success\'}]', 24, 24);
INSERT INTO `reports_testresult` VALUES (1180, 'success', 1, 'STARTTLS is enabled on the remote SMTP server.', '[{\'host\': \'mxa-002a0701.gslb.pphosted.com\', \'data\': \'success\'}, {\'host\': \'mxb-002a0701.gslb.pphosted.com\', \'data\': \'success\'}]', 28, 24);
INSERT INTO `reports_testresult` VALUES (1181, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mxa-002a0701.gslb.pphosted.com\', \'data\': \'success\'}, {\'host\': \'mxb-002a0701.gslb.pphosted.com\', \'data\': \'success\'}]', 25, 24);
INSERT INTO `reports_testresult` VALUES (1182, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'mxa-002a0701.gslb.pphosted.com\', \'data\': \'success\'}, {\'host\': \'mxb-002a0701.gslb.pphosted.com\', \'data\': \'success\'}]', 26, 24);
INSERT INTO `reports_testresult` VALUES (1183, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mxa-002a0701.gslb.pphosted.com\', \'data\': \'success\'}, {\'host\': \'mxb-002a0701.gslb.pphosted.com\', \'data\': \'success\'}]', 27, 24);
INSERT INTO `reports_testresult` VALUES (1184, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'mxa-002a0701.gslb.pphosted.com\', \'data\': \'success\'}, {\'host\': \'mxb-002a0701.gslb.pphosted.com\', \'data\': \'success\'}]', 29, 24);
INSERT INTO `reports_testresult` VALUES (1185, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.Pornhub.com\'}', 19, 24);
INSERT INTO `reports_testresult` VALUES (1186, 'failed', -1, 'The certificate is invalid.', '{\'self-signed\': False, \'is-expired\': False, \'invalid-cn\': True}', 21, 24);
INSERT INTO `reports_testresult` VALUES (1187, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 24);
INSERT INTO `reports_testresult` VALUES (1188, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.Pornhub.com\'}', 23, 24);
INSERT INTO `reports_testresult` VALUES (1189, 'failed', -1, 'A HSTS header was not provided by the server. HSTS is a response header that forces your browser to only be able to access the HTTPS version of a  website and any resources on it.</br></br>\r\nEnabling HSTS will stop SSL protocol attacks and cookie hijacking, two vulnerabilities in SSL-enabled websites. And in addition to making a website more secure, HSTS makes sites load quicker by removing a step in the loading procedure.', '', 20, 24);
INSERT INTO `reports_testresult` VALUES (1190, 'success', 0, 'The X-Frame-Options header is returned and is properly configured.', '{\'header\': \'X-Frame-Options\', \'value\': \'SAMEORIGIN\'}', 30, 24);
INSERT INTO `reports_testresult` VALUES (1191, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server. This header is designed to defend against Cross Site Scripting that is one of the most widespread and critical weaknesses that can lead to serious vulnerabilities. It\'s easy and simple to implement, see link for details.', '', 31, 24);
INSERT INTO `reports_testresult` VALUES (1192, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 24);
INSERT INTO `reports_testresult` VALUES (1193, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server. This header can be considered as an improved version of the X-XSS-Protection header. It adds another layer of security to protect against cross site scripting, one of the most widespread and critical weaknesses that can lead to serious vulnerabilities.', '', 33, 24);
INSERT INTO `reports_testresult` VALUES (1194, 'failed', -0.1, 'The Referrer-Policy header is not sent by the server. This header enables you to specify when the browser should set Referer headers. The use of this header can be considered as “optional”, but is advised to protect the privacy of your visitors.', '', 34, 24);
INSERT INTO `reports_testresult` VALUES (1195, 'failed', -0.7145, 'The Server header is sent by the server. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence. Server values should be avoided as they potentially reveal internal implementation details that might make it  easier for attackers to find and exploit known security holes.', '{\'header\': \'Server\', \'value\': \'openresty\'}', 35, 24);
INSERT INTO `reports_testresult` VALUES (1196, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 24);
INSERT INTO `reports_testresult` VALUES (1197, 'failed', -0.1, 'The Feature-Policy header was not returned by the server. This header can help protect your site from third parties using APIs that have security and privacy implications', '', 37, 24);
INSERT INTO `reports_testresult` VALUES (1198, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 5}', 46, 24);
INSERT INTO `reports_testresult` VALUES (1199, 'failed', -0.3, 'None of the cookie found has a valid syntax.', '[\'\', {\'invalid\': [{\'cookie\': \'bs\', \'value\': 3458560134, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}, {\'cookie\': \'platform\', \'value\': 3143286534, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}, {\'cookie\': \'ss\', \'value\': 1603136067, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}, {\'cookie\': \'ua\', \'value\': 3143286534, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}]', 38, 24);
INSERT INTO `reports_testresult` VALUES (1200, 'failed', -0.4, 'None of the cookies found had the \'HttpOnly\' flag.', '[\'\', {\'unsecure\': [\'bs\', \'platform\', \'ss\', \'ua\', \'RNLBSERVERID\']}]', 40, 24);
INSERT INTO `reports_testresult` VALUES (1201, 'failed', -0.4, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 24);
INSERT INTO `reports_testresult` VALUES (1202, 'not_available', 0, '', '', 41, 24);
INSERT INTO `reports_testresult` VALUES (1203, 'not_available', 0, '', '', 39, 24);
INSERT INTO `reports_testresult` VALUES (1204, 'failed', -0.4, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'bs\', \'platform\', \'ss\', \'ua\', \'RNLBSERVERID\']}', 43, 24);
INSERT INTO `reports_testresult` VALUES (1205, 'not_available', 0, '', '', 44, 24);
INSERT INTO `reports_testresult` VALUES (1206, 'not_available', 0, '', '', 45, 24);
INSERT INTO `reports_testresult` VALUES (1207, 'error', 0, '', '', 47, 24);
INSERT INTO `reports_testresult` VALUES (1208, 'error', 0, 'This test requires manual review.', '', 48, 24);
INSERT INTO `reports_testresult` VALUES (1209, 'error', 0, 'This test requires manual review.', '', 49, 24);
INSERT INTO `reports_testresult` VALUES (1210, 'error', 0, 'This test requires manual review.', '', 50, 24);
INSERT INTO `reports_testresult` VALUES (1211, 'error', 0, 'This test requires manual review.', '', 51, 24);
INSERT INTO `reports_testresult` VALUES (1212, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 include:_spf.google.com include:_spf.smtp.advancedhosters.com -all\']}', 1, 25);
INSERT INTO `reports_testresult` VALUES (1213, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 25);
INSERT INTO `reports_testresult` VALUES (1214, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 25);
INSERT INTO `reports_testresult` VALUES (1215, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 0}', 4, 25);
INSERT INTO `reports_testresult` VALUES (1216, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 25);
INSERT INTO `reports_testresult` VALUES (1217, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 25);
INSERT INTO `reports_testresult` VALUES (1218, 'success', 0, 'Your SPF record prevents unrestricted use of the domain.', '{\'policy\': \'-all\'}', 3, 25);
INSERT INTO `reports_testresult` VALUES (1219, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 include:_spf.google.com include:_spf.smtp.advancedhosters.com -all\'}', 8, 25);
INSERT INTO `reports_testresult` VALUES (1220, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 25);
INSERT INTO `reports_testresult` VALUES (1221, 'success', 0, 'A DMARC record was found for your domain.', '{\'record\': [\'v=DMARC1; p=none; sp=none; rua=mailto:postmaster@xhamster.com\']}', 10, 25);
INSERT INTO `reports_testresult` VALUES (1222, 'success', 0, 'The syntax of your DMARC record is valid.', '{\'record\': \'v=DMARC1; p=none; sp=none; rua=mailto:postmaster@xhamster.com\'}', 11, 25);
INSERT INTO `reports_testresult` VALUES (1223, 'failed', -1, 'The DMARC policy is set to none. \r\n\r\nWith the DMARC policy none, no action will be taken against email that fails the DMARC check. The email just goes into the inbox / folder of the receiver. This DMARC policy can be used to start monitoring who is sending emails on behalf of a domain.', '{\'policy\': \'none\'}', 15, 25);
INSERT INTO `reports_testresult` VALUES (1224, 'success', 0, 'All emails are being vetted by DMARC.', '', 16, 25);
INSERT INTO `reports_testresult` VALUES (1225, 'success', 0, 'The destination domain has the proper TXT record to receive domains.', '', 12, 25);
INSERT INTO `reports_testresult` VALUES (1226, 'success', 0, 'You are receiving aggregate reports for your domain.', '{\'rua\': \'mailto:postmaster@xhamster.com\'}', 17, 25);
INSERT INTO `reports_testresult` VALUES (1227, 'failed', -0.1, 'You are not receiving forensics reports for your domain.', '', 18, 25);
INSERT INTO `reports_testresult` VALUES (1228, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}]', 24, 25);
INSERT INTO `reports_testresult` VALUES (1229, 'success', 1, 'STARTTLS is enabled on the remote SMTP server.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}]', 28, 25);
INSERT INTO `reports_testresult` VALUES (1230, 'success', 0, 'The certificate is valid.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}]', 25, 25);
INSERT INTO `reports_testresult` VALUES (1231, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}]', 26, 25);
INSERT INTO `reports_testresult` VALUES (1232, 'success', 0, 'The certificate is valid.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}]', 27, 25);
INSERT INTO `reports_testresult` VALUES (1233, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}]', 29, 25);
INSERT INTO `reports_testresult` VALUES (1234, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 25);
INSERT INTO `reports_testresult` VALUES (1235, 'not_available', 0, '', '', 14, 25);
INSERT INTO `reports_testresult` VALUES (1236, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.xhamster.com\'}', 19, 25);
INSERT INTO `reports_testresult` VALUES (1237, 'success', 0, 'The certificate is valid.', '', 21, 25);
INSERT INTO `reports_testresult` VALUES (1238, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 25);
INSERT INTO `reports_testresult` VALUES (1239, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.xhamster.com\'}', 23, 25);
INSERT INTO `reports_testresult` VALUES (1240, 'partial', -0.5, '', '{\'header\': \'Strict-Transport-Security\', \'value\': \'max-age=86400; preload\'}', 20, 25);
INSERT INTO `reports_testresult` VALUES (1241, 'failed', -0.2, 'The X-Frame-Options header is not sent by the server. This header protects web applications against clickjacking. This is  a malicious technique of tricking a user into clicking on something different from what the user perceives, thus potentially revealing confidential information or allowing others to take control of their computer.', '', 30, 25);
INSERT INTO `reports_testresult` VALUES (1242, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server. This header is designed to defend against Cross Site Scripting that is one of the most widespread and critical weaknesses that can lead to serious vulnerabilities. It\'s easy and simple to implement, see link for details.', '', 31, 25);
INSERT INTO `reports_testresult` VALUES (1243, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 25);
INSERT INTO `reports_testresult` VALUES (1244, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server. This header can be considered as an improved version of the X-XSS-Protection header. It adds another layer of security to protect against cross site scripting, one of the most widespread and critical weaknesses that can lead to serious vulnerabilities.', '', 33, 25);
INSERT INTO `reports_testresult` VALUES (1245, 'failed', -0.1, 'The Referrer-Policy header is not sent by the server. This header enables you to specify when the browser should set Referer headers. The use of this header can be considered as “optional”, but is advised to protect the privacy of your visitors.', '', 34, 25);
INSERT INTO `reports_testresult` VALUES (1246, 'failed', -0.7145, 'The Server header is sent by the server. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence. Server values should be avoided as they potentially reveal internal implementation details that might make it  easier for attackers to find and exploit known security holes.', '{\'header\': \'Server\', \'value\': \'nginx\'}', 35, 25);
INSERT INTO `reports_testresult` VALUES (1247, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 25);
INSERT INTO `reports_testresult` VALUES (1248, 'failed', -0.1, 'The Feature-Policy header was not returned by the server. This header can help protect your site from third parties using APIs that have security and privacy implications', '', 37, 25);
INSERT INTO `reports_testresult` VALUES (1249, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 3}', 46, 25);
INSERT INTO `reports_testresult` VALUES (1250, 'failed', -0.8, 'None of the cookie found has a valid syntax.', '[{\'invalid\': [{\'cookie\': \'stats_id\', \'value\': 1572205007, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}, {\'invalid\': [{\'cookie\': \'prs\', \'value\': 1571686608, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}, {\'cookie\': \'stats_id\', \'value\': 1572205007, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}]', 38, 25);
INSERT INTO `reports_testresult` VALUES (1251, 'failed', -0.8, 'None of the cookies found had the \'HttpOnly\' flag.', '[{\'unsecure\': [\'stats_id\']}, {\'unsecure\': [\'prs\', \'stats_id\']}]', 40, 25);
INSERT INTO `reports_testresult` VALUES (1252, 'failed', -0.8, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 25);
INSERT INTO `reports_testresult` VALUES (1253, 'success', 0, 'None of the cookies sent via unsecure HTTP had the \'Secure\' flag enabled.', '', 41, 25);
INSERT INTO `reports_testresult` VALUES (1254, 'success', 0, 'None of the cookies sent via unsecure HTTP are prefixed.', '', 39, 25);
INSERT INTO `reports_testresult` VALUES (1255, 'failed', -0.4, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'prs\', \'stats_id\']}', 43, 25);
INSERT INTO `reports_testresult` VALUES (1256, 'not_available', 0, '', '', 44, 25);
INSERT INTO `reports_testresult` VALUES (1257, 'not_available', 0, '', '', 45, 25);
INSERT INTO `reports_testresult` VALUES (1258, 'success', 0.7, 'Your IP address is not associated with any malicious activity.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'88.208.60.136\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 25);
INSERT INTO `reports_testresult` VALUES (1259, 'success', 0.3, 'Your host is not listed on any DNSBL', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 386, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 1329, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 876, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 435, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 243, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 459, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 3322, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 3315, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 3316, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 232, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 231, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 230, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 226, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 230, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 693, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 695, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 687, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 604, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 899, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 973, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 973, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 973, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 973, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 1159, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 45, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 382, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 356, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'xhamster.com\', \'is-listed\': False}', 48, 25);
INSERT INTO `reports_testresult` VALUES (1260, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 25);
INSERT INTO `reports_testresult` VALUES (1261, 'success', 1, 'No or few ports are exposed to the Internet.', '[443, 80]', 50, 25);
INSERT INTO `reports_testresult` VALUES (1262, 'failed', -9.700000000000001, 'Your domain was found at least once in known, public data leaks.', '{\'total\': 107, \'groups\': [{\'leak\': \'the-collections\', \'count\': 33}, {\'leak\': \'verificationsio\', \'count\': 12}, {\'leak\': \'antipublic\', \'count\': 16}, {\'leak\': \'breachcompilation\', \'count\': 18}, {\'leak\': \'fling\', \'count\': 5}, {\'leak\': \'ashleymadison\', \'count\': 4}, {\'leak\': \'myspace\', \'count\': 6}, {\'leak\': \'exploitin\', \'count\': 6}, {\'leak\': \'blackhatworld\', \'count\': 1}, {\'leak\': \'xat\', \'count\': 1}, {\'leak\': \'pastebin\', \'count\': 1}, {\'leak\': \'adultfriendfinder\', \'count\': 1}, {\'leak\': \'mate1\', \'count\': 1}, {\'leak\': \'modernbusinesssolutions\', \'count\': 1}, {\'leak\': \'twitter\', \'count\': 1}], \'query\': \'xhamster.com\'}', 51, 25);
INSERT INTO `reports_testresult` VALUES (1263, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 include:spf.protection.outlook.com include:eu._netblocks.mimecast.com include:amazonses.com  -all\']}', 1, 26);
INSERT INTO `reports_testresult` VALUES (1264, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 26);
INSERT INTO `reports_testresult` VALUES (1265, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 26);
INSERT INTO `reports_testresult` VALUES (1266, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 2}', 4, 26);
INSERT INTO `reports_testresult` VALUES (1267, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 26);
INSERT INTO `reports_testresult` VALUES (1268, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 26);
INSERT INTO `reports_testresult` VALUES (1269, 'success', 0, 'Your SPF record prevents unrestricted use of the domain.', '{\'policy\': \'-all\'}', 3, 26);
INSERT INTO `reports_testresult` VALUES (1270, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 include:spf.protection.outlook.com include:eu._netblocks.mimecast.com include:amazonses.com  -all\'}', 8, 26);
INSERT INTO `reports_testresult` VALUES (1271, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 26);
INSERT INTO `reports_testresult` VALUES (1272, 'failed', -1, 'No DMARC record was found. \r\n</br></br>\r\nSPF and DKIM on their own (or even together) contain various weaknesses. When both are combined with DMARC, they create an enhanced layer of security and sender identification. Part of the DMARC requirements involves the concept of domain alignment, so it makes it much more difficult for fraudsters to spoof a domain.', '{\'records\': 0}', 10, 26);
INSERT INTO `reports_testresult` VALUES (1273, 'not_available', 0, '', '{\'records\': 0}', 11, 26);
INSERT INTO `reports_testresult` VALUES (1274, 'not_available', 0, '', '{\'records\': 0}', 12, 26);
INSERT INTO `reports_testresult` VALUES (1275, 'not_available', 0, '', '{\'records\': 0}', 15, 26);
INSERT INTO `reports_testresult` VALUES (1276, 'not_available', 0, '', '{\'records\': 0}', 16, 26);
INSERT INTO `reports_testresult` VALUES (1277, 'not_available', 0, '', '{\'records\': 0}', 17, 26);
INSERT INTO `reports_testresult` VALUES (1278, 'not_available', 0, '', '{\'records\': 0}', 18, 26);
INSERT INTO `reports_testresult` VALUES (1279, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'eu-smtp-inbound-1.mimecast.com\', \'data\': \'success\'}, {\'host\': \'eu-smtp-inbound-2.mimecast.com\', \'data\': \'success\'}]', 24, 26);
INSERT INTO `reports_testresult` VALUES (1280, 'success', 1, 'STARTTLS is enabled on the remote SMTP server.', '[{\'host\': \'eu-smtp-inbound-1.mimecast.com\', \'data\': \'success\'}, {\'host\': \'eu-smtp-inbound-2.mimecast.com\', \'data\': \'success\'}]', 28, 26);
INSERT INTO `reports_testresult` VALUES (1281, 'success', 0, 'The certificate is valid.', '[{\'host\': \'eu-smtp-inbound-1.mimecast.com\', \'data\': \'success\'}, {\'host\': \'eu-smtp-inbound-2.mimecast.com\', \'data\': \'success\'}]', 25, 26);
INSERT INTO `reports_testresult` VALUES (1282, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'eu-smtp-inbound-1.mimecast.com\', \'data\': \'success\'}, {\'host\': \'eu-smtp-inbound-2.mimecast.com\', \'data\': \'success\'}]', 26, 26);
INSERT INTO `reports_testresult` VALUES (1283, 'success', 0, 'The certificate is valid.', '[{\'host\': \'eu-smtp-inbound-1.mimecast.com\', \'data\': \'success\'}, {\'host\': \'eu-smtp-inbound-2.mimecast.com\', \'data\': \'success\'}]', 27, 26);
INSERT INTO `reports_testresult` VALUES (1284, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'eu-smtp-inbound-1.mimecast.com\', \'data\': \'success\'}, {\'host\': \'eu-smtp-inbound-2.mimecast.com\', \'data\': \'success\'}]', 29, 26);
INSERT INTO `reports_testresult` VALUES (1285, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 26);
INSERT INTO `reports_testresult` VALUES (1286, 'not_available', 0, '', '', 14, 26);
INSERT INTO `reports_testresult` VALUES (1287, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.britishchambers.org.uk\'}', 19, 26);
INSERT INTO `reports_testresult` VALUES (1288, 'failed', -1, 'The certificate is invalid.', '{\'self-signed\': False, \'is-expired\': False, \'invalid-cn\': True}', 21, 26);
INSERT INTO `reports_testresult` VALUES (1289, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 26);
INSERT INTO `reports_testresult` VALUES (1290, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.britishchambers.org.uk\'}', 23, 26);
INSERT INTO `reports_testresult` VALUES (1291, 'failed', -1, 'A HSTS header was not provided by the server. HSTS is a response header that forces your browser to only be able to access the HTTPS version of a  website and any resources on it.</br></br>\r\nEnabling HSTS will stop SSL protocol attacks and cookie hijacking, two vulnerabilities in SSL-enabled websites. And in addition to making a website more secure, HSTS makes sites load quicker by removing a step in the loading procedure.', '', 20, 26);
INSERT INTO `reports_testresult` VALUES (1292, 'success', 0, 'The X-Frame-Options header is returned and is properly configured.', '{\'header\': \'X-Frame-Options\', \'value\': \'SAMEORIGIN\'}', 30, 26);
INSERT INTO `reports_testresult` VALUES (1293, 'success', 0, 'The X-XSS-Protection header is returned and is properly configured.', '{\'header\': \'X-Xss-Protection\', \'value\': \'1; mode=block\'}', 31, 26);
INSERT INTO `reports_testresult` VALUES (1294, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '{\'header\': \'X-Content-Type-Options\', \'value\': \'nosniff\'}', 32, 26);
INSERT INTO `reports_testresult` VALUES (1295, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server. This header can be considered as an improved version of the X-XSS-Protection header. It adds another layer of security to protect against cross site scripting, one of the most widespread and critical weaknesses that can lead to serious vulnerabilities.', '', 33, 26);
INSERT INTO `reports_testresult` VALUES (1296, 'failed', -0.1, 'The Referrer-Policy header is not sent by the server. This header enables you to specify when the browser should set Referer headers. The use of this header can be considered as “optional”, but is advised to protect the privacy of your visitors.', '', 34, 26);
INSERT INTO `reports_testresult` VALUES (1297, 'failed', -0.7145, 'The Server header is sent by the server. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence. Server values should be avoided as they potentially reveal internal implementation details that might make it  easier for attackers to find and exploit known security holes.', '{\'header\': \'Server\', \'value\': \'cloudflare\'}', 35, 26);
INSERT INTO `reports_testresult` VALUES (1298, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 26);
INSERT INTO `reports_testresult` VALUES (1299, 'failed', -0.1, 'The Feature-Policy header was not returned by the server. This header can help protect your site from third parties using APIs that have security and privacy implications', '', 37, 26);
INSERT INTO `reports_testresult` VALUES (1300, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 3}', 46, 26);
INSERT INTO `reports_testresult` VALUES (1301, 'failed', -0.4, 'None of the cookie found has a valid syntax.', '[\'\', {\'invalid\': [{\'cookie\': \'__cfduid\', \'value\': 1603273456, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}, {\'cookie\': \'XSRF-TOKEN\', \'value\': 1571744657, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}, {\'cookie\': \'laravel_session\', \'value\': 1571744657, \'issue\': \'Date is not using recommended format as per RFC7231, section 7.1.1.1\'}]}]', 38, 26);
INSERT INTO `reports_testresult` VALUES (1302, 'failed', -0.3, 'None of the cookies found had the \'HttpOnly\' flag.', '[\'\', {\'unsecure\': [\'XSRF-TOKEN\']}]', 40, 26);
INSERT INTO `reports_testresult` VALUES (1303, 'failed', -0.4, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 26);
INSERT INTO `reports_testresult` VALUES (1304, 'not_available', 0, '', '', 41, 26);
INSERT INTO `reports_testresult` VALUES (1305, 'not_available', 0, '', '', 39, 26);
INSERT INTO `reports_testresult` VALUES (1306, 'failed', -0.4, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'__cfduid\', \'XSRF-TOKEN\', \'laravel_session\']}', 43, 26);
INSERT INTO `reports_testresult` VALUES (1307, 'not_available', 0, '', '', 44, 26);
INSERT INTO `reports_testresult` VALUES (1308, 'not_available', 0, '', '', 45, 26);
INSERT INTO `reports_testresult` VALUES (1309, 'success', 0.7, 'Your IP address is not associated with any malicious activity.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'104.24.30.99\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 26);
INSERT INTO `reports_testresult` VALUES (1310, 'success', 0.3, 'Your host is not listed on any DNSBL', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 252, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 462, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 254, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 179, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 211, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 429, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 594, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 590, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 591, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 75, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 74, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 74, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 74, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 72, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 465, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 265, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 261, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 617, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 141, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 63, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 63, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 65, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 60, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 459, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 35, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 66, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 56, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'britishchambers.org.uk\', \'is-listed\': False}', 48, 26);
INSERT INTO `reports_testresult` VALUES (1311, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 26);
INSERT INTO `reports_testresult` VALUES (1312, 'partial', 0.25, '', '[8080, 2083, 80, 2052, 2086, 443, 8443, 2087]', 50, 26);
INSERT INTO `reports_testresult` VALUES (1313, 'failed', -15.900000000000002, 'Your domain was found at least once in known, public data leaks.', '{\'total\': 169, \'groups\': [{\'leak\': \'the-collections\', \'count\': 20}, {\'leak\': \'verificationsio\', \'count\': 58}, {\'leak\': \'breachcompilation\', \'count\': 21}, {\'leak\': \'linkedin\', \'count\': 29}, {\'leak\': \'pdlcollection\', \'count\': 6}, {\'leak\': \'bitly\', \'count\': 1}, {\'leak\': \'myfitnesspal\', \'count\': 3}, {\'leak\': \'antipublic\', \'count\': 7}, {\'leak\': \'exploitin\', \'count\': 4}, {\'leak\': \'tumblr\', \'count\': 1}, {\'leak\': \'dropbox\', \'count\': 3}, {\'leak\': \'disqus\', \'count\': 5}, {\'leak\': \'adobe\', \'count\': 6}, {\'leak\': \'customerslive\', \'count\': 2}, {\'leak\': \'lastfm\', \'count\': 1}, {\'leak\': \'myspace\', \'count\': 2}], \'query\': \'britishchambers.org.uk\'}', 51, 26);
INSERT INTO `reports_testresult` VALUES (1314, 'failed', -1, 'No SPF record is defined for your domain.\r\n</br></br>\r\nSPF is an email authentication method designed to detect forged sender addresses in emails (email spoofing), a technique often used in phishing and email spam.\r\n</br></br>\r\nSPF allows the receiver to check that an email claiming to come from a specific domain comes from an IP address authorised by that domain\'s administrators. The list of authorised sending hosts and IP addresses for a domain is published in the DNS records for that domain.', '', 1, 27);
INSERT INTO `reports_testresult` VALUES (1315, 'not_available', 0, '', '', 6, 27);
INSERT INTO `reports_testresult` VALUES (1316, 'not_available', 0, '', '', 4, 27);
INSERT INTO `reports_testresult` VALUES (1317, 'not_available', 0, '', '', 2, 27);
INSERT INTO `reports_testresult` VALUES (1318, 'not_available', 0, '', '', 7, 27);
INSERT INTO `reports_testresult` VALUES (1319, 'not_available', 0, '', '', 5, 27);
INSERT INTO `reports_testresult` VALUES (1320, 'not_available', 0, '', '', 3, 27);
INSERT INTO `reports_testresult` VALUES (1321, 'not_available', 0, '', '', 8, 27);
INSERT INTO `reports_testresult` VALUES (1322, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 27);
INSERT INTO `reports_testresult` VALUES (1323, 'failed', -1, 'No DMARC record was found. \r\n</br></br>\r\nSPF and DKIM on their own (or even together) contain various weaknesses. When both are combined with DMARC, they create an enhanced layer of security and sender identification. Part of the DMARC requirements involves the concept of domain alignment, so it makes it much more difficult for fraudsters to spoof a domain.', '{\'records\': 0}', 10, 27);
INSERT INTO `reports_testresult` VALUES (1324, 'not_available', 0, '', '{\'records\': 0}', 11, 27);
INSERT INTO `reports_testresult` VALUES (1325, 'not_available', 0, '', '{\'records\': 0}', 12, 27);
INSERT INTO `reports_testresult` VALUES (1326, 'not_available', 0, '', '{\'records\': 0}', 15, 27);
INSERT INTO `reports_testresult` VALUES (1327, 'not_available', 0, '', '{\'records\': 0}', 16, 27);
INSERT INTO `reports_testresult` VALUES (1328, 'not_available', 0, '', '{\'records\': 0}', 17, 27);
INSERT INTO `reports_testresult` VALUES (1329, 'not_available', 0, '', '{\'records\': 0}', 18, 27);
INSERT INTO `reports_testresult` VALUES (1330, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[]', 29, 27);
INSERT INTO `reports_testresult` VALUES (1331, 'success', 1, 'STARTTLS is enabled on the remote SMTP server.', '[{\'host\': \'smx1.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx2.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx3.web-hosting.com\', \'data\': \'failed\'}]', 28, 27);
INSERT INTO `reports_testresult` VALUES (1332, 'success', 0, 'The certificate is valid.', '[{\'host\': \'smx1.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx2.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx3.web-hosting.com\', \'data\': \'not_available\'}]', 25, 27);
INSERT INTO `reports_testresult` VALUES (1333, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'smx1.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx2.web-hosting.com\', \'data\': \'success\'}, {\'host\': \'smx3.web-hosting.com\', \'data\': \'not_available\'}]', 26, 27);
INSERT INTO `reports_testresult` VALUES (1334, 'not_available', 0, '', '[{\'host\': \'smx1.web-hosting.com\', \'data\': \'not_available\'}, {\'host\': \'smx2.web-hosting.com\', \'data\': \'not_available\'}, {\'host\': \'smx3.web-hosting.com\', \'data\': \'not_available\'}]', 27, 27);
INSERT INTO `reports_testresult` VALUES (1335, 'success', 0, 'One or more SMTP server(s) were found.', '[\'smx1.web-hosting.com\', \'smx2.web-hosting.com\', \'smx3.web-hosting.com\']', 24, 27);
INSERT INTO `reports_testresult` VALUES (1336, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 27);
INSERT INTO `reports_testresult` VALUES (1337, 'not_available', 0, '', '', 14, 27);
INSERT INTO `reports_testresult` VALUES (1338, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.vanify.co.uk\'}', 19, 27);
INSERT INTO `reports_testresult` VALUES (1339, 'failed', -1, 'The certificate is invalid.', '{\'issue\': \"hostname \'www.vanify.co.uk\' doesn\'t match either of \'*.registrar-servers.com\', \'registrar-servers.com\'\"}', 21, 27);
INSERT INTO `reports_testresult` VALUES (1340, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 27);
INSERT INTO `reports_testresult` VALUES (1341, 'failed', -1, 'The request was not redirected to the HTTPS version. Even though this site has HTTPS enabled visitors can still access the site over insecure  HTTP. \r\n</br><br>\r\nYou should ensure that all visitors to your site are automatically redirected to the secure HTTPS connection. Implementing HTTPS is of no use if visitors can still access your site via HTTP.', '{\'website\': \'http://www.vanify.co.uk\'}', 23, 27);
INSERT INTO `reports_testresult` VALUES (1342, 'failed', -1, 'A HSTS header was not provided by the server. HSTS is a response header that forces your browser to only be able to access the HTTPS version of a  website and any resources on it.</br></br>\r\nEnabling HSTS will stop SSL protocol attacks and cookie hijacking, two vulnerabilities in SSL-enabled websites. And in addition to making a website more secure, HSTS makes sites load quicker by removing a step in the loading procedure.', '', 20, 27);
INSERT INTO `reports_testresult` VALUES (1343, 'failed', -0.2, 'The X-Frame-Options header is not sent by the server. This header protects web applications against clickjacking. This is  a malicious technique of tricking a user into clicking on something different from what the user perceives, thus potentially revealing confidential information or allowing others to take control of their computer.', '', 30, 27);
INSERT INTO `reports_testresult` VALUES (1344, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server. This header is designed to defend against Cross Site Scripting that is one of the most widespread and critical weaknesses that can lead to serious vulnerabilities. It\'s easy and simple to implement, see link for details.', '', 31, 27);
INSERT INTO `reports_testresult` VALUES (1345, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 27);
INSERT INTO `reports_testresult` VALUES (1346, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server. This header can be considered as an improved version of the X-XSS-Protection header. It adds another layer of security to protect against cross site scripting, one of the most widespread and critical weaknesses that can lead to serious vulnerabilities.', '', 33, 27);
INSERT INTO `reports_testresult` VALUES (1347, 'failed', -0.1, 'The Referrer-Policy header is not sent by the server. This header enables you to specify when the browser should set Referer headers. The use of this header can be considered as “optional”, but is advised to protect the privacy of your visitors.', '', 34, 27);
INSERT INTO `reports_testresult` VALUES (1348, 'failed', -0.7145, 'The Server header is sent by the server. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence. Server values should be avoided as they potentially reveal internal implementation details that might make it  easier for attackers to find and exploit known security holes.', '{\'header\': \'Server\', \'value\': \'Apache\'}', 35, 27);
INSERT INTO `reports_testresult` VALUES (1349, 'failed', 0, 'The X-Powered-By header is returned and contains the details of the web framework or programming language used in the web application. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence.', '{\'header\': \'X-Powered-By\', \'value\': \'PHP/7.2.24\'}', 36, 27);
INSERT INTO `reports_testresult` VALUES (1350, 'failed', -0.1, 'The Feature-Policy header was not returned by the server. This header can help protect your site from third parties using APIs that have security and privacy implications', '', 37, 27);
INSERT INTO `reports_testresult` VALUES (1351, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 2}', 46, 27);
INSERT INTO `reports_testresult` VALUES (1352, 'success', 0, 'All cookies found had a valid syntax.', '[\'\', \'\']', 38, 27);
INSERT INTO `reports_testresult` VALUES (1353, 'failed', -0.8, 'None of the cookies found had the \'HttpOnly\' flag.', '[{\'unsecure\': [\'PHPSESSID\']}, {\'unsecure\': [\'PHPSESSID\']}]', 40, 27);
INSERT INTO `reports_testresult` VALUES (1354, 'failed', -0.8, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 27);
INSERT INTO `reports_testresult` VALUES (1355, 'success', 0, 'None of the cookies sent via unsecure HTTP had the \'Secure\' flag enabled.', '', 41, 27);
INSERT INTO `reports_testresult` VALUES (1356, 'success', 0, 'None of the cookies sent via unsecure HTTP are prefixed.', '', 39, 27);
INSERT INTO `reports_testresult` VALUES (1357, 'failed', -0.4, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'PHPSESSID\']}', 43, 27);
INSERT INTO `reports_testresult` VALUES (1358, 'not_available', 0, '', '', 44, 27);
INSERT INTO `reports_testresult` VALUES (1359, 'not_available', 0, '', '', 45, 27);
INSERT INTO `reports_testresult` VALUES (1360, 'success', 0.7, 'Your IP address is not associated with any malicious activity.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'185.61.152.51\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 27);
INSERT INTO `reports_testresult` VALUES (1361, 'success', 0.3, 'Your host is not listed on any DNSBL', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 311, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 823, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 955, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 330, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 456, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 382, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 200, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 192, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 200, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 49, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 47, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 48, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 48, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 50, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 812, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 905, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 33, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 590, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 354, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 450, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 450, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 450, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 451, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 887, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 58, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 448, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 441, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'vanify.co.uk\', \'is-listed\': False}', 48, 27);
INSERT INTO `reports_testresult` VALUES (1362, 'failed', -1, 'One of more hosts may expose services with known vulnerabilities. See the links below for information on each specific item. \r\n</br></br>\r\nCVE Vulnerabilities are identified by passive fingerprinting of server software and version. The vulnerabilities are implied based on the software and version. This is a passive test and so the server may not be impacted by all of the issues detected.\r\n</br></br>\r\nYou can request an ACTIVE vulnerability scan by following the remediation link below.', '[\'CVE-2018-19935\', \'CVE-2019-9675\', \'CVE-2019-9639\', \'CVE-2019-9022\', \'CVE-2019-9023\', \'CVE-2019-9020\', \'CVE-2019-9641\', \'CVE-2019-9638\', \'CVE-2019-9024\', \'CVE-2019-9021\', \'CVE-2019-9637\']', 49, 27);
INSERT INTO `reports_testresult` VALUES (1363, 'failed', -1, 'A large number of services are exposed to the Internet. An open port is an attack surface. An important principle in security is reducing your attack surface, and ensure that servers have the minimum number of exposed services. \r\n</br></br>\r\nCheck to make sure that only necessary ports are open. Our scan uses PASSIVE identification of open ports - active scans on remote systems are not allowed without prior permission. A full ACTIVE scan can be requested by following the remediation link below.', '[80, 2082, 443, 2087, 53, 143, 2096, 2083, 993, 995, 2086, 21, 26, 3306, 465, 587]', 50, 27);
INSERT INTO `reports_testresult` VALUES (1364, 'success', 1, 'Your domain was not found in any known public leaks.', '{\'total\': 0, \'groups\': [], \'query\': \'vanify.co.uk\'}', 51, 27);
INSERT INTO `reports_testresult` VALUES (1365, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 include:spf.protection.outlook.com include:spf1.sirva.com include:spf-0028c102.pphosted.com ip4:206.208.247.35 ip4:206.208.247.36 ip4:40.79.69.112 ip4:104.209.174.117 -all\']}', 1, 28);
INSERT INTO `reports_testresult` VALUES (1366, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 28);
INSERT INTO `reports_testresult` VALUES (1367, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 28);
INSERT INTO `reports_testresult` VALUES (1368, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 7}', 4, 28);
INSERT INTO `reports_testresult` VALUES (1369, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 28);
INSERT INTO `reports_testresult` VALUES (1370, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 28);
INSERT INTO `reports_testresult` VALUES (1371, 'success', 0, 'Your SPF record prevents unrestricted use of the domain.', '{\'policy\': \'-all\'}', 3, 28);
INSERT INTO `reports_testresult` VALUES (1372, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 include:spf.protection.outlook.com include:spf1.sirva.com include:spf-0028c102.pphosted.com ip4:206.208.247.35 ip4:206.208.247.36 ip4:40.79.69.112 ip4:104.209.174.117 -all\'}', 8, 28);
INSERT INTO `reports_testresult` VALUES (1373, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 28);
INSERT INTO `reports_testresult` VALUES (1374, 'success', 0, 'A DMARC record was found for your domain.', '{\'record\': [\'v=DMARC1; p=quarantine; pct=100; rua=mailto:dmarc_rua@emaildefense.proofpoint.com; ruf=mailto:dmarc_ruf@emaildefense.proofpoint.com; sp=none; aspf=s;\']}', 10, 28);
INSERT INTO `reports_testresult` VALUES (1375, 'failed', -1, 'The syntax of yourDMARC record is invalid.', '{\'record\': \'v=DMARC1; p=quarantine; pct=100; rua=mailto:dmarc_rua@emaildefense.proofpoint.com; ruf=mailto:dmarc_ruf@emaildefense.proofpoint.com; sp=none; aspf=s;\'}', 11, 28);
INSERT INTO `reports_testresult` VALUES (1376, 'success', 0, 'The DMARC policy is configured to quarantine or reject invalid emails.', '{\'policy\': \'quarantine\'}', 15, 28);
INSERT INTO `reports_testresult` VALUES (1377, 'success', 0, 'All emails are being vetted by DMARC.', '{\'pct\': \'100\'}', 16, 28);
INSERT INTO `reports_testresult` VALUES (1378, 'success', 0, 'The destination domain has the proper TXT record to receive domains.', '', 12, 28);
INSERT INTO `reports_testresult` VALUES (1379, 'success', 0, 'You are receiving aggregate reports for your domain.', '{\'rua\': \'mailto:dmarc_rua@emaildefense.proofpoint.com\'}', 17, 28);
INSERT INTO `reports_testresult` VALUES (1380, 'success', 0, 'You are receiving forensics reports for your domain.', '{\'ruf\': \'mailto:dmarc_ruf@emaildefense.proofpoint.com\'}', 18, 28);
INSERT INTO `reports_testresult` VALUES (1381, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'mxa-0028c102.gslb.pphosted.com\', \'data\': \'success\'}, {\'host\': \'mxb-0028c102.gslb.pphosted.com\', \'data\': \'success\'}]', 24, 28);
INSERT INTO `reports_testresult` VALUES (1382, 'success', 1, 'STARTTLS is enabled on the remote SMTP server.', '[{\'host\': \'mxa-0028c102.gslb.pphosted.com\', \'data\': \'success\'}, {\'host\': \'mxb-0028c102.gslb.pphosted.com\', \'data\': \'success\'}]', 28, 28);
INSERT INTO `reports_testresult` VALUES (1383, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mxa-0028c102.gslb.pphosted.com\', \'data\': \'success\'}, {\'host\': \'mxb-0028c102.gslb.pphosted.com\', \'data\': \'success\'}]', 25, 28);
INSERT INTO `reports_testresult` VALUES (1384, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'mxa-0028c102.gslb.pphosted.com\', \'data\': \'success\'}, {\'host\': \'mxb-0028c102.gslb.pphosted.com\', \'data\': \'success\'}]', 26, 28);
INSERT INTO `reports_testresult` VALUES (1385, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mxa-0028c102.gslb.pphosted.com\', \'data\': \'success\'}, {\'host\': \'mxb-0028c102.gslb.pphosted.com\', \'data\': \'success\'}]', 27, 28);
INSERT INTO `reports_testresult` VALUES (1386, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'mxa-0028c102.gslb.pphosted.com\', \'data\': \'success\'}, {\'host\': \'mxb-0028c102.gslb.pphosted.com\', \'data\': \'success\'}]', 29, 28);
INSERT INTO `reports_testresult` VALUES (1387, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 28);
INSERT INTO `reports_testresult` VALUES (1388, 'not_available', 0, '', '', 14, 28);
INSERT INTO `reports_testresult` VALUES (1389, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.sirva.com\'}', 19, 28);
INSERT INTO `reports_testresult` VALUES (1390, 'success', 0, 'The certificate is valid.', '', 21, 28);
INSERT INTO `reports_testresult` VALUES (1391, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 28);
INSERT INTO `reports_testresult` VALUES (1392, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.sirva.com\'}', 23, 28);
INSERT INTO `reports_testresult` VALUES (1393, 'success', 0, 'A HSTS header was provided from the server.', '{\'header\': \'Strict-Transport-Security\', \'value\': \'max-age=31536000; includeSubDomains;\'}', 20, 28);
INSERT INTO `reports_testresult` VALUES (1394, 'success', 0, 'The X-Frame-Options header is returned and is properly configured.', '{\'header\': \'X-Frame-Options\', \'value\': \'sameorigin\'}', 30, 28);
INSERT INTO `reports_testresult` VALUES (1395, 'success', 0, 'The X-XSS-Protection header is returned and is properly configured.', '{\'header\': \'X-Xss-Protection\', \'value\': \'1; mode=block\'}', 31, 28);
INSERT INTO `reports_testresult` VALUES (1396, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '{\'header\': \'X-Content-Type-Options\', \'value\': \'nosniff\'}', 32, 28);
INSERT INTO `reports_testresult` VALUES (1397, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server. This header can be considered as an improved version of the X-XSS-Protection header. It adds another layer of security to protect against cross site scripting, one of the most widespread and critical weaknesses that can lead to serious vulnerabilities.', '', 33, 28);
INSERT INTO `reports_testresult` VALUES (1398, 'failed', -0.1, 'The Referrer-Policy header is not sent by the server. This header enables you to specify when the browser should set Referer headers. The use of this header can be considered as “optional”, but is advised to protect the privacy of your visitors.', '', 34, 28);
INSERT INTO `reports_testresult` VALUES (1399, 'failed', -0.1429, 'The Server header is sent by the server. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence. Server values should be avoided as they potentially reveal internal implementation details that might make it  easier for attackers to find and exploit known security holes.', '{\'header\': \'Server\', \'value\': \'Microsoft-IIS/8.5\'}', 35, 28);
INSERT INTO `reports_testresult` VALUES (1400, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 28);
INSERT INTO `reports_testresult` VALUES (1401, 'failed', -0.1, 'The Feature-Policy header was not returned by the server. This header can help protect your site from third parties using APIs that have security and privacy implications', '', 37, 28);
INSERT INTO `reports_testresult` VALUES (1402, 'success', 0, 'The target website is not sending any cookies.', '', 46, 28);
INSERT INTO `reports_testresult` VALUES (1403, 'not_available', 0, '', '', 38, 28);
INSERT INTO `reports_testresult` VALUES (1404, 'not_available', 0, '', '', 39, 28);
INSERT INTO `reports_testresult` VALUES (1405, 'not_available', 0, '', '', 40, 28);
INSERT INTO `reports_testresult` VALUES (1406, 'not_available', 0, '', '', 41, 28);
INSERT INTO `reports_testresult` VALUES (1407, 'not_available', 0, '', '', 42, 28);
INSERT INTO `reports_testresult` VALUES (1408, 'not_available', 0, '', '', 43, 28);
INSERT INTO `reports_testresult` VALUES (1409, 'not_available', 0, '', '', 44, 28);
INSERT INTO `reports_testresult` VALUES (1410, 'not_available', 0, '', '', 45, 28);
INSERT INTO `reports_testresult` VALUES (1411, 'success', 0.7, 'Your IP address is not associated with any malicious activity.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'13.68.81.26\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 28);
INSERT INTO `reports_testresult` VALUES (1412, 'success', 0.3, 'Your host is not listed on any DNSBL', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 2138, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 2135, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 2136, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 2130, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 2130, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 2128, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 2126, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 2120, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 2118, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 2116, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 2114, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 2115, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 2112, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 2112, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 44, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 2107, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 44, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 2107, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 2106, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 2102, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 2101, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 2101, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 2100, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 2100, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 50, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 2097, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 2090, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'sirva.com\', \'is-listed\': False}', 48, 28);
INSERT INTO `reports_testresult` VALUES (1413, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 28);
INSERT INTO `reports_testresult` VALUES (1414, 'success', 1, 'No or few ports are exposed to the Internet.', '[443, 80]', 50, 28);
INSERT INTO `reports_testresult` VALUES (1415, 'failed', -962.4000000000001, 'Your domain was found at least once in known, public data leaks.', '{\'total\': 9634, \'groups\': [{\'leak\': \'the-collections\', \'count\': 386}, {\'leak\': \'verificationsio\', \'count\': 3230}, {\'leak\': \'breachcompilation\', \'count\': 543}, {\'leak\': \'linkedin\', \'count\': 649}, {\'leak\': \'pdlcollection\', \'count\': 1341}, {\'leak\': \'data-contacts\', \'count\': 962}, {\'leak\': \'datanleads\', \'count\': 834}, {\'leak\': \'pcrai\', \'count\': 764}, {\'leak\': \'adaptio\', \'count\': 213}, {\'leak\': \'myspace\', \'count\': 33}, {\'leak\': \'dropbox\', \'count\': 44}, {\'leak\': \'customerslive\', \'count\': 54}, {\'leak\': \'antipublic\', \'count\': 230}, {\'leak\': \'exploitin\', \'count\': 193}, {\'leak\': \'myfitnesspal\', \'count\': 61}, {\'leak\': \'disqus\', \'count\': 15}, {\'leak\': \'adobe\', \'count\': 31}, {\'leak\': \'modernbusinesssolutions\', \'count\': 16}, {\'leak\': \'forbes\', \'count\': 1}, {\'leak\': \'lastfm\', \'count\': 2}, {\'leak\': \'ashleymadison\', \'count\': 3}, {\'leak\': \'tumblr\', \'count\': 1}, {\'leak\': \'mate1\', \'count\': 4}, {\'leak\': \'twitter\', \'count\': 1}, {\'leak\': \'pastebin\', \'count\': 2}, {\'leak\': \'neopets\', \'count\': 4}, {\'leak\': \'fling\', \'count\': 2}, {\'leak\': \'experian\', \'count\': 2}, {\'leak\': \'apexsms\', \'count\': 1}, {\'leak\': \'imesh\', \'count\': 2}, {\'leak\': \'bitly\', \'count\': 2}, {\'leak\': \'edmodo\', \'count\': 3}, {\'leak\': \'nihonomaru\', \'count\': 1}, {\'leak\': \'gawker\', \'count\': 1}, {\'leak\': \'unknown-btc\', \'count\': 1}, {\'leak\': \'badoo\', \'count\': 1}, {\'leak\': \'zoosk\', \'count\': 1}], \'query\': \'sirva.com\'}', 51, 28);
INSERT INTO `reports_testresult` VALUES (1416, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 ip4:198.175.38.172 ip4:168.143.175.116 ip4:168.143.175.117 ip4:167.182.124.33 ip4:67.192.203.103 ip4:167.182.124.98 ip4:216.71.147.73 include:realogy.com -all\']}', 1, 29);
INSERT INTO `reports_testresult` VALUES (1417, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 29);
INSERT INTO `reports_testresult` VALUES (1418, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 29);
INSERT INTO `reports_testresult` VALUES (1419, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 1}', 4, 29);
INSERT INTO `reports_testresult` VALUES (1420, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 29);
INSERT INTO `reports_testresult` VALUES (1421, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 29);
INSERT INTO `reports_testresult` VALUES (1422, 'success', 0, 'Your SPF record prevents unrestricted use of the domain.', '{\'policy\': \'-all\'}', 3, 29);
INSERT INTO `reports_testresult` VALUES (1423, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 ip4:198.175.38.172 ip4:168.143.175.116 ip4:168.143.175.117 ip4:167.182.124.33 ip4:67.192.203.103 ip4:167.182.124.98 ip4:216.71.147.73 include:realogy.com -all\'}', 8, 29);
INSERT INTO `reports_testresult` VALUES (1424, 'success', 0, 'DKIM records are supported for your domain.', '', 9, 29);
INSERT INTO `reports_testresult` VALUES (1425, 'success', 0, 'A DMARC record was found for your domain.', '{\'record\': [\'v=DMARC1; p=none; rua=mailto:dmarcadmin@cartus.com; ruf=mailto:dmarcadmin@cartus.com; fo=1;\']}', 10, 29);
INSERT INTO `reports_testresult` VALUES (1426, 'failed', -1, 'The syntax of yourDMARC record is invalid.', '{\'record\': \'v=DMARC1; p=none; rua=mailto:dmarcadmin@cartus.com; ruf=mailto:dmarcadmin@cartus.com; fo=1;\'}', 11, 29);
INSERT INTO `reports_testresult` VALUES (1427, 'failed', -1, 'The DMARC policy is set to none. \r\n\r\nWith the DMARC policy none, no action will be taken against email that fails the DMARC check. The email just goes into the inbox / folder of the receiver. This DMARC policy can be used to start monitoring who is sending emails on behalf of a domain.', '{\'policy\': \'none\'}', 15, 29);
INSERT INTO `reports_testresult` VALUES (1428, 'success', 0, 'All emails are being vetted by DMARC.', '', 16, 29);
INSERT INTO `reports_testresult` VALUES (1429, 'success', 0, 'The destination domain has the proper TXT record to receive domains.', '', 12, 29);
INSERT INTO `reports_testresult` VALUES (1430, 'success', 0, 'You are receiving aggregate reports for your domain.', '{\'rua\': \'mailto:dmarcadmin@cartus.com\'}', 17, 29);
INSERT INTO `reports_testresult` VALUES (1431, 'success', 0, 'You are receiving forensics reports for your domain.', '{\'ruf\': \'mailto:dmarcadmin@cartus.com\'}', 18, 29);
INSERT INTO `reports_testresult` VALUES (1432, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'mailin3.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin4.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin5.cartus.com\', \'data\': \'success\'}]', 24, 29);
INSERT INTO `reports_testresult` VALUES (1433, 'success', 1, 'STARTTLS is enabled on the remote SMTP server.', '[{\'host\': \'mailin3.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin4.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin5.cartus.com\', \'data\': \'success\'}]', 28, 29);
INSERT INTO `reports_testresult` VALUES (1434, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mailin3.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin4.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin5.cartus.com\', \'data\': \'success\'}]', 25, 29);
INSERT INTO `reports_testresult` VALUES (1435, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'mailin3.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin4.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin5.cartus.com\', \'data\': \'success\'}]', 26, 29);
INSERT INTO `reports_testresult` VALUES (1436, 'success', 0, 'The certificate is valid.', '[{\'host\': \'mailin3.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin4.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin5.cartus.com\', \'data\': \'success\'}]', 27, 29);
INSERT INTO `reports_testresult` VALUES (1437, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'mailin3.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin4.cartus.com\', \'data\': \'success\'}, {\'host\': \'mailin5.cartus.com\', \'data\': \'success\'}]', 29, 29);
INSERT INTO `reports_testresult` VALUES (1438, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 29);
INSERT INTO `reports_testresult` VALUES (1439, 'not_available', 0, '', '', 14, 29);
INSERT INTO `reports_testresult` VALUES (1440, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.cartus.com\'}', 19, 29);
INSERT INTO `reports_testresult` VALUES (1441, 'success', 0, 'The certificate is valid.', '', 21, 29);
INSERT INTO `reports_testresult` VALUES (1442, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 29);
INSERT INTO `reports_testresult` VALUES (1443, 'success', 0, 'Request is redirected to the HTTPS version.', '{\'website\': \'http://www.cartus.com\'}', 23, 29);
INSERT INTO `reports_testresult` VALUES (1444, 'failed', -1, 'A HSTS header was not provided by the server. HSTS is a response header that forces your browser to only be able to access the HTTPS version of a  website and any resources on it.</br></br>\r\nEnabling HSTS will stop SSL protocol attacks and cookie hijacking, two vulnerabilities in SSL-enabled websites. And in addition to making a website more secure, HSTS makes sites load quicker by removing a step in the loading procedure.', '', 20, 29);
INSERT INTO `reports_testresult` VALUES (1445, 'success', 0, 'The X-Frame-Options header is returned and is properly configured.', '{\'header\': \'X-Frame-Options\', \'value\': \'SAMEORIGIN\'}', 30, 29);
INSERT INTO `reports_testresult` VALUES (1446, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server. This header is designed to defend against Cross Site Scripting that is one of the most widespread and critical weaknesses that can lead to serious vulnerabilities. It\'s easy and simple to implement, see link for details.', '', 31, 29);
INSERT INTO `reports_testresult` VALUES (1447, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 29);
INSERT INTO `reports_testresult` VALUES (1448, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server. This header can be considered as an improved version of the X-XSS-Protection header. It adds another layer of security to protect against cross site scripting, one of the most widespread and critical weaknesses that can lead to serious vulnerabilities.', '', 33, 29);
INSERT INTO `reports_testresult` VALUES (1449, 'failed', -0.1, 'The Referrer-Policy header is not sent by the server. This header enables you to specify when the browser should set Referer headers. The use of this header can be considered as “optional”, but is advised to protect the privacy of your visitors.', '', 34, 29);
INSERT INTO `reports_testresult` VALUES (1450, 'failed', -0.7145, 'The Server header is sent by the server. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence. Server values should be avoided as they potentially reveal internal implementation details that might make it  easier for attackers to find and exploit known security holes.', '{\'header\': \'Server\', \'value\': \'Apache\'}', 35, 29);
INSERT INTO `reports_testresult` VALUES (1451, 'failed', 0, 'The X-Powered-By header is returned and contains the details of the web framework or programming language used in the web application. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence.', '{\'header\': \'X-Powered-By\', \'value\': \'PHP/5.5.38\'}', 36, 29);
INSERT INTO `reports_testresult` VALUES (1452, 'failed', -0.1, 'The Feature-Policy header was not returned by the server. This header can help protect your site from third parties using APIs that have security and privacy implications', '', 37, 29);
INSERT INTO `reports_testresult` VALUES (1453, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 1}', 46, 29);
INSERT INTO `reports_testresult` VALUES (1454, 'success', 0, 'All cookies found had a valid syntax.', '[\'\', \'\']', 38, 29);
INSERT INTO `reports_testresult` VALUES (1455, 'success', 0, 'All of the cookies sent via HTTP uses the \'HttpOnly\'.', '[\'\', \'\']', 40, 29);
INSERT INTO `reports_testresult` VALUES (1456, 'failed', -0.4, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 29);
INSERT INTO `reports_testresult` VALUES (1457, 'not_available', 0, '', '', 41, 29);
INSERT INTO `reports_testresult` VALUES (1458, 'not_available', 0, '', '', 39, 29);
INSERT INTO `reports_testresult` VALUES (1459, 'success', 0, 'All of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '', 43, 29);
INSERT INTO `reports_testresult` VALUES (1460, 'not_available', 0, '', '', 44, 29);
INSERT INTO `reports_testresult` VALUES (1461, 'not_available', 0, '', '', 45, 29);
INSERT INTO `reports_testresult` VALUES (1462, 'success', 0.7, 'Your IP address is not associated with any malicious activity.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'204.232.226.18\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 29);
INSERT INTO `reports_testresult` VALUES (1463, 'success', 0.3, 'Your host is not listed on any DNSBL', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 2148, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 2145, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 2145, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 2143, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 2141, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 2139, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 2139, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 2137, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 2136, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 2133, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 2130, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 2132, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 2129, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 2128, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 2127, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 2126, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 841, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 2108, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 2107, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 2104, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 2103, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 2104, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 2104, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 2104, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 67, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 2099, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 2089, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'cartus.com\', \'is-listed\': False}', 48, 29);
INSERT INTO `reports_testresult` VALUES (1464, 'failed', -1, 'One of more hosts may expose services with known vulnerabilities. See the links below for information on each specific item. \r\n</br></br>\r\nCVE Vulnerabilities are identified by passive fingerprinting of server software and version. The vulnerabilities are implied based on the software and version. This is a passive test and so the server may not be impacted by all of the issues detected.\r\n</br></br>\r\nYou can request an ACTIVE vulnerability scan by following the remediation link below.', '[\'CVE-2018-10549\', \'CVE-2018-10548\', \'CVE-2018-10545\', \'CVE-2018-10547\', \'CVE-2018-10546\', \'CVE-2019-9641\', \'CVE-2018-19520\', \'CVE-2018-19396\', \'CVE-2018-19395\', \'CVE-2018-19935\', \'CVE-2018-17082\', \'CVE-2019-9639\', \'CVE-2019-9638\', \'CVE-2019-9637\', \'CVE-2018-14883\', \'CVE-2017-12868\', \'CVE-2018-20783\', \'CVE-2019-6977\', \'CVE-2019-9023\', \'CVE-2019-9020\', \'CVE-2019-9021\', \'CVE-2017-16642\', \'CVE-2019-9024\', \'CVE-2018-15132\']', 49, 29);
INSERT INTO `reports_testresult` VALUES (1465, 'success', 1, 'No or few ports are exposed to the Internet.', '[443, 80]', 50, 29);
INSERT INTO `reports_testresult` VALUES (1466, 'failed', -647.7, 'Your domain was found at least once in known, public data leaks.', '{\'total\': 6487, \'groups\': [{\'leak\': \'verificationsio\', \'count\': 2393}, {\'leak\': \'datanleads\', \'count\': 73}, {\'leak\': \'pdlcollection\', \'count\': 1619}, {\'leak\': \'the-collections\', \'count\': 620}, {\'leak\': \'adaptio\', \'count\': 190}, {\'leak\': \'antipublic\', \'count\': 239}, {\'leak\': \'breachcompilation\', \'count\': 425}, {\'leak\': \'exploitin\', \'count\': 181}, {\'leak\': \'linkedin\', \'count\': 450}, {\'leak\': \'customerslive\', \'count\': 75}, {\'leak\': \'myfitnesspal\', \'count\': 82}, {\'leak\': \'myspace\', \'count\': 15}, {\'leak\': \'edmodo\', \'count\': 5}, {\'leak\': \'adobe\', \'count\': 14}, {\'leak\': \'dropbox\', \'count\': 17}, {\'leak\': \'data-contacts\', \'count\': 47}, {\'leak\': \'ashleymadison\', \'count\': 1}, {\'leak\': \'mate1\', \'count\': 2}, {\'leak\': \'pcrai\', \'count\': 11}, {\'leak\': \'tumblr\', \'count\': 1}, {\'leak\': \'modernbusinesssolutions\', \'count\': 10}, {\'leak\': \'unknown-btc\', \'count\': 1}, {\'leak\': \'disqus\', \'count\': 5}, {\'leak\': \'experian\', \'count\': 2}, {\'leak\': \'myheritage\', \'count\': 1}, {\'leak\': \'gawker\', \'count\': 1}, {\'leak\': \'lastfm\', \'count\': 1}, {\'leak\': \'apexsms\', \'count\': 2}, {\'leak\': \'forbes\', \'count\': 2}, {\'leak\': \'bitly\', \'count\': 2}], \'query\': \'cartus.com\'}', 51, 29);
INSERT INTO `reports_testresult` VALUES (1467, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 ip4:198.187.28.222 +a +mx +ip4:74.81.66.176 ?all\']}', 1, 30);
INSERT INTO `reports_testresult` VALUES (1468, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 30);
INSERT INTO `reports_testresult` VALUES (1469, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 30);
INSERT INTO `reports_testresult` VALUES (1470, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 0}', 4, 30);
INSERT INTO `reports_testresult` VALUES (1471, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 30);
INSERT INTO `reports_testresult` VALUES (1472, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 30);
INSERT INTO `reports_testresult` VALUES (1473, 'failed', -1, 'Your SPF record is too permissive. An SPF record can be overly permissive is if you terminate your SPF record in “+all”. This essentially causes your record to include the entire Internet as permitted to send mail on your behalf. </br></br>The record should terminate with \"~all\" or \"-all\".', '{\'policy\': \'?all\'}', 3, 30);
INSERT INTO `reports_testresult` VALUES (1474, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 ip4:198.187.28.222 +a +mx +ip4:74.81.66.176 ?all\'}', 8, 30);
INSERT INTO `reports_testresult` VALUES (1475, 'failed', -1, 'There is no indication that DKIM records exist for the given domain.\r\n</br></br>\r\nDKIM is an authentication protocol that links a domain name to a message. The purpose of the DKIM protocol is not only to prove that the domain name has not been usurped, but also that the message has not been altered during transmission.\r\n</br></br>This test cannot definitively detect a record without the exact identifier, and is weighted accordingly in the scoring.', '', 9, 30);
INSERT INTO `reports_testresult` VALUES (1476, 'failed', -1, 'No DMARC record was found. \r\n</br></br>\r\nSPF and DKIM on their own (or even together) contain various weaknesses. When both are combined with DMARC, they create an enhanced layer of security and sender identification. Part of the DMARC requirements involves the concept of domain alignment, so it makes it much more difficult for fraudsters to spoof a domain.', '{\'records\': 0}', 10, 30);
INSERT INTO `reports_testresult` VALUES (1477, 'not_available', 0, '', '{\'records\': 0}', 11, 30);
INSERT INTO `reports_testresult` VALUES (1478, 'not_available', 0, '', '{\'records\': 0}', 12, 30);
INSERT INTO `reports_testresult` VALUES (1479, 'not_available', 0, '', '{\'records\': 0}', 15, 30);
INSERT INTO `reports_testresult` VALUES (1480, 'not_available', 0, '', '{\'records\': 0}', 16, 30);
INSERT INTO `reports_testresult` VALUES (1481, 'not_available', 0, '', '{\'records\': 0}', 17, 30);
INSERT INTO `reports_testresult` VALUES (1482, 'not_available', 0, '', '{\'records\': 0}', 18, 30);
INSERT INTO `reports_testresult` VALUES (1483, 'success', 0, 'One or more SMTP server(s) were found.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 24, 30);
INSERT INTO `reports_testresult` VALUES (1484, 'success', 1, 'STARTTLS is enabled on the remote SMTP server.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 28, 30);
INSERT INTO `reports_testresult` VALUES (1485, 'success', 0, 'The certificate is valid.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 25, 30);
INSERT INTO `reports_testresult` VALUES (1486, 'success', 0, 'All servers support only TLS v1.0 or higher only.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 26, 30);
INSERT INTO `reports_testresult` VALUES (1487, 'success', 0, 'The certificate is valid.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 27, 30);
INSERT INTO `reports_testresult` VALUES (1488, 'success', 0, 'Your SMTP server(s) cannot be used to relay spam and phishing emails.', '[{\'host\': \'aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt1.aspmx.l.google.com\', \'data\': \'success\'}, {\'host\': \'alt2.aspmx.l.google.com\', \'data\': \'success\'}]', 29, 30);
INSERT INTO `reports_testresult` VALUES (1489, 'failed', -1, 'No DNSKEY and RRSIG records or invalid records were returned.', '', 13, 30);
INSERT INTO `reports_testresult` VALUES (1490, 'not_available', 0, '', '', 14, 30);
INSERT INTO `reports_testresult` VALUES (1491, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.akaraka.org.sg\'}', 19, 30);
INSERT INTO `reports_testresult` VALUES (1492, 'error', 0, '', '{\'error\': \'[SSL: CERTIFICATE_VERIFY_FAILED] certificate verify failed (_ssl.c:852)\'}', 21, 30);
INSERT INTO `reports_testresult` VALUES (1493, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 30);
INSERT INTO `reports_testresult` VALUES (1494, 'failed', -1, 'The request was not redirected to the HTTPS version. Even though this site has HTTPS enabled visitors can still access the site over insecure  HTTP. \r\n</br><br>\r\nYou should ensure that all visitors to your site are automatically redirected to the secure HTTPS connection. Implementing HTTPS is of no use if visitors can still access your site via HTTP.', '{\'website\': \'http://www.akaraka.org.sg\'}', 23, 30);
INSERT INTO `reports_testresult` VALUES (1495, 'failed', -1, 'A HSTS header was not provided by the server. HSTS is a response header that forces your browser to only be able to access the HTTPS version of a  website and any resources on it.</br></br>\r\nEnabling HSTS will stop SSL protocol attacks and cookie hijacking, two vulnerabilities in SSL-enabled websites. And in addition to making a website more secure, HSTS makes sites load quicker by removing a step in the loading procedure.', '', 20, 30);
INSERT INTO `reports_testresult` VALUES (1496, 'failed', -0.2, 'The X-Frame-Options header is not sent by the server. This header protects web applications against clickjacking. This is  a malicious technique of tricking a user into clicking on something different from what the user perceives, thus potentially revealing confidential information or allowing others to take control of their computer.', '', 30, 30);
INSERT INTO `reports_testresult` VALUES (1497, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server. This header is designed to defend against Cross Site Scripting that is one of the most widespread and critical weaknesses that can lead to serious vulnerabilities. It\'s easy and simple to implement, see link for details.', '', 31, 30);
INSERT INTO `reports_testresult` VALUES (1498, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 30);
INSERT INTO `reports_testresult` VALUES (1499, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server. This header can be considered as an improved version of the X-XSS-Protection header. It adds another layer of security to protect against cross site scripting, one of the most widespread and critical weaknesses that can lead to serious vulnerabilities.', '', 33, 30);
INSERT INTO `reports_testresult` VALUES (1500, 'failed', -0.1, 'The Referrer-Policy header is not sent by the server. This header enables you to specify when the browser should set Referer headers. The use of this header can be considered as “optional”, but is advised to protect the privacy of your visitors.', '', 34, 30);
INSERT INTO `reports_testresult` VALUES (1501, 'failed', -0.7145, 'The Server header is sent by the server. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence. Server values should be avoided as they potentially reveal internal implementation details that might make it  easier for attackers to find and exploit known security holes.', '{\'header\': \'Server\', \'value\': \'Apache\'}', 35, 30);
INSERT INTO `reports_testresult` VALUES (1502, 'failed', 0, 'The X-Powered-By header is returned and contains the details of the web framework or programming language used in the web application. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence.', '{\'header\': \'X-Powered-By\', \'value\': \'PHP/7.2.24\'}', 36, 30);
INSERT INTO `reports_testresult` VALUES (1503, 'failed', -0.1, 'The Feature-Policy header was not returned by the server. This header can help protect your site from third parties using APIs that have security and privacy implications', '', 37, 30);
INSERT INTO `reports_testresult` VALUES (1504, 'success', 0, 'The target website is not sending any cookies.', '{\'cookie_count\': 2}', 46, 30);
INSERT INTO `reports_testresult` VALUES (1505, 'success', 0, 'All cookies found had a valid syntax.', '[\'\', \'\']', 38, 30);
INSERT INTO `reports_testresult` VALUES (1506, 'failed', -0.8, 'None of the cookies found had the \'HttpOnly\' flag.', '[{\'unsecure\': [\'PHPSESSID\']}, {\'unsecure\': [\'PHPSESSID\']}]', 40, 30);
INSERT INTO `reports_testresult` VALUES (1507, 'failed', -0.8, 'At least one cookie did not have the \'SameSite\' flag set.', '[\'\', \'\']', 42, 30);
INSERT INTO `reports_testresult` VALUES (1508, 'success', 0, 'None of the cookies sent via unsecure HTTP had the \'Secure\' flag enabled.', '', 41, 30);
INSERT INTO `reports_testresult` VALUES (1509, 'success', 0, 'None of the cookies sent via unsecure HTTP are prefixed.', '', 39, 30);
INSERT INTO `reports_testresult` VALUES (1510, 'failed', -0.4, 'None of the cookies sent via secure HTTP had the \'Secure\' flag enabled.', '{\'unsecure\': [\'PHPSESSID\']}', 43, 30);
INSERT INTO `reports_testresult` VALUES (1511, 'not_available', 0, '', '', 44, 30);
INSERT INTO `reports_testresult` VALUES (1512, 'not_available', 0, '', '', 45, 30);
INSERT INTO `reports_testresult` VALUES (1513, 'success', 0.7, 'Your IP address is not associated with any malicious activity.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'185.61.152.53\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [], \'last-seen\': 0, \'is-bot\': False, \'sensors\': [], \'list-count\': 0, \'is-proxy\': False, \'is-malware\': False, \'is-listed\': False, \'is-exploit-bot\': False}', 47, 30);
INSERT INTO `reports_testresult` VALUES (1514, 'success', 0.3, 'Your host is not listed on any DNSBL', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 2643, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 2640, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 2637, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 2637, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 2635, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 2634, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 2634, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 2634, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 2633, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 2633, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 2630, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 2627, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 2628, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 2628, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 42, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 2623, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 306, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 2619, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 2620, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 2618, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 2617, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 2616, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 2616, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 2614, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 49, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 2616, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 2611, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 0, \'host\': \'akaraka.org.sg\', \'is-listed\': False}', 48, 30);
INSERT INTO `reports_testresult` VALUES (1515, 'failed', -1, 'One of more hosts may expose services with known vulnerabilities. See the links below for information on each specific item. \r\n</br></br>\r\nCVE Vulnerabilities are identified by passive fingerprinting of server software and version. The vulnerabilities are implied based on the software and version. This is a passive test and so the server may not be impacted by all of the issues detected.\r\n</br></br>\r\nYou can request an ACTIVE vulnerability scan by following the remediation link below.', '[\'CVE-2018-10549\', \'CVE-2018-10548\', \'CVE-2018-10545\', \'CVE-2018-10547\', \'CVE-2018-10546\', \'CVE-2018-19520\', \'CVE-2018-19396\', \'CVE-2018-19395\', \'CVE-2018-19935\', \'CVE-2018-17082\', \'CVE-2019-9639\', \'CVE-2019-9638\', \'CVE-2019-9021\', \'CVE-2019-9637\', \'CVE-2015-8994\', \'CVE-2018-14883\', \'CVE-2014-9767\', \'CVE-2018-20783\', \'CVE-2016-7478\', \'CVE-2019-6977\', \'CVE-2019-9023\', \'CVE-2019-9020\', \'CVE-2019-9641\', \'CVE-2017-16642\', \'CVE-2019-9024\', \'CVE-2018-15132\']', 49, 30);
INSERT INTO `reports_testresult` VALUES (1516, 'failed', -1, 'A large number of services are exposed to the Internet. An open port is an attack surface. An important principle in security is reducing your attack surface, and ensure that servers have the minimum number of exposed services. \r\n</br></br>\r\nCheck to make sure that only necessary ports are open. Our scan uses PASSIVE identification of open ports - active scans on remote systems are not allowed without prior permission. A full ACTIVE scan can be requested by following the remediation link below.', '[80, 2087, 443, 143, 2086, 465, 21, 110, 995, 53, 993, 2083, 2082, 2079, 26, 3306]', 50, 30);
INSERT INTO `reports_testresult` VALUES (1517, 'partial', 0.6, '', '{\'total\': 4, \'groups\': [{\'leak\': \'dropbox\', \'count\': 1}, {\'leak\': \'edmodo\', \'count\': 1}, {\'leak\': \'the-collections\', \'count\': 1}, {\'leak\': \'verificationsio\', \'count\': 1}], \'query\': \'akaraka.org.sg\'}', 51, 30);
INSERT INTO `reports_testresult` VALUES (1518, 'success', 0, 'A single SPF record is defined for your domain.', '{\'record\': [\'v=spf1 -all\']}', 1, 31);
INSERT INTO `reports_testresult` VALUES (1519, 'success', 0, 'Your SPF record is using the the proper TXT record type.', '', 6, 31);
INSERT INTO `reports_testresult` VALUES (1520, 'success', 0, 'The syntax of your SPF record is valid.', '', 2, 31);
INSERT INTO `reports_testresult` VALUES (1521, 'success', 0, 'The SPF records uses less than ten (10) lookup mechanisms.', '{\'lookup_count\': 0}', 4, 31);
INSERT INTO `reports_testresult` VALUES (1522, 'success', 0.5, 'The record does not use the PTR mechanism.', '', 7, 31);
INSERT INTO `reports_testresult` VALUES (1523, 'success', 0, 'The count of void lookups is below or equal to 2.', '{\'void_lookups_count\': 0}', 5, 31);
INSERT INTO `reports_testresult` VALUES (1524, 'success', 0, 'Your SPF record prevents unrestricted use of the domain.', '{\'policy\': \'-all\'}', 3, 31);
INSERT INTO `reports_testresult` VALUES (1525, 'success', 0, 'There is no trailing data after the \'all\' mechanism.', '{\'record\': \'v=spf1 -all\'}', 8, 31);
INSERT INTO `reports_testresult` VALUES (1526, 'failed', -1, 'There is no indication that DKIM records exist for the given domain.\r\n</br></br>\r\nDKIM is an authentication protocol that links a domain name to a message. The purpose of the DKIM protocol is not only to prove that the domain name has not been usurped, but also that the message has not been altered during transmission.\r\n</br></br>This test cannot definitively detect a record without the exact identifier, and is weighted accordingly in the scoring.', '', 9, 31);
INSERT INTO `reports_testresult` VALUES (1527, 'failed', -1, 'No DMARC record was found. \r\n</br></br>\r\nSPF and DKIM on their own (or even together) contain various weaknesses. When both are combined with DMARC, they create an enhanced layer of security and sender identification. Part of the DMARC requirements involves the concept of domain alignment, so it makes it much more difficult for fraudsters to spoof a domain.', '{\'records\': 0}', 10, 31);
INSERT INTO `reports_testresult` VALUES (1528, 'not_available', 0, '', '{\'records\': 0}', 11, 31);
INSERT INTO `reports_testresult` VALUES (1529, 'not_available', 0, '', '{\'records\': 0}', 12, 31);
INSERT INTO `reports_testresult` VALUES (1530, 'not_available', 0, '', '{\'records\': 0}', 15, 31);
INSERT INTO `reports_testresult` VALUES (1531, 'not_available', 0, '', '{\'records\': 0}', 16, 31);
INSERT INTO `reports_testresult` VALUES (1532, 'not_available', 0, '', '{\'records\': 0}', 17, 31);
INSERT INTO `reports_testresult` VALUES (1533, 'not_available', 0, '', '{\'records\': 0}', 18, 31);
INSERT INTO `reports_testresult` VALUES (1534, 'failed', -1, 'No SMTP server was found based on the given domain.', '', 24, 31);
INSERT INTO `reports_testresult` VALUES (1535, 'not_available', 0, '', '', 28, 31);
INSERT INTO `reports_testresult` VALUES (1536, 'not_available', 0, '', '', 25, 31);
INSERT INTO `reports_testresult` VALUES (1537, 'not_available', 0, '', '', 26, 31);
INSERT INTO `reports_testresult` VALUES (1538, 'not_available', 0, '', '', 27, 31);
INSERT INTO `reports_testresult` VALUES (1539, 'not_available', 0, '', '', 29, 31);
INSERT INTO `reports_testresult` VALUES (1540, 'success', 0, 'Your domain returned DNSKEY and RRSIG records.', '{\'dnskey\': [\'256 3 8 AwEAAbUHLCGJ2bmXIVT44tAQUVDrEY+U 142PJToh5fv/S+1v/HGPu9p+oAJXfLjR OAgoGB/nHjFZZWEBwYr4+4FUTseFu3tD 6txxd27TNKkMwLMI837hhXbhoSpAIfPP al7s2llxosCsVqW4ViASrPC4TViDet/6 y0gL4pFzmXF2WpZD\', \'257 3 8 AwEAAZ0aqu1rJ6orJynrRfNpPmayJZoA x9Ic2/Rl9VQWLMHyjxxem3VUSoNUIFXE RQbj0A9Ogp0zDM9YIccKLRd6LmWiDCt7 UJQxVdD+heb5Ec4qlqGmyX9MDabkvX2N vMwsUecbYBq8oXeTT9LRmCUt9KUt/WOi 6DKECxoG/bWTykrXyBR8elD+SQY43OAV jlWrVltHxgp4/rhBCvRbmdflunaPIgu2 7eE2U4myDSLT8a4A0rB5uHG4PkOa9dIR s9y00M2mWf4lyPee7vi5few2dbayHXmi eGcaAHrx76NGAABeY393xjlmDNcUkF1g pNWUla4fWZbbaYQzA93mLdrng+M=\', \'257 3 8 AwEAAbOFAxl+Lkt0UMglZizKEC1AxUu8 zlj65KYatR5wBWMrh18TYzK/ig6Y1t5Y TWCO68bynorpNu9fqNFALX7bVl9/gybA 0v0EhF+dgXmoUfRX7ksMGgBvtfa2/Y9a 3klXNLqkTszIQ4PEMVCjtryl19Be9/Pk FeC9ITjgMRQsQhmB39eyMYnal+f3bUxK k4fq7cuEU0dbRpue4H/N6jPucXWOwiMA kTJhghqgy+o9FfIp+tR/emKao94/wpVX DcPf5B18j7xz2SvTTxiuqCzCMtsxnikZ Hcoh1j4g+Y1B8zIMIvrEM+pZGhh/Yuf4 RwCBgaYCi9hpiMWVvS4WBzx0/lU=\']}', 13, 31);
INSERT INTO `reports_testresult` VALUES (1541, 'failed', -1, 'The DNSSEC record failed validation.', '', 14, 31);
INSERT INTO `reports_testresult` VALUES (1542, 'success', 0, 'A successful connection to the website was established using secure HTTP.', '{\'website\': \'https://www.example.com\'}', 19, 31);
INSERT INTO `reports_testresult` VALUES (1543, 'error', 0, '', '{\'error\': \'_ssl.c:835: The handshake operation timed out\'}', 21, 31);
INSERT INTO `reports_testresult` VALUES (1544, 'success', 0, 'The HTTPS server is using strong and modern encryption.', '', 22, 31);
INSERT INTO `reports_testresult` VALUES (1545, 'failed', -1, 'The request was not redirected to the HTTPS version. Even though this site has HTTPS enabled visitors can still access the site over insecure  HTTP. \r\n</br><br>\r\nYou should ensure that all visitors to your site are automatically redirected to the secure HTTPS connection. Implementing HTTPS is of no use if visitors can still access your site via HTTP.', '{\'website\': \'http://www.example.com\'}', 23, 31);
INSERT INTO `reports_testresult` VALUES (1546, 'failed', -1, 'A HSTS header was not provided by the server. HSTS is a response header that forces your browser to only be able to access the HTTPS version of a  website and any resources on it.</br></br>\r\nEnabling HSTS will stop SSL protocol attacks and cookie hijacking, two vulnerabilities in SSL-enabled websites. And in addition to making a website more secure, HSTS makes sites load quicker by removing a step in the loading procedure.', '', 20, 31);
INSERT INTO `reports_testresult` VALUES (1547, 'failed', -0.2, 'The X-Frame-Options header is not sent by the server. This header protects web applications against clickjacking. This is  a malicious technique of tricking a user into clicking on something different from what the user perceives, thus potentially revealing confidential information or allowing others to take control of their computer.', '', 30, 31);
INSERT INTO `reports_testresult` VALUES (1548, 'failed', -0.2, 'The X-XSS-Protection header was not sent by the server. This header is designed to defend against Cross Site Scripting that is one of the most widespread and critical weaknesses that can lead to serious vulnerabilities. It\'s easy and simple to implement, see link for details.', '', 31, 31);
INSERT INTO `reports_testresult` VALUES (1549, 'success', 0, 'The X-Content-Type-Options header is returned and is properly configured.', '', 32, 31);
INSERT INTO `reports_testresult` VALUES (1550, 'failed', -0.2, 'The Content Security Policy (CSP) was not sent by the server. This header can be considered as an improved version of the X-XSS-Protection header. It adds another layer of security to protect against cross site scripting, one of the most widespread and critical weaknesses that can lead to serious vulnerabilities.', '', 33, 31);
INSERT INTO `reports_testresult` VALUES (1551, 'failed', -0.1, 'The Referrer-Policy header is not sent by the server. This header enables you to specify when the browser should set Referer headers. The use of this header can be considered as “optional”, but is advised to protect the privacy of your visitors.', '', 34, 31);
INSERT INTO `reports_testresult` VALUES (1552, 'failed', -0.7145, 'The Server header is sent by the server. This header  is not required or used by modern browsers and can safely be removed from the web site configuration without consequence. Server values should be avoided as they potentially reveal internal implementation details that might make it  easier for attackers to find and exploit known security holes.', '{\'header\': \'Server\', \'value\': \'ECS (dcb/7F3B)\'}', 35, 31);
INSERT INTO `reports_testresult` VALUES (1553, 'success', 1, 'The X-Powered-By header is not returned by the server.', '', 36, 31);
INSERT INTO `reports_testresult` VALUES (1554, 'failed', -0.1, 'The Feature-Policy header was not returned by the server. This header can help protect your site from third parties using APIs that have security and privacy implications', '', 37, 31);
INSERT INTO `reports_testresult` VALUES (1555, 'success', 0, 'The target website is not sending any cookies.', '', 46, 31);
INSERT INTO `reports_testresult` VALUES (1556, 'not_available', 0, '', '', 38, 31);
INSERT INTO `reports_testresult` VALUES (1557, 'not_available', 0, '', '', 39, 31);
INSERT INTO `reports_testresult` VALUES (1558, 'not_available', 0, '', '', 40, 31);
INSERT INTO `reports_testresult` VALUES (1559, 'not_available', 0, '', '', 41, 31);
INSERT INTO `reports_testresult` VALUES (1560, 'not_available', 0, '', '', 42, 31);
INSERT INTO `reports_testresult` VALUES (1561, 'not_available', 0, '', '', 43, 31);
INSERT INTO `reports_testresult` VALUES (1562, 'not_available', 0, '', '', 44, 31);
INSERT INTO `reports_testresult` VALUES (1563, 'not_available', 0, '', '', 45, 31);
INSERT INTO `reports_testresult` VALUES (1564, 'failed', -2, 'Your IP address is associated with malicious activity.', '{\'is-hijacked\': False, \'is-spider\': False, \'is-tor\': False, \'is-dshield\': False, \'is-vpn\': False, \'ip\': \'93.184.216.34\', \'is-spyware\': False, \'is-spam-bot\': False, \'blocklists\': [\'proxy\'], \'last-seen\': 1574824298, \'is-bot\': False, \'sensors\': [{\'blocklist\': \'proxy\', \'description\': \'Open SOCKS or HTTP proxy\', \'id\': 53}], \'list-count\': 1, \'is-proxy\': True, \'is-malware\': False, \'is-listed\': True, \'is-exploit-bot\': False}', 47, 31);
INSERT INTO `reports_testresult` VALUES (1565, 'failed', -2, 'Your host is listed on a DNSBL. A domain name system based list (DNSBL) is an anti-spam technique used to track IP addresses that send spam. DNSBL is a database of IP addresses that includes the addresses of known spammers, open relays, proxy servers and computers compromised by crackers and malicious code, also known as zombie computers.', '{\'lists\': [{\'list-host\': \'uribl.zeustracker.abuse.ch\', \'list-rating\': 3, \'response-time\': 867, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ch ZeuS Tracker Domain\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.abuse.ro\', \'list-rating\': 3, \'response-time\': 868, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'abuse.ro URI RBL\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.empty.us\', \'list-rating\': 3, \'response-time\': 866, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (empty.us)\', \'txt-record\': \'\'}, {\'list-host\': \'bsb.spamlookup.net\', \'list-rating\': 3, \'response-time\': 869, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Blog Spam Blocklist (spamlookup.net)\', \'txt-record\': \'\'}, {\'list-host\': \'ubl.nszones.com\', \'list-rating\': 3, \'response-time\': 864, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'nsZones.com SURBL\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.rymsho.ru\', \'list-rating\': 3, \'response-time\': 998, \'is-listed\': True, \'return-code\': \'127.0.0.2\', \'list-name\': \"Rymsho\'s RHSBL\", \'txt-record\': \'for tests only\'}, {\'list-host\': \'nomail.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1167, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names indicating no email sender\', \'txt-record\': \'\'}, {\'list-host\': \'badconf.rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1166, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS Domain names pointing to bad addresses\', \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.sorbs.net\', \'list-rating\': 2, \'response-time\': 1165, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SORBS RHS Aggregate zone\', \'txt-record\': \'\'}, {\'list-host\': \'fresh.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 860, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH\', \'txt-record\': \'\'}, {\'list-host\': \'fresh10.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 859, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH10\', \'txt-record\': \'\'}, {\'list-host\': \'fresh15.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 860, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-FRESH15\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 859, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URI\', \'txt-record\': \'\'}, {\'list-host\': \'urired.spameatingmonkey.net\', \'list-rating\': 2, \'response-time\': 860, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spam Eating Monkey SEM-URIRED\', \'txt-record\': \'\'}, {\'list-host\': \'dbl.spamhaus.org\', \'list-rating\': 1, \'response-time\': 855, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Spamhaus DBL Domain Block List\', \'txt-record\': \'\'}, {\'list-host\': \'multi.surbl.org\', \'list-rating\': 1, \'response-time\': 855, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL multi (Combined SURBL list)\', \'txt-record\': \'\'}, {\'list-host\': \'xs.surbl.org\', \'list-rating\': 1, \'response-time\': 271, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'SURBL xs (snowshoe and pill domains)\', \'txt-record\': \'\'}, {\'list-host\': \'uribl.swinog.ch\', \'list-rating\': 2, \'response-time\': 854, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'Swinog URIBL\', \'txt-record\': \'\'}, {\'list-host\': \'dob.sibl.support-intelligence.net\', \'list-rating\': 3, \'response-time\': 855, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'The Day Old Bread List (aka DOB)\', \'txt-record\': \'\'}, {\'list-host\': \'black.uribl.com\', \'list-rating\': 1, \'response-time\': 856, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL black\', \'txt-record\': \'\'}, {\'list-host\': \'grey.uribl.com\', \'list-rating\': 1, \'response-time\': 856, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL grey\', \'txt-record\': \'\'}, {\'list-host\': \'multi.uribl.com\', \'list-rating\': 1, \'response-time\': 856, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL multi\', \'txt-record\': \'\'}, {\'list-host\': \'red.uribl.com\', \'list-rating\': 1, \'response-time\': 856, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'URIBL red\', \'txt-record\': \'\'}, {\'list-host\': \'uri.blacklist.woody.ch\', \'list-rating\': 3, \'response-time\': 852, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \"Woody\'s SMTP Blacklist URIBL\", \'txt-record\': \'\'}, {\'list-host\': \'rhsbl.zapbl.net\', \'list-rating\': 3, \'response-time\': 43, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZapBL RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 851, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit combined RHSBL\', \'txt-record\': \'\'}, {\'list-host\': \'ban.zebl.zoneedit.com\', \'list-rating\': 3, \'response-time\': 845, \'is-listed\': False, \'return-code\': \'\', \'list-name\': \'ZoneEdit deny DNS services domains\', \'txt-record\': \'\'}], \'list-count\': 1, \'host\': \'example.com\', \'is-listed\': True}', 48, 31);
INSERT INTO `reports_testresult` VALUES (1566, 'success', 1, 'No known vulnerability has been found for your host.', '', 49, 31);
INSERT INTO `reports_testresult` VALUES (1567, 'success', 1, 'No or few ports are exposed to the Internet.', '[80, 443]', 50, 31);
INSERT INTO `reports_testresult` VALUES (1568, 'error', 0, 'This test requires manual review.', '{\'error\': \"module \'deepcheck.trust\' has no attribute \'query_emails_leak_from_be\'\"}', 51, 31);

-- ----------------------------
-- Table structure for socialaccount_socialaccount
-- ----------------------------
DROP TABLE IF EXISTS `socialaccount_socialaccount`;
CREATE TABLE `socialaccount_socialaccount`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `uid` varchar(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `extra_data` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `socialaccount_socialaccount_provider_uid_fc810c6e_uniq`(`provider`, `uid`) USING BTREE,
  INDEX `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for socialaccount_socialapp
-- ----------------------------
DROP TABLE IF EXISTS `socialaccount_socialapp`;
CREATE TABLE `socialaccount_socialapp`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `client_id` varchar(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `secret` varchar(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `key` varchar(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for socialaccount_socialapp_sites
-- ----------------------------
DROP TABLE IF EXISTS `socialaccount_socialapp_sites`;
CREATE TABLE `socialaccount_socialapp_sites`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `socialapp_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `socialaccount_socialapp_sites_socialapp_id_site_id_71a9a768_uniq`(`socialapp_id`, `site_id`) USING BTREE,
  INDEX `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id`(`site_id`) USING BTREE,
  CONSTRAINT `socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc` FOREIGN KEY (`socialapp_id`) REFERENCES `socialaccount_socialapp` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for socialaccount_socialtoken
-- ----------------------------
DROP TABLE IF EXISTS `socialaccount_socialtoken`;
CREATE TABLE `socialaccount_socialtoken`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `token_secret` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `expires_at` datetime(6) NULL DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq`(`app_id`, `account_id`) USING BTREE,
  INDEX `socialaccount_social_account_id_951f210e_fk_socialacc`(`account_id`) USING BTREE,
  CONSTRAINT `socialaccount_social_account_id_951f210e_fk_socialacc` FOREIGN KEY (`account_id`) REFERENCES `socialaccount_socialaccount` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `socialaccount_social_app_id_636a42d7_fk_socialacc` FOREIGN KEY (`app_id`) REFERENCES `socialaccount_socialapp` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for users_contact
-- ----------------------------
DROP TABLE IF EXISTS `users_contact`;
CREATE TABLE `users_contact`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `first_name` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `middle_name` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `last_name` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `street_1` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `street_2` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `city` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `region` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `country` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `work_phone` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mobile_phone` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `role` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `notes` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `users_contact_profile_id_715cfba9_fk_users_domainprofile_id`(`profile_id`) USING BTREE,
  CONSTRAINT `users_contact_profile_id_715cfba9_fk_users_domainprofile_id` FOREIGN KEY (`profile_id`) REFERENCES `users_domainprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for users_domainprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_domainprofile`;
CREATE TABLE `users_domainprofile`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain_id` int(11) NULL DEFAULT NULL,
  `tags` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `users_domainprofile_company_id_7531cb28_fk_reports_company_id`(`domain_id`) USING BTREE,
  INDEX `users_domainprofile_profile_id_2f47eb39_fk_users_profile_id`(`profile_id`) USING BTREE,
  CONSTRAINT `users_domainprofile_profile_id_2f47eb39_fk_users_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `users_profile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users_domainprofile
-- ----------------------------
INSERT INTO `users_domainprofile` VALUES (1, 1, '', 1);
INSERT INTO `users_domainprofile` VALUES (2, 3, '', 1);
INSERT INTO `users_domainprofile` VALUES (3, 5, '', 1);
INSERT INTO `users_domainprofile` VALUES (4, 7, 'grp', 1);
INSERT INTO `users_domainprofile` VALUES (5, 9, '', 1);
INSERT INTO `users_domainprofile` VALUES (6, 11, '', 1);
INSERT INTO `users_domainprofile` VALUES (7, 13, '', 1);
INSERT INTO `users_domainprofile` VALUES (8, 16, '', 2);
INSERT INTO `users_domainprofile` VALUES (9, 17, 'vendor', 1);
INSERT INTO `users_domainprofile` VALUES (10, 19, '', 1);
INSERT INTO `users_domainprofile` VALUES (11, 22, '', 3);
INSERT INTO `users_domainprofile` VALUES (12, 24, '', 1);
INSERT INTO `users_domainprofile` VALUES (13, 26, '', 1);
INSERT INTO `users_domainprofile` VALUES (14, 28, '', 1);
INSERT INTO `users_domainprofile` VALUES (15, 31, '', 4);
INSERT INTO `users_domainprofile` VALUES (16, 33, '', 1);
INSERT INTO `users_domainprofile` VALUES (17, 36, '', 5);
INSERT INTO `users_domainprofile` VALUES (19, 41, '', 1);
INSERT INTO `users_domainprofile` VALUES (20, 43, '', 1);
INSERT INTO `users_domainprofile` VALUES (21, 45, '', 1);
INSERT INTO `users_domainprofile` VALUES (22, 47, '', 1);
INSERT INTO `users_domainprofile` VALUES (23, 49, '', 1);
INSERT INTO `users_domainprofile` VALUES (24, 51, '', 1);
INSERT INTO `users_domainprofile` VALUES (25, 53, '', 1);
INSERT INTO `users_domainprofile` VALUES (26, 55, '', 1);
INSERT INTO `users_domainprofile` VALUES (27, 57, '', 1);
INSERT INTO `users_domainprofile` VALUES (28, 58, '', 1);
INSERT INTO `users_domainprofile` VALUES (29, 60, '', 1);
INSERT INTO `users_domainprofile` VALUES (30, 62, '', 1);
INSERT INTO `users_domainprofile` VALUES (31, 2, '', 1);
INSERT INTO `users_domainprofile` VALUES (32, 8, '', 1);
INSERT INTO `users_domainprofile` VALUES (33, 4, '', 1);
INSERT INTO `users_domainprofile` VALUES (34, 20, '', 1);
INSERT INTO `users_domainprofile` VALUES (35, 14, '', 1);
INSERT INTO `users_domainprofile` VALUES (36, 27, '', 1);
INSERT INTO `users_domainprofile` VALUES (37, 28, '', 6);

-- ----------------------------
-- Table structure for users_profile
-- ----------------------------
DROP TABLE IF EXISTS `users_profile`;
CREATE TABLE `users_profile`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domains` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `domain_temp` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `domain_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `users_profile_company_id_959728a1_fk_reports_company_id`(`domain_id`) USING BTREE,
  CONSTRAINT `users_profile_domain_id_12f332s_fk_reports_domain_id` FOREIGN KEY (`domain_id`) REFERENCES `reports_domain` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_profile_user_id_2112e78d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users_profile
-- ----------------------------
INSERT INTO `users_profile` VALUES (1, 'emf.com.sg,ezlink.com.sg,alex.world,jec.com,kadfire.com,grpgroup.co.uk,mom.gov.sg,dezignformat.com,matex.com.sg,renesas.com,ukecc-services.net,upwork.com,vanify.co.uk,xhamster.com,sirva.com', '', 3, 1);
INSERT INTO `users_profile` VALUES (2, '', '', 15, 2);
INSERT INTO `users_profile` VALUES (3, 'emf.com.sg,ezlink.com.sg,alex.world,jec.com,kadfire.com,grpgroup.co.uk,mom.gov.sg', '', 21, 3);
INSERT INTO `users_profile` VALUES (4, '', '', 26, 4);
INSERT INTO `users_profile` VALUES (5, '', '', 27, 5);
INSERT INTO `users_profile` VALUES (6, '', 'example.com', 28, 6);
INSERT INTO `users_profile` VALUES (7, '', 'example.com', NULL, 7);
INSERT INTO `users_profile` VALUES (8, '', 'asdf.com', NULL, 8);

SET FOREIGN_KEY_CHECKS = 1;
