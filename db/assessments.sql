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

 Date: 31/01/2020 09:03:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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

SET FOREIGN_KEY_CHECKS = 1;
