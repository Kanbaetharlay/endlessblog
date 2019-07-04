-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 04, 2019 at 02:52 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `endlessblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

CREATE TABLE `backups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `file_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `backup_size` varchar(10) COLLATE utf8_unicode_ci DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` varchar(400) COLLATE utf8_unicode_ci DEFAULT '',
  `sub_category` int(10) UNSIGNED DEFAULT NULL,
  `images` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `deleted_at`, `created_at`, `updated_at`, `name`) VALUES
(1, NULL, '2019-06-28 19:44:04', '2019-06-28 19:44:04', 'Mobile Development'),
(2, NULL, '2019-06-28 19:44:10', '2019-06-28 19:44:10', 'Web Development'),
(3, NULL, '2019-06-28 19:44:17', '2019-06-28 19:44:17', 'UI/UX'),
(4, NULL, '2019-06-28 19:44:30', '2019-06-28 19:44:30', 'Database');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '[]',
  `color` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `tags`, `color`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Administration', '[]', '#000', NULL, '2018-03-05 22:13:54', '2018-03-05 22:13:54');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `designation` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `gender` varchar(191) COLLATE utf8_unicode_ci DEFAULT 'Male',
  `mobile` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `mobile2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `dept` int(10) UNSIGNED DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_birth` date DEFAULT NULL,
  `date_hire` date DEFAULT NULL,
  `date_left` date DEFAULT NULL,
  `salary_cur` decimal(15,3) NOT NULL DEFAULT '0.000',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `designation`, `gender`, `mobile`, `mobile2`, `email`, `dept`, `city`, `address`, `about`, `date_birth`, `date_hire`, `date_left`, `salary_cur`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'Super Admin', 'Male', '8888888888', '', 'admin@hostmyanmar.net', 1, 'Pune', 'Karve nagar, Pune 411030', 'About user / biography', '2018-03-06', '2018-03-06', '2018-03-06', '0.000', NULL, '2018-03-05 22:14:06', '2018-03-05 22:14:06');

-- --------------------------------------------------------

--
-- Table structure for table `home_banners`
--

CREATE TABLE `home_banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` varchar(200) COLLATE utf8_unicode_ci DEFAULT '',
  `banner_images` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `itnews`
--

CREATE TABLE `itnews` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(10000) COLLATE utf8_unicode_ci DEFAULT '',
  `post_date` date DEFAULT NULL,
  `images` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `la_configs`
--

CREATE TABLE `la_configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `section` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `la_configs`
--

INSERT INTO `la_configs` (`id`, `key`, `section`, `value`, `created_at`, `updated_at`) VALUES
(1, 'sitename', '', 'Endless Technology', '2018-03-05 22:13:54', '2019-06-28 19:39:06'),
(2, 'sitename_part1', '', 'Endless', '2018-03-05 22:13:54', '2019-06-28 19:39:06'),
(3, 'sitename_part2', '', 'Technology', '2018-03-05 22:13:54', '2019-06-28 19:39:06'),
(4, 'sitename_short', '', 'ET', '2018-03-05 22:13:54', '2019-06-28 19:39:06'),
(5, 'site_description', '', 'Endless Technology is powerful web development team.', '2018-03-05 22:13:55', '2019-06-28 19:39:06'),
(6, 'sidebar_search', '', '0', '2018-03-05 22:13:55', '2019-06-28 19:39:06'),
(7, 'show_messages', '', '0', '2018-03-05 22:13:55', '2019-06-28 19:39:06'),
(8, 'show_notifications', '', '0', '2018-03-05 22:13:55', '2019-06-28 19:39:06'),
(9, 'show_tasks', '', '0', '2018-03-05 22:13:55', '2019-06-28 19:39:06'),
(10, 'show_rightsidebar', '', '0', '2018-03-05 22:13:55', '2019-06-28 19:39:06'),
(11, 'skin', '', 'skin-green', '2018-03-05 22:13:55', '2019-06-28 19:39:06'),
(12, 'layout', '', 'fixed', '2018-03-05 22:13:55', '2019-06-28 19:39:06'),
(13, 'default_email', '', 'info@endlesstech.com', '2018-03-05 22:13:55', '2019-06-28 19:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `la_menus`
--

CREATE TABLE `la_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'module',
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hierarchy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `la_menus`
--

INSERT INTO `la_menus` (`id`, `name`, `url`, `icon`, `type`, `parent`, `hierarchy`, `created_at`, `updated_at`) VALUES
(1, 'Team', '#', 'fa-group', 'custom', 0, 7, '2018-03-05 22:13:54', '2019-06-28 21:23:35'),
(2, 'Users', 'users', 'fa-group', 'module', 18, 6, '2018-03-05 22:13:54', '2019-06-28 20:45:10'),
(3, 'Uploads', 'uploads', 'fa-files-o', 'module', 18, 1, '2018-03-05 22:13:54', '2019-06-28 20:45:10'),
(4, 'Departments', 'departments', 'fa-tags', 'module', 18, 3, '2018-03-05 22:13:54', '2019-06-28 20:45:10'),
(5, 'Employees', 'employees', 'fa-group', 'module', 18, 7, '2018-03-05 22:13:54', '2019-06-28 20:45:10'),
(6, 'Roles', 'roles', 'fa-user-plus', 'module', 18, 4, '2018-03-05 22:13:54', '2019-06-28 20:45:10'),
(7, 'Organizations', 'organizations', 'fa-university', 'module', 18, 2, '2018-03-05 22:13:54', '2019-06-28 20:45:10'),
(8, 'Permissions', 'permissions', 'fa-magic', 'module', 18, 5, '2018-03-05 22:13:54', '2019-06-28 20:45:10'),
(9, 'Categories', 'categories', 'fa-cube', 'module', 19, 1, '2019-06-28 19:41:46', '2019-06-28 20:45:56'),
(10, 'Subcategories', 'subcategories', 'fa fa-align-right', 'module', 19, 2, '2019-06-28 19:45:21', '2019-06-28 20:45:57'),
(11, 'ITNews', 'itnews', 'fa fa-arrows-alt', 'module', 0, 4, '2019-06-28 20:03:20', '2019-06-28 20:45:57'),
(12, 'Books', 'books', 'fa fa-book', 'module', 0, 5, '2019-06-28 20:05:29', '2019-06-28 20:45:57'),
(13, 'Team_Members', 'team_members', 'fa fa-users', 'module', 1, 1, '2019-06-28 20:09:30', '2019-06-28 20:45:20'),
(14, 'Tutorials', 'tutorials', 'fa fa-expeditedssl', 'module', 15, 1, '2019-06-28 20:15:30', '2019-06-28 20:17:04'),
(15, 'All Tutorial', '#', 'fa-bars', 'custom', 0, 2, '2019-06-28 20:16:17', '2019-06-28 20:40:42'),
(16, 'Topics', 'topics', 'fa fa-adn', 'module', 17, 1, '2019-06-28 20:39:21', '2019-06-28 20:40:42'),
(17, 'All Topics', '#', 'fa-clipboard', 'custom', 0, 1, '2019-06-28 20:40:37', '2019-06-28 20:40:42'),
(18, 'Settings', '#', 'fa-cog', 'custom', 0, 8, '2019-06-28 20:43:53', '2019-06-28 21:23:35'),
(19, 'IT Categories', '#', 'fa-cube', 'custom', 0, 3, '2019-06-28 20:45:47', '2019-06-28 20:45:52'),
(20, 'Home_Banners', 'home_banners', 'fa fa-image', 'module', 0, 6, '2019-06-28 21:23:23', '2019-06-28 21:23:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_05_26_050000_create_modules_table', 1),
(2, '2014_05_26_055000_create_module_field_types_table', 1),
(3, '2014_05_26_060000_create_module_fields_table', 1),
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2014_12_01_000000_create_uploads_table', 1),
(7, '2016_05_26_064006_create_departments_table', 1),
(8, '2016_05_26_064007_create_employees_table', 1),
(9, '2016_05_26_064446_create_roles_table', 1),
(10, '2016_07_05_115343_create_role_user_table', 1),
(11, '2016_07_06_140637_create_organizations_table', 1),
(12, '2016_07_07_134058_create_backups_table', 1),
(13, '2016_07_07_134058_create_menus_table', 1),
(14, '2016_09_10_163337_create_permissions_table', 1),
(15, '2016_09_10_163520_create_permission_role_table', 1),
(16, '2016_09_22_105958_role_module_fields_table', 1),
(17, '2016_09_22_110008_role_module_table', 1),
(18, '2016_10_06_115413_create_la_configs_table', 1),
(19, '2019_06_29_034146_create_categories_table', 1),
(20, '2019_06_29_034521_create_subcategories_table', 1),
(21, '2019_06_29_040320_create_itnews_table', 1),
(22, '2019_06_29_040529_create_books_table', 1),
(23, '2019_06_29_040930_create_team_members_table', 1),
(24, '2019_06_29_041530_create_tutorials_table', 1),
(25, '2019_06_29_043920_create_topics_table', 1),
(26, '2019_06_29_052323_create_home_banners_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_db` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `view_col` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fa_icon` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `is_gen` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `label`, `name_db`, `view_col`, `model`, `controller`, `fa_icon`, `is_gen`, `created_at`, `updated_at`) VALUES
(1, 'Users', 'Users', 'users', 'name', 'User', 'UsersController', 'fa-group', 1, '2018-03-05 22:13:52', '2018-03-05 22:13:55'),
(2, 'Uploads', 'Uploads', 'uploads', 'name', 'Upload', 'UploadsController', 'fa-files-o', 1, '2018-03-05 22:13:53', '2018-03-05 22:13:55'),
(3, 'Departments', 'Departments', 'departments', 'name', 'Department', 'DepartmentsController', 'fa-tags', 1, '2018-03-05 22:13:53', '2018-03-05 22:13:55'),
(4, 'Employees', 'Employees', 'employees', 'name', 'Employee', 'EmployeesController', 'fa-group', 1, '2018-03-05 22:13:53', '2018-03-05 22:13:55'),
(5, 'Roles', 'Roles', 'roles', 'name', 'Role', 'RolesController', 'fa-user-plus', 1, '2018-03-05 22:13:53', '2018-03-05 22:13:55'),
(6, 'Organizations', 'Organizations', 'organizations', 'name', 'Organization', 'OrganizationsController', 'fa-university', 1, '2018-03-05 22:13:53', '2018-03-05 22:13:55'),
(7, 'Backups', 'Backups', 'backups', 'name', 'Backup', 'BackupsController', 'fa-hdd-o', 1, '2018-03-05 22:13:53', '2018-03-05 22:13:55'),
(8, 'Permissions', 'Permissions', 'permissions', 'name', 'Permission', 'PermissionsController', 'fa-magic', 1, '2018-03-05 22:13:54', '2018-03-05 22:13:55'),
(9, 'Categories', 'Categories', 'categories', 'name', 'Category', 'CategoriesController', 'fa-cube', 1, '2019-06-28 19:41:28', '2019-06-28 20:34:58'),
(10, 'Subcategories', 'Subcategories', 'subcategories', 'name', 'Subcategory', 'SubcategoriesController', 'fa-align-right', 1, '2019-06-28 19:44:50', '2019-06-28 19:45:21'),
(11, 'ITNews', 'ITNews', 'itnews', 'title', 'ITNews', 'ITNewsController', 'fa-arrows-alt', 1, '2019-06-28 20:01:52', '2019-06-28 20:03:20'),
(12, 'Books', 'Books', 'books', 'title', 'Book', 'BooksController', 'fa-book', 1, '2019-06-28 20:04:08', '2019-06-28 20:05:29'),
(13, 'Team_Members', 'Team_Members', 'team_members', 'name', 'Team_Member', 'Team_MembersController', 'fa-users', 1, '2019-06-28 20:07:29', '2019-06-28 20:09:30'),
(14, 'Tutorials', 'Tutorials', 'tutorials', 'title', 'Tutorial', 'TutorialsController', 'fa-expeditedssl', 1, '2019-06-28 20:13:19', '2019-06-28 20:15:30'),
(15, 'Topics', 'Topics', 'topics', 'topic_category', 'Topic', 'TopicsController', 'fa-adn', 1, '2019-06-28 20:38:57', '2019-06-28 20:39:21'),
(16, 'Home_Banners', 'Home_Banners', 'home_banners', 'title', 'Home_Banner', 'Home_BannersController', 'fa-image', 1, '2019-06-28 21:22:27', '2019-06-28 21:23:23');

-- --------------------------------------------------------

--
-- Table structure for table `module_fields`
--

CREATE TABLE `module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `colname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `module` int(10) UNSIGNED NOT NULL,
  `field_type` int(10) UNSIGNED NOT NULL,
  `unique` tinyint(1) NOT NULL DEFAULT '0',
  `defaultvalue` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `minlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `maxlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `popup_vals` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `listing_col` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `module_fields`
--

INSERT INTO `module_fields` (`id`, `colname`, `label`, `module`, `field_type`, `unique`, `defaultvalue`, `minlength`, `maxlength`, `required`, `popup_vals`, `sort`, `listing_col`, `created_at`, `updated_at`) VALUES
(1, 'name', 'Name', 1, 16, 0, '', 5, 250, 1, '', 0, 1, '2018-03-05 22:13:52', '2018-03-05 22:13:52'),
(2, 'context_id', 'Context', 1, 13, 0, '0', 0, 0, 0, '', 0, 0, '2018-03-05 22:13:52', '2018-03-05 22:13:52'),
(3, 'email', 'Email', 1, 8, 1, '', 0, 250, 0, '', 0, 1, '2018-03-05 22:13:52', '2018-03-05 22:13:52'),
(4, 'password', 'Password', 1, 17, 0, '', 6, 250, 1, '', 0, 0, '2018-03-05 22:13:52', '2018-03-05 22:13:52'),
(5, 'type', 'User Type', 1, 7, 0, 'Employee', 0, 0, 0, '[\"Employee\",\"Client\"]', 0, 1, '2018-03-05 22:13:52', '2018-03-05 22:13:52'),
(6, 'name', 'Name', 2, 16, 0, '', 5, 250, 1, '', 0, 1, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(7, 'path', 'Path', 2, 19, 0, '', 0, 250, 0, '', 0, 1, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(8, 'extension', 'Extension', 2, 19, 0, '', 0, 20, 0, '', 0, 1, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(9, 'caption', 'Caption', 2, 19, 0, '', 0, 250, 0, '', 0, 1, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(10, 'user_id', 'Owner', 2, 7, 0, '1', 0, 0, 0, '@users', 0, 1, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(11, 'hash', 'Hash', 2, 19, 0, '', 0, 250, 0, '', 0, 1, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(12, 'public', 'Is Public', 2, 2, 0, '0', 0, 0, 0, '', 0, 1, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(13, 'name', 'Name', 3, 16, 1, '', 1, 250, 1, '', 0, 1, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(14, 'tags', 'Tags', 3, 20, 0, '[]', 0, 0, 0, '', 0, 0, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(15, 'color', 'Color', 3, 19, 0, '', 0, 50, 1, '', 0, 1, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(16, 'name', 'Name', 4, 16, 0, '', 5, 250, 1, '', 0, 1, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(17, 'designation', 'Designation', 4, 19, 0, '', 0, 50, 1, '', 0, 1, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(18, 'gender', 'Gender', 4, 18, 0, 'Male', 0, 0, 1, '[\"Male\",\"Female\"]', 0, 0, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(19, 'mobile', 'Mobile', 4, 14, 0, '', 10, 20, 1, '', 0, 1, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(20, 'mobile2', 'Alternative Mobile', 4, 14, 0, '', 10, 20, 0, '', 0, 0, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(21, 'email', 'Email', 4, 8, 1, '', 5, 250, 1, '', 0, 1, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(22, 'dept', 'Department', 4, 7, 0, '0', 0, 0, 1, '@departments', 0, 1, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(23, 'city', 'City', 4, 19, 0, '', 0, 50, 0, '', 0, 0, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(24, 'address', 'Address', 4, 1, 0, '', 0, 1000, 0, '', 0, 0, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(25, 'about', 'About', 4, 19, 0, '', 0, 0, 0, '', 0, 0, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(26, 'date_birth', 'Date of Birth', 4, 4, 0, 'NULL', 0, 0, 0, '', 0, 0, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(27, 'date_hire', 'Hiring Date', 4, 4, 0, 'NULL', 0, 0, 0, '', 0, 0, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(28, 'date_left', 'Resignation Date', 4, 4, 0, 'NULL', 0, 0, 0, '', 0, 0, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(29, 'salary_cur', 'Current Salary', 4, 6, 0, '0.0', 0, 2, 0, '', 0, 0, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(30, 'name', 'Name', 5, 16, 1, '', 1, 250, 1, '', 0, 1, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(31, 'display_name', 'Display Name', 5, 19, 0, '', 0, 250, 1, '', 0, 1, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(32, 'description', 'Description', 5, 21, 0, '', 0, 1000, 0, '', 0, 0, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(33, 'parent', 'Parent Role', 5, 7, 0, '1', 0, 0, 0, '@roles', 0, 1, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(34, 'dept', 'Department', 5, 7, 0, '1', 0, 0, 0, '@departments', 0, 1, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(35, 'name', 'Name', 6, 16, 1, '', 5, 250, 1, '', 0, 1, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(36, 'email', 'Email', 6, 8, 0, '', 0, 250, 0, '', 0, 1, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(37, 'phone', 'Phone', 6, 14, 0, '', 0, 20, 0, '', 0, 1, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(38, 'website', 'Website', 6, 23, 0, '', 0, 250, 0, '', 0, 1, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(39, 'assigned_to', 'Assigned to', 6, 7, 0, '0', 0, 0, 0, '@employees', 0, 1, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(40, 'connected_since', 'Connected Since', 6, 4, 0, 'NULL', 0, 0, 0, '', 0, 0, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(41, 'address', 'Address', 6, 1, 0, '', 0, 1000, 0, '', 0, 0, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(42, 'city', 'City', 6, 19, 0, '', 0, 250, 1, '', 0, 1, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(43, 'description', 'Description', 6, 21, 0, '', 0, 1000, 0, '', 0, 0, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(44, 'profile_image', 'Profile Image', 6, 12, 0, '', 0, 250, 0, '', 0, 1, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(45, 'profile', 'Company Profile', 6, 9, 0, '', 0, 250, 0, '', 0, 0, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(46, 'name', 'Name', 7, 16, 1, '', 0, 250, 1, '', 0, 1, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(47, 'file_name', 'File Name', 7, 19, 1, '', 0, 250, 1, '', 0, 1, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(48, 'backup_size', 'File Size', 7, 19, 0, '0', 0, 10, 1, '', 0, 0, '2018-03-05 22:13:53', '2018-03-05 22:13:53'),
(49, 'name', 'Name', 8, 16, 1, '', 1, 250, 1, '', 0, 1, '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(50, 'display_name', 'Display Name', 8, 19, 0, '', 0, 250, 1, '', 0, 1, '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(51, 'description', 'Description', 8, 21, 0, '', 0, 1000, 0, '', 0, 0, '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(52, 'name', 'Name', 9, 16, 0, NULL, 0, 256, 1, '', 0, 1, '2019-06-28 19:41:41', '2019-06-28 19:41:41'),
(53, 'name', 'Name', 10, 16, 0, NULL, 0, 256, 1, '', 0, 1, '2019-06-28 19:45:01', '2019-06-28 19:45:01'),
(54, 'category', 'Category', 10, 7, 0, NULL, 0, 0, 1, '@categories', 0, 1, '2019-06-28 19:45:16', '2019-06-28 19:45:16'),
(55, 'title', 'Title', 11, 16, 0, NULL, 0, 1000, 1, '', 0, 1, '2019-06-28 20:02:19', '2019-06-28 20:02:19'),
(56, 'description', 'Description', 11, 1, 0, NULL, 0, 10000, 1, '', 0, 0, '2019-06-28 20:02:36', '2019-06-28 20:02:36'),
(57, 'post_date', 'Post Date', 11, 4, 0, NULL, 0, 0, 1, '', 0, 1, '2019-06-28 20:02:51', '2019-06-28 20:02:51'),
(58, 'images', 'Images', 11, 24, 0, NULL, 0, 0, 0, '', 0, 0, '2019-06-28 20:03:16', '2019-06-28 20:03:16'),
(59, 'title', 'Title', 12, 16, 0, NULL, 0, 100, 1, '', 0, 1, '2019-06-28 20:04:28', '2019-06-28 20:04:28'),
(60, 'content', 'Content', 12, 1, 0, NULL, 0, 400, 1, '', 0, 1, '2019-06-28 20:04:39', '2019-06-28 20:04:39'),
(61, 'sub_category', 'Category', 12, 7, 0, NULL, 0, 0, 0, '@subcategories', 0, 0, '2019-06-28 20:05:06', '2019-06-28 20:05:06'),
(62, 'images', 'Images', 12, 24, 0, NULL, 0, 0, 0, '', 0, 0, '2019-06-28 20:05:25', '2019-06-28 20:05:25'),
(63, 'name', 'Name', 13, 16, 0, NULL, 0, 100, 1, '', 0, 1, '2019-06-28 20:07:52', '2019-06-28 20:07:52'),
(64, 'email', 'Email', 13, 16, 0, NULL, 0, 20, 1, '', 0, 1, '2019-06-28 20:08:11', '2019-06-28 20:08:11'),
(65, 'phone', 'Phone', 13, 16, 0, NULL, 0, 40, 1, '', 0, 0, '2019-06-28 20:08:26', '2019-06-28 20:08:26'),
(66, 'skill', 'Skill', 13, 16, 0, NULL, 0, 200, 1, '', 0, 0, '2019-06-28 20:08:42', '2019-06-28 20:08:42'),
(67, 'member_position', 'Member Position', 13, 16, 0, NULL, 0, 200, 1, '', 0, 1, '2019-06-28 20:09:09', '2019-06-28 20:09:09'),
(68, 'profile', 'Profile', 13, 24, 0, NULL, 0, 0, 1, '', 0, 0, '2019-06-28 20:09:27', '2019-06-28 20:50:36'),
(69, 'title', 'Title', 14, 16, 0, NULL, 0, 300, 1, '', 0, 1, '2019-06-28 20:13:54', '2019-06-28 20:13:54'),
(70, 'content', 'Content', 14, 1, 0, NULL, 0, 20000, 1, '', 0, 0, '2019-06-28 20:14:12', '2019-06-28 20:14:12'),
(71, 'sub_category', 'Category', 14, 7, 0, NULL, 0, 0, 1, '@subcategories', 0, 1, '2019-06-28 20:14:40', '2019-06-28 20:14:40'),
(72, 'post_date', 'Post Date', 14, 4, 0, NULL, 0, 0, 1, '', 0, 1, '2019-06-28 20:15:02', '2019-06-28 20:15:02'),
(73, 'images', 'Images', 14, 24, 0, NULL, 0, 0, 0, '', 0, 0, '2019-06-28 20:15:24', '2019-06-28 20:15:24'),
(74, 'topic_category', 'Topic Category', 15, 7, 0, NULL, 0, 0, 1, '@subcategories', 0, 1, '2019-06-28 20:39:16', '2019-06-28 20:39:16'),
(75, 'title', 'Title', 16, 16, 0, NULL, 0, 200, 1, '', 0, 1, '2019-06-28 21:22:45', '2019-06-28 21:22:45'),
(76, 'content', 'Content', 16, 1, 0, NULL, 0, 200, 1, '', 0, 1, '2019-06-28 21:23:00', '2019-06-28 21:23:00'),
(77, 'banner_images', 'Banner Images', 16, 24, 0, NULL, 0, 0, 1, '', 0, 0, '2019-06-28 21:23:20', '2019-06-28 21:23:20'),
(78, 'credit', 'Credit', 14, 16, 0, NULL, 0, 200, 0, '', 0, 0, '2019-06-29 23:26:47', '2019-06-29 23:26:47'),
(79, 'shared_link', 'Shared Link', 14, 16, 0, NULL, 0, 256, 0, '', 0, 0, '2019-06-29 23:27:04', '2019-06-29 23:27:04');

-- --------------------------------------------------------

--
-- Table structure for table `module_field_types`
--

CREATE TABLE `module_field_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `module_field_types`
--

INSERT INTO `module_field_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Address', '2018-03-05 22:13:52', '2018-03-05 22:13:52'),
(2, 'Checkbox', '2018-03-05 22:13:52', '2018-03-05 22:13:52'),
(3, 'Currency', '2018-03-05 22:13:52', '2018-03-05 22:13:52'),
(4, 'Date', '2018-03-05 22:13:52', '2018-03-05 22:13:52'),
(5, 'Datetime', '2018-03-05 22:13:52', '2018-03-05 22:13:52'),
(6, 'Decimal', '2018-03-05 22:13:52', '2018-03-05 22:13:52'),
(7, 'Dropdown', '2018-03-05 22:13:52', '2018-03-05 22:13:52'),
(8, 'Email', '2018-03-05 22:13:52', '2018-03-05 22:13:52'),
(9, 'File', '2018-03-05 22:13:52', '2018-03-05 22:13:52'),
(10, 'Float', '2018-03-05 22:13:52', '2018-03-05 22:13:52'),
(11, 'HTML', '2018-03-05 22:13:52', '2018-03-05 22:13:52'),
(12, 'Image', '2018-03-05 22:13:52', '2018-03-05 22:13:52'),
(13, 'Integer', '2018-03-05 22:13:52', '2018-03-05 22:13:52'),
(14, 'Mobile', '2018-03-05 22:13:52', '2018-03-05 22:13:52'),
(15, 'Multiselect', '2018-03-05 22:13:52', '2018-03-05 22:13:52'),
(16, 'Name', '2018-03-05 22:13:52', '2018-03-05 22:13:52'),
(17, 'Password', '2018-03-05 22:13:52', '2018-03-05 22:13:52'),
(18, 'Radio', '2018-03-05 22:13:52', '2018-03-05 22:13:52'),
(19, 'String', '2018-03-05 22:13:52', '2018-03-05 22:13:52'),
(20, 'Taginput', '2018-03-05 22:13:52', '2018-03-05 22:13:52'),
(21, 'Textarea', '2018-03-05 22:13:52', '2018-03-05 22:13:52'),
(22, 'TextField', '2018-03-05 22:13:52', '2018-03-05 22:13:52'),
(23, 'URL', '2018-03-05 22:13:52', '2018-03-05 22:13:52'),
(24, 'Files', '2018-03-05 22:13:52', '2018-03-05 22:13:52');

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assigned_to` int(10) UNSIGNED DEFAULT NULL,
  `connected_since` date DEFAULT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_image` int(11) NOT NULL,
  `profile` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN_PANEL', 'Admin Panel', 'Admin Panel Permission', NULL, '2018-03-05 22:13:54', '2018-03-05 22:13:54');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(10) UNSIGNED DEFAULT '1',
  `dept` int(10) UNSIGNED DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `parent`, `dept`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'SUPER_ADMIN', 'Super Admin', 'Full Access Role', 1, 1, NULL, '2018-03-05 22:13:54', '2018-03-05 22:13:54');

-- --------------------------------------------------------

--
-- Table structure for table `role_module`
--

CREATE TABLE `role_module` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `acc_view` tinyint(1) NOT NULL,
  `acc_create` tinyint(1) NOT NULL,
  `acc_edit` tinyint(1) NOT NULL,
  `acc_delete` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_module`
--

INSERT INTO `role_module` (`id`, `role_id`, `module_id`, `acc_view`, `acc_create`, `acc_edit`, `acc_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(2, 1, 2, 1, 1, 1, 1, '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(3, 1, 3, 1, 1, 1, 1, '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(4, 1, 4, 1, 1, 1, 1, '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(5, 1, 5, 1, 1, 1, 1, '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(6, 1, 6, 1, 1, 1, 1, '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(7, 1, 7, 1, 1, 1, 1, '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(8, 1, 8, 1, 1, 1, 1, '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(9, 1, 9, 1, 1, 1, 1, '2019-06-28 19:41:46', '2019-06-28 19:41:46'),
(10, 1, 10, 1, 1, 1, 1, '2019-06-28 19:45:21', '2019-06-28 19:45:21'),
(11, 1, 11, 1, 1, 1, 1, '2019-06-28 20:03:20', '2019-06-28 20:03:20'),
(12, 1, 12, 1, 1, 1, 1, '2019-06-28 20:05:29', '2019-06-28 20:05:29'),
(13, 1, 13, 1, 1, 1, 1, '2019-06-28 20:09:30', '2019-06-28 20:09:30'),
(14, 1, 14, 1, 1, 1, 1, '2019-06-28 20:15:30', '2019-06-28 20:15:30'),
(15, 1, 15, 1, 1, 1, 1, '2019-06-28 20:39:21', '2019-06-28 20:39:21'),
(16, 1, 16, 1, 1, 1, 1, '2019-06-28 21:23:23', '2019-06-28 21:23:23');

-- --------------------------------------------------------

--
-- Table structure for table `role_module_fields`
--

CREATE TABLE `role_module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `field_id` int(10) UNSIGNED NOT NULL,
  `access` enum('invisible','readonly','write') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_module_fields`
--

INSERT INTO `role_module_fields` (`id`, `role_id`, `field_id`, `access`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(2, 1, 2, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(3, 1, 3, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(4, 1, 4, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(5, 1, 5, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(6, 1, 6, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(7, 1, 7, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(8, 1, 8, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(9, 1, 9, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(10, 1, 10, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(11, 1, 11, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(12, 1, 12, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(13, 1, 13, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(14, 1, 14, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(15, 1, 15, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(16, 1, 16, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(17, 1, 17, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(18, 1, 18, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(19, 1, 19, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(20, 1, 20, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(21, 1, 21, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(22, 1, 22, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(23, 1, 23, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(24, 1, 24, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(25, 1, 25, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(26, 1, 26, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(27, 1, 27, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(28, 1, 28, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(29, 1, 29, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(30, 1, 30, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(31, 1, 31, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(32, 1, 32, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(33, 1, 33, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(34, 1, 34, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(35, 1, 35, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(36, 1, 36, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(37, 1, 37, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(38, 1, 38, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(39, 1, 39, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(40, 1, 40, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(41, 1, 41, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(42, 1, 42, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(43, 1, 43, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(44, 1, 44, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(45, 1, 45, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(46, 1, 46, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(47, 1, 47, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(48, 1, 48, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(49, 1, 49, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(50, 1, 50, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(51, 1, 51, 'write', '2018-03-05 22:13:54', '2018-03-05 22:13:54'),
(52, 1, 52, 'write', '2019-06-28 19:41:41', '2019-06-28 19:41:41'),
(53, 1, 53, 'write', '2019-06-28 19:45:01', '2019-06-28 19:45:01'),
(54, 1, 54, 'write', '2019-06-28 19:45:16', '2019-06-28 19:45:16'),
(55, 1, 55, 'write', '2019-06-28 20:02:19', '2019-06-28 20:02:19'),
(56, 1, 56, 'write', '2019-06-28 20:02:36', '2019-06-28 20:02:36'),
(57, 1, 57, 'write', '2019-06-28 20:02:51', '2019-06-28 20:02:51'),
(58, 1, 58, 'write', '2019-06-28 20:03:16', '2019-06-28 20:03:16'),
(59, 1, 59, 'write', '2019-06-28 20:04:28', '2019-06-28 20:04:28'),
(60, 1, 60, 'write', '2019-06-28 20:04:39', '2019-06-28 20:04:39'),
(61, 1, 61, 'write', '2019-06-28 20:05:06', '2019-06-28 20:05:06'),
(62, 1, 62, 'write', '2019-06-28 20:05:25', '2019-06-28 20:05:25'),
(63, 1, 63, 'write', '2019-06-28 20:07:52', '2019-06-28 20:07:52'),
(64, 1, 64, 'write', '2019-06-28 20:08:11', '2019-06-28 20:08:11'),
(65, 1, 65, 'write', '2019-06-28 20:08:26', '2019-06-28 20:08:26'),
(66, 1, 66, 'write', '2019-06-28 20:08:42', '2019-06-28 20:08:42'),
(67, 1, 67, 'write', '2019-06-28 20:09:09', '2019-06-28 20:09:09'),
(68, 1, 68, 'write', '2019-06-28 20:09:27', '2019-06-28 20:09:27'),
(69, 1, 69, 'write', '2019-06-28 20:13:54', '2019-06-28 20:13:54'),
(70, 1, 70, 'write', '2019-06-28 20:14:12', '2019-06-28 20:14:12'),
(71, 1, 71, 'write', '2019-06-28 20:14:40', '2019-06-28 20:14:40'),
(72, 1, 72, 'write', '2019-06-28 20:15:02', '2019-06-28 20:15:02'),
(73, 1, 73, 'write', '2019-06-28 20:15:24', '2019-06-28 20:15:24'),
(74, 1, 74, 'write', '2019-06-28 20:39:16', '2019-06-28 20:39:16'),
(75, 1, 75, 'write', '2019-06-28 21:22:45', '2019-06-28 21:22:45'),
(76, 1, 76, 'write', '2019-06-28 21:23:00', '2019-06-28 21:23:00'),
(77, 1, 77, 'write', '2019-06-28 21:23:20', '2019-06-28 21:23:20'),
(78, 1, 78, 'write', '2019-06-29 23:26:47', '2019-06-29 23:26:47'),
(79, 1, 79, 'write', '2019-06-29 23:27:04', '2019-06-29 23:27:04');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `category` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `deleted_at`, `created_at`, `updated_at`, `name`, `category`) VALUES
(1, NULL, '2019-06-28 19:45:34', '2019-06-28 19:45:34', 'Android', 1),
(2, NULL, '2019-06-28 19:45:43', '2019-06-28 19:45:43', 'Kotlin', 1),
(3, NULL, '2019-06-28 19:45:49', '2019-06-28 19:45:49', 'Swift', 1),
(4, NULL, '2019-06-28 19:45:54', '2019-06-28 19:45:54', 'PHP', 2),
(5, NULL, '2019-06-28 19:46:06', '2019-06-28 19:46:06', 'MySQL', 4);

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `skill` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `member_position` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `profile` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `team_members`
--

INSERT INTO `team_members` (`id`, `deleted_at`, `created_at`, `updated_at`, `name`, `email`, `phone`, `skill`, `member_position`, `profile`) VALUES
(1, NULL, '2019-06-28 20:50:18', '2019-06-28 20:54:25', 'Phoe Kyaw', 'phoekyaw@gmail.com', '09374374', 'Android, Java, Kotlin,  PHP, React Native, HTML, CSS, JavaScript', 'Application Developer', '[\"2\"]'),
(2, NULL, '2019-06-28 20:51:31', '2019-06-28 20:51:31', 'Tun Tun Min', 'tuntunmin@gmail.com', '093487384', 'PHP, Wordpress, HTML, CSS, JavaScript', 'Web Developer', '[\"6\"]'),
(3, NULL, '2019-06-28 20:52:31', '2019-06-28 20:52:31', 'Kyaw Min Thu', 'kyawminthu@gmail.com', '093843874', 'PHP, HTML, CSS, JavaScript, Wordpress CMS', 'Web Developer', '[\"8\"]'),
(4, NULL, '2019-06-28 20:53:16', '2019-06-28 20:53:16', 'Sai Soe San', 'saisoesan@gmail.com', '09343847', 'PHP, Wordpress, React Native, Node.js, HTML, CSS, JavaScript', 'Web Developer', '[\"3\"]'),
(5, NULL, '2019-06-28 20:54:09', '2019-06-28 20:54:09', 'Aung Pyae Phyo', 'aunglaycu@gmail.com', '093476374', 'Android, Java, Kotlin, PHP, HTML, CSS, JavaScript', 'Application Developer', '[\"7\"]'),
(6, NULL, '2019-06-28 20:55:03', '2019-06-28 20:55:03', 'That Zin Oo', 'thantzinoo@gmail.com', '0934348', 'PHP, Node.js, HTML, CSS, JavaScript', 'Web Developer', '[\"5\"]'),
(7, NULL, '2019-06-28 20:55:42', '2019-06-28 20:55:42', 'Kyaw Ye Aung', 'kyawyeaung@gmail.com', '09347374', 'PHP, Node.js, HTML, CSS, JavaScript', 'Web Developer', '[\"4\"]');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `topic_category` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `deleted_at`, `created_at`, `updated_at`, `topic_category`) VALUES
(1, NULL, '2019-06-28 20:39:29', '2019-06-28 20:39:29', 1),
(2, NULL, '2019-06-28 20:39:36', '2019-06-28 20:39:36', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tutorials`
--

CREATE TABLE `tutorials` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(300) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` varchar(20000) COLLATE utf8_unicode_ci DEFAULT '',
  `sub_category` int(10) UNSIGNED DEFAULT NULL,
  `post_date` date DEFAULT NULL,
  `images` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `credit` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `shared_link` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extension` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caption` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT '1',
  `hash` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `name`, `path`, `extension`, `caption`, `user_id`, `hash`, `public`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Recipe_20180404_113616_01.jpg', '/Users/hostmyanmar/Desktop/laraadmin/hfw/storage/uploads/2018-04-10-160507-Recipe_20180404_113616_01.jpg', 'jpg', '', 1, 'larefnrl4pcogktl5x3r', 0, '2018-04-10 09:35:12', '2018-04-10 09:35:07', '2018-04-10 09:35:12'),
(2, 'phoekyaw.png', '/Users/aungpyaephyo/Documents/Projects/Website/endless/endlessblog/storage/uploads/2019-06-29-044947-phoekyaw.png', 'png', '', 1, 'kroylzd6uk6swht7sexq', 1, NULL, '2019-06-28 20:49:47', '2019-06-28 20:49:47'),
(3, 'saisoesan.png', '/Users/aungpyaephyo/Documents/Projects/Website/endless/endlessblog/storage/uploads/2019-06-29-044952-saisoesan.png', 'png', '', 1, '3wvjuikewlfce4lstor5', 1, NULL, '2019-06-28 20:49:52', '2019-06-28 20:49:52'),
(4, 'kyawyeaung 2.png', '/Users/aungpyaephyo/Documents/Projects/Website/endless/endlessblog/storage/uploads/2019-06-29-044955-kyawyeaung 2.png', 'png', '', 1, '5hcw9hcumzq9xcowlafv', 1, NULL, '2019-06-28 20:49:55', '2019-06-28 20:49:55'),
(5, 'thantzinoo.jpg', '/Users/aungpyaephyo/Documents/Projects/Website/endless/endlessblog/storage/uploads/2019-06-29-045000-thantzinoo.jpg', 'jpg', '', 1, 'mlwkahnhfn52eizhyuc4', 1, NULL, '2019-06-28 20:50:00', '2019-06-28 20:50:00'),
(6, 'tuntunmin.png', '/Users/aungpyaephyo/Documents/Projects/Website/endless/endlessblog/storage/uploads/2019-06-29-045004-tuntunmin.png', 'png', '', 1, '7dbirwl7dnoplr8e2cti', 1, NULL, '2019-06-28 20:50:04', '2019-06-28 20:50:04'),
(7, 'aungpyae.png', '/Users/aungpyaephyo/Documents/Projects/Website/endless/endlessblog/storage/uploads/2019-06-29-045009-aungpyae.png', 'png', '', 1, 'vou2vstycimfoochd7m6', 1, NULL, '2019-06-28 20:50:09', '2019-06-28 20:50:09'),
(8, 'kyawminthu.jpg', '/Users/aungpyaephyo/Documents/Projects/Website/endless/endlessblog/storage/uploads/2019-06-29-045227-kyawminthu.jpg', 'jpg', '', 1, 'iwsst6mzczkuosxdh6vv', 1, NULL, '2019-06-28 20:52:27', '2019-06-28 20:52:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `context_id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `type` varchar(191) COLLATE utf8_unicode_ci DEFAULT 'Employee',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `context_id`, `email`, `password`, `type`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 1, 'info@endlesstech.com', '$2y$10$MNP1BYcuMMQI12b4pjpseuYY3DY0uy/q2BJ5Kaw8w/CyKspidWUpi', 'Employee', NULL, NULL, '2018-03-05 22:14:06', '2018-03-05 22:14:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `backups_name_unique` (`name`),
  ADD UNIQUE KEY `backups_file_name_unique` (`file_name`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_sub_category_foreign` (`sub_category`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_name_unique` (`name`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_dept_foreign` (`dept`);

--
-- Indexes for table `home_banners`
--
ALTER TABLE `home_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itnews`
--
ALTER TABLE `itnews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `la_configs`
--
ALTER TABLE `la_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `la_menus`
--
ALTER TABLE `la_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_fields`
--
ALTER TABLE `module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_fields_module_foreign` (`module`),
  ADD KEY `module_fields_field_type_foreign` (`field_type`);

--
-- Indexes for table `module_field_types`
--
ALTER TABLE `module_field_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `organizations_name_unique` (`name`),
  ADD KEY `organizations_assigned_to_foreign` (`assigned_to`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD KEY `roles_parent_foreign` (`parent`),
  ADD KEY `roles_dept_foreign` (`dept`);

--
-- Indexes for table `role_module`
--
ALTER TABLE `role_module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_role_id_foreign` (`role_id`),
  ADD KEY `role_module_module_id_foreign` (`module_id`);

--
-- Indexes for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_fields_role_id_foreign` (`role_id`),
  ADD KEY `role_module_fields_field_id_foreign` (`field_id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_foreign` (`category`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topics_topic_category_foreign` (`topic_category`);

--
-- Indexes for table `tutorials`
--
ALTER TABLE `tutorials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tutorials_sub_category_foreign` (`sub_category`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uploads_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_banners`
--
ALTER TABLE `home_banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `itnews`
--
ALTER TABLE `itnews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `la_configs`
--
ALTER TABLE `la_configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `la_menus`
--
ALTER TABLE `la_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `module_fields`
--
ALTER TABLE `module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `module_field_types`
--
ALTER TABLE `module_field_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_module`
--
ALTER TABLE `role_module`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tutorials`
--
ALTER TABLE `tutorials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_sub_category_foreign` FOREIGN KEY (`sub_category`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `module_fields`
--
ALTER TABLE `module_fields`
  ADD CONSTRAINT `module_fields_field_type_foreign` FOREIGN KEY (`field_type`) REFERENCES `module_field_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `module_fields_module_foreign` FOREIGN KEY (`module`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `organizations`
--
ALTER TABLE `organizations`
  ADD CONSTRAINT `organizations_assigned_to_foreign` FOREIGN KEY (`assigned_to`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `roles_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_module`
--
ALTER TABLE `role_module`
  ADD CONSTRAINT `role_module_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD CONSTRAINT `role_module_fields_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `module_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_fields_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_foreign` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_topic_category_foreign` FOREIGN KEY (`topic_category`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tutorials`
--
ALTER TABLE `tutorials`
  ADD CONSTRAINT `tutorials_sub_category_foreign` FOREIGN KEY (`sub_category`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `uploads`
--
ALTER TABLE `uploads`
  ADD CONSTRAINT `uploads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
