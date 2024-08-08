-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 08, 2024 at 03:08 PM
-- Server version: 10.6.18-MariaDB-cll-lve
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demoacis_dms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblACLs`
--

CREATE TABLE `tblACLs` (
  `id` int(11) NOT NULL,
  `target` int(11) NOT NULL DEFAULT 0,
  `targetType` tinyint(4) NOT NULL DEFAULT 0,
  `userID` int(11) NOT NULL DEFAULT -1,
  `groupID` int(11) NOT NULL DEFAULT -1,
  `mode` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblAcos`
--

CREATE TABLE `tblAcos` (
  `id` int(11) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `model` text NOT NULL,
  `foreignid` int(11) NOT NULL DEFAULT 0,
  `alias` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tblAcos`
--

INSERT INTO `tblAcos` (`id`, `parent`, `model`, `foreignid`, `alias`) VALUES
(1, 0, '', 0, 'Views'),
(2, 1, '', 0, 'Calendar'),
(3, 2, '', 0, 'show'),
(4, 1, '', 0, 'AdminTools'),
(5, 4, '', 0, 'show'),
(6, 1, '', 0, 'Tasks'),
(7, 6, '', 0, 'menuTasks'),
(8, 1, '', 0, 'Dashboard'),
(9, 8, '', 0, 'show'),
(10, 1, '', 0, 'MyDocuments'),
(11, 10, '', 0, 'show'),
(12, 1, '', 0, 'MyAccount'),
(13, 12, '', 0, 'show'),
(14, 1, '', 0, 'TransmittalMgr'),
(15, 14, '', 0, 'show'),
(16, 0, '', 0, 'Controllers'),
(17, 16, '', 0, 'AddSubFolder'),
(18, 17, '', 0, 'run'),
(19, 16, '', 0, 'AddDocument'),
(20, 19, '', 0, 'run'),
(21, 16, '', 0, 'EditFolder'),
(22, 21, '', 0, 'run'),
(23, 16, '', 0, 'MoveFolder'),
(24, 23, '', 0, 'run'),
(25, 1, '', 0, 'FolderAccess'),
(26, 25, '', 0, 'show'),
(27, 1, '', 0, 'FolderNotify'),
(28, 27, '', 0, 'show'),
(29, 1, '', 0, 'AddSubFolder'),
(30, 29, '', 0, 'show'),
(31, 29, '', 0, 'webrootjs'),
(32, 29, '', 0, 'footerjs'),
(33, 29, '', 0, 'js'),
(34, 1, '', 0, 'EditFolder'),
(35, 34, '', 0, 'show'),
(36, 34, '', 0, 'webrootjs'),
(37, 34, '', 0, 'footerjs'),
(38, 34, '', 0, 'js'),
(39, 1, '', 0, 'UsrMgr'),
(40, 39, '', 0, 'show'),
(41, 1, '', 0, 'RoleMgr'),
(42, 41, '', 0, 'show'),
(43, 1, '', 0, 'GroupMgr'),
(44, 43, '', 0, 'show'),
(45, 1, '', 0, 'UserList'),
(46, 45, '', 0, 'show'),
(47, 1, '', 0, 'Acl'),
(48, 47, '', 0, 'show'),
(49, 1, '', 0, 'DefaultKeywords'),
(50, 49, '', 0, 'show'),
(51, 1, '', 0, 'Categories'),
(52, 51, '', 0, 'show'),
(53, 1, '', 0, 'AttributeMgr'),
(54, 53, '', 0, 'show'),
(55, 1, '', 0, 'WorkflowMgr'),
(56, 55, '', 0, 'show'),
(57, 1, '', 0, 'WorkflowStatesMgr'),
(58, 57, '', 0, 'show'),
(59, 1, '', 0, 'WorkflowActionsMgr'),
(60, 59, '', 0, 'show'),
(61, 1, '', 0, 'BackupTools'),
(62, 61, '', 0, 'show'),
(63, 1, '', 0, 'LogManagement'),
(64, 63, '', 0, 'show'),
(65, 1, '', 0, 'ImportFS'),
(66, 65, '', 0, 'show'),
(67, 1, '', 0, 'ImportUsers'),
(68, 67, '', 0, 'show'),
(69, 1, '', 0, 'Statistic'),
(70, 69, '', 0, 'show'),
(71, 1, '', 0, 'Charts'),
(72, 71, '', 0, 'show'),
(73, 1, '', 0, 'Timeline'),
(74, 73, '', 0, 'show'),
(75, 1, '', 0, 'SchedulerTaskMgr'),
(76, 75, '', 0, 'show'),
(77, 1, '', 0, 'ObjectCheck'),
(78, 77, '', 0, 'show'),
(79, 1, '', 0, 'ExpiredDocuments'),
(80, 79, '', 0, 'show'),
(81, 1, '', 0, 'ExtensionMgr'),
(82, 81, '', 0, 'show'),
(83, 1, '', 0, 'ClearCache'),
(84, 83, '', 0, 'show'),
(85, 1, '', 0, 'Info'),
(86, 85, '', 0, 'show'),
(87, 1, '', 0, 'Hooks'),
(88, 87, '', 0, 'show'),
(89, 1, '', 0, 'NotificationServices'),
(90, 89, '', 0, 'show'),
(91, 1, '', 0, 'ConversionServices'),
(92, 91, '', 0, 'show'),
(93, 1, '', 0, 'Settings'),
(94, 93, '', 0, 'show'),
(95, 4, '', 0, 'webrootjs'),
(96, 4, '', 0, 'footerjs'),
(97, 1, '', 0, 'AddDocument'),
(98, 97, '', 0, 'show'),
(99, 19, '', 0, 'setOwner'),
(100, 97, '', 0, 'webrootjs'),
(101, 97, '', 0, 'footerjs'),
(102, 97, '', 0, 'js'),
(103, 81, '', 0, 'footerjs'),
(104, 81, '', 0, 'webrootjs'),
(105, 81, '', 0, 'js'),
(106, 81, '', 0, 'installedList'),
(107, 85, '', 0, 'webrootjs'),
(108, 85, '', 0, 'footerjs');

-- --------------------------------------------------------

--
-- Table structure for table `tblAros`
--

CREATE TABLE `tblAros` (
  `id` int(11) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `model` text NOT NULL,
  `foreignid` int(11) NOT NULL DEFAULT 0,
  `alias` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tblAros`
--

INSERT INTO `tblAros` (`id`, `parent`, `model`, `foreignid`, `alias`) VALUES
(1, 0, 'Role', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblArosAcos`
--

CREATE TABLE `tblArosAcos` (
  `id` int(11) NOT NULL,
  `aro` int(11) NOT NULL DEFAULT 0,
  `aco` int(11) NOT NULL DEFAULT 0,
  `create` tinyint(4) NOT NULL DEFAULT -1,
  `read` tinyint(4) NOT NULL DEFAULT -1,
  `update` tinyint(4) NOT NULL DEFAULT -1,
  `delete` tinyint(4) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblAttributeDefinitions`
--

CREATE TABLE `tblAttributeDefinitions` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `objtype` tinyint(4) NOT NULL DEFAULT 0,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `multiple` tinyint(4) NOT NULL DEFAULT 0,
  `minvalues` int(11) NOT NULL DEFAULT 0,
  `maxvalues` int(11) NOT NULL DEFAULT 0,
  `valueset` text DEFAULT NULL,
  `regex` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblCachedAccess`
--

CREATE TABLE `tblCachedAccess` (
  `id` int(11) NOT NULL,
  `document` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `mode` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblCategory`
--

CREATE TABLE `tblCategory` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblDocumentApproveLog`
--

CREATE TABLE `tblDocumentApproveLog` (
  `approveLogID` int(11) NOT NULL,
  `approveID` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  `date` datetime NOT NULL,
  `userID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblDocumentApprovers`
--

CREATE TABLE `tblDocumentApprovers` (
  `approveID` int(11) NOT NULL,
  `documentID` int(11) NOT NULL DEFAULT 0,
  `version` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `required` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblDocumentAttributes`
--

CREATE TABLE `tblDocumentAttributes` (
  `id` int(11) NOT NULL,
  `document` int(11) DEFAULT NULL,
  `attrdef` int(11) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblDocumentCategory`
--

CREATE TABLE `tblDocumentCategory` (
  `categoryID` int(11) NOT NULL DEFAULT 0,
  `documentID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblDocumentCheckOuts`
--

CREATE TABLE `tblDocumentCheckOuts` (
  `document` int(11) NOT NULL DEFAULT 0,
  `version` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `userID` int(11) NOT NULL DEFAULT 0,
  `date` datetime NOT NULL,
  `filename` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblDocumentContent`
--

CREATE TABLE `tblDocumentContent` (
  `id` int(11) NOT NULL,
  `document` int(11) NOT NULL DEFAULT 0,
  `version` smallint(5) UNSIGNED NOT NULL,
  `comment` text DEFAULT NULL,
  `date` int(12) DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `dir` varchar(255) NOT NULL DEFAULT '',
  `orgFileName` varchar(150) NOT NULL DEFAULT '',
  `fileType` varchar(10) NOT NULL DEFAULT '',
  `mimeType` varchar(100) NOT NULL DEFAULT '',
  `fileSize` bigint(20) DEFAULT NULL,
  `checksum` char(32) DEFAULT NULL,
  `revisiondate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblDocumentContentAttributes`
--

CREATE TABLE `tblDocumentContentAttributes` (
  `id` int(11) NOT NULL,
  `content` int(11) DEFAULT NULL,
  `attrdef` int(11) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblDocumentFiles`
--

CREATE TABLE `tblDocumentFiles` (
  `id` int(11) NOT NULL,
  `document` int(11) NOT NULL DEFAULT 0,
  `version` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `public` tinyint(1) NOT NULL DEFAULT 0,
  `userID` int(11) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date` int(12) DEFAULT NULL,
  `dir` varchar(255) NOT NULL DEFAULT '',
  `orgFileName` varchar(150) NOT NULL DEFAULT '',
  `fileType` varchar(10) NOT NULL DEFAULT '',
  `mimeType` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblDocumentLinks`
--

CREATE TABLE `tblDocumentLinks` (
  `id` int(11) NOT NULL,
  `document` int(11) NOT NULL DEFAULT 0,
  `target` int(11) NOT NULL DEFAULT 0,
  `userID` int(11) NOT NULL DEFAULT 0,
  `public` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblDocumentLocks`
--

CREATE TABLE `tblDocumentLocks` (
  `document` int(11) NOT NULL DEFAULT 0,
  `userID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblDocumentReceiptLog`
--

CREATE TABLE `tblDocumentReceiptLog` (
  `receiptLogID` int(11) NOT NULL,
  `receiptID` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  `date` datetime NOT NULL,
  `userID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblDocumentRecipients`
--

CREATE TABLE `tblDocumentRecipients` (
  `receiptID` int(11) NOT NULL,
  `documentID` int(11) NOT NULL DEFAULT 0,
  `version` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `required` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblDocumentReviewers`
--

CREATE TABLE `tblDocumentReviewers` (
  `reviewID` int(11) NOT NULL,
  `documentID` int(11) NOT NULL DEFAULT 0,
  `version` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `required` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblDocumentReviewLog`
--

CREATE TABLE `tblDocumentReviewLog` (
  `reviewLogID` int(11) NOT NULL,
  `reviewID` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  `date` datetime NOT NULL,
  `userID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblDocumentRevisionLog`
--

CREATE TABLE `tblDocumentRevisionLog` (
  `revisionLogID` int(11) NOT NULL,
  `revisionID` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  `date` datetime NOT NULL,
  `userID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblDocumentRevisors`
--

CREATE TABLE `tblDocumentRevisors` (
  `revisionID` int(11) NOT NULL,
  `documentID` int(11) NOT NULL DEFAULT 0,
  `version` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `required` int(11) NOT NULL DEFAULT 0,
  `startdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblDocuments`
--

CREATE TABLE `tblDocuments` (
  `id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date` int(12) DEFAULT NULL,
  `expires` int(12) DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  `folder` int(11) DEFAULT NULL,
  `folderList` text NOT NULL,
  `inheritAccess` tinyint(1) NOT NULL DEFAULT 1,
  `defaultAccess` tinyint(4) NOT NULL DEFAULT 0,
  `locked` int(11) NOT NULL DEFAULT -1,
  `keywords` text NOT NULL,
  `sequence` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblDocumentStatus`
--

CREATE TABLE `tblDocumentStatus` (
  `statusID` int(11) NOT NULL,
  `documentID` int(11) NOT NULL DEFAULT 0,
  `version` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblDocumentStatusLog`
--

CREATE TABLE `tblDocumentStatusLog` (
  `statusLogID` int(11) NOT NULL,
  `statusID` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  `date` datetime NOT NULL,
  `userID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblEvents`
--

CREATE TABLE `tblEvents` (
  `id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `start` int(12) DEFAULT NULL,
  `stop` int(12) DEFAULT NULL,
  `date` int(12) DEFAULT NULL,
  `userID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblFolderAttributes`
--

CREATE TABLE `tblFolderAttributes` (
  `id` int(11) NOT NULL,
  `folder` int(11) DEFAULT NULL,
  `attrdef` int(11) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblFolders`
--

CREATE TABLE `tblFolders` (
  `id` int(11) NOT NULL,
  `name` varchar(70) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `folderList` text NOT NULL,
  `comment` text DEFAULT NULL,
  `date` int(12) DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  `inheritAccess` tinyint(1) NOT NULL DEFAULT 1,
  `defaultAccess` tinyint(4) NOT NULL DEFAULT 0,
  `sequence` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tblFolders`
--

INSERT INTO `tblFolders` (`id`, `name`, `parent`, `folderList`, `comment`, `date`, `owner`, `inheritAccess`, `defaultAccess`, `sequence`) VALUES
(1, 'DMS', 0, '', 'DMS root', 1721825077, 1, 0, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblGroupMembers`
--

CREATE TABLE `tblGroupMembers` (
  `groupID` int(11) NOT NULL DEFAULT 0,
  `userID` int(11) NOT NULL DEFAULT 0,
  `manager` smallint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblGroups`
--

CREATE TABLE `tblGroups` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblKeywordCategories`
--

CREATE TABLE `tblKeywordCategories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `owner` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblKeywords`
--

CREATE TABLE `tblKeywords` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL DEFAULT 0,
  `keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblMandatoryApprovers`
--

CREATE TABLE `tblMandatoryApprovers` (
  `userID` int(11) NOT NULL DEFAULT 0,
  `approverUserID` int(11) NOT NULL DEFAULT 0,
  `approverGroupID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblMandatoryReviewers`
--

CREATE TABLE `tblMandatoryReviewers` (
  `userID` int(11) NOT NULL DEFAULT 0,
  `reviewerUserID` int(11) NOT NULL DEFAULT 0,
  `reviewerGroupID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblNotify`
--

CREATE TABLE `tblNotify` (
  `target` int(11) NOT NULL DEFAULT 0,
  `targetType` int(11) NOT NULL DEFAULT 0,
  `userID` int(11) NOT NULL DEFAULT -1,
  `groupID` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblRoles`
--

CREATE TABLE `tblRoles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `role` smallint(1) NOT NULL DEFAULT 0,
  `noaccess` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tblRoles`
--

INSERT INTO `tblRoles` (`id`, `name`, `role`, `noaccess`) VALUES
(1, 'Admin', 1, ''),
(2, 'Guest', 2, ''),
(3, 'User', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tblSchedulerTask`
--

CREATE TABLE `tblSchedulerTask` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `disabled` smallint(1) NOT NULL DEFAULT 0,
  `extension` varchar(100) DEFAULT NULL,
  `task` varchar(100) DEFAULT NULL,
  `frequency` varchar(100) DEFAULT NULL,
  `params` text DEFAULT NULL,
  `nextrun` datetime DEFAULT NULL,
  `lastrun` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblSessions`
--

CREATE TABLE `tblSessions` (
  `id` varchar(50) NOT NULL DEFAULT '',
  `userID` int(11) NOT NULL DEFAULT 0,
  `lastAccess` int(11) NOT NULL DEFAULT 0,
  `theme` varchar(30) NOT NULL DEFAULT '',
  `language` varchar(30) NOT NULL DEFAULT '',
  `clipboard` text DEFAULT NULL,
  `su` int(11) DEFAULT NULL,
  `splashmsg` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tblSessions`
--

INSERT INTO `tblSessions` (`id`, `userID`, `lastAccess`, `theme`, `language`, `clipboard`, `su`, `splashmsg`) VALUES
('ba5141a6e2a11ff1ed2ce54c040648c5', 1, 1721902390, 'bootstrap4', 'en_GB', '{\"docs\":[],\"folders\":[\"1\"]}', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblTransmittalItems`
--

CREATE TABLE `tblTransmittalItems` (
  `id` int(11) NOT NULL,
  `transmittal` int(11) NOT NULL DEFAULT 0,
  `document` int(11) DEFAULT NULL,
  `version` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblTransmittals`
--

CREATE TABLE `tblTransmittals` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `comment` text NOT NULL,
  `userID` int(11) NOT NULL DEFAULT 0,
  `date` datetime DEFAULT NULL,
  `public` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblUserImages`
--

CREATE TABLE `tblUserImages` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL DEFAULT 0,
  `image` blob NOT NULL,
  `mimeType` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblUserPasswordHistory`
--

CREATE TABLE `tblUserPasswordHistory` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL DEFAULT 0,
  `pwd` varchar(50) DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblUserPasswordRequest`
--

CREATE TABLE `tblUserPasswordRequest` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL DEFAULT 0,
  `hash` varchar(50) DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblUsers`
--

CREATE TABLE `tblUsers` (
  `id` int(11) NOT NULL,
  `login` varchar(50) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `secret` varchar(50) DEFAULT NULL,
  `fullName` varchar(100) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `language` varchar(32) NOT NULL,
  `theme` varchar(32) NOT NULL,
  `comment` text NOT NULL,
  `role` int(11) NOT NULL,
  `hidden` smallint(1) NOT NULL DEFAULT 0,
  `pwdExpiration` datetime DEFAULT NULL,
  `loginfailures` tinyint(4) NOT NULL DEFAULT 0,
  `disabled` smallint(1) NOT NULL DEFAULT 0,
  `quota` bigint(20) DEFAULT NULL,
  `homefolder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tblUsers`
--

INSERT INTO `tblUsers` (`id`, `login`, `pwd`, `secret`, `fullName`, `email`, `language`, `theme`, `comment`, `role`, `hidden`, `pwdExpiration`, `loginfailures`, `disabled`, `quota`, `homefolder`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '', 'Administrator', 'info@seeddms.org', 'en_GB', '', '', 1, 0, NULL, 0, 0, 0, NULL),
(2, 'guest', NULL, '', 'Guest User', NULL, '', '', '', 2, 0, NULL, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblUserSubstitutes`
--

CREATE TABLE `tblUserSubstitutes` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `substitute` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblVersion`
--

CREATE TABLE `tblVersion` (
  `date` datetime NOT NULL,
  `major` smallint(6) DEFAULT NULL,
  `minor` smallint(6) DEFAULT NULL,
  `subminor` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tblVersion`
--

INSERT INTO `tblVersion` (`date`, `major`, `minor`, `subminor`) VALUES
('2024-07-24 08:44:37', 6, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblWorkflowActions`
--

CREATE TABLE `tblWorkflowActions` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblWorkflowDocumentContent`
--

CREATE TABLE `tblWorkflowDocumentContent` (
  `id` int(11) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `workflow` int(11) DEFAULT NULL,
  `document` int(11) DEFAULT NULL,
  `version` smallint(5) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblWorkflowLog`
--

CREATE TABLE `tblWorkflowLog` (
  `id` int(11) NOT NULL,
  `workflowdocumentcontent` int(11) NOT NULL DEFAULT 0,
  `userid` int(11) DEFAULT NULL,
  `transition` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblWorkflowMandatoryWorkflow`
--

CREATE TABLE `tblWorkflowMandatoryWorkflow` (
  `userid` int(11) DEFAULT NULL,
  `workflow` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblWorkflows`
--

CREATE TABLE `tblWorkflows` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `initstate` int(11) NOT NULL,
  `layoutdata` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblWorkflowStates`
--

CREATE TABLE `tblWorkflowStates` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `visibility` smallint(5) DEFAULT 0,
  `maxtime` int(11) DEFAULT 0,
  `precondfunc` text DEFAULT NULL,
  `documentstatus` smallint(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblWorkflowTransitionGroups`
--

CREATE TABLE `tblWorkflowTransitionGroups` (
  `id` int(11) NOT NULL,
  `transition` int(11) DEFAULT NULL,
  `groupid` int(11) DEFAULT NULL,
  `minusers` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblWorkflowTransitions`
--

CREATE TABLE `tblWorkflowTransitions` (
  `id` int(11) NOT NULL,
  `workflow` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `action` int(11) DEFAULT NULL,
  `nextstate` int(11) DEFAULT NULL,
  `maxtime` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblWorkflowTransitionUsers`
--

CREATE TABLE `tblWorkflowTransitionUsers` (
  `id` int(11) NOT NULL,
  `transition` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblACLs`
--
ALTER TABLE `tblACLs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblAcos`
--
ALTER TABLE `tblAcos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblAros`
--
ALTER TABLE `tblAros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblArosAcos`
--
ALTER TABLE `tblArosAcos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `aco` (`aco`,`aro`),
  ADD KEY `tblArosAcos_aros` (`aro`);

--
-- Indexes for table `tblAttributeDefinitions`
--
ALTER TABLE `tblAttributeDefinitions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `tblCachedAccess`
--
ALTER TABLE `tblCachedAccess`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tblCachedAccess_document` (`document`),
  ADD KEY `tblCachedAccess_user` (`user`);

--
-- Indexes for table `tblCategory`
--
ALTER TABLE `tblCategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblDocumentApproveLog`
--
ALTER TABLE `tblDocumentApproveLog`
  ADD PRIMARY KEY (`approveLogID`),
  ADD KEY `tblDocumentApproveLog_approve` (`approveID`),
  ADD KEY `tblDocumentApproveLog_user` (`userID`);

--
-- Indexes for table `tblDocumentApprovers`
--
ALTER TABLE `tblDocumentApprovers`
  ADD PRIMARY KEY (`approveID`),
  ADD UNIQUE KEY `documentID` (`documentID`,`version`,`type`,`required`),
  ADD KEY `indDocumentApproversRequired` (`required`);

--
-- Indexes for table `tblDocumentAttributes`
--
ALTER TABLE `tblDocumentAttributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `document` (`document`,`attrdef`),
  ADD KEY `tblDocumentAttributes_attrdef` (`attrdef`);

--
-- Indexes for table `tblDocumentCategory`
--
ALTER TABLE `tblDocumentCategory`
  ADD KEY `tblDocumentCategory_category` (`categoryID`),
  ADD KEY `tblDocumentCategory_document` (`documentID`);

--
-- Indexes for table `tblDocumentCheckOuts`
--
ALTER TABLE `tblDocumentCheckOuts`
  ADD PRIMARY KEY (`document`),
  ADD KEY `tblDocumentCheckOuts_user` (`userID`);

--
-- Indexes for table `tblDocumentContent`
--
ALTER TABLE `tblDocumentContent`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `document` (`document`,`version`);

--
-- Indexes for table `tblDocumentContentAttributes`
--
ALTER TABLE `tblDocumentContentAttributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `content` (`content`,`attrdef`),
  ADD KEY `tblDocumentContentAttributes_attrdef` (`attrdef`);

--
-- Indexes for table `tblDocumentFiles`
--
ALTER TABLE `tblDocumentFiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tblDocumentFiles_document` (`document`),
  ADD KEY `tblDocumentFiles_user` (`userID`);

--
-- Indexes for table `tblDocumentLinks`
--
ALTER TABLE `tblDocumentLinks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tblDocumentLinks_document` (`document`),
  ADD KEY `tblDocumentLinks_target` (`target`),
  ADD KEY `tblDocumentLinks_user` (`userID`);

--
-- Indexes for table `tblDocumentLocks`
--
ALTER TABLE `tblDocumentLocks`
  ADD PRIMARY KEY (`document`),
  ADD KEY `tblDocumentLocks_user` (`userID`);

--
-- Indexes for table `tblDocumentReceiptLog`
--
ALTER TABLE `tblDocumentReceiptLog`
  ADD PRIMARY KEY (`receiptLogID`),
  ADD KEY `tblDocumentReceiptLog_receipt` (`receiptID`),
  ADD KEY `tblDocumentReceiptLog_user` (`userID`);

--
-- Indexes for table `tblDocumentRecipients`
--
ALTER TABLE `tblDocumentRecipients`
  ADD PRIMARY KEY (`receiptID`),
  ADD UNIQUE KEY `documentID` (`documentID`,`version`,`type`,`required`),
  ADD KEY `indDocumentRecipientsRequired` (`required`);

--
-- Indexes for table `tblDocumentReviewers`
--
ALTER TABLE `tblDocumentReviewers`
  ADD PRIMARY KEY (`reviewID`),
  ADD UNIQUE KEY `documentID` (`documentID`,`version`,`type`,`required`),
  ADD KEY `indDocumentReviewersRequired` (`required`);

--
-- Indexes for table `tblDocumentReviewLog`
--
ALTER TABLE `tblDocumentReviewLog`
  ADD PRIMARY KEY (`reviewLogID`),
  ADD KEY `tblDocumentReviewLog_review` (`reviewID`),
  ADD KEY `tblDocumentReviewLog_user` (`userID`);

--
-- Indexes for table `tblDocumentRevisionLog`
--
ALTER TABLE `tblDocumentRevisionLog`
  ADD PRIMARY KEY (`revisionLogID`),
  ADD KEY `tblDocumentRevisionLog_revision` (`revisionID`),
  ADD KEY `tblDocumentRevisionLog_user` (`userID`);

--
-- Indexes for table `tblDocumentRevisors`
--
ALTER TABLE `tblDocumentRevisors`
  ADD PRIMARY KEY (`revisionID`),
  ADD UNIQUE KEY `documentID` (`documentID`,`version`,`type`,`required`),
  ADD KEY `indDocumentRevisorsRequired` (`required`);

--
-- Indexes for table `tblDocuments`
--
ALTER TABLE `tblDocuments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tblDocuments_folder` (`folder`),
  ADD KEY `tblDocuments_owner` (`owner`);

--
-- Indexes for table `tblDocumentStatus`
--
ALTER TABLE `tblDocumentStatus`
  ADD PRIMARY KEY (`statusID`),
  ADD UNIQUE KEY `documentID` (`documentID`,`version`);

--
-- Indexes for table `tblDocumentStatusLog`
--
ALTER TABLE `tblDocumentStatusLog`
  ADD PRIMARY KEY (`statusLogID`),
  ADD KEY `statusID` (`statusID`),
  ADD KEY `tblDocumentStatusLog_user` (`userID`);

--
-- Indexes for table `tblEvents`
--
ALTER TABLE `tblEvents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblFolderAttributes`
--
ALTER TABLE `tblFolderAttributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `folder` (`folder`,`attrdef`),
  ADD KEY `tblFolderAttributes_attrdef` (`attrdef`);

--
-- Indexes for table `tblFolders`
--
ALTER TABLE `tblFolders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`),
  ADD KEY `tblFolders_owner` (`owner`);

--
-- Indexes for table `tblGroupMembers`
--
ALTER TABLE `tblGroupMembers`
  ADD UNIQUE KEY `groupID` (`groupID`,`userID`),
  ADD KEY `tblGroupMembers_user` (`userID`);

--
-- Indexes for table `tblGroups`
--
ALTER TABLE `tblGroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblKeywordCategories`
--
ALTER TABLE `tblKeywordCategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblKeywords`
--
ALTER TABLE `tblKeywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tblKeywords_category` (`category`);

--
-- Indexes for table `tblMandatoryApprovers`
--
ALTER TABLE `tblMandatoryApprovers`
  ADD PRIMARY KEY (`userID`,`approverUserID`,`approverGroupID`);

--
-- Indexes for table `tblMandatoryReviewers`
--
ALTER TABLE `tblMandatoryReviewers`
  ADD PRIMARY KEY (`userID`,`reviewerUserID`,`reviewerGroupID`);

--
-- Indexes for table `tblNotify`
--
ALTER TABLE `tblNotify`
  ADD PRIMARY KEY (`target`,`targetType`,`userID`,`groupID`);

--
-- Indexes for table `tblRoles`
--
ALTER TABLE `tblRoles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `tblSchedulerTask`
--
ALTER TABLE `tblSchedulerTask`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblSessions`
--
ALTER TABLE `tblSessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tblSessions_user` (`userID`);

--
-- Indexes for table `tblTransmittalItems`
--
ALTER TABLE `tblTransmittalItems`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transmittal` (`transmittal`,`document`,`version`),
  ADD KEY `tblTransmittalItems_document` (`document`);

--
-- Indexes for table `tblTransmittals`
--
ALTER TABLE `tblTransmittals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tblTransmittals_user` (`userID`);

--
-- Indexes for table `tblUserImages`
--
ALTER TABLE `tblUserImages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tblUserImages_user` (`userID`);

--
-- Indexes for table `tblUserPasswordHistory`
--
ALTER TABLE `tblUserPasswordHistory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tblUserPasswordHistory_user` (`userID`);

--
-- Indexes for table `tblUserPasswordRequest`
--
ALTER TABLE `tblUserPasswordRequest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tblUserPasswordRequest_user` (`userID`);

--
-- Indexes for table `tblUsers`
--
ALTER TABLE `tblUsers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`),
  ADD KEY `tblUsers_role` (`role`),
  ADD KEY `tblUsers_homefolder` (`homefolder`);

--
-- Indexes for table `tblUserSubstitutes`
--
ALTER TABLE `tblUserSubstitutes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user` (`user`,`substitute`);

--
-- Indexes for table `tblWorkflowActions`
--
ALTER TABLE `tblWorkflowActions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblWorkflowDocumentContent`
--
ALTER TABLE `tblWorkflowDocumentContent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tblWorkflowDocument_document` (`document`),
  ADD KEY `tblWorkflowDocument_workflow` (`workflow`),
  ADD KEY `tblWorkflowDocument_state` (`state`),
  ADD KEY `tblWorkflowDocumentContent_parent` (`parent`);

--
-- Indexes for table `tblWorkflowLog`
--
ALTER TABLE `tblWorkflowLog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tblWorkflowLog_userid` (`userid`),
  ADD KEY `tblWorkflowLog_transition` (`transition`),
  ADD KEY `tblWorkflowLog_workflowdocumentcontent` (`workflowdocumentcontent`);

--
-- Indexes for table `tblWorkflowMandatoryWorkflow`
--
ALTER TABLE `tblWorkflowMandatoryWorkflow`
  ADD UNIQUE KEY `userid` (`userid`,`workflow`),
  ADD KEY `tblWorkflowMandatoryWorkflow_workflow` (`workflow`);

--
-- Indexes for table `tblWorkflows`
--
ALTER TABLE `tblWorkflows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tblWorkflow_initstate` (`initstate`);

--
-- Indexes for table `tblWorkflowStates`
--
ALTER TABLE `tblWorkflowStates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblWorkflowTransitionGroups`
--
ALTER TABLE `tblWorkflowTransitionGroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tblWorkflowTransitionGroups_transition` (`transition`),
  ADD KEY `tblWorkflowTransitionGroups_groupid` (`groupid`);

--
-- Indexes for table `tblWorkflowTransitions`
--
ALTER TABLE `tblWorkflowTransitions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tblWorkflowTransitions_workflow` (`workflow`),
  ADD KEY `tblWorkflowTransitions_state` (`state`),
  ADD KEY `tblWorkflowTransitions_action` (`action`),
  ADD KEY `tblWorkflowTransitions_nextstate` (`nextstate`);

--
-- Indexes for table `tblWorkflowTransitionUsers`
--
ALTER TABLE `tblWorkflowTransitionUsers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tblWorkflowTransitionUsers_transition` (`transition`),
  ADD KEY `tblWorkflowTransitionUsers_userid` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblACLs`
--
ALTER TABLE `tblACLs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblAcos`
--
ALTER TABLE `tblAcos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `tblAros`
--
ALTER TABLE `tblAros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblArosAcos`
--
ALTER TABLE `tblArosAcos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblAttributeDefinitions`
--
ALTER TABLE `tblAttributeDefinitions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblCachedAccess`
--
ALTER TABLE `tblCachedAccess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblCategory`
--
ALTER TABLE `tblCategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblDocumentApproveLog`
--
ALTER TABLE `tblDocumentApproveLog`
  MODIFY `approveLogID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblDocumentApprovers`
--
ALTER TABLE `tblDocumentApprovers`
  MODIFY `approveID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblDocumentAttributes`
--
ALTER TABLE `tblDocumentAttributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblDocumentContent`
--
ALTER TABLE `tblDocumentContent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblDocumentContentAttributes`
--
ALTER TABLE `tblDocumentContentAttributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblDocumentFiles`
--
ALTER TABLE `tblDocumentFiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblDocumentLinks`
--
ALTER TABLE `tblDocumentLinks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblDocumentReceiptLog`
--
ALTER TABLE `tblDocumentReceiptLog`
  MODIFY `receiptLogID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblDocumentRecipients`
--
ALTER TABLE `tblDocumentRecipients`
  MODIFY `receiptID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblDocumentReviewers`
--
ALTER TABLE `tblDocumentReviewers`
  MODIFY `reviewID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblDocumentReviewLog`
--
ALTER TABLE `tblDocumentReviewLog`
  MODIFY `reviewLogID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblDocumentRevisionLog`
--
ALTER TABLE `tblDocumentRevisionLog`
  MODIFY `revisionLogID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblDocumentRevisors`
--
ALTER TABLE `tblDocumentRevisors`
  MODIFY `revisionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblDocuments`
--
ALTER TABLE `tblDocuments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblDocumentStatus`
--
ALTER TABLE `tblDocumentStatus`
  MODIFY `statusID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblDocumentStatusLog`
--
ALTER TABLE `tblDocumentStatusLog`
  MODIFY `statusLogID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblEvents`
--
ALTER TABLE `tblEvents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblFolderAttributes`
--
ALTER TABLE `tblFolderAttributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblFolders`
--
ALTER TABLE `tblFolders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblGroups`
--
ALTER TABLE `tblGroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblKeywordCategories`
--
ALTER TABLE `tblKeywordCategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblKeywords`
--
ALTER TABLE `tblKeywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblRoles`
--
ALTER TABLE `tblRoles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblSchedulerTask`
--
ALTER TABLE `tblSchedulerTask`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblTransmittalItems`
--
ALTER TABLE `tblTransmittalItems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblTransmittals`
--
ALTER TABLE `tblTransmittals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblUserImages`
--
ALTER TABLE `tblUserImages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblUserPasswordHistory`
--
ALTER TABLE `tblUserPasswordHistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblUserPasswordRequest`
--
ALTER TABLE `tblUserPasswordRequest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblUsers`
--
ALTER TABLE `tblUsers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblUserSubstitutes`
--
ALTER TABLE `tblUserSubstitutes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblWorkflowActions`
--
ALTER TABLE `tblWorkflowActions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblWorkflowDocumentContent`
--
ALTER TABLE `tblWorkflowDocumentContent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblWorkflowLog`
--
ALTER TABLE `tblWorkflowLog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblWorkflows`
--
ALTER TABLE `tblWorkflows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblWorkflowStates`
--
ALTER TABLE `tblWorkflowStates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblWorkflowTransitionGroups`
--
ALTER TABLE `tblWorkflowTransitionGroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblWorkflowTransitions`
--
ALTER TABLE `tblWorkflowTransitions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblWorkflowTransitionUsers`
--
ALTER TABLE `tblWorkflowTransitionUsers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblArosAcos`
--
ALTER TABLE `tblArosAcos`
  ADD CONSTRAINT `tblArosAcos_acos` FOREIGN KEY (`aco`) REFERENCES `tblAcos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblArosAcos_aros` FOREIGN KEY (`aro`) REFERENCES `tblAros` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblCachedAccess`
--
ALTER TABLE `tblCachedAccess`
  ADD CONSTRAINT `tblCachedAccess_document` FOREIGN KEY (`document`) REFERENCES `tblDocuments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblCachedAccess_user` FOREIGN KEY (`user`) REFERENCES `tblUsers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblDocumentApproveLog`
--
ALTER TABLE `tblDocumentApproveLog`
  ADD CONSTRAINT `tblDocumentApproveLog_approve` FOREIGN KEY (`approveID`) REFERENCES `tblDocumentApprovers` (`approveID`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblDocumentApproveLog_user` FOREIGN KEY (`userID`) REFERENCES `tblUsers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblDocumentApprovers`
--
ALTER TABLE `tblDocumentApprovers`
  ADD CONSTRAINT `tblDocumentApprovers_document` FOREIGN KEY (`documentID`) REFERENCES `tblDocuments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblDocumentAttributes`
--
ALTER TABLE `tblDocumentAttributes`
  ADD CONSTRAINT `tblDocumentAttributes_attrdef` FOREIGN KEY (`attrdef`) REFERENCES `tblAttributeDefinitions` (`id`),
  ADD CONSTRAINT `tblDocumentAttributes_document` FOREIGN KEY (`document`) REFERENCES `tblDocuments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblDocumentCategory`
--
ALTER TABLE `tblDocumentCategory`
  ADD CONSTRAINT `tblDocumentCategory_category` FOREIGN KEY (`categoryID`) REFERENCES `tblCategory` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblDocumentCategory_document` FOREIGN KEY (`documentID`) REFERENCES `tblDocuments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblDocumentCheckOuts`
--
ALTER TABLE `tblDocumentCheckOuts`
  ADD CONSTRAINT `tblDocumentCheckOuts_document` FOREIGN KEY (`document`) REFERENCES `tblDocuments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblDocumentCheckOuts_user` FOREIGN KEY (`userID`) REFERENCES `tblUsers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblDocumentContent`
--
ALTER TABLE `tblDocumentContent`
  ADD CONSTRAINT `tblDocumentContent_document` FOREIGN KEY (`document`) REFERENCES `tblDocuments` (`id`);

--
-- Constraints for table `tblDocumentContentAttributes`
--
ALTER TABLE `tblDocumentContentAttributes`
  ADD CONSTRAINT `tblDocumentContentAttributes_attrdef` FOREIGN KEY (`attrdef`) REFERENCES `tblAttributeDefinitions` (`id`),
  ADD CONSTRAINT `tblDocumentContentAttributes_document` FOREIGN KEY (`content`) REFERENCES `tblDocumentContent` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblDocumentFiles`
--
ALTER TABLE `tblDocumentFiles`
  ADD CONSTRAINT `tblDocumentFiles_document` FOREIGN KEY (`document`) REFERENCES `tblDocuments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblDocumentFiles_user` FOREIGN KEY (`userID`) REFERENCES `tblUsers` (`id`);

--
-- Constraints for table `tblDocumentLinks`
--
ALTER TABLE `tblDocumentLinks`
  ADD CONSTRAINT `tblDocumentLinks_document` FOREIGN KEY (`document`) REFERENCES `tblDocuments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblDocumentLinks_target` FOREIGN KEY (`target`) REFERENCES `tblDocuments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblDocumentLinks_user` FOREIGN KEY (`userID`) REFERENCES `tblUsers` (`id`);

--
-- Constraints for table `tblDocumentLocks`
--
ALTER TABLE `tblDocumentLocks`
  ADD CONSTRAINT `tblDocumentLocks_document` FOREIGN KEY (`document`) REFERENCES `tblDocuments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblDocumentLocks_user` FOREIGN KEY (`userID`) REFERENCES `tblUsers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblDocumentReceiptLog`
--
ALTER TABLE `tblDocumentReceiptLog`
  ADD CONSTRAINT `tblDocumentReceiptLog_recipient` FOREIGN KEY (`receiptID`) REFERENCES `tblDocumentRecipients` (`receiptID`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblDocumentReceiptLog_user` FOREIGN KEY (`userID`) REFERENCES `tblUsers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblDocumentRecipients`
--
ALTER TABLE `tblDocumentRecipients`
  ADD CONSTRAINT `tblDocumentRecipients_document` FOREIGN KEY (`documentID`) REFERENCES `tblDocuments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblDocumentReviewers`
--
ALTER TABLE `tblDocumentReviewers`
  ADD CONSTRAINT `tblDocumentReviewers_document` FOREIGN KEY (`documentID`) REFERENCES `tblDocuments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblDocumentReviewLog`
--
ALTER TABLE `tblDocumentReviewLog`
  ADD CONSTRAINT `tblDocumentReviewLog_review` FOREIGN KEY (`reviewID`) REFERENCES `tblDocumentReviewers` (`reviewID`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblDocumentReviewLog_user` FOREIGN KEY (`userID`) REFERENCES `tblUsers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblDocumentRevisionLog`
--
ALTER TABLE `tblDocumentRevisionLog`
  ADD CONSTRAINT `tblDocumentRevisionLog_revision` FOREIGN KEY (`revisionID`) REFERENCES `tblDocumentRevisors` (`revisionID`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblDocumentRevisionLog_user` FOREIGN KEY (`userID`) REFERENCES `tblUsers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblDocumentRevisors`
--
ALTER TABLE `tblDocumentRevisors`
  ADD CONSTRAINT `tblDocumentRevisors_document` FOREIGN KEY (`documentID`) REFERENCES `tblDocuments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblDocuments`
--
ALTER TABLE `tblDocuments`
  ADD CONSTRAINT `tblDocuments_folder` FOREIGN KEY (`folder`) REFERENCES `tblFolders` (`id`),
  ADD CONSTRAINT `tblDocuments_owner` FOREIGN KEY (`owner`) REFERENCES `tblUsers` (`id`);

--
-- Constraints for table `tblDocumentStatus`
--
ALTER TABLE `tblDocumentStatus`
  ADD CONSTRAINT `tblDocumentStatus_document` FOREIGN KEY (`documentID`) REFERENCES `tblDocuments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblDocumentStatusLog`
--
ALTER TABLE `tblDocumentStatusLog`
  ADD CONSTRAINT `tblDocumentStatusLog_status` FOREIGN KEY (`statusID`) REFERENCES `tblDocumentStatus` (`statusID`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblDocumentStatusLog_user` FOREIGN KEY (`userID`) REFERENCES `tblUsers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblFolderAttributes`
--
ALTER TABLE `tblFolderAttributes`
  ADD CONSTRAINT `tblFolderAttributes_attrdef` FOREIGN KEY (`attrdef`) REFERENCES `tblAttributeDefinitions` (`id`),
  ADD CONSTRAINT `tblFolderAttributes_folder` FOREIGN KEY (`folder`) REFERENCES `tblFolders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblFolders`
--
ALTER TABLE `tblFolders`
  ADD CONSTRAINT `tblFolders_owner` FOREIGN KEY (`owner`) REFERENCES `tblUsers` (`id`);

--
-- Constraints for table `tblGroupMembers`
--
ALTER TABLE `tblGroupMembers`
  ADD CONSTRAINT `tblGroupMembers_group` FOREIGN KEY (`groupID`) REFERENCES `tblGroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblGroupMembers_user` FOREIGN KEY (`userID`) REFERENCES `tblUsers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblKeywords`
--
ALTER TABLE `tblKeywords`
  ADD CONSTRAINT `tblKeywords_category` FOREIGN KEY (`category`) REFERENCES `tblKeywordCategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblMandatoryApprovers`
--
ALTER TABLE `tblMandatoryApprovers`
  ADD CONSTRAINT `tblMandatoryApprovers_user` FOREIGN KEY (`userID`) REFERENCES `tblUsers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblMandatoryReviewers`
--
ALTER TABLE `tblMandatoryReviewers`
  ADD CONSTRAINT `tblMandatoryReviewers_user` FOREIGN KEY (`userID`) REFERENCES `tblUsers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblSessions`
--
ALTER TABLE `tblSessions`
  ADD CONSTRAINT `tblSessions_user` FOREIGN KEY (`userID`) REFERENCES `tblUsers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblTransmittalItems`
--
ALTER TABLE `tblTransmittalItems`
  ADD CONSTRAINT `tblTransmittalItem_transmittal` FOREIGN KEY (`transmittal`) REFERENCES `tblTransmittals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblTransmittalItems_document` FOREIGN KEY (`document`) REFERENCES `tblDocuments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblTransmittals`
--
ALTER TABLE `tblTransmittals`
  ADD CONSTRAINT `tblTransmittals_user` FOREIGN KEY (`userID`) REFERENCES `tblUsers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblUserImages`
--
ALTER TABLE `tblUserImages`
  ADD CONSTRAINT `tblUserImages_user` FOREIGN KEY (`userID`) REFERENCES `tblUsers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblUserPasswordHistory`
--
ALTER TABLE `tblUserPasswordHistory`
  ADD CONSTRAINT `tblUserPasswordHistory_user` FOREIGN KEY (`userID`) REFERENCES `tblUsers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblUserPasswordRequest`
--
ALTER TABLE `tblUserPasswordRequest`
  ADD CONSTRAINT `tblUserPasswordRequest_user` FOREIGN KEY (`userID`) REFERENCES `tblUsers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblUsers`
--
ALTER TABLE `tblUsers`
  ADD CONSTRAINT `tblUsers_homefolder` FOREIGN KEY (`homefolder`) REFERENCES `tblFolders` (`id`),
  ADD CONSTRAINT `tblUsers_role` FOREIGN KEY (`role`) REFERENCES `tblRoles` (`id`);

--
-- Constraints for table `tblUserSubstitutes`
--
ALTER TABLE `tblUserSubstitutes`
  ADD CONSTRAINT `tblUserSubstitutes_substitute` FOREIGN KEY (`user`) REFERENCES `tblUsers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblUserSubstitutes_user` FOREIGN KEY (`user`) REFERENCES `tblUsers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblWorkflowDocumentContent`
--
ALTER TABLE `tblWorkflowDocumentContent`
  ADD CONSTRAINT `tblWorkflowDocumentContent_parent` FOREIGN KEY (`parent`) REFERENCES `tblWorkflowDocumentContent` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblWorkflowDocument_document` FOREIGN KEY (`document`) REFERENCES `tblDocuments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblWorkflowDocument_state` FOREIGN KEY (`state`) REFERENCES `tblWorkflowStates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblWorkflowDocument_workflow` FOREIGN KEY (`workflow`) REFERENCES `tblWorkflows` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblWorkflowLog`
--
ALTER TABLE `tblWorkflowLog`
  ADD CONSTRAINT `tblWorkflowLog_transition` FOREIGN KEY (`transition`) REFERENCES `tblWorkflowTransitions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblWorkflowLog_userid` FOREIGN KEY (`userid`) REFERENCES `tblUsers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblWorkflowLog_workflowdocumentcontent` FOREIGN KEY (`workflowdocumentcontent`) REFERENCES `tblWorkflowDocumentContent` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblWorkflowMandatoryWorkflow`
--
ALTER TABLE `tblWorkflowMandatoryWorkflow`
  ADD CONSTRAINT `tblWorkflowMandatoryWorkflow_userid` FOREIGN KEY (`userid`) REFERENCES `tblUsers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblWorkflowMandatoryWorkflow_workflow` FOREIGN KEY (`workflow`) REFERENCES `tblWorkflows` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblWorkflows`
--
ALTER TABLE `tblWorkflows`
  ADD CONSTRAINT `tblWorkflow_initstate` FOREIGN KEY (`initstate`) REFERENCES `tblWorkflowStates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblWorkflowTransitionGroups`
--
ALTER TABLE `tblWorkflowTransitionGroups`
  ADD CONSTRAINT `tblWorkflowTransitionGroups_groupid` FOREIGN KEY (`groupid`) REFERENCES `tblGroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblWorkflowTransitionGroups_transition` FOREIGN KEY (`transition`) REFERENCES `tblWorkflowTransitions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblWorkflowTransitions`
--
ALTER TABLE `tblWorkflowTransitions`
  ADD CONSTRAINT `tblWorkflowTransitions_action` FOREIGN KEY (`action`) REFERENCES `tblWorkflowActions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblWorkflowTransitions_nextstate` FOREIGN KEY (`nextstate`) REFERENCES `tblWorkflowStates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblWorkflowTransitions_state` FOREIGN KEY (`state`) REFERENCES `tblWorkflowStates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblWorkflowTransitions_workflow` FOREIGN KEY (`workflow`) REFERENCES `tblWorkflows` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblWorkflowTransitionUsers`
--
ALTER TABLE `tblWorkflowTransitionUsers`
  ADD CONSTRAINT `tblWorkflowTransitionUsers_transition` FOREIGN KEY (`transition`) REFERENCES `tblWorkflowTransitions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblWorkflowTransitionUsers_userid` FOREIGN KEY (`userid`) REFERENCES `tblUsers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
