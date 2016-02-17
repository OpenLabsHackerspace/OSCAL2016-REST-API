/*
Navicat MySQL Data Transfer

Source Server         : ECUNI
Source Server Version : 50542
Source Host           : 50.87.14.101:3306
Source Database       : ecunicom_oscal

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2016-02-17 09:01:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `day1_track1`
-- ----------------------------
DROP TABLE IF EXISTS `day1_track1`;
CREATE TABLE `day1_track1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(450) DEFAULT NULL,
  `speaker_name1` varchar(450) DEFAULT NULL,
  `speaker_id1` int(11) DEFAULT NULL,
  `speaker_name2` varchar(450) DEFAULT NULL,
  `speaker_id2` int(11) DEFAULT NULL,
  `tag` varchar(450) DEFAULT NULL,
  `time_description` varchar(450) DEFAULT NULL,
  `location` varchar(450) DEFAULT NULL,
  `description` varchar(4500) DEFAULT NULL,
  `link` varchar(450) DEFAULT NULL,
  `time_event` varchar(450) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of day1_track1
-- ----------------------------
INSERT INTO `day1_track1` VALUES ('1', '-', '', '0', null, null, '', '', 'Side Track 1', '', '', '09:30-11:00', '2015-04-24 22:44:25');
INSERT INTO `day1_track1` VALUES ('7', 'Joomla, opensource CMS', 'Ardita Agalliu', '21', 'Silva Arapi', '35', 'Ardita&Silva', '30\'', 'Side Track 1', null, '', '11:00-11:30', '0000-00-00 00:00:00');
INSERT INTO `day1_track1` VALUES ('9', 'Visualizing georeferenced Open Data with CartoDB', 'Alex Corbi', '3', null, null, 'Alex Corbi', '60\'', 'Side Track 1', null, 'http://www.open-steps.org/', '11:30-12:30', '0000-00-00 00:00:00');
INSERT INTO `day1_track1` VALUES ('13', '-', null, null, null, null, null, null, null, null, null, '12:30-12:45', null);
INSERT INTO `day1_track1` VALUES ('14', 'Declaration of Indipendence of CyberSpace (audio installation)\n', null, null, null, null, 'Declaration of Indipendence of CyberSpace (audio installation)\n', '15\'', 'Side Track 1', null, null, '12:45-13:00', '0000-00-00 00:00:00');
INSERT INTO `day1_track1` VALUES ('15', '-', null, null, null, null, 'Lunch Break', null, 'Side Track 1', null, null, '13:00-14:15', '0000-00-00 00:00:00');
INSERT INTO `day1_track1` VALUES ('20', 'Fedora Spin & Cyber Security for Begineers', 'Ardian Haxha', '20', null, null, 'Ardian Haxha', '60\'', 'Side Track 1', null, 'https://twitter.com/ArdianHaxha', '14:15-15:15', '0000-00-00 00:00:00');
INSERT INTO `day1_track1` VALUES ('24', 'Getting started with Blender', 'Eno Gjoni', '9', null, null, 'Eno Gjoni', '60\'', 'Side Track 1', null, 'http://www.blender.org/', '15:15-16:15', '0000-00-00 00:00:00');
INSERT INTO `day1_track1` VALUES ('28', '-', null, null, null, null, 'Short Break', null, 'Side Track 1', null, null, '16:15-16:30', '0000-00-00 00:00:00');
INSERT INTO `day1_track1` VALUES ('29', 'Introduction to Android and WebServices', 'Erion Çuni', '8', null, null, 'Erion Çuni', '60\'', 'Side Track 1', null, 'http://www.almotech.org/', '16:30-17:30', '0000-00-00 00:00:00');
INSERT INTO `day1_track1` VALUES ('33', 'Introduction to Fedora', 'Jona Azizaj', '29', null, null, 'Jona Azizaj', '30\'', 'Side Track 1', null, 'https://twitter.com/jonatoni', '17:30-18:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `day1_track2`
-- ----------------------------
DROP TABLE IF EXISTS `day1_track2`;
CREATE TABLE `day1_track2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(450) DEFAULT NULL,
  `speaker_name1` varchar(450) DEFAULT NULL,
  `speaker_id1` int(11) DEFAULT NULL,
  `speaker_name2` varchar(450) DEFAULT NULL,
  `speaker_id2` int(11) DEFAULT NULL,
  `tag` varchar(450) DEFAULT NULL,
  `time_description` varchar(450) DEFAULT NULL,
  `location` varchar(450) DEFAULT NULL,
  `description` varchar(4500) DEFAULT NULL,
  `link` varchar(450) DEFAULT NULL,
  `time_event` varchar(450) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of day1_track2
-- ----------------------------
INSERT INTO `day1_track2` VALUES ('1', '-', '', '0', null, null, '', '', 'Side Track 2', '', '', '09:30-11:00', '2015-04-24 22:44:25');
INSERT INTO `day1_track2` VALUES ('7', 'Birds of a Feather Session ', null, null, null, null, null, '30\'', 'Side Track 2', '(invite people to talk about your idea)', null, '11:00-11:30', '0000-00-00 00:00:00');
INSERT INTO `day1_track2` VALUES ('9', 'Game Development with Open Tools', 'Alket Rexhepi', '40', null, null, 'Alket Rexhepi', '60\'', 'Side Track 2', null, null, '11:30-12:30', '0000-00-00 00:00:00');
INSERT INTO `day1_track2` VALUES ('13', 'Birds of a Feather Session', null, null, null, null, null, '30\'', 'Side Track 2', '(invite people to talk about your idea)', null, '12:30-13:00', '0000-00-00 00:00:00');
INSERT INTO `day1_track2` VALUES ('15', '-', null, null, null, null, null, null, 'Side Track 2', null, null, '13:00-14:15', '0000-00-00 00:00:00');
INSERT INTO `day1_track2` VALUES ('20', 'Building Firefox OS apps and hacking Firefox OS itself', 'Michael Kohler', '12', null, null, 'Michael Kohler', '60\'', 'Side Track 2', null, 'https://mozilla.org/', '14:15-15:15', '0000-00-00 00:00:00');
INSERT INTO `day1_track2` VALUES ('24', 'Birds of a Feather Session', null, null, null, null, null, '30\'', 'Side Track 2', '(invite people to talk about your idea)', null, '15:15-16:15', '0000-00-00 00:00:00');
INSERT INTO `day1_track2` VALUES ('28', '-', null, null, null, null, null, null, 'Side Track 2', null, null, '16:15-16:30', '0000-00-00 00:00:00');
INSERT INTO `day1_track2` VALUES ('29', 'Video editing using Free Software', 'Peter Bubestinger', '13', null, null, 'Peter Bubestinger', '60\'', 'Side Track 2', null, 'https://fsfe.org/at/at.en.html', '16:30-17:30', '0000-00-00 00:00:00');
INSERT INTO `day1_track2` VALUES ('33', 'Birds of a Feather Session', null, null, null, null, null, '30\'', 'Side Track 2', '(invite people to talk about your idea)', null, '17:30-18:30', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `day2_track1`
-- ----------------------------
DROP TABLE IF EXISTS `day2_track1`;
CREATE TABLE `day2_track1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(450) DEFAULT NULL,
  `speaker_name1` varchar(450) DEFAULT NULL,
  `speaker_id1` int(11) DEFAULT NULL,
  `speaker_name2` varchar(450) DEFAULT NULL,
  `speaker_id2` int(11) DEFAULT NULL,
  `tag` varchar(450) DEFAULT NULL,
  `time_description` varchar(450) DEFAULT NULL,
  `location` varchar(450) DEFAULT NULL,
  `description` varchar(4500) DEFAULT NULL,
  `link` varchar(450) DEFAULT NULL,
  `time_event` varchar(450) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of day2_track1
-- ----------------------------
INSERT INTO `day2_track1` VALUES ('2', '-', null, null, null, null, null, null, 'Side Track 1', null, null, '09:30-10:00', '0000-00-00 00:00:00');
INSERT INTO `day2_track1` VALUES ('4', 'Crypto-Party', 'Arianit Dobroshi', '22', null, null, 'Arianit Dobroshi', '60\'', 'Side Track 1', null, 'http://www.flossk.org/', '10:00-11:00', '0000-00-00 00:00:00');
INSERT INTO `day2_track1` VALUES ('8', '-', null, null, null, null, null, null, 'Side Track 1', null, null, '11:00-11:45', '0000-00-00 00:00:00');
INSERT INTO `day2_track1` VALUES ('11', 'Advanced Cyber Security', 'Drinor Selmanaj', '26', null, null, 'Drinor Selmanaj', '60\'', 'Side Track 1', null, 'http://www.flossk.org/', '11:45-12:45', '0000-00-00 00:00:00');
INSERT INTO `day2_track1` VALUES ('15', 'Listen to Wikipedia\n', null, null, null, null, null, '15\'', 'Side Track 1', '(audio installation)', null, '12:45-13:00', '0000-00-00 00:00:00');
INSERT INTO `day2_track1` VALUES ('16', '-', null, null, null, null, null, null, 'Side Track 1', null, null, '13:00-14:15', '0000-00-00 00:00:00');
INSERT INTO `day2_track1` VALUES ('21', 'Open Source, Digital Amateur Archiving', 'Claire Tolan', '7', null, null, 'Claire Tolan', '60\'', 'Side Track 1', null, 'https://tacticaltech.org//', '14:15-15:15', '0000-00-00 00:00:00');
INSERT INTO `day2_track1` VALUES ('25', 'Arduino for Kids', 'Besfort Guri', '24', null, null, 'Besfort Guri', '45\'', 'Side Track 1', null, 'http://www.flossk.org/', '15:15-16:00', '0000-00-00 00:00:00');
INSERT INTO `day2_track1` VALUES ('28', '-', null, null, null, null, null, null, 'Side Track 1', null, null, '16:00-16:30', '0000-00-00 00:00:00');
INSERT INTO `day2_track1` VALUES ('30', 'Fedora in Education - Yes We Can!', 'Giannis Kostandinidis', '11', null, null, 'Giannis Kostandinidis', '30\'', 'Side Track 1', null, 'https://getfedora.org/', '16:30-17:00', '0000-00-00 00:00:00');
INSERT INTO `day2_track1` VALUES ('34', 'Setting up graph-databases (OrientDB)', 'Bledar Gjoçaj', '43', null, null, 'Bledar Gjoçaj', '60\'', 'Side Track 1', null, null, '17:00-17:30', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `day2_track2`
-- ----------------------------
DROP TABLE IF EXISTS `day2_track2`;
CREATE TABLE `day2_track2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(450) DEFAULT NULL,
  `speaker_name1` varchar(450) DEFAULT NULL,
  `speaker_id1` int(11) DEFAULT NULL,
  `speaker_name2` varchar(450) DEFAULT NULL,
  `speaker_id2` int(11) DEFAULT NULL,
  `tag` varchar(450) DEFAULT NULL,
  `time_description` varchar(450) DEFAULT NULL,
  `location` varchar(450) DEFAULT NULL,
  `description` varchar(4500) DEFAULT NULL,
  `link` varchar(450) DEFAULT NULL,
  `time_event` varchar(450) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of day2_track2
-- ----------------------------
INSERT INTO `day2_track2` VALUES ('2', '-', null, null, null, null, null, null, 'Side Track 2', null, null, '09:30-10:00', '0000-00-00 00:00:00');
INSERT INTO `day2_track2` VALUES ('4', 'Lightining Talks', null, null, null, null, null, '15\'', 'Side Track 2', '(present your idea)', null, '10:00-10:45', '0000-00-00 00:00:00');
INSERT INTO `day2_track2` VALUES ('7', 'Open Source Design', 'Ndriçim Strazimiri', '32', null, null, 'Ndriçim Strazimiri', '30\'', 'Side Track 2', null, 'http://www.brunes.al/', '10:45-11:15', '0000-00-00 00:00:00');
INSERT INTO `day2_track2` VALUES ('9', '-', null, null, null, null, null, null, 'Side Track 2', null, null, '11:15-11:45', '0000-00-00 00:00:00');
INSERT INTO `day2_track2` VALUES ('11', 'Building cross-platform mobile apps with PhoneGap & Cordova', 'Albert Lekaj', '15', null, null, 'Albert Lekaj', '60\'', 'Side Track 2', null, 'https://twitter.com/LekajAlbert', '11:45-12:45', '0000-00-00 00:00:00');
INSERT INTO `day2_track2` VALUES ('15', 'Lightining Talks', null, null, null, null, null, '15\'', 'Side Track 2', '(present your idea)', null, '12:45-13:00', '0000-00-00 00:00:00');
INSERT INTO `day2_track2` VALUES ('16', '-', null, null, null, null, null, null, 'Side Track 2', null, null, '13:00-14:15', '0000-00-00 00:00:00');
INSERT INTO `day2_track2` VALUES ('21', 'WikiAkademia Shqiptare', 'Viola Civici', '46', null, null, 'Viola Civici', '15\'', 'Side Track 2', null, null, '14:15-14:30', '0000-00-00 00:00:00');
INSERT INTO `day2_track2` VALUES ('22', 'Birds of a Feather Session', '', '0', null, null, '', '15\'', 'Side Track 2', ' (invite people to talk about your idea)', null, '14:30-14:45', '0000-00-00 00:00:00');
INSERT INTO `day2_track2` VALUES ('23', 'LPI EXAM', null, null, null, null, null, '105\'', 'Side Track 2', '', null, '14:45-16:30', '0000-00-00 00:00:00');
INSERT INTO `day2_track2` VALUES ('30', 'e-Learning Technology and its future in Albania', 'Amarilda Dautaj', '18', 'Albion Bame', '17', 'Amarilda&Albion', '30\'', 'Side Track 2', null, null, '16:30-17:00', '0000-00-00 00:00:00');
INSERT INTO `day2_track2` VALUES ('32', 'Your first Java application using open source technologies', 'Flamur Mavraj', '25', null, null, 'Bledar Gjoçaj', '30\'', 'Side Track 2', null, 'http://www.ikubinfo.al/', '17:00-18:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `events`
-- ----------------------------
DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(450) DEFAULT NULL,
  `speaker_name` varchar(450) DEFAULT NULL,
  `speaker_id` int(11) DEFAULT NULL,
  `tag` varchar(450) DEFAULT NULL,
  `time_description` varchar(450) DEFAULT NULL,
  `location` varchar(450) DEFAULT NULL,
  `description` varchar(4500) DEFAULT NULL,
  `link` varchar(450) DEFAULT NULL,
  `time_event` varchar(450) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of events
-- ----------------------------
INSERT INTO `events` VALUES ('1', 'Check-In', 'Check-In', '1', 'Check-In', 'Check-In', 'Check-In', 'Check-In', 'Check-In', '9:30-9:45', '2015-04-24 22:44:25');
INSERT INTO `events` VALUES ('2', 'Main Track', 'Main Track', '1', 'Main Track', 'Main Track', 'Main Track', 'Main Track', 'Main Track', '9:45-10:30', '2015-04-24 23:51:47');
INSERT INTO `events` VALUES ('8', 'Christian Heilmann\n', '\"Christian Heilmann\n\"\"The new and old perils of open\"\"\n[Keynote]\"', '2', 'Christian Heilmann\n', 'Christian Heilmann\n', 'Christian Heilmann\n', '\"Christian Heilmann\n\"\"The new and old perils of open\"\"\n[Keynote]\"', 'Christian Heilmann\n', '10:30-10:45', '2015-04-24 23:55:57');
INSERT INTO `events` VALUES ('12', 'Christian Heilmann\n', 'Christian Heilmann\n', '2', 'Christian Heilmann\n', 'Christian Heilmann\n', 'Christian Heilmann\n', '\"Christian Heilmann\n\"\"The new and old perils of open\"\"\n[Keynote]\"', 'Christian Heilmann\n', '10:45-11:00', '2015-04-24 23:57:37');
INSERT INTO `events` VALUES ('13', 'Redon Skikuli', 'Redon Skikuli', '3', 'Redon Skikuli', 'Redon Skikuli', 'Redon Skikuli', 'The Revolution will be Decentralized', 'Redon Skikuli', '11:00-11:30', '2015-04-24 23:58:53');
INSERT INTO `events` VALUES ('15', 'Enkeleda Ibrahimi', 'Enkeleda Ibrahimi', '4', 'Enkeleda Ibrahimi', 'Enkeleda Ibrahimi', 'Enkeleda Ibrahimi', 'Open Source Security', 'Enkeleda Ibrahimi', '11:30-11:45', '2015-04-25 00:01:03');
INSERT INTO `events` VALUES ('16', 'Kiril Simeonovski', 'Kiril Simeonovski', '5', 'Kiril Simeonovski', 'Kiril Simeonovski', 'Kiril Simeonovski', 'The value of open knowledge: Evidence from the Wikimedia movement', 'Kiril Simeonovski', '11:45-12:15', '2015-04-25 00:01:58');
INSERT INTO `events` VALUES ('18', 'Giannis Kostandinidis', 'Giannis Kostandinidis', null, null, null, null, 'The Fedora Community & Why You Should Join It', null, '12:15-12:30', '2015-04-25 00:07:59');
INSERT INTO `events` VALUES ('19', 'Giannis Kostandinidis', 'Giannis Kostandinidis', null, null, null, null, 'The Fedora Community & Why You Should Join It', null, '12:30-12:45', '2015-04-25 00:08:01');
INSERT INTO `events` VALUES ('20', 'Besfort Guri', 'Besfort Guri', null, null, null, null, 'OSGeo-Live', null, '12:45-13:00', '2015-04-25 00:08:04');
INSERT INTO `events` VALUES ('21', 'Lunch Break', 'Lunch Break', null, null, null, null, 'Lunch Break', null, '13:00-13:15', '2015-04-25 00:08:07');
INSERT INTO `events` VALUES ('22', 'Lunch Break', 'Lunch Break', null, null, null, null, 'Lunch Break', null, '13:15-13:30', '2015-04-25 00:08:10');
INSERT INTO `events` VALUES ('23', 'Lunch Break', 'Lunch Break', null, null, null, null, 'Lunch Break', null, '13:30-13:45', '2015-04-25 00:08:13');
INSERT INTO `events` VALUES ('24', 'Fin\n', 'Fin', null, null, null, null, 'Freedom of Information and you', null, '13:45-14:00', '2015-04-25 00:08:16');
INSERT INTO `events` VALUES ('25', 'Fin', 'Fin', null, null, null, null, 'Freedom of Information and you', null, '14:00-14:15', '2015-04-25 00:08:19');
INSERT INTO `events` VALUES ('26', 'Bledar Gjocaj', 'Bledar Gjocaj', null, null, null, null, 'Developing with open source tools and frameworks, a Java case study', null, '14:15-14:30', '2015-04-25 00:08:23');
INSERT INTO `events` VALUES ('27', 'Bledar Gjocaj', 'Bledar Gjocaj', null, null, null, null, 'Developing with open source tools and frameworks, a Java case study', null, '14:30-14:45', '2015-04-25 00:08:31');
INSERT INTO `events` VALUES ('28', 'Bruno &#348;kvorc', 'Bruno &#348;kvorc', null, null, null, null, 'The Many Ways to Contribute to Open Source', null, '14:45-15:00', '2015-04-25 00:08:34');
INSERT INTO `events` VALUES ('29', 'Bruno &#348;kvorc', 'Bruno &#348;kvorc', null, null, null, null, 'The Many Ways to Contribute to Open Source', null, '15:00-15:15', '2015-04-25 00:08:38');
INSERT INTO `events` VALUES ('30', 'Casey Link', 'Casey Link', null, 'Casey Link', 'Casey Link', 'Casey Link', 'Open Source On the Go', 'Casey Link', '15:15-15:30', '2015-04-25 00:08:41');
INSERT INTO `events` VALUES ('31', 'Casey Link', 'Casey Link', null, 'Casey Link', 'Casey Link', 'Casey Link', 'Open Source On the Go', 'Casey Link', '15:30-15:45', '2015-04-25 00:08:44');
INSERT INTO `events` VALUES ('32', 'Altin Ukshini', 'Altin Ukshini', null, 'Altin Ukshini', 'Altin Ukshini', 'Altin Ukshini', 'Hackerspaces and their importance to the community', 'Altin Ukshini', '15:45-16:00', '2015-04-25 00:08:51');
INSERT INTO `events` VALUES ('33', 'Altin Ukshini', 'Altin Ukshini', null, 'Altin Ukshini', 'Altin Ukshini', 'Altin Ukshini', 'Hackerspaces and their importance to the community', 'Altin Ukshini', '16:00-16:15', '2015-04-25 00:08:54');
INSERT INTO `events` VALUES ('34', 'Short Break', 'Short Break', null, 'Short Break', 'Short Break', 'Short Break', 'Short Break', 'Short Break', '16:15-16:30', '2015-04-25 00:08:57');
INSERT INTO `events` VALUES ('35', 'Sam Tuke', 'Sam Tuke', null, 'Sam Tuke', 'Sam Tuke', 'Sam Tuke', 'LibreOffice: A new model for community-corporate collaboration', 'Sam Tuke', '16:30-16:45', '2015-04-25 00:09:00');
INSERT INTO `events` VALUES ('36', 'Sam Tuke', 'Sam Tuke', null, 'Sam Tuke', 'Sam Tuke', 'Sam Tuke', 'LibreOffice: A new model for community-corporate collaboration', 'Sam Tuke', '16:45-17:00', '2015-04-25 00:09:03');
INSERT INTO `events` VALUES ('37', 'John Giannelos', 'John Giannelos', null, 'John Giannelos', 'John Giannelos', 'John Giannelos', 'SatNOGS - Global Network of Ground Stations', 'John Giannelos', '17:00-17:15', '2015-04-25 00:09:11');
INSERT INTO `events` VALUES ('38', 'John Giannelos', 'John Giannelos', null, 'John Giannelos', 'John Giannelos', 'John Giannelos', 'SatNOGS - Global Network of Ground Stations', 'John Giannelos', '17:15-17:30', '2015-04-25 00:09:14');
INSERT INTO `events` VALUES ('39', 'Blerta Thaçi & Zana Idrizi', 'Blerta Thaçi & Zana Idrizi', null, 'Blerta Thaçi & Zana Idrizi', 'Blerta Thaçi & Zana Idrizi', 'Blerta Thaçi & Zana Idrizi', 'Empowering women in the community of coding', 'Blerta Thaçi & Zana Idrizi', '17:30-17:45', '2015-04-25 00:09:17');
INSERT INTO `events` VALUES ('40', 'Blerta Thaçi & Zana Idrizi', 'Blerta Thaçi & Zana Idrizi', null, 'Blerta Thaçi & Zana Idrizi', 'Blerta Thaçi & Zana Idrizi', 'Blerta Thaçi & Zana Idrizi', 'Empowering women in the community of coding', 'Blerta Thaçi & Zana Idrizi', '17:45-18:00', '2015-04-25 00:09:20');
INSERT INTO `events` VALUES ('41', 'Arianit Dobroshi', 'Arianit Dobroshi', null, 'Arianit Dobroshi', 'Arianit Dobroshi', 'Arianit Dobroshi', 'Current and future mass surveillance threats, and why mass surveillance don\'t work', 'Arianit Dobroshi', '18:00-18:15', '2015-04-25 00:11:17');
INSERT INTO `events` VALUES ('42', 'Arianit Dobroshi', 'Arianit Dobroshi', null, 'Arianit Dobroshi', 'Arianit Dobroshi', 'Arianit Dobroshi', 'Current and future mass surveillance threats, and why mass surveillance don\'t work', 'Arianit Dobroshi', '18:15-18:30', '2015-04-25 00:11:21');

-- ----------------------------
-- Table structure for `main_track1`
-- ----------------------------
DROP TABLE IF EXISTS `main_track1`;
CREATE TABLE `main_track1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(450) DEFAULT NULL,
  `speaker_name1` varchar(450) DEFAULT NULL,
  `speaker_id1` int(11) DEFAULT NULL,
  `speaker_name2` varchar(450) DEFAULT NULL,
  `speaker_id2` int(11) DEFAULT NULL,
  `tag` varchar(450) DEFAULT NULL,
  `time_description` varchar(450) DEFAULT NULL,
  `location` varchar(450) DEFAULT NULL,
  `description` varchar(4500) DEFAULT NULL,
  `link` varchar(450) DEFAULT NULL,
  `time_event` varchar(450) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of main_track1
-- ----------------------------
INSERT INTO `main_track1` VALUES ('1', 'Check-In', 'Check-In', '0', null, null, 'Check-In', '15\'', 'Check-In', 'Participants Registration', 'Check-In', '9:30-9:45', '2015-04-24 22:44:25');
INSERT INTO `main_track1` VALUES ('2', 'Opening', 'Opening', '0', null, null, 'Opening', '45\'', 'Main Track', 'Opening Notes from organisers and special guests', 'Main Track', '9:45-10:30', '2015-04-24 23:51:47');
INSERT INTO `main_track1` VALUES ('8', 'The new and old perils of open\n', 'Christian Heilmann\n', '1', null, null, 'Christian Heilmann\n', '30\'', 'Main Track', '[Keynote]', 'http://christianheilmann.com/', '10:30-11:00', '2015-04-24 23:55:57');
INSERT INTO `main_track1` VALUES ('13', 'The Revolution will be Decentralized', 'Redon Skikuli', '33', null, null, 'Redon Skikuli', '30\'', 'Main Track', '', 'http://redon.skikuli.com/', '11:00-11:30', '2015-04-24 23:58:53');
INSERT INTO `main_track1` VALUES ('15', 'Open Source Security', 'Enkeleda Ibrahimi', '5', null, null, 'Enkeleda Ibrahimi', '15\'', 'Main Track', '', 'http://www.pwc.com/', '11:30-11:45', '2015-04-25 00:01:03');
INSERT INTO `main_track1` VALUES ('16', 'The value of open knowledge: Evidence from the Wikimedia movement', 'Kiril Simeonovski', '31', null, null, 'Kiril Simeonovski', '30\'', 'Main Track', '', 'http://meta.wikimedia.org/wiki/Shared_Knowledge', '11:45-12:15', '2015-04-25 00:01:58');
INSERT INTO `main_track1` VALUES ('18', 'The Fedora Community & Why You Should Join It', 'Giannis Kostandinidis', '11', null, null, 'Giannis Kostandinidis', '30\'', 'Main Track', '', 'https://getfedora.org/', '12:15-12:45', '2015-04-25 00:07:59');
INSERT INTO `main_track1` VALUES ('20', 'OSGeo-Live', 'Besfort Guri', '24', null, null, 'Besfort Guri', '15\'', 'Main Track', '', 'http://www.flossk.org/', '12:45-13:00', '2015-04-25 00:08:04');
INSERT INTO `main_track1` VALUES ('21', 'Lunch Break', '', null, null, null, null, null, 'Main Track', 'Lunch Break', null, '13:00-13:45', '2015-04-25 00:08:07');
INSERT INTO `main_track1` VALUES ('24', 'Freedom of Information and you', 'Fin', '14', null, null, 'FIN', '30\'', 'Main Track', '', 'http://www.meetup.com/Hacks-Hackers-Vienna/', '13:45-14:15', '2015-04-25 00:08:16');
INSERT INTO `main_track1` VALUES ('26', 'Developing with open source tools and frameworks, a Java case study', 'Bledar Gjoçaj', '25', null, null, 'Bledar Gjoçaj', '30\'', 'Main Track', '', 'http://www.ikubinfo.al/', '14:15-14:45', '2015-04-25 00:08:23');
INSERT INTO `main_track1` VALUES ('28', 'The Many Ways to Contribute to Open Source', 'Bruno Škvorc', '6', null, null, 'Bruno Škvorc', '30\'', 'Main Track', '', 'http://www.sitepoint.com/', '14:45-15:15', '2015-04-25 00:08:34');
INSERT INTO `main_track1` VALUES ('30', 'Open Source On the Go', 'Casey Link', '39', null, null, 'Casey Link', '30\'', 'Main Track', '', '', '15:15-15:45', '2015-04-25 00:08:41');
INSERT INTO `main_track1` VALUES ('32', 'Hackerspaces and their importance to the community', 'Altin Ukshini', '16', null, null, 'Altin Ukshini', '30\'', 'Main Track', '', 'http://www.prishtinahackerspace.org/', '15:45-16:15', '2015-04-25 00:08:51');
INSERT INTO `main_track1` VALUES ('34', 'Short Break', 'Short Break', null, null, null, 'Short Break', 'Short Break', 'Main Track', 'Short Break', '', '16:15-16:30', '2015-04-25 00:08:57');
INSERT INTO `main_track1` VALUES ('35', 'LibreOffice: A new model for community-corporate collaboration', 'Sam Tuke', '34', null, null, 'Sam Tuke', '30\'', 'Main Track', '', 'https://www.collabora.com/', '16:30-17:00', '2015-04-25 00:09:00');
INSERT INTO `main_track1` VALUES ('37', 'SatNOGS - Global Network of Ground Stations', 'John Giannelos', '38', null, null, 'John Giannelos', '30\'', 'Main Track', '', 'https://satnogs.org/', '17:00-17:30', '2015-04-25 00:09:11');
INSERT INTO `main_track1` VALUES ('39', 'Empowering women in the community of coding', 'Blerta Thaçi ', '10', 'Zana Idrizi', '37', 'Blerta Thaçi & Zana Idrizi', '30\'', 'Main Track', '', 'https://www.facebook.com/GirlsCodingKosova?fref=ts', '17:30-18:00', '2015-04-25 00:09:17');
INSERT INTO `main_track1` VALUES ('41', 'Current and future mass surveillance threats, and why mass surveillance don\'t work', 'Arianit Dobroshi', '22', null, null, 'Arianit Dobroshi', '30\'', 'Main Track', '', 'http://www.flossk.org/', '18:00-18:30', '2015-04-25 00:11:17');

-- ----------------------------
-- Table structure for `main_track2`
-- ----------------------------
DROP TABLE IF EXISTS `main_track2`;
CREATE TABLE `main_track2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(450) DEFAULT NULL,
  `speaker_name1` varchar(450) DEFAULT NULL,
  `speaker_id1` int(11) DEFAULT NULL,
  `speaker_name2` varchar(450) DEFAULT NULL,
  `speaker_id2` int(11) DEFAULT NULL,
  `tag` varchar(450) DEFAULT NULL,
  `time_description` varchar(450) DEFAULT NULL,
  `location` varchar(450) DEFAULT NULL,
  `description` varchar(4500) DEFAULT NULL,
  `link` varchar(450) DEFAULT NULL,
  `time_event` varchar(450) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of main_track2
-- ----------------------------
INSERT INTO `main_track2` VALUES ('2', 'Opening', null, null, null, null, null, '30\'', 'Main Track', 'Opening of the second day of the conference', null, '09:30-10:00', '0000-00-00 00:00:00');
INSERT INTO `main_track2` VALUES ('4', 'Building a 100% Open Source based Open Data platform', 'Alex Corbi', '3', null, null, 'Alex Corbi', '30\'', 'Main Track', null, 'http://www.open-steps.org/', '10:00-10:30', '0000-00-00 00:00:00');
INSERT INTO `main_track2` VALUES ('6', 'Shquarsia: Si mund të siguroheni që artikulli juaj nuk do të fshihet', 'Ismet Azizi', '28', null, null, 'Ismet Azizi', '15\'', 'Main Track', null, 'http://sq.wikipedia.org/wiki/P%C3%ABrdoruesi:Planeti', '10:30-10:45', '0000-00-00 00:00:00');
INSERT INTO `main_track2` VALUES ('7', 'Firefox Developer Edition: a browser for developers', 'Panos Astithas', '2', null, null, 'Panos Astithas', '30\'', 'Main Track', null, 'https://www.mozilla.org/de/', '10:45-11:15', '0000-00-00 00:00:00');
INSERT INTO `main_track2` VALUES ('9', 'Passwords for the Clouds', 'Claire Tolan', '7', null, null, 'Claire Tolan', '30\'', 'Main Track', '[Keynote]', 'https://tacticaltech.org//', '11:15-11:45', '0000-00-00 00:00:00');
INSERT INTO `main_track2` VALUES ('11', 'Firefox OS', 'Boris Budini', '41', null, null, 'Boris Budini', '15\'', 'Main Track', null, null, '11:45-12:00', '0000-00-00 00:00:00');
INSERT INTO `main_track2` VALUES ('12', 'Linux Professional Institute in Albania', 'Jola Hysko', '42', null, null, 'Jola Hysko', '15\'', 'Main Track', null, null, '12:00-12:15', '0000-00-00 00:00:00');
INSERT INTO `main_track2` VALUES ('13', 'Mastering the art of Open Source Testing', 'Karthikeyan Palaniswamy', '30', null, null, 'Karthikeyan Palaniswamy', '30\'', 'Main Track', null, 'https://bugdetective.wordpress.com/', '12:15-12:45', '0000-00-00 00:00:00');
INSERT INTO `main_track2` VALUES ('15', 'Autoshkolla Android App', 'Arlind Hajredinaj', '23', null, null, 'Arlind Hajredinaj', '15\'', 'Main Track', null, 'http://3cis.net/?module=Page&action=show&id=17', '12:45-13:00', '0000-00-00 00:00:00');
INSERT INTO `main_track2` VALUES ('16', 'Lunch Break', null, null, null, null, 'Lunch Break', '45\'', 'Main Track', null, null, '13:00-13:45', '0000-00-00 00:00:00');
INSERT INTO `main_track2` VALUES ('19', 'FFmpeg\'s FFV1 lossless video codec: A Free Software success story', 'Peter Bubestinger', '13', null, null, 'Peter Bubestinger', '30\'', 'Main Track', '[Keynote]', 'https://fsfe.org/at/at.en.html', '13:45-14:15', '0000-00-00 00:00:00');
INSERT INTO `main_track2` VALUES ('21', 'FLOSS tools for GIS', 'Besfort Guri', '24', null, null, 'Besfort Guri', '15\'', 'Main Track', null, 'http://www.flossk.org/', '14:15-14:30', '0000-00-00 00:00:00');
INSERT INTO `main_track2` VALUES ('22', 'Online Security', 'Silvi Kolumcaj', '36', null, null, 'Silvi Kolumcaj', '15\'', 'Main Track', null, null, '14:30-14:45', '0000-00-00 00:00:00');
INSERT INTO `main_track2` VALUES ('23', 'Open Sourcing Content - Peer Review\'s Effect on Quality', 'Bruno &#348;kvorc', '6', null, null, 'Bruno &#348;kvorc', '30\'', 'Main Track', null, 'http://www.sitepoint.com/', '14:45-15:15', '0000-00-00 00:00:00');
INSERT INTO `main_track2` VALUES ('25', 'Communities are easy to build, but hard to maintain', 'Michael Kohler ', '12', null, null, 'Michael Kohler', '15\'', 'Main Track', null, 'https://mozilla.org/', '15:15-15:30', '0000-00-00 00:00:00');
INSERT INTO `main_track2` VALUES ('26', 'Introduction to graph-databases (OrientDB)', 'Flamur Mavraj', '43', null, null, 'Flamur Mavraj', '30\'', 'Main Track', null, null, '15:30-16:00', '0000-00-00 00:00:00');
INSERT INTO `main_track2` VALUES ('28', 'Short Break', null, null, null, null, 'Short Break', '15\'', 'Main Track', null, null, '16:00-16:15', '0000-00-00 00:00:00');
INSERT INTO `main_track2` VALUES ('29', 'Mrs, Milena Harito, Minister for Innovation And Public Administration', null, null, null, null, 'Mrs, Milena Harito, Minister for Innovation And Public Administration', '', 'Main Track', null, null, '16:15-16:30', '0000-00-00 00:00:00');
INSERT INTO `main_track2` VALUES ('30', 'Taking Open Source beyond Software', 'Chris Ward', '4', null, null, 'Chris Ward', '30\'', 'Main Track', null, null, '16:30-17:00', '0000-00-00 00:00:00');
INSERT INTO `main_track2` VALUES ('32', 'Healthcare and open source technologies', 'Gjergj Sheldija', '27', null, null, 'Gjergj Sheldija', '30\'', 'Main Track', null, 'http://acme-tech.net/blog/', '17:00-17:30', '0000-00-00 00:00:00');
INSERT INTO `main_track2` VALUES ('34', 'Open Data for Digital Capacity Building', 'Georges Labreche', '44', null, null, 'Georges Labreche\n', '30\'', 'Main Track', null, null, '17:30-18:00', '0000-00-00 00:00:00');
INSERT INTO `main_track2` VALUES ('36', 'Indexing the Albanian Language', 'Andri Xhitoni', '19', null, null, 'Andri Xhitoni', '30\'', 'Main Track', null, 'http://fabrika.al/en/', '18:00-18:30', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `speakers`
-- ----------------------------
DROP TABLE IF EXISTS `speakers`;
CREATE TABLE `speakers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(450) DEFAULT NULL,
  `company` varchar(450) DEFAULT NULL,
  `description` varchar(4500) DEFAULT NULL,
  `image_url` varchar(450) DEFAULT NULL,
  `twitter` varchar(450) DEFAULT NULL,
  `facebook` varchar(450) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of speakers
-- ----------------------------
INSERT INTO `speakers` VALUES ('1', 'Christian Heilmann', 'Web Advocate', 'Christian is a longtime Mozillian \r\nand former principal evangelist at Mozilla, \r\nauthor of various books and the Developer Evangelism \r\nHandbook. He is one of the keynote speakers at OSCAL.', 'http://oscal.openlabs.cc/wp-content/uploads/2013/09/Christian.jpg', null, null, '2015-03-21 12:55:12');
INSERT INTO `speakers` VALUES ('2', 'Panos Astithas', 'Mozilla', 'Panos Astithas is a software engineer at Mozilla working on Firefox Developer Tools.\r\n He also holds a PhD in computer network security and is an avid open source and open\r\n standards advocate.', 'http://oscal.openlabs.cc/wp-content/uploads/2013/09/Panos.jpg', null, null, '2015-03-21 12:55:47');
INSERT INTO `speakers` VALUES ('3', 'Alex Corbi', 'Open Steps', 'Alex is a freelance Web and mobile developer and an Open Knowledge researcher at Open\r\n Steps. His interests are mainly in #art + #tech. Alex also co-organizes scopesessions.org', 'http://oscal.openlabs.cc/wp-content/uploads/2013/09/Alex.jpg', null, null, '2015-03-21 12:56:24');
INSERT INTO `speakers` VALUES ('4', 'Chris Ward', 'Crate.io', 'Chris is a developer advocate for the Docker plugin, Crate. He is also mobile editor \r\non Sitepoint and works on Software, Organisations, Books and Games when he is not \r\nattending conferences.', 'http://oscal.openlabs.cc/wp-content/uploads/2013/09/Chris.jpg', null, null, '2015-03-21 12:56:58');
INSERT INTO `speakers` VALUES ('5', 'Enkeleda Ibrahimi', 'PwC', 'Enkeleda is an IT Auditor at PwC focused in InfoSec. She has spent the past \r\nthree years researching and working for a more secure Web and Cyberspace, which\r\n is also her main motivation.', 'http://oscal.openlabs.cc/wp-content/uploads/2015/03/Enkeleda.jpg', null, null, '2015-03-21 12:58:20');
INSERT INTO `speakers` VALUES ('6', 'Bruno &#348;kvorc', 'Sitepoint', 'Bruno is a coder from Croatia with a Master’s Degrees in Computer Science \r\nand English Language. He’s the editor of SitePoint’s PHP channel and a \r\ndeveloper evangelist for Diffbot.com.', 'http://oscal.openlabs.cc/wp-content/uploads/2015/03/Bruno.jpg', null, null, '2015-03-21 12:59:11');
INSERT INTO `speakers` VALUES ('7', 'Claire Tolan', 'Tactical Tech', 'Claire often works as a developer and technical writer with the Tactical \r\nTechnology Collective, an organisation that aids political activists. She \r\nhas a degree in Literature and Information Science.', 'http://oscal.openlabs.cc/wp-content/uploads/2015/03/Claire.jpg', null, null, '2015-03-21 13:00:13');
INSERT INTO `speakers` VALUES ('8', 'Erion &#199;uni', 'AlMoTech', 'Erjon has been developing for mobile since 2009. He is a strong supporter \r\nof mobile technologies and therefore founded just recently AlMoTech, with \r\nthe aim to promote mobile technologies.', 'http://oscal.openlabs.cc/wp-content/uploads/2015/03/Erjon.jpg', null, null, '2015-03-21 13:01:21');
INSERT INTO `speakers` VALUES ('9', 'Eno Gjoni', 'Blender 3D', 'Eno Gjoni is a very passionate Blender 3D, InkScape and GIMP fan. At day he is a student at the University of Arts, and at night he plays the drums at “Lynx”, an albanian rock band based in Tirana.', 'http://oscal.openlabs.cc/wp-content/uploads/2013/09/Eno.jpg', null, null, '2015-04-09 21:56:55');
INSERT INTO `speakers` VALUES ('10', 'Blerta Thaçi', 'Girls Coding Kosova', 'Blerta is a passionate Android Developer at APPSIX, and is currently pursuing a degree in Computer Engineering in Prishtina. She is the founder of the Girls Coding Kosova initiative. ', 'http://oscal.openlabs.cc/wp-content/uploads/2013/09/Blerta.jpg', null, null, '2015-04-09 21:58:51');
INSERT INTO `speakers` VALUES ('11', 'Giannis Konstantinidis', 'Fedora', 'Giannis is a Free & Open Source Software Advocate, Fedora Ambassador and Mozilla Rep from Greece. Meanwhile a university student, pursuing his degree in computer engineering.', 'http://oscal.openlabs.cc/wp-content/uploads/2013/09/Giannis.jpg', null, null, '2015-04-09 22:02:50');
INSERT INTO `speakers` VALUES ('12', 'Michael Kohler', 'Mozilla', 'Michael Kohler is a Web Developer from Switzerland, active since 2008 as a volunteer at Mozilla. He is lately focused on Community Building in the German speaking community. ', 'http://oscal.openlabs.cc/wp-content/uploads/2013/09/Michael.jpg', null, null, '2015-04-09 22:04:17');
INSERT INTO `speakers` VALUES ('13', 'Peter Bubestinger', 'FSFE', 'Peter is working as a project-leader and developer in the field of digital archives since 2002. Since 2008, he is a team member of FSFE, currently coordinating its activities in Austria.', 'http://oscal.openlabs.cc/wp-content/uploads/2015/04/Peter.png', null, null, '0000-00-00 00:00:00');
INSERT INTO `speakers` VALUES ('14', 'FIN (Markus Hametner)', 'HackHACKERS', 'Fin is an activist for a right to access state-held information in Austria. He founded hack/hackers Vienna and works as a data journalist for one of the biggest online news media in the country.', 'http://oscal.openlabs.cc/wp-content/uploads/2015/04/fin-e1429265653975.jpg', null, null, '0000-00-00 00:00:00');
INSERT INTO `speakers` VALUES ('15', 'Albert Lekaj', 'Hello World', 'Albert is an App&Game programmer who works with Open Source technologies. He founded Hello World L.L.C, based in Prishtina. In his free time, he enjoys watching movies.', 'http://oscal.openlabs.cc/wp-content/uploads/2013/09/lekaj-albert-e1429600068401.jpg', null, null, '0000-00-00 00:00:00');
INSERT INTO `speakers` VALUES ('16', 'Altin Ukshini', 'Prishtina Hackerspace', 'Altin is a FLOSS(Free Libre Open Source Software) and Open Knowledge hactivist since 2009, he is the board president of FLOSSK and the co-founder of Prishtina Hackerspace. ', 'http://oscal.openlabs.cc/wp-content/uploads/2015/04/photo234562239098628909.jpg', null, null, '0000-00-00 00:00:00');
INSERT INTO `speakers` VALUES ('17', 'Albion Bame', 'Student', 'Albion is a professional web developer and a student at the Polytechnical University of Tirana. He currently works for Celesi Media Group when he is not pursuing his studies.', 'http://oscal.openlabs.cc/wp-content/uploads/2015/04/albion-e1429645153284.jpg', null, null, '0000-00-00 00:00:00');
INSERT INTO `speakers` VALUES ('18', 'Amarilda Dautaj', 'Student', 'Amarilda is a professional web developer with open source technologies. She is working as a web developer at Raiffeisen Bank. She has participated in a lot of competitions and always finishing them in the top three places. ', 'http://oscal.openlabs.cc/wp-content/uploads/2015/04/amarilda-e1429646268190.jpg', null, null, '0000-00-00 00:00:00');
INSERT INTO `speakers` VALUES ('19', 'Andri Xhitoni', 'Fabrika.al', 'Developer and co-founder at Fabrika.al. Designer since 1999, front-end/back-end developer with the LAMP since 2007. Creator of cross-media solutions, including Web, Mobile and Live TV Broadcast.', 'http://oscal.openlabs.cc/wp-content/uploads/2015/04/andri.jpg', null, null, '0000-00-00 00:00:00');
INSERT INTO `speakers` VALUES ('20', 'Ardian Haxha', 'Fedora', 'Ardian studies computer science and engineering. He has been contributing to open source for 7 years. He helps promoting the Fedora Project as an Ambassador and is also a Mozilla representative.', 'http://oscal.openlabs.cc/wp-content/uploads/2013/09/Ardian-Haxha.jpeg', null, null, '0000-00-00 00:00:00');
INSERT INTO `speakers` VALUES ('21', 'Ardita Agalliu', 'Student', 'Ardita is studying Business Informatics at University of Tirana, Faculty of Economics. She is interested on web programming and  that\'s the reason she is coming to OSCAL and speak about Joomla.', 'http://oscal.openlabs.cc/wp-content/uploads/2013/09/Ardita.jpg', null, null, '0000-00-00 00:00:00');
INSERT INTO `speakers` VALUES ('22', 'Arianit Dobroshi', 'FLOSSK', 'Arianit is a member of executive board of FLOSSK. He is an LLM in aviation law during which he studied the EU data protection legal framework in cases of transfer to third countries.', 'http://oscal.openlabs.cc/wp-content/uploads/2013/09/arianit.jpg', null, null, '0000-00-00 00:00:00');
INSERT INTO `speakers` VALUES ('23', 'Arlind Hajredinaj', '3CIS', 'Arlind is a junior Android developer at 3CIS. He also holds a CCNP which is nice to have. He has contributed in the open source community in Kosovo through FLOSSK and his own projects.', 'http://oscal.openlabs.cc/wp-content/uploads/2013/09/Arlind-Hajredinaj.jpg', null, null, '0000-00-00 00:00:00');
INSERT INTO `speakers` VALUES ('24', 'Besfort Guri', 'FLOSSK', 'Besfort is a board member at FLOSSK and Humanitarian OpenStreetMap team. He is a GIS developer at IRuSP project, working with FLOSS tools.', 'http://oscal.openlabs.cc/wp-content/uploads/2013/09/Besfort-Guri.jpg', null, null, '0000-00-00 00:00:00');
INSERT INTO `speakers` VALUES ('25', 'Bledar Gjoçaj', 'ikubINFO', 'Bledar is an experienced software developer who loves building software using open source tools. Security, Continuous Integration, SOA, NoSQL are of great interest to him, as is open source.', 'http://oscal.openlabs.cc/wp-content/uploads/2013/09/bledar_gjocaj1.jpg', null, null, '0000-00-00 00:00:00');
INSERT INTO `speakers` VALUES ('26', 'Drinor Selmanaj', 'FLOSSK', 'Drinor is a technology visionary and computer security specialist who has been working with FLOSSK for 3 years now. He is one of many contributors in Kosova in various open source projects.', 'http://oscal.openlabs.cc/wp-content/uploads/2013/09/drinor1.jpg', null, null, '0000-00-00 00:00:00');
INSERT INTO `speakers` VALUES ('27', 'Gjergj Sheldija', 'ICT Consultant', 'Gjergj discovered at an early age the beauty of sharing code with others; he discovered Linux a bit later. Currently, he is implementing Care2x, an open source Hospital Information System for \'Mother Thereza\' Tirana Hospital.', 'http://oscal.openlabs.cc/wp-content/uploads/2013/09/gjergj_sheldijaCROPRESIZE.png', null, null, '0000-00-00 00:00:00');
INSERT INTO `speakers` VALUES ('28', 'Ismet Azizi', 'Wikipedia', 'Ismet has a sensational experience in education, also certified as an educational leader. He works as a Geography teacher in Kosovo. In his free time, Ismet takes care of administrational duties in the Albanian Wikipedia.', 'http://oscal.openlabs.cc/wp-content/uploads/2015/04/ismeti-e1429265072964.jpg', null, null, '0000-00-00 00:00:00');
INSERT INTO `speakers` VALUES ('29', 'Jona Azizaj', 'Fedora', 'Jona is a student of Business Informatics at the University of Tirana. She has been involved with Fedora for over a year now (especially localization) and aims to become the first Fedora Ambassador in Albania.', 'http://oscal.openlabs.cc/wp-content/uploads/2013/09/Jona-Azizaj1.jpg', null, null, '0000-00-00 00:00:00');
INSERT INTO `speakers` VALUES ('30', 'Karthikeyan Palaniswamy', 'Mozilla', 'Karthikeyan is a passionate open source software tester. He is a casual contributor to Mozilla Web QA team. He was born and raised in a small village in India and currently studying Computer Science Engineering in Macedonia.', 'http://oscal.openlabs.cc/wp-content/uploads/2015/04/kathiken-e1429646432137.jpg', null, null, '0000-00-00 00:00:00');
INSERT INTO `speakers` VALUES ('31', 'Kiril Simeonovski', 'Shared Knowledge', 'Kiril is the President of Shared Knowledge since 2014. He spent the last few years in running projects related to Wikimedia Movement. He is an economist, open knowledge activist and indipendent scholar.', 'http://oscal.openlabs.cc/wp-content/uploads/2015/04/kiril-e1429263747280.jpg', null, null, '0000-00-00 00:00:00');
INSERT INTO `speakers` VALUES ('32', 'Ndriçim Strazimiri', 'Brunes', 'Ndriçim has been working as a web designer, programmer, web developer, video editor, marketing consultant ect. Currently, he works as web/graphic designer and motion graphic editor.', 'http://oscal.openlabs.cc/wp-content/uploads/2013/09/ndricimi-e1429597243594.jpg', null, null, '0000-00-00 00:00:00');
INSERT INTO `speakers` VALUES ('33', 'Redon Skikuli', 'Open Labs', 'Redon is a member of Open Labs, the FLOSS community in Albania, promoting open knowledge through projects like Wikipedia, Linux, Arduino and LibreOffice. He is also a Mozilla Rep.', 'http://oscal.openlabs.cc/wp-content/uploads/2013/09/Redon.jpg', null, null, '0000-00-00 00:00:00');
INSERT INTO `speakers` VALUES ('34', 'Sam Tuke', 'Collabora', 'Sam is a professional Free Software Promoter. A hacker by nature, he has also created software solutions for ownCloud, phpList,  and a variety of US and EU startup businesses. Currently, he works for Collabora.', 'http://oscal.openlabs.cc/wp-content/uploads/2015/04/sam-tuke.jpeg', null, null, '0000-00-00 00:00:00');
INSERT INTO `speakers` VALUES ('35', 'Silva Arapi', 'Student', 'Silva is a fan of web programming and open knowledge. Her focus is on code in Joomla as well as creating mobile applications. In the meantime, she is a student of Business Informatics at the University of Tirana.', 'http://oscal.openlabs.cc/wp-content/uploads/2013/09/Silva.jpg', null, null, '0000-00-00 00:00:00');
INSERT INTO `speakers` VALUES ('36', 'Silvi Kolumcaj', 'Student', 'Silvi is a web developer/programmer and security researcher. He has a considerable contribution on this. Currently, he is studying for GeoInformatics.', 'http://oscal.openlabs.cc/wp-content/uploads/2015/04/silvi-kol-e1429794392996.jpg', null, null, '0000-00-00 00:00:00');
INSERT INTO `speakers` VALUES ('37', 'Zana Idrizi', 'Girls Coding Kosova', 'Zana is a young woman from Kosovo, interested on empowering women in society. She is graduated for economics and public policy and started Girls Coding initiative as a co-founder.', 'http://oscal.openlabs.cc/wp-content/uploads/2015/04/IMG_1471-e1429643150809.jpg', null, null, '0000-00-00 00:00:00');
INSERT INTO `speakers` VALUES ('38', 'John Giannelos', 'SatNOGS', 'John is a core developer at SatNOGS project building an open source satellite ground station network, also a Board member of Libre Space Foundation.', null, null, null, '0000-00-00 00:00:00');
INSERT INTO `speakers` VALUES ('39', 'Casey Link', 'Guardian Project', 'Casey codes. Casey paddles. Casey pedals. Casey wanders. Casey tweets @ramblurr', null, null, null, '0000-00-00 00:00:00');
INSERT INTO `speakers` VALUES ('40', 'Alket Rexhepi', null, 'Hobbyist Game Developer taking part in many free/open source games.', null, null, null, '0000-00-00 00:00:00');
INSERT INTO `speakers` VALUES ('41', 'Boris Budini', null, null, null, null, null, null);
INSERT INTO `speakers` VALUES ('42', 'Jola Hysko', null, null, null, null, null, null);
INSERT INTO `speakers` VALUES ('43', 'Flamur Mavraj', null, null, null, null, null, null);
INSERT INTO `speakers` VALUES ('44', 'Georges Labreche\n', 'Open Data Kosovo', null, null, null, null, null);
INSERT INTO `speakers` VALUES ('45', 'Fabjan Lashi', null, null, null, null, null, null);
INSERT INTO `speakers` VALUES ('46', 'Viola Civici', null, null, null, null, null, null);
