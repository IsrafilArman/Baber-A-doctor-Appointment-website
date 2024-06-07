-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2022 at 08:07 PM
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
-- Database: `baber`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments_data`
--

CREATE TABLE `appointments_data` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `your_request` varchar(200) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `accepted` tinyint(1) NOT NULL,
  `accepted_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments_data`
--

INSERT INTO `appointments_data` (`id`, `first_name`, `last_name`, `email`, `phone`, `your_request`, `created_at`, `accepted`, `accepted_at`) VALUES
(1, 'a', 'sdfsd', 'armanchowdhury199@gmail.com', '0123654789', 'asdfasdfa', '2022-08-31 16:47:01.143753', 0, '2022-08-31 16:47:01.143753'),
(2, 'dfgdf', 'dfgdf', '321@gmail.com', '0123654789', 'sdvsdf', '2022-08-31 17:09:53.181323', 0, '2022-08-31 17:09:53.181323'),
(3, 'a', 'b', '2020-1-60-086@std.ewubd.edu', '01828496808', 'czc', '2022-09-01 07:48:12.705791', 0, '2022-09-01 07:48:12.705791'),
(4, 'asd', 'b', '2020-1-60-086@std.ewubd.edu', '01828496808', 'sdcxsd', '2022-09-01 07:48:37.177189', 0, '2022-09-01 07:48:37.177189'),
(5, 'a', 'b', 'armanchowdhury199@gmail.com', '01828496808', 'ghjjgh', '2022-09-03 09:46:14.435183', 0, '2022-09-03 09:46:14.435183'),
(6, 'a', 'b', 'armanchowdhury199@gmail.com', '01828496808', 'asdfasdfa', '2022-09-03 10:39:51.570410', 0, '2022-09-03 10:39:51.571407'),
(7, 'arman', 'chowdhury', 'armanchowdhury199@gmail.com', '01828496808', 'monday , 5 pm , this is emergency ', '2022-09-03 10:48:00.630867', 0, '2022-09-03 10:48:00.630867'),
(8, 'a', 'b', 'Israfilarman199@gmail.com', '01828496808', 'dfgdfg', '2022-09-03 10:48:44.111234', 0, '2022-09-03 10:48:44.111234'),
(9, 'a', 'b', 'abs@gmail.com', '01828496808', 'dsdfgdf', '2022-09-03 12:42:00.357346', 0, '2022-09-03 12:42:00.357346'),
(10, 'arman', 'chowdhury', 'armanchowdhury199@gmail.com', '01828496808', 'monday, 5pm .ist emergency for my child', '2022-09-03 12:42:56.455658', 0, '2022-09-03 12:42:56.455658'),
(11, 'a', 'b', 'abs@gmail.com', '01828496808', 'sdf', '2022-09-03 12:58:49.324842', 0, '2022-09-03 12:58:49.324842'),
(12, 'a', 'b', 'armanchowdhury199@gmail.com', '01828496808', 'asadasd', '2022-09-03 14:23:21.850266', 0, '2022-09-03 14:23:21.850266'),
(13, 'Zarin Tasnim', 'Nujhat', 'zarin@gmail.com', '01987456321', 'friday, it will be helpful if i can get the appointment in the evening .', '2022-09-03 14:37:28.396537', 0, '2022-09-03 14:37:28.396537'),
(14, 'arman', 'chowdhury', 'armanchowdhury199@gmail.com', '01828496808', 'gfhrth', '2022-09-03 16:05:25.141566', 0, '2022-09-03 16:05:25.141566'),
(15, 'a', 'b', 'abs@gmail.com', '09121399872', 'erter', '2022-09-03 17:37:17.196057', 0, '2022-09-03 17:37:17.196057'),
(16, 'a', 'b', 'abs@gmail.com', '01828496808', 'sdfsdf', '2022-09-03 17:50:17.650285', 0, '2022-09-03 17:50:17.650285'),
(17, 'test', 'user', 'armanchowdhury199@gmail.com', '01828496808', 'friday , 5 pm, this is emergency..', '2022-09-05 12:23:35.715789', 0, '2022-09-05 12:23:35.715789'),
(18, 'arman', 'chowdhury', 'Israfilarman199@gmail.com', '01828496808', 'friday, 5 pm, it is emergenvy///', '2022-09-05 17:55:23.194589', 0, '2022-09-05 17:55:23.194589');

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
(25, 'Can add appointment model', 7, 'add_appointmentmodel'),
(26, 'Can change appointment model', 7, 'change_appointmentmodel'),
(27, 'Can delete appointment model', 7, 'delete_appointmentmodel'),
(28, 'Can view appointment model', 7, 'view_appointmentmodel'),
(29, 'Can add user model', 8, 'add_usermodel'),
(30, 'Can change user model', 8, 'change_usermodel'),
(31, 'Can delete user model', 8, 'delete_usermodel'),
(32, 'Can view user model', 8, 'view_usermodel'),
(33, 'Can add contact model', 9, 'add_contactmodel'),
(34, 'Can change contact model', 9, 'change_contactmodel'),
(35, 'Can delete contact model', 9, 'delete_contactmodel'),
(36, 'Can view contact model', 9, 'view_contactmodel');

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
(1, 'pbkdf2_sha256$320000$NMzGEdtGhjlR7v7Zy66OQe$GZYwtj70cMsiazgdubf1+pj29U+QVix5uQmsetCcjYM=', '2022-09-05 15:56:56.595274', 1, 'arman', '', '', 'baberthebabycare@gmail.com', 1, 1, '2022-09-05 15:56:17.633364');

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
-- Table structure for table `contact_data`
--

CREATE TABLE `contact_data` (
  `id` bigint(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `subject` varchar(40) NOT NULL,
  `message` varchar(200) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_data`
--

INSERT INTO `contact_data` (`id`, `name`, `email`, `subject`, `message`, `created_at`) VALUES
(1, 'arman', 'abs@gmail.com', '', 'sdf', '2022-09-04 15:24:00.578867'),
(2, 'ISRAFIL ARMAN', 'armanchowdhury199@gmail.com', '', 'asdasds', '2022-09-05 17:56:40.236088');

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
(7, 'doctor', 'appointmentmodel'),
(9, 'doctor', 'contactmodel'),
(8, 'doctor', 'usermodel'),
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
(1, 'contenttypes', '0001_initial', '2022-08-31 16:43:56.240961'),
(2, 'auth', '0001_initial', '2022-08-31 16:43:56.954078'),
(3, 'admin', '0001_initial', '2022-08-31 16:43:57.153607'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-08-31 16:43:57.180358'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-08-31 16:43:57.201235'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-08-31 16:43:57.307882'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-08-31 16:43:57.392188'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-08-31 16:43:57.427979'),
(9, 'auth', '0004_alter_user_username_opts', '2022-08-31 16:43:57.447915'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-08-31 16:43:57.517683'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-08-31 16:43:57.527337'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-08-31 16:43:57.544282'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-08-31 16:43:57.572187'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-08-31 16:43:57.605088'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-08-31 16:43:57.633017'),
(16, 'auth', '0011_update_proxy_permissions', '2022-08-31 16:43:57.652923'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-08-31 16:43:57.689794'),
(18, 'doctor', '0001_initial', '2022-08-31 16:43:57.765541'),
(19, 'sessions', '0001_initial', '2022-08-31 16:43:57.824634'),
(20, 'doctor', '0002_contactmodel_alter_appointmentmodel_accepted_at', '2022-09-04 14:57:35.268766');

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
('2ovszu61wqi2gpz8jseb3n0imq1brnkf', 'e30:1oUrhY:5denks0Pmye_ReZz0vScFjSYQPakTU-WfImHn45JTe8', '2022-09-18 15:38:24.357465'),
('tohml0ef5vlzc11h4i0vs5k7iagvhje2', 'eyJlbWFpbCI6ImFybWFuY2hvd2RodXJ5MTk5QGdtYWlsLmNvbSJ9:1oUObu:7nj4d3AJ9RzZ7yE2TSBG6r4LPRy4zAW5L-Tbd75VwSQ', '2022-09-17 08:34:38.948952'),
('wge8g2o1u4g6670whlcqohnzdw0x9hsi', 'e30:1oVGKX:K5j7zdeLl1kwg0zzvfGVnKMyIbfgj6GMVV01AJmC4Cg', '2022-09-19 17:56:17.597763');

-- --------------------------------------------------------

--
-- Table structure for table `users_data`
--

CREATE TABLE `users_data` (
  `id` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(124) NOT NULL,
  `name` varchar(40) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_data`
--

INSERT INTO `users_data` (`id`, `email`, `password`, `name`, `phone`, `role`, `created_at`) VALUES
(1, 'armanchowdhury199@gmail.com', 'pbkdf2_sha256$320000$OxoCnRRqAvgJ2wwG1MYQYo$laFd+UHoJxOc9KXyUpRfiGpGKst8qRA+WHzw6A+C5Rs=', 'armanchowdhury199', '+88001828496808', 'patient', '2022-09-02 20:09:55.204234'),
(2, 'sayemahmedshaon2000@gmail.com', 'pbkdf2_sha256$320000$sbIVvfuVlresWDaybb5fC8$GG8l6FjjJjI9Kz9NUleOJp0UvoziJRCVRZcXqAky/y8=', 'sayemahmedshaon2000', '+88001654123648', 'patient', '2022-09-03 14:38:20.482556'),
(3, '2020-1-60-086@std.ewubd.edu', 'pbkdf2_sha256$320000$uCUVS8pAOYA3ALlb7LkF9Y$H5v/Orj3FKA1qRQjGrNHUUsniEiTZ/75rwNcD8QQfGc=', '2020-1-60-086', '+88001987654321', 'patient', '2022-09-04 07:07:40.741462'),
(4, '123@gmail.com', 'pbkdf2_sha256$320000$4wzUyk7YgKBsHPp6XWxslZ$U+tqceyFC/KzDxKAnk04E53646KXujeP/n+4B9Vj5H0=', '123', '+88001828496808', 'patient', '2022-09-05 12:22:10.952835'),
(5, 'ashikchowdhury867@gmail.com', 'pbkdf2_sha256$320000$8Pou0CzFZR2XJ5SJHBgpfo$w6py4EF6uAoupFq4vHsi45QQfzsJF8zcKgh7g4qBvnE=', 'ashikchowdhury867', '+88001234567890', 'patient', '2022-09-05 17:08:14.763839');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments_data`
--
ALTER TABLE `appointments_data`
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
-- Indexes for table `contact_data`
--
ALTER TABLE `contact_data`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `users_data`
--
ALTER TABLE `users_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments_data`
--
ALTER TABLE `appointments_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `contact_data`
--
ALTER TABLE `contact_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users_data`
--
ALTER TABLE `users_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
