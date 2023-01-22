-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2023 at 10:21 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uniinfodesk`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add course', 7, 'add_course'),
(26, 'Can change course', 7, 'change_course'),
(27, 'Can delete course', 7, 'delete_course'),
(28, 'Can view course', 7, 'view_course'),
(29, 'Can add student', 8, 'add_student'),
(30, 'Can change student', 8, 'change_student'),
(31, 'Can delete student', 8, 'delete_student'),
(32, 'Can view student', 8, 'view_student'),
(33, 'Can add staff', 9, 'add_staff'),
(34, 'Can change staff', 9, 'change_staff'),
(35, 'Can delete staff', 9, 'delete_staff'),
(36, 'Can view staff', 9, 'view_staff'),
(37, 'Can add payment', 10, 'add_payment'),
(38, 'Can change payment', 10, 'change_payment'),
(39, 'Can delete payment', 10, 'delete_payment'),
(40, 'Can view payment', 10, 'view_payment'),
(41, 'Can add faculty', 11, 'add_faculty'),
(42, 'Can change faculty', 11, 'change_faculty'),
(43, 'Can delete faculty', 11, 'delete_faculty'),
(44, 'Can view faculty', 11, 'view_faculty'),
(45, 'Can add course_ content', 12, 'add_course_content'),
(46, 'Can change course_ content', 12, 'change_course_content'),
(47, 'Can delete course_ content', 12, 'delete_course_content'),
(48, 'Can view course_ content', 12, 'view_course_content'),
(49, 'Can add complain', 13, 'add_complain'),
(50, 'Can change complain', 13, 'change_complain'),
(51, 'Can delete complain', 13, 'delete_complain'),
(52, 'Can view complain', 13, 'view_complain'),
(53, 'Can add announcement', 14, 'add_announcement'),
(54, 'Can change announcement', 14, 'change_announcement'),
(55, 'Can delete announcement', 14, 'delete_announcement'),
(56, 'Can view announcement', 14, 'view_announcement');

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
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$gyhvI2QX4PkmhDfbohUKWL$QZiKvqFDcb81AqmKnm+2qmfGZ3S30zsDjbW+c5kW2vs=', '2023-01-17 18:53:18.367522', 1, 'admin', '', '', 'admin@hotmail.com', 1, 1, '2023-01-16 11:12:53.289559'),
(2, 'pbkdf2_sha256$390000$3cHNYkrSmWsbrbJVLFLmn9$t2YGXHIhX9vPhZ4yN7cOBUYTjc7mCaayur3WUoPKl4Y=', '2023-01-17 21:19:31.650378', 0, '1001', '', '', '', 0, 1, '2023-01-16 11:15:55.000000'),
(3, 'pbkdf2_sha256$390000$a8RYMMtv4xkWLChFCM4IWV$5aol1q4rOhzdkTsh3CJ/nImslk89PnvqSHDsA3AV/F4=', '2023-01-17 18:47:45.270847', 0, '1002', '', '', '', 0, 1, '2023-01-16 17:19:03.000000'),
(4, 'pbkdf2_sha256$390000$tBrOqvQTr0q458bMiSayCX$9+/vj0PBIy8NFzx6UjYdGx8Dy51MEyuMm1C8mK90+S8=', '2023-01-17 18:21:33.151483', 0, '1003', '', '', '', 0, 1, '2023-01-16 17:19:15.000000'),
(5, 'pbkdf2_sha256$390000$F7rsSO2Sh4yCQwr7PP2Wy3$ZY0ntK7oiCD1fUMG1/jEBAgbjpBEuaJHONTbVA6JK+I=', NULL, 0, '1004', '', '', '', 0, 1, '2023-01-16 17:19:27.000000'),
(6, 'pbkdf2_sha256$390000$8yIgFiKNczfJoGeGodVnd9$lyJfjmZHjZdniBXA5Zf/MoPDJF3xAXrVNLQRuZVsQe0=', '2023-01-16 17:34:02.585478', 0, '1005', '', '', '', 0, 1, '2023-01-16 17:19:38.000000'),
(7, 'pbkdf2_sha256$390000$QftV59ppt5dqm47wCgzWL1$GQUod9VahjFtsc5HuGDXWdB7HFmk+2sF8jn3Si9mjPo=', NULL, 0, '1006', '', '', '', 0, 1, '2023-01-16 17:19:50.000000'),
(8, 'pbkdf2_sha256$390000$5LTjJKZqQwFsvGRU0IncEn$v1vRA4V5BMs86T1NOip84hjkwlNbqAG9qF6pmzBDGy0=', NULL, 0, 'fac1', '', '', '', 0, 1, '2023-01-16 17:20:20.000000'),
(9, 'pbkdf2_sha256$390000$VRdUYrY7mwiKoilQ4xkMNs$QctNsgHoNi+aICS/lJb2Cf606tKwjMNjLRh0goLf+zo=', NULL, 0, 'fac2', '', '', '', 0, 1, '2023-01-16 17:20:35.000000'),
(10, 'pbkdf2_sha256$390000$TSE9ylFgyDoIjqkL26lxeA$sGmOE+G+DNW3uRfOaUzX7CqYTINops/RvMkublDa4ho=', '2023-01-17 21:11:53.512602', 0, 'sta1', '', '', '', 0, 1, '2023-01-16 17:21:05.000000'),
(11, 'pbkdf2_sha256$390000$WF3dtsy3nDUMb4u07XfLqA$SLea5zlbdaFNPQBSyn8Sse+MK6A/7no4eWAJCK5dVRc=', '2023-01-17 21:16:16.050367', 0, 'sta2', '', '', '', 0, 1, '2023-01-16 17:21:18.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-01-16 11:14:24.817300', '1', 'C001', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-01-16 11:15:56.408782', '2', '1001', 1, '[{\"added\": {}}]', 4, 1),
(3, '2023-01-16 11:15:58.541139', '2', '1001', 2, '[]', 4, 1),
(4, '2023-01-16 11:18:11.057440', '1', '1001', 1, '[{\"added\": {}}]', 8, 1),
(5, '2023-01-16 11:18:43.551304', '1', 'C001', 1, '[{\"added\": {}}]', 12, 1),
(6, '2023-01-16 11:33:37.323657', '2', 'C001', 1, '[{\"added\": {}}]', 12, 1),
(7, '2023-01-16 17:19:04.580465', '3', '1002', 1, '[{\"added\": {}}]', 4, 1),
(8, '2023-01-16 17:19:06.824464', '3', '1002', 2, '[]', 4, 1),
(9, '2023-01-16 17:19:15.895498', '4', '1003', 1, '[{\"added\": {}}]', 4, 1),
(10, '2023-01-16 17:19:17.785149', '4', '1003', 2, '[]', 4, 1),
(11, '2023-01-16 17:19:28.034735', '5', '1004', 1, '[{\"added\": {}}]', 4, 1),
(12, '2023-01-16 17:19:29.760121', '5', '1004', 2, '[]', 4, 1),
(13, '2023-01-16 17:19:38.756107', '6', '1005', 1, '[{\"added\": {}}]', 4, 1),
(14, '2023-01-16 17:19:41.371065', '6', '1005', 2, '[]', 4, 1),
(15, '2023-01-16 17:19:50.978370', '7', '1006', 1, '[{\"added\": {}}]', 4, 1),
(16, '2023-01-16 17:19:52.775563', '7', '1006', 2, '[]', 4, 1),
(17, '2023-01-16 17:20:21.656520', '8', 'fac1', 1, '[{\"added\": {}}]', 4, 1),
(18, '2023-01-16 17:20:23.654867', '8', 'fac1', 2, '[]', 4, 1),
(19, '2023-01-16 17:20:36.572313', '9', 'fac2', 1, '[{\"added\": {}}]', 4, 1),
(20, '2023-01-16 17:20:39.206405', '9', 'fac2', 2, '[]', 4, 1),
(21, '2023-01-16 17:21:06.671788', '10', 'sta1', 1, '[{\"added\": {}}]', 4, 1),
(22, '2023-01-16 17:21:08.808224', '10', 'sta1', 2, '[]', 4, 1),
(23, '2023-01-16 17:21:18.921176', '11', 'sta2', 1, '[{\"added\": {}}]', 4, 1),
(24, '2023-01-16 17:21:20.900881', '11', 'sta2', 2, '[]', 4, 1),
(25, '2023-01-16 17:22:48.458604', '2', '1002', 1, '[{\"added\": {}}]', 8, 1),
(26, '2023-01-16 17:24:52.820684', '3', '1003', 1, '[{\"added\": {}}]', 8, 1),
(27, '2023-01-16 17:25:48.392927', '4', '1004', 1, '[{\"added\": {}}]', 8, 1),
(28, '2023-01-16 17:26:47.369928', '5', '1005', 1, '[{\"added\": {}}]', 8, 1),
(29, '2023-01-16 17:28:06.682026', '6', '1006', 1, '[{\"added\": {}}]', 8, 1),
(30, '2023-01-16 17:33:44.940671', '3', 'C001', 1, '[{\"added\": {}}]', 12, 1),
(31, '2023-01-16 17:38:59.313329', '4', 'C001', 1, '[{\"added\": {}}]', 12, 1),
(32, '2023-01-16 17:42:02.854139', '5', 'C001', 1, '[{\"added\": {}}]', 12, 1),
(33, '2023-01-16 17:43:23.512518', '6', 'C001', 1, '[{\"added\": {}}]', 12, 1),
(34, '2023-01-16 17:44:04.882643', '7', 'C001', 1, '[{\"added\": {}}]', 12, 1),
(35, '2023-01-16 17:47:11.067812', '2', 'C015', 1, '[{\"added\": {}}]', 7, 1),
(36, '2023-01-16 17:48:10.361509', '3', 'C095', 1, '[{\"added\": {}}]', 7, 1),
(37, '2023-01-16 17:49:14.195385', '4', 'M104', 1, '[{\"added\": {}}]', 7, 1),
(38, '2023-01-16 17:50:26.205541', '8', 'C015', 1, '[{\"added\": {}}]', 12, 1),
(39, '2023-01-16 17:51:29.939335', '9', 'C015', 1, '[{\"added\": {}}]', 12, 1),
(40, '2023-01-16 17:52:38.872212', '10', 'C015', 1, '[{\"added\": {}}]', 12, 1),
(41, '2023-01-16 17:55:36.542685', '11', 'C015', 1, '[{\"added\": {}}]', 12, 1),
(42, '2023-01-16 17:56:33.075984', '12', 'C015', 1, '[{\"added\": {}}]', 12, 1),
(43, '2023-01-16 18:00:06.963944', '13', 'C015', 1, '[{\"added\": {}}]', 12, 1),
(44, '2023-01-17 18:16:17.615976', '14', 'C095', 1, '[{\"added\": {}}]', 12, 1),
(45, '2023-01-17 18:17:43.273946', '15', 'C095', 1, '[{\"added\": {}}]', 12, 1),
(46, '2023-01-17 18:19:24.071207', '16', 'C095', 1, '[{\"added\": {}}]', 12, 1),
(47, '2023-01-17 18:20:14.710113', '17', 'C095', 1, '[{\"added\": {}}]', 12, 1),
(48, '2023-01-17 18:21:00.156493', '18', 'C095', 1, '[{\"added\": {}}]', 12, 1),
(49, '2023-01-17 18:36:36.251272', '19', 'M104', 1, '[{\"added\": {}}]', 12, 1),
(50, '2023-01-17 18:38:08.488912', '20', 'M104', 1, '[{\"added\": {}}]', 12, 1),
(51, '2023-01-17 18:39:33.739243', '21', 'M104', 1, '[{\"added\": {}}]', 12, 1),
(52, '2023-01-17 18:45:01.540106', '22', 'M104', 1, '[{\"added\": {}}]', 12, 1),
(53, '2023-01-17 18:46:15.067956', '23', 'M104', 1, '[{\"added\": {}}]', 12, 1),
(54, '2023-01-17 18:47:21.718726', '24', 'M104', 1, '[{\"added\": {}}]', 12, 1),
(55, '2023-01-17 20:41:18.561870', '1', 'Pino Cchio', 1, '[{\"added\": {}}]', 9, 1),
(56, '2023-01-17 20:42:31.873787', '2', 'John Malkovich', 1, '[{\"added\": {}}]', 9, 1),
(57, '2023-01-17 20:43:51.449200', '1', 'SP', 1, '[{\"added\": {}}]', 11, 1),
(58, '2023-01-17 20:44:46.257857', '2', 'BW', 1, '[{\"added\": {}}]', 11, 1),
(59, '2023-01-17 20:45:40.007404', '1', 'Pino Cchio', 1, '[{\"added\": {}}]', 10, 1),
(60, '2023-01-17 20:46:13.463995', '2', 'John Malkovich', 1, '[{\"added\": {}}]', 10, 1),
(61, '2023-01-17 20:48:14.599363', '1', '1004 -> Complain 1', 1, '[{\"added\": {}}]', 13, 1),
(62, '2023-01-17 20:49:12.143480', '2', '1001 -> Complain 2', 1, '[{\"added\": {}}]', 13, 1),
(63, '2023-01-17 20:50:21.939853', '3', '1006 -> Complain 3', 1, '[{\"added\": {}}]', 13, 1),
(64, '2023-01-17 20:51:02.591911', '4', '1001 -> Complain 4', 1, '[{\"added\": {}}]', 13, 1),
(65, '2023-01-17 20:51:50.491696', '5', '1003 -> Complain 5', 1, '[{\"added\": {}}]', 13, 1),
(66, '2023-01-17 20:52:13.688686', '6', '1002 -> Complain 6', 1, '[{\"added\": {}}]', 13, 1),
(67, '2023-01-17 20:53:27.256754', '7', '1005 -> Complain 7', 1, '[{\"added\": {}}]', 13, 1),
(68, '2023-01-17 20:58:24.052013', '1', 'John Malkovich -> Announcement 1', 1, '[{\"added\": {}}]', 14, 1),
(69, '2023-01-17 20:59:49.046638', '2', 'John Malkovich -> Announcement 2', 1, '[{\"added\": {}}]', 14, 1),
(70, '2023-01-17 21:02:13.471333', '3', 'Pino Cchio -> Announcement 3', 1, '[{\"added\": {}}]', 14, 1),
(71, '2023-01-17 21:03:26.931775', '4', 'John Malkovich -> Announcement 4', 1, '[{\"added\": {}}]', 14, 1),
(72, '2023-01-17 21:05:13.805966', '5', 'Pino Cchio -> Announcement 5', 1, '[{\"added\": {}}]', 14, 1),
(73, '2023-01-17 21:07:20.151643', '6', 'John Malkovich -> Announcement 6', 1, '[{\"added\": {}}]', 14, 1),
(74, '2023-01-17 21:09:24.348976', '7', 'Pino Cchio -> Announcement 7', 1, '[{\"added\": {}}]', 14, 1),
(75, '2023-01-17 21:10:44.990896', '8', 'Pino Cchio -> Announcement 8', 1, '[{\"added\": {}}]', 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(14, 'main', 'announcement'),
(13, 'main', 'complain'),
(7, 'main', 'course'),
(12, 'main', 'course_content'),
(11, 'main', 'faculty'),
(10, 'main', 'payment'),
(9, 'main', 'staff'),
(8, 'main', 'student'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-01-16 11:09:35.850074'),
(2, 'auth', '0001_initial', '2023-01-16 11:09:36.526070'),
(3, 'admin', '0001_initial', '2023-01-16 11:09:36.700008'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-01-16 11:09:36.715735'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-01-16 11:09:36.727434'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-01-16 11:09:36.818897'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-01-16 11:09:36.887817'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-01-16 11:09:36.920567'),
(9, 'auth', '0004_alter_user_username_opts', '2023-01-16 11:09:36.934098'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-01-16 11:09:37.003312'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-01-16 11:09:37.007860'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-01-16 11:09:37.023677'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-01-16 11:09:37.050319'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-01-16 11:09:37.082111'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-01-16 11:09:37.114338'),
(16, 'auth', '0011_update_proxy_permissions', '2023-01-16 11:09:37.132413'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-01-16 11:09:37.160000'),
(18, 'main', '0001_initial', '2023-01-16 11:09:38.018081'),
(19, 'sessions', '0001_initial', '2023-01-16 11:09:38.070766'),
(20, 'main', '0002_rename_staff_id_payment_staff_username_and_more', '2023-01-16 11:11:20.262405');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('wcxak1d4o88c692rbj374vlw6pg486xs', '.eJxVjDsOwjAQBe_iGlmOv1lKes5grb0bHEC2FCcV4u4QKQW0b2beS0Tc1hK3zkucSZyFFqffLWF-cN0B3bHemsytrsuc5K7Ig3Z5bcTPy-H-HRTs5VtbDt4bFXgES46JQ8YBUwqe8gDJGusUaM1IXsE0oVEjMDqwznEAHcT7A-fPN70:1pHtMh:Cbaq2Fv9_188UkKFQr58uFLOdUu2lmDyD5h_csrIdF8', '2023-01-31 21:19:31.654365');

-- --------------------------------------------------------

--
-- Table structure for table `main_announcement`
--

CREATE TABLE `main_announcement` (
  `anumber` int(11) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `statement` longtext DEFAULT NULL,
  `datetime` datetime(6) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `posted_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_announcement`
--

INSERT INTO `main_announcement` (`anumber`, `subject`, `statement`, `datetime`, `source`, `posted_by_id`) VALUES
(1, 'Weekday Campus Closures for 2022 Football Games', 'Our university will host three weeknight football games this fall. They are Thursday, Dec. 22; Monday, Dec. 26; and Friday, Dec. 30. On those days, classes on the main campus will conclude at 2 p.m. Offices also will close for normal operations at 2 p.m. Faculty who teach classes that start before 2 p.m. but end after that time will have the option to hold the portion of those classes that comes before 2 p.m. Some staff members may be required to work beyond the time when the university closes. In those cases, employees can speak with their supervisors about how their areas will handle operations after 2 p.m.', '2022-12-06 06:00:00.000000', 'Registrar Office', 2),
(2, 'Notice regarding holiday', 'On account of Christmas Eve, 24th December 2022 will be observed as a holiday. There will be no classes. Wish you all Merry Christmas.', '2022-12-19 02:58:26.000000', 'Office of the Registrar', 2),
(3, 'Share your stories!', 'Dear students Covid 19 was a challenging chapter in human history. We faced it bravely and there were stories of innovation, sacrifice, going beyond the call of duty and finding joy in adversity. CBSE invites stories of your experience written in 600-650 words. The story can contain dialogues/conversations/photographs. The story is to be written in English. The best entry will be selected by the school and uploaded on the CBSE APP. The story is to be forwarded to the class teacher on WhatsApp or by Email latest by 2 January 2023, for any queries kindly contact Ms. Aradhana Ana at 9116676126. Thank you.', '2022-12-25 02:59:50.000000', 'Mrs. Lyla Vancise', 1),
(4, 'Notice on Teaching Evaluation for Fall 2022 semester', 'Dear students, you are asked to complete an online Teaching Evaluation Form. Please communicate with the Coordination Officer of your respective department to learn the process, if necessary. Students must have an email ID of the university to complete the Teaching Evaluation.', '2022-12-30 03:02:14.000000', 'Professor Dylan Delung', 2),
(5, 'Android Workshop Arranged by the Dept. of CSE', 'The Department of CSE is going to arrange an 8-day long workshop on Android programming to meet the demand of our enthusiastic students. It will cover basic android programming to the advanced topics of android. You will be given specific challenges at each stage of the workshop. After the workshop, an Android software design and development contest will be held at the department where you can showcase your developed applications.', '2023-01-02 12:00:00.000000', 'Professor Gilderoy Lockhart', 1),
(6, 'Notice regarding exam clearance', 'Students are hereby notified that as per the decision of the authority, to sit for examinations, completion of Registration and collecting Exam clearance is mandatory. Students are advised to Collect Accounts Clearance before their Exam begins. Students are absolutely discouraged to collect their Clearances on Examination Day. This is to be mentioned that the Accounts Office has already circulated their payment schedule for the Final Examination of the Spring Semester of 2023. For any further assistance, please contact the Departmental Coordination Officer.', '2023-01-10 03:05:25.000000', 'Academic Affairs Office', 2),
(7, 'Article Writing Workshop', 'Dear Students Article Writing Workshop will be held on 19 February 2023, from 10:00 am to 11:00 am. Students should connect to the link forwarded by the class teacher latest by 9:50 am. Attendance is compulsory. Thank you.', '2023-01-30 18:00:00.000000', 'Professor Kath Kreitzer', 1),
(8, 'ANNOUNCEMENT ABOUT THE FINAL EXAMS OF THE SPRING SEMESTER', 'Dear Students, Kindly be committed to the dates and times of your final exams, and start your exam on time, as late students will not be given any additional time. Any student who might face a technical problem during the exam, please contact your professor.', '2023-02-26 03:09:28.000000', 'Academic Affairs Office', 1);

-- --------------------------------------------------------

--
-- Table structure for table `main_complain`
--

CREATE TABLE `main_complain` (
  `cnumber` int(11) NOT NULL,
  `tag` varchar(100) DEFAULT NULL,
  `statement` longtext NOT NULL,
  `datetime` datetime(6) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `posted_by_id` bigint(20) DEFAULT NULL,
  `resolved_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_complain`
--

INSERT INTO `main_complain` (`cnumber`, `tag`, `statement`, `datetime`, `status`, `posted_by_id`, `resolved_by_id`) VALUES
(1, 'staff', 'Past few weeks most of the computers in the laboratory are not working properly and are always in maintenance mode. It is quite annoying and frustrating that I am unable to complete my current assignment due to the unavailability of these machines. Thus I left far behind my schedule of completing all the assignments.', '2023-01-18 02:46:24.000000', 'pending', 4, NULL),
(2, 'staff', 'Our university canteen no longer maintains a healthy diet and due to this, I have had severe stomach pain last week. I had to visit a doctor and the test report outlines food poisoning.', '2023-01-02 12:00:00.000000', 'resolved', 1, 1),
(3, 'staff', 'I would like to draw attention to the problem which the students face, the irregular supply of Electricity. People can no longer be able to carry out their regular day-to-day schedule. Everyone. The exams are going on, the students are suffering.', '2022-12-21 18:00:00.000000', 'rejected', 6, 2),
(4, 'staff', 'We have a severe shortage of books in our library. It lacks study materials corresponding to the course offered this semester. Although there is a very few books related to my course in the library, but regrettably all are torn and outmoded that we can no longer use them. We need references as the topics are discussed in the classroom.', '2023-01-07 02:50:24.000000', 'pending', 1, NULL),
(5, 'staff', 'Kindly update all computers with the latest Operating Systems and a few licensed software.', '2022-12-21 06:00:00.000000', 'resolved', 3, 2),
(6, 'staff', 'The only photocopy machine that we have on our campus has been out of order for over a month.', '2023-01-18 02:51:52.000000', 'resolved', 2, 1),
(7, 'staff', 'The computers in the computer lab are not working fine. Some of the computers are not having a working keyboard whereas some computers do not even boot up properly.', '2023-01-09 12:00:00.000000', 'pending', 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `main_course`
--

CREATE TABLE `main_course` (
  `id` bigint(20) NOT NULL,
  `course_id` varchar(100) NOT NULL,
  `course_name` longtext NOT NULL,
  `course_description` longtext DEFAULT NULL,
  `course_credit` int(11) NOT NULL,
  `course_faculty` varchar(100) DEFAULT NULL,
  `course_department` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_course`
--

INSERT INTO `main_course` (`id`, `course_id`, `course_name`, `course_description`, `course_credit`, `course_faculty`, `course_department`) VALUES
(1, 'C001', 'Introduction to Computer Science I', 'Theory, Lab 3 hours', 5, 'BW', 'CSE'),
(2, 'C015', 'Introduction to Probability and Discrete Structures', 'Theory', 5, 'BW', 'CSE'),
(3, 'C095', 'Object-oriented programming', 'Theory, Lab 3 hours', 5, 'BW', 'CSE'),
(4, 'M104', 'Linear Algebra and Vector Calculus', 'Theory', 5, 'SP', 'MAT');

-- --------------------------------------------------------

--
-- Table structure for table `main_course_content`
--

CREATE TABLE `main_course_content` (
  `id` bigint(20) NOT NULL,
  `course_content_id` varchar(100) NOT NULL,
  `course_content_tag` longtext DEFAULT NULL,
  `course_content_description` longtext DEFAULT NULL,
  `content_img` varchar(100) DEFAULT NULL,
  `datetime` datetime(6) DEFAULT NULL,
  `like` int(11) NOT NULL,
  `course_id_id` bigint(20) NOT NULL,
  `upload_by_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_course_content`
--

INSERT INTO `main_course_content` (`id`, `course_content_id`, `course_content_tag`, `course_content_description`, `content_img`, `datetime`, `like`, `course_id_id`, `upload_by_id`) VALUES
(1, '19c9bb23-84cc-4687-86de-b9be6119b69b', 'Style Guide for Python Code', 'For every programming language, there are a few coding conventions followed by the coding\r\ncommunity of that language. All those conventions or rules are stored in a collected document\r\nmanner for the convenience of the coders, and it is called the Style Guide of that particular\r\nprogramming language. The provided link gives the style guidance for Python code comprising the standard library in the main Python distribution. Python style guide link: https://www.python.org/dev/peps/pep-0008/', '', '2023-01-16 11:18:43.550306', 0, 1, 1),
(2, '8e255ec6-04a7-42bc-8d8e-b9f68aa07a63', 'Compound assignment operations', 'As most of us struggle to comprehend some of the short versions of compound assignment operations, I have prepared this note in the hope that it may assist. thank you. :)', 'images/324611302_470261818648924_1591146103951166027_n_1.png', '2023-01-16 11:33:37.320668', 0, 1, 1),
(3, 'd1de4d1f-d109-4e32-a719-f0df1edcd800', 'Channels where you can find CS-related videos', 'As a student, whether in CS or any other field, you ought to utilize (not just pass) the time by learning stuff.\r\nI know you asked about the channels where you can find CS related videos, so here are some I recommend. Links:\r\n \r\n1. https://www.youtube.com/user/thenewboston\r\n2. https://www.youtube.com/user/MIT\r\n3. https://www.khanacademy.org/#computer-science This popular site has not neglected computer science, offering numerous courses that cover topics like Fibonacci functions, Python programming, and binary numbers.\r\nHappy Learning. :)', '', '2023-01-16 17:33:44.938676', 0, 1, 4),
(4, 'fbba1ce5-6dba-40d9-9974-ce35b8fe6d88', 'Reverse string in Python', 'Here is my Python code for the Reverse string that usually appears on our quiz test.', 'images/324972332_5601746199936572_1753092626861162379_n.png', '2023-01-16 17:38:59.295046', 0, 1, 2),
(5, '7be10fd4-f2a3-4efe-a74e-b13681eacb03', 'While loop and For loop', 'A loop is a control statement that is used to execute code for a certain number of times or until a condition is met.\r\n\r\nThere are two kinds of loops:\r\n\r\nwhile loop, for loop\r\n\r\nIn Python, a while loop is used to iterate the specified code as long as the condition is true. The number of iterations in this scenario is unclear. However, when the condition becomes false, the loop is terminated and the following code is performed.', 'images/324385249_876635573581355_2990047930622357814_n_1.png', '2023-01-16 17:42:02.852998', 0, 1, 6),
(6, '860806c0-9926-45e0-b35c-b0608924fbb5', 'Variables', 'Python variables work just like variables in any other programming language. when variables are defined some memory will be allocated to store the value of the variable. Python variables can work with different types of data, it can work with numeric values, Text and sentences, Lists, and a few more datatypes. To define any variable in python give a name and then assign its value to it.', 'images/324961505_468711895460646_5962001523861399720_n_1.png', '2023-01-16 17:43:23.511295', 0, 1, 1),
(7, '307b6e96-04f5-4423-b12e-3f8b5b343232', 'Binary arithmetic operations', 'Details can be found here:\r\nhttps://docs.python.org/3/reference/expressions.html#binary-arithmetic-operations', '', '2023-01-16 17:44:04.881645', 0, 1, 5),
(8, '01681dfb-b6fc-45d0-b8d1-37b9807b4deb', 'Suggested Book', 'My faculty suggested that we should go through the book: Discrete Mathematics and its Applications by Kenneth Rosen. The book is recommended for beginners and anyone who wants to polish their Discrete Mathematics concepts. Especially he also suggested for finals and mid-term we must practice some of the examples. Hope this will help you guys out. Thank you.', '', '2023-01-16 17:50:26.202947', 0, 2, 4),
(9, 'e81a1223-eac8-4610-ab44-31a84e33e9e6', 'Important Topics', 'The following are some of the significant subjects that appeared on finals and midterms during the previous semester: Set Theory: Set theory is defined as the study of sets which are a collection of objects arranged in a group. The set of numbers or objects can be denoted by the braces {} symbol. For example, the set of first 4 even numbers is {2,4,6,8}. Graph Theory: It is the study of the graph. The graph is a mathematical structure used to pair the relation between objects. Graphs are one of the prime objects of study in Discrete Mathematics. Logic: Logic in Mathematics can be defined as the study of valid reasoning. There are three types of logic gates. They are AND(∧), NOT(~), and OR(∨). Permutation: The different arrangements that can be made with a given number of sets taking some or all of them in a particular sequence at a time are called Permutations. For example, there are six permutations of the set {5,6,7}, namely (5,6,7), (5,7,6), (6,5,7), (6,7,5), (7,5,6), and (7,6,5). Combination: The selection of a number of objects taking some or all of them at a time is called combination. The order of selection does not matter for the combination. Sequence: According to some definite rules, a set of numbers arranged in a definite order is called a Sequence. A sequence is a function whose domain is the countable set of natural numbers. Series: A series is the sum of the terms of a sequence. The result of adding all the terms together: s1+s2+s3+s4… is the sum of the series.', '', '2023-01-16 17:51:29.938321', 0, 2, 2),
(10, '62722b55-54a9-40e8-aa40-2db498aca7fa', 'YouTube Playlists', 'Really very useful YouTube channel and the playlists are awesome:\r\n\r\nhttps://www.youtube.com/watch?v=p2b2Vb-cYCs&list=PLBlnK6fEyqRhqJPDXcvYlLfXPh37L89g3&ab_channel=NesoAcademy', '', '2023-01-16 17:52:38.871216', 0, 2, 5),
(11, '6c275941-72ba-4859-aa20-6627615c8f76', 'Last Minute Notes – Discrete Mathematics!!', 'I made a last-minute note. Read this before your exams!! Best wishes, guys!', 'images/324806973_660176219226717_1124184711743840708_n.png', '2023-01-16 17:55:36.534742', 0, 2, 2),
(12, '060dc18a-c14d-4de5-aee1-d1b569855a7c', 'My personal opinion :)', 'I actually recommend you read problem-solving books first. I highly recommend Problem-Solving Strategies by Arthur Engel. It has nice explanatory sections along with tons of problems, with solutions as well. The combinatorics section should be of particular interest. If your background is not strong enough for this, I recommend taking a look at the Art of Problem Solving books (Vol 1 and 2). Even if you can not figure these things out on the fly, thinking about them provides motivation for you to learn discrete math. When studying, you will know what kinds of problems you are trying to solve. It is always easier to learn math if you know what it is going to be used for.', '', '2023-01-16 17:56:33.063974', 0, 2, 6),
(13, 'e45fb6e5-8ce4-4463-9580-7eeb60ca869f', 'Question and Answer!!!', 'This is a well-known question that appears in our quiz examinations every year. My instructor strongly recommended it, therefore I am passing it forward. I hope this helps everyone.', 'images/321972365_700587364862584_1851116694573443859_n.png', '2023-01-16 18:00:06.962948', 0, 2, 3),
(14, '21cc0cd2-a50f-4cd3-ae53-2566094982eb', 'What is the difference between the class and object in terms of oop?', 'Here is the answer', 'images/323701798_3112414409019087_5405730932511688640_n.png', '2023-01-17 18:16:17.614001', 0, 3, 2),
(15, 'f576c5ef-f0d4-4c52-a8af-982b9ca19e76', 'Suggested book!!', 'Keep in mind that becoming expert in OO programming is largely achieved through writing and reading a lot of code. Beginner (i.e., you have never ever attempted OO or are completely lost in it) Our teachers frequently use the questions from this book in our quizzes. www.amazon.com/Programming-Ruby-1-9-Pragmatic-Programmers/dp/1934356085 Programming Ruby by Dave Thomas. If a programming language supports object-oriented programming, you can study the fundamentals of OO there if you truly need to.', '', '2023-01-17 18:17:43.272049', 0, 3, 6),
(16, '4855238c-5046-4797-9720-b3393a72a8f2', 'Here is my class note! :)', 'For those who were unable to attend class. The session was brief.', 'images/322029425_1525504744584170_5368254183629032658_n.png', '2023-01-17 18:19:24.059126', 0, 3, 1),
(17, 'a8edf62e-bbc9-441e-87a9-76b752a4c109', 'Here are the brief questions and answers from our bonus quiz.', '1. What are called members?\r\nAnswer: Data member and member functions are called class members\r\n\r\n\r\n\r\n2. Differentiate structure and class though both are user defined data type.\r\nAnswer: The only difference between structure and class is the members of structure are by default public where as it is private in class.\r\n\r\n\r\n3. Why it is considered as a good practice to define a constructor though compiler can automatically generate a constructor ?\r\n\r\nAnswer:\r\n\r\n(i) To allocate memory space to the object and\r\n\r\n\r\n(ii) To initialize the data member of the class object', '', '2023-01-17 18:20:14.697637', 0, 3, 4),
(18, '92fb06ec-1cce-4d1c-83c6-1b13063d849f', 'I wanted to learn OOP with python so I looked for good resources to achieve it. Tried a lot of them but somewhere I would get stuck and then I found out this article - https://python.swaroopch.com/oop.html  You will learn from Basic syntax to the important concepts like inheritance and polymorphism and an advanced concept of Decorators all in an easy language.I personally used: Object-Oriented Programming (OOP) in Python 3 – Real Python: https://realpython.com/python3-object-oriented-programming/#what-is-object-oriented-programming-oop', 'Some resources that can help you:\r\nCodecademy -- does a good job of teaching basic syntax. Link https://www.codecademy.com/\r\nLearn python the hard way -- a book that teaches a lot of python concepts. Link https://learnpythonthehardway.org/\r\nDataquest.io -- this is my startup. It is focused on teaching python for data science, but it teaches all the basic syntax also. Link:  https://www.dataquest.io/\r\nThe Python Tutorial -- the tutorial on the main python site. Link https://docs.python.org/2/tutorial/', '', '2023-01-17 18:21:00.154845', 0, 3, 1),
(19, 'c78276af-9307-4e34-969c-a54aef9f1651', 'Here is the class memo for lecture 13, which many people missed. Only problem b was solved. I only have this since I was unable to copy the rest.', 'My class note', 'images/325032547_847822053151931_5415878017641460249_n.png', '2023-01-17 18:36:36.250274', 0, 4, 5),
(20, 'a812b602-96bf-468b-ae67-90f51b66c172', 'All of the novels listed here are great and were highly recommended by my instructor. Hope this help!!', 'Linear algebra by Ward Cheney\r\nLinear algebra and its applications by David C. Lay.\r\nLinear algebra and its applications by Gilbert Strang.', '', '2023-01-17 18:38:08.486917', 0, 4, 3),
(21, '3bff3290-89d0-4f61-b893-05fdac5bb799', 'Links to the course basic materials', 'Follow this link: https://byjus.com/maths/vector-calculus/', '', '2023-01-17 18:39:33.737328', 0, 4, 1),
(22, 'c6975e1d-de98-4d27-ab50-b828dc3414e1', 'Practice Questions', 'Remember to practice these.  Good luck!', 'images/324508342_928573948505535_1131657273351970741_n.png', '2023-01-17 18:45:01.538084', 0, 4, 6),
(23, 'b9bd1eff-2896-4c9d-92c8-21e8cbc0d448', 'Resources', 'Just learn good calculus and linear algebra, from the following sources:\r\nCalculus: V. Zorich, Mathematical Analysis, Vol. 1\r\nLinear algebra: P. Halmos, Finite-dimensional vector spaces (for expediency, supplement with his Linear algebra problem book: it has solutions).\r\nIt will take some time, but worth every second you spend on it.', '', '2023-01-17 18:46:15.056092', 0, 4, 1),
(24, '42ea8f2c-03c7-47ce-a181-64c3f6f61567', 'Formulas', 'Short note!', 'images/324829338_483915070568153_2242217428492250491_n.png', '2023-01-17 18:47:21.716690', 0, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `main_faculty`
--

CREATE TABLE `main_faculty` (
  `id` bigint(20) NOT NULL,
  `faculty_initial` varchar(10) DEFAULT NULL,
  `first_name` varchar(200) DEFAULT NULL,
  `last_name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  `joined_date` date NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_faculty`
--

INSERT INTO `main_faculty` (`id`, `faculty_initial`, `first_name`, `last_name`, `email`, `phone`, `department`, `joined_date`, `user_id`) VALUES
(1, 'SP', 'Spoon', 'Bender', 'SpoonBender@hotmail.com', '01753427212', 'CSE', '2022-12-01', 8),
(2, 'BW', 'Bran', 'Winterfall', 'branwinterfall@hotmail.com', '01644055049', 'CSE', '2022-12-02', 9);

-- --------------------------------------------------------

--
-- Table structure for table `main_payment`
--

CREATE TABLE `main_payment` (
  `id` bigint(20) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_amount` int(11) NOT NULL,
  `staff_username_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_payment`
--

INSERT INTO `main_payment` (`id`, `payment_date`, `payment_amount`, `staff_username_id`) VALUES
(1, '2023-03-31', 9000, 1),
(2, '2023-03-15', 6000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `main_staff`
--

CREATE TABLE `main_staff` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(200) DEFAULT NULL,
  `last_name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `joined_date` date DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_staff`
--

INSERT INTO `main_staff` (`id`, `first_name`, `last_name`, `email`, `phone`, `joined_date`, `user_id`) VALUES
(1, 'Pino', 'Cchio', 'pinocchio@hotmail.com', '01753427212', '2022-12-03', 10),
(2, 'John', 'Malkovich', 'john.malkovich@hotmail.com', '01945673466', '2022-12-05', 11);

-- --------------------------------------------------------

--
-- Table structure for table `main_student`
--

CREATE TABLE `main_student` (
  `id` bigint(20) NOT NULL,
  `student_id` varchar(10) NOT NULL,
  `first_name` varchar(200) DEFAULT NULL,
  `last_name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  `enrolled_semester` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_student`
--

INSERT INTO `main_student` (`id`, `student_id`, `first_name`, `last_name`, `email`, `phone`, `department`, `enrolled_semester`, `user_id`) VALUES
(1, '1001', 'Jskellington', 'Halloweentown', 'jskellingtonhalloweentown@hotmail.com', '01898993421', 'CSE', 'Summer2020', 2),
(2, '1002', 'Porthos', 'Musketeers', 'porthosmusketeers@hotmail.com', '01934582111', 'CSE', 'Summer2022', 3),
(3, '1003', 'Hodor', 'Hodor', 'hodorhodor@hotmail.com', '01533543421', 'CSE', 'Summer2021', 4),
(4, '1004', 'Jenny', 'Theblock', 'jennytheblock@hotmail.com', '01645993421', 'CS', 'Fall2021', 5),
(5, '1005', 'Patti', 'Stanger', 'pattistanger@hotmail.com', '0154599777', 'CSE', 'Spring2022', 6),
(6, '1006', 'Quorin', 'Halfhand', 'quorinhalfhand@hotmail.com', '01845682313', 'CS', 'Summer2019', 7);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

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
-- Indexes for table `main_announcement`
--
ALTER TABLE `main_announcement`
  ADD PRIMARY KEY (`anumber`),
  ADD KEY `main_announcement_posted_by_id_1a406d18_fk_main_staff_id` (`posted_by_id`);

--
-- Indexes for table `main_complain`
--
ALTER TABLE `main_complain`
  ADD PRIMARY KEY (`cnumber`),
  ADD KEY `main_complain_posted_by_id_3fecf6ff_fk_main_student_id` (`posted_by_id`),
  ADD KEY `main_complain_resolved_by_id_1af41d8d_fk_main_staff_id` (`resolved_by_id`);

--
-- Indexes for table `main_course`
--
ALTER TABLE `main_course`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_id` (`course_id`),
  ADD UNIQUE KEY `course_name` (`course_name`) USING HASH;

--
-- Indexes for table `main_course_content`
--
ALTER TABLE `main_course_content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_content_id` (`course_content_id`),
  ADD KEY `main_course_content_course_id_id_aeff65db_fk_main_course_id` (`course_id_id`),
  ADD KEY `main_course_content_upload_by_id_afdcc205_fk_main_student_id` (`upload_by_id`);

--
-- Indexes for table `main_faculty`
--
ALTER TABLE `main_faculty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `faculty_initial` (`faculty_initial`);

--
-- Indexes for table `main_payment`
--
ALTER TABLE `main_payment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_id_id` (`staff_username_id`);

--
-- Indexes for table `main_staff`
--
ALTER TABLE `main_staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `main_student`
--
ALTER TABLE `main_student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`),
  ADD KEY `main_student_user_id_32abd1a3_fk_auth_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `main_announcement`
--
ALTER TABLE `main_announcement`
  MODIFY `anumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `main_complain`
--
ALTER TABLE `main_complain`
  MODIFY `cnumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `main_course`
--
ALTER TABLE `main_course`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `main_course_content`
--
ALTER TABLE `main_course_content`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `main_faculty`
--
ALTER TABLE `main_faculty`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_payment`
--
ALTER TABLE `main_payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_staff`
--
ALTER TABLE `main_staff`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_student`
--
ALTER TABLE `main_student`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `main_announcement`
--
ALTER TABLE `main_announcement`
  ADD CONSTRAINT `main_announcement_posted_by_id_1a406d18_fk_main_staff_id` FOREIGN KEY (`posted_by_id`) REFERENCES `main_staff` (`id`);

--
-- Constraints for table `main_complain`
--
ALTER TABLE `main_complain`
  ADD CONSTRAINT `main_complain_posted_by_id_3fecf6ff_fk_main_student_id` FOREIGN KEY (`posted_by_id`) REFERENCES `main_student` (`id`),
  ADD CONSTRAINT `main_complain_resolved_by_id_1af41d8d_fk_main_staff_id` FOREIGN KEY (`resolved_by_id`) REFERENCES `main_staff` (`id`);

--
-- Constraints for table `main_course_content`
--
ALTER TABLE `main_course_content`
  ADD CONSTRAINT `main_course_content_course_id_id_aeff65db_fk_main_course_id` FOREIGN KEY (`course_id_id`) REFERENCES `main_course` (`id`),
  ADD CONSTRAINT `main_course_content_upload_by_id_afdcc205_fk_main_student_id` FOREIGN KEY (`upload_by_id`) REFERENCES `main_student` (`id`);

--
-- Constraints for table `main_faculty`
--
ALTER TABLE `main_faculty`
  ADD CONSTRAINT `main_faculty_user_id_de8fa253_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `main_payment`
--
ALTER TABLE `main_payment`
  ADD CONSTRAINT `main_payment_staff_username_id_9b3d196b_fk_main_staff_id` FOREIGN KEY (`staff_username_id`) REFERENCES `main_staff` (`id`);

--
-- Constraints for table `main_staff`
--
ALTER TABLE `main_staff`
  ADD CONSTRAINT `main_staff_user_id_493f3be7_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `main_student`
--
ALTER TABLE `main_student`
  ADD CONSTRAINT `main_student_user_id_32abd1a3_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
