/*
 Navicat Premium Data Transfer

 Source Server         : LC
 Source Server Type    : MySQL
 Source Server Version : 50527
 Source Host           : localhost
 Source Database       : garudaCMS

 Target Server Type    : MySQL
 Target Server Version : 50527
 File Encoding         : utf-8

 Date: 04/28/2014 12:03:34 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `tAdminMenu`
-- ----------------------------
DROP TABLE IF EXISTS `tAdminMenu`;
CREATE TABLE `tAdminMenu` (
  `id` varchar(35) NOT NULL,
  `adminMenuGroup_id` varchar(35) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `isHidden` int(1) DEFAULT NULL,
  `linkURL` varchar(150) DEFAULT NULL,
  `isSuperAdmin` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `adminMenuGroup_id` (`adminMenuGroup_id`),
  CONSTRAINT `FK_cms_adminarea` FOREIGN KEY (`adminMenuGroup_id`) REFERENCES `tAdminMenuGroups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `tAdminMenu`
-- ----------------------------
BEGIN;
INSERT INTO `tAdminMenu` VALUES ('EEC33B71-96A7-4CD6-D6592127D5157638', 'EED289E0-EF35-4422-94072F773566899A', 'Pages', '1', '0', '/admin/page/', null), ('EEC33B98-9685-9337-36BDDE5A3DC551FA', 'EED28A2C-F606-74A8-340A29B0052C5F7B', 'Logout', '1', '0', '/admin/logout.cfm', null), ('EEC33BEE-B56F-00AA-41F241086D584CF5', 'EED28A53-A694-0D62-468CDF0883CC2766', 'Manage', '1', '0', '/admin/plugins/', null), ('EEC33C45-C37F-3DF8-D77775A33C2EF6E0', 'EED28A76-9154-F71E-9EE0C8EBBD5806EF', 'Menu group', '2', '0', '/admin/adminareaGroup/', '1'), ('EEC33C8A-ECAA-BB68-CF660EFC263457CC', 'EED28A8F-EDFA-672A-56F4F476226BB768', 'Menu', '2', '0', '/admin/adminarea/', '1'), ('EEC33CB4-BA31-16EE-5999CAC83A4E6918', 'EED28AA7-B16F-D560-C59CDFA97A9C49F3', 'Settings', '1', '0', '/admin/appsetting/', null), ('EEC33CDB-0BD4-EBC3-E4D6D2E91C25C988', 'EED28ABD-B525-FA5C-875D96770BC97E27', 'Files', '3', '0', '/admin/filemanager/', null), ('EEC33CFF-B735-90E1-BE92DA69C934425B', 'EED28AD4-E517-02BA-964D160E22B698F7', 'UI Component', '1', '0', '/admin/uicomponent/', null), ('EEC33D27-EC7E-CA83-D9E17A3BBF9E0CB3', 'EED28AEB-EBAE-91EB-9286333D446615AA', 'User groups', '1', '0', '/admin/usergroup/', null), ('EEC33D46-F6E8-1AC6-19C339FA589CD2FB', 'EF88C0F9-DD37-C4E9-CA38FB1670B1DCF7', 'User', '1', '0', '/admin/user/', null), ('EED289B5-EE0B-A460-C093304AB4F9A6E9', 'EED28A53-A694-0D62-468CDF0883CC2766', 'Manage', '1', '0', '/admin/plugins/manage.cfm', '1');
COMMIT;

-- ----------------------------
--  Table structure for `tAdminMenuGroups`
-- ----------------------------
DROP TABLE IF EXISTS `tAdminMenuGroups`;
CREATE TABLE `tAdminMenuGroups` (
  `id` varchar(35) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `isSuperAdmin` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `tAdminMenuGroups`
-- ----------------------------
BEGIN;
INSERT INTO `tAdminMenuGroups` VALUES ('EED289E0-EF35-4422-94072F773566899A', 'Page content', '1', null), ('EED28A2C-F606-74A8-340A29B0052C5F7B', 'Logout', '10', null), ('EED28A53-A694-0D62-468CDF0883CC2766', 'Modules', '2', null), ('EED28A76-9154-F71E-9EE0C8EBBD5806EF', 'Admin menu group', '4', '1'), ('EED28A8F-EDFA-672A-56F4F476226BB768', 'Admin menu', '5', '1'), ('EED28AA7-B16F-D560-C59CDFA97A9C49F3', 'Settings', '9', null), ('EED28ABD-B525-FA5C-875D96770BC97E27', 'File manager', '3', null), ('EED28AD4-E517-02BA-964D160E22B698F7', 'UI Component', '6', null), ('EED28AEB-EBAE-91EB-9286333D446615AA', 'User Groups', '7', null), ('EF88C0F9-DD37-C4E9-CA38FB1670B1DCF7', 'Users', '8', null), ('FCC665FF-E263-F102-51A15D4C52C3188D', 'update', '11', '1');
COMMIT;

-- ----------------------------
--  Table structure for `tAppsettings`
-- ----------------------------
DROP TABLE IF EXISTS `tAppsettings`;
CREATE TABLE `tAppsettings` (
  `id` varchar(35) NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `variable` varchar(150) DEFAULT NULL,
  `value` varchar(150) DEFAULT NULL,
  `isSystem` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `tAppsettings`
-- ----------------------------
BEGIN;
INSERT INTO `tAppsettings` VALUES ('EF88C116-BCAF-312C-1B8A47B5CBEF57CD', 'domain', 'domain', 'garuda.local', '1'), ('EF88C133-9BAC-4B28-4A8AAA93A41FCF79', 'tagline', 'tagline', 'Awesome Garuda CMS', '1'), ('EF88C14F-D5ED-AA88-4C4C1BB837083419', 'mailserverTLS', 'mailserverTLS', '', '0'), ('EF88C177-EE8D-291C-ECB87FA49D02D0DB', 'mailserverPOPPort', 'mailserverPOPPort', '', '0'), ('EF88C19D-BAF0-A7F8-2748456FF7F70A46', 'mailserverSMTPPort', 'mailserverSMTPPort', '', '0'), ('EF88C1BD-D726-4860-1F72A17B6D08E2EA', 'MailServerPassword', 'MailServerPassword', '', '0'), ('EF88C1DD-F1C7-F7DF-88B142FDE1F47702', 'MailServerUsername', 'MailServerUsername', '', '0'), ('EF88C1FF-B1F3-6511-6E36DCE2A0F589A0', 'mailserver', 'mailserver', '', '0'), ('EF88C223-BAAD-D5F5-D30632CF59FAA6F3', 'useDefaultSMTPServer', 'useDefaultSMTPServer', '', '0'), ('F01EBD13-A374-5BEA-B4467C90A9E196E1', 'analyticsCode', 'analyticsCode', null, '1'), ('F01EBD39-A2F6-4166-920FDC013EB3AA50', 'primaryuiRegion', 'primaryuiRegion', 'maincontent', '1'), ('F01EBD58-087E-AFA5-ADD6504D277984A7', 'uiRegionames', 'uiRegionames', 'header,footer,maincontent,rightsidebar', '1'), ('F01EBD74-9048-F765-D3D8655734C74F08', 'uiRegionCount', 'uiRegionCount', '4', '1'), ('F01EBD93-A1A1-2C01-F87B43C0FE3381A7', 'theme', 'theme', 'sandbox', '1'), ('F01EBDC2-FDB3-4678-337BEF03B9D25542', 'mailserverSSL', 'mailserverSSL', '', '0');
COMMIT;

-- ----------------------------
--  Table structure for `tPage_uicomponent`
-- ----------------------------
DROP TABLE IF EXISTS `tPage_uicomponent`;
CREATE TABLE `tPage_uicomponent` (
  `id` varchar(35) NOT NULL,
  `page_id` varchar(35) DEFAULT NULL,
  `uiComponent_id` varchar(35) DEFAULT NULL,
  `uiRegion` int(10) DEFAULT NULL,
  `order` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`),
  KEY `uiComponent_id` (`uiComponent_id`),
  CONSTRAINT `FK_x_tPage` FOREIGN KEY (`page_id`) REFERENCES `tPage` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_x_uiComponent` FOREIGN KEY (`uiComponent_id`) REFERENCES `tUicomponent` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `tPage_usergroup`
-- ----------------------------
DROP TABLE IF EXISTS `tPage_usergroup`;
CREATE TABLE `tPage_usergroup` (
  `xID` varchar(35) NOT NULL,
  `page_id` varchar(35) DEFAULT NULL,
  `userGroup_id` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`xID`),
  KEY `page_id` (`page_id`),
  KEY `userGroup_id` (`userGroup_id`),
  CONSTRAINT `FK_x_page_ug` FOREIGN KEY (`page_id`) REFERENCES `tPage` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_x_userGroup` FOREIGN KEY (`userGroup_id`) REFERENCES `tUsergroup` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `tPagecontents`
-- ----------------------------
DROP TABLE IF EXISTS `tPagecontents`;
CREATE TABLE `tPagecontents` (
  `id` varchar(35) NOT NULL,
  `Page_id` varchar(35) DEFAULT NULL,
  `template` varchar(300) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `linkTitle` varchar(150) DEFAULT NULL,
  `target` varchar(150) DEFAULT NULL,
  `urlTitle` varchar(150) DEFAULT NULL,
  `link` varchar(150) DEFAULT NULL,
  `metaTitle` varchar(250) DEFAULT NULL,
  `metaKeywords` varchar(600) DEFAULT NULL,
  `metaDescription` varchar(600) DEFAULT NULL,
  `content` text,
  `isPublished` bit(1) DEFAULT NULL,
  `insertDate` datetime DEFAULT NULL,
  `insertBy` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Page_id` (`Page_id`),
  KEY `insertBy` (`insertBy`),
  CONSTRAINT `FK_content_page` FOREIGN KEY (`Page_id`) REFERENCES `tPage` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_content_user` FOREIGN KEY (`insertBy`) REFERENCES `tUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `tPages`
-- ----------------------------
DROP TABLE IF EXISTS `tPages`;
CREATE TABLE `tPages` (
  `id` varchar(35) NOT NULL,
  `parent_id` varchar(35) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `isHidden` bit(1) DEFAULT NULL,
  `insertDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `isSecure` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `FK_tPage_tPage` FOREIGN KEY (`parent_id`) REFERENCES `tPage` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `tUicomponents`
-- ----------------------------
DROP TABLE IF EXISTS `tUicomponents`;
CREATE TABLE `tUicomponents` (
  `id` varchar(35) NOT NULL,
  `title` varchar(300) DEFAULT NULL,
  `content` text,
  `template` varchar(800) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `tUser_usergroup`
-- ----------------------------
DROP TABLE IF EXISTS `tUser_usergroup`;
CREATE TABLE `tUser_usergroup` (
  `xID` varchar(35) NOT NULL,
  `user_id` varchar(35) DEFAULT NULL,
  `userGroup_id` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`xID`),
  KEY `user_id` (`user_id`),
  KEY `userGroup_id` (`userGroup_id`),
  CONSTRAINT `FK_user_x_userGroup` FOREIGN KEY (`userGroup_id`) REFERENCES `tUsergroup` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_x_user` FOREIGN KEY (`user_id`) REFERENCES `tUser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `tUser_usergroup`
-- ----------------------------
BEGIN;
INSERT INTO `tUser_usergroup` VALUES ('F13DDF93-DF83-4CB6-0E267D9A893A8E85', 'F01EBDFE-B56A-3E9A-AE2B22F71DD65317', 'F13DDF29-D23E-55D8-BB417DB9CA4B7494'), ('F13DDFB7-B05C-0AB8-84CD04FF60D0C6DE', 'F01EBE1A-A386-D6DC-133EF4EFE2A9B2D8', 'F13DDF5D-A228-9956-BD978D776C36CD50'), ('F13DDFD7-E58B-BF18-FBC17B43541EA711', 'F01EBE33-C477-A1BA-D568234F557B7933', 'F13DDF78-CA81-36BD-71BFB9921D3EB5FB');
COMMIT;

-- ----------------------------
--  Table structure for `tUsergroup_adminmenu`
-- ----------------------------
DROP TABLE IF EXISTS `tUsergroup_adminmenu`;
CREATE TABLE `tUsergroup_adminmenu` (
  `xID` varchar(35) NOT NULL,
  `userGroup_id` varchar(35) DEFAULT NULL,
  `adminMenu_id` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`xID`),
  KEY `userGroup_id` (`userGroup_id`),
  KEY `adminMenu_id` (`adminMenu_id`),
  CONSTRAINT `FK_x_adminAreaID` FOREIGN KEY (`adminMenu_id`) REFERENCES `tAdminMenu` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_x_userGroupID` FOREIGN KEY (`userGroup_id`) REFERENCES `tUsergroup` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `tUsergroup_adminmenu`
-- ----------------------------
BEGIN;
INSERT INTO `tUsergroup_adminmenu` VALUES ('F13DDFF4-F730-5F97-75B0F47F7BDE16CC', 'F13DDF5D-A228-9956-BD978D776C36CD50', 'EEC33B98-9685-9337-36BDDE5A3DC551FA'), ('F13DE013-9846-F36A-782D4906C692F13D', 'F13DDF78-CA81-36BD-71BFB9921D3EB5FB', 'EEC33B98-9685-9337-36BDDE5A3DC551FA');
COMMIT;

-- ----------------------------
--  Table structure for `tUsergroups`
-- ----------------------------
DROP TABLE IF EXISTS `tUsergroups`;
CREATE TABLE `tUsergroups` (
  `id` varchar(35) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `isAdmin` bit(1) DEFAULT NULL,
  `isSuperAdmin` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `tUsergroups`
-- ----------------------------
BEGIN;
INSERT INTO `tUsergroups` VALUES ('F13DDF29-D23E-55D8-BB417DB9CA4B7494', 'superadmin', b'1', b'1'), ('F13DDF5D-A228-9956-BD978D776C36CD50', 'admin', b'1', null), ('F13DDF78-CA81-36BD-71BFB9921D3EB5FB', 'public', null, null);
COMMIT;

-- ----------------------------
--  Table structure for `tUsers`
-- ----------------------------
DROP TABLE IF EXISTS `tUsers`;
CREATE TABLE `tUsers` (
  `id` varchar(35) NOT NULL,
  `firstName` varchar(75) DEFAULT NULL,
  `lastName` varchar(75) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `thumb` varchar(1000) DEFAULT NULL,
  `photo` varchar(1000) DEFAULT NULL,
  `summary` varchar(5000) DEFAULT NULL,
  `detailedBio` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `tUsers`
-- ----------------------------
BEGIN;
INSERT INTO `tUsers` VALUES ('F01EBDFE-B56A-3E9A-AE2B22F71DD65317', 'Default', 'Super admin', 'sadmin', 'sadmin', 'admin@adminc.om', '', '', '', ''), ('F01EBE1A-A386-D6DC-133EF4EFE2A9B2D8', 'Default', 'admin', 'admin', 'admin', 'sample@gmail.com', '', '', '', ''), ('F01EBE33-C477-A1BA-D568234F557B7933', 'Default', 'user', 'user', 'user', 'user@user.com', null, null, null, null), ('F01EBE4B-BFA6-802E-E7B496B3ECA4950F', 'non ug', 'user', 'none', 'none', 'none@noe.com', null, null, null, null);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
