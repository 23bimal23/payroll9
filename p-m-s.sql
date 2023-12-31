-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2023 at 09:36 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `p-m-s`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `date_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `name`, `email`, `description`, `date_time`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'company@example.com', 'Has log in', 'Thu, Jun 15, 2023 7:43 PM', NULL, NULL),
(2, 'admin', 'company@example.com', 'Has log in', 'Sun, Jun 18, 2023 8:47 AM', NULL, NULL),
(3, 'admin', 'company@example.com', 'Has log out', 'Sun, Jun 18, 2023 8:48 AM', NULL, NULL),
(4, 'bimal', 'vat@gmail.com', 'Has log in', 'Tue, Jun 20, 2023 10:30 PM', NULL, NULL),
(5, 'admin', 'company@example.com', 'Has log in', 'Fri, Jun 23, 2023 8:47 AM', NULL, NULL),
(6, 'bimal', 'vat@gmail.com', 'Has log in', 'Fri, Jun 23, 2023 11:18 AM', NULL, NULL),
(7, 'bimal', 'vat@gmail.com', 'Has log in', 'Tue, Jul 11, 2023 2:47 PM', NULL, NULL),
(8, 'bimal', 'vat@gmail.com', 'Has log in', 'Wed, Jul 12, 2023 1:12 PM', NULL, NULL),
(9, 'bimal', 'vat@gmail.com', 'Has log in', 'Sun, Jul 23, 2023 3:09 PM', NULL, NULL),
(10, 'bimal', 'vat@gmail.com', 'Has log out', 'Sun, Jul 23, 2023 3:12 PM', NULL, NULL),
(11, 'bimal', 'vat@gmail.com', 'Has log in', 'Sun, Jul 23, 2023 3:17 PM', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `add_jobs`
--

CREATE TABLE `add_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `job_location` varchar(255) DEFAULT NULL,
  `no_of_vacancies` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `salary_from` varchar(255) DEFAULT NULL,
  `salary_to` varchar(255) DEFAULT NULL,
  `job_type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `expired_date` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `count` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'A', NULL, NULL),
(2, 'B', NULL, NULL),
(3, 'C', NULL, NULL),
(4, 'D', NULL, NULL),
(5, 'E', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `apply_for_jobs`
--

CREATE TABLE `apply_for_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `cv_upload` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department`, `created_at`, `updated_at`) VALUES
(1, 'Web Department', NULL, NULL),
(2, 'IT Management', NULL, NULL),
(3, 'Marketing', NULL, NULL),
(4, 'commerce', '2023-07-23 09:51:56', '2023-07-23 09:51:56');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `birth_date` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estimates`
--

CREATE TABLE `estimates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `estimate_number` varchar(255) NOT NULL,
  `client` varchar(255) DEFAULT NULL,
  `project` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `client_address` varchar(255) DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `estimate_date` varchar(255) DEFAULT NULL,
  `expiry_date` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `tax_1` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `grand_total` varchar(255) DEFAULT NULL,
  `other_information` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Triggers `estimates`
--
DELIMITER $$
CREATE TRIGGER `id_estimate` BEFORE INSERT ON `estimates` FOR EACH ROW BEGIN
                INSERT INTO sequence_estimates VALUES (NULL);
                SET NEW.estimate_number = CONCAT("EST_", LPAD(LAST_INSERT_ID(), 6, "0"));
            END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `estimates_adds`
--

CREATE TABLE `estimates_adds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `estimate_number` varchar(255) NOT NULL,
  `item` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `unit_cost` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `purchase_from` varchar(255) DEFAULT NULL,
  `purchase_date` varchar(255) DEFAULT NULL,
  `purchased_by` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `paid_by` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `attachments` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_holiday` varchar(255) DEFAULT NULL,
  `date_holiday` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`id`, `name_holiday`, `date_holiday`, `created_at`, `updated_at`) VALUES
(1, 'bida', '11-07-2023', '2023-07-23 09:25:14', '2023-07-23 09:25:14');

-- --------------------------------------------------------

--
-- Table structure for table `leaves_admins`
--

CREATE TABLE `leaves_admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `leave_type` varchar(255) DEFAULT NULL,
  `from_date` varchar(255) DEFAULT NULL,
  `to_date` varchar(255) DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `leave_reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_04_25_224042_create_user_activity_logs_table', 1),
(6, '2021_04_30_224320_create_activity_logs_table', 1),
(7, '2021_05_03_061844_create_user_types_table', 1),
(8, '2021_05_03_061918_create_role_type_users_table', 1),
(9, '2021_06_04_053627_create_sequence_tbls_table', 1),
(10, '2021_06_04_053741_create_generate_id_tbls_table', 1),
(11, '2021_07_03_161410_create_position_types_table', 1),
(12, '2021_07_03_171244_create_departments_table', 1),
(13, '2021_07_14_054840_create_employees_table', 1),
(14, '2021_07_16_143215_create_module_permissions_table', 1),
(15, '2021_07_27_053429_create_holidays_table', 1),
(16, '2021_08_01_052433_create_permission_lists_table', 1),
(17, '2021_08_08_054847_create_roles_permissions_table', 1),
(18, '2021_08_13_054414_create_profile_information_table', 1),
(19, '2021_08_23_053914_create_leaves_admins_table', 1),
(20, '2021_09_21_054658_create_staff_salaries_table', 1),
(21, '2021_11_06_201850_create_performance_indicator_lists_table', 1),
(22, '2021_11_09_070649_create_performance_indicators_table', 1),
(23, '2021_11_18_055032_create_performance_appraisals_table', 1),
(24, '2021_12_04_055348_create_trainings_table', 1),
(25, '2022_01_07_060821_create_trainers_table', 1),
(26, '2022_02_02_060242_create_training_types_table', 1),
(27, '2022_04_23_223952_create_estimates_table', 1),
(28, '2022_04_24_222616_create_estimate_numbers_table', 1),
(29, '2022_04_25_222644_create_estimates_adds_table', 1),
(30, '2022_05_07_224549_create_sequence_estimates_table', 1),
(31, '2022_06_22_051203_create_expenses_table', 1),
(32, '2022_09_04_182928_create_personal_information_table', 1),
(33, '2022_09_16_190428_create_type_jobs_table', 1),
(34, '2022_09_21_053939_create_add_jobs_table', 1),
(35, '2022_10_08_052414_create_apply_for_jobs_table', 1),
(36, '2022_12_18_175400_create_categories_table', 1),
(37, '2022_12_24_180155_create_answers_table', 1),
(38, '2022_12_24_182824_create_questions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `module_permissions`
--

CREATE TABLE `module_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `module_permission` varchar(255) DEFAULT NULL,
  `id_count` varchar(255) DEFAULT NULL,
  `read` varchar(255) DEFAULT NULL,
  `write` varchar(255) DEFAULT NULL,
  `create` varchar(255) DEFAULT NULL,
  `delete` varchar(255) DEFAULT NULL,
  `import` varchar(255) DEFAULT NULL,
  `export` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `performance_appraisals`
--

CREATE TABLE `performance_appraisals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `customer_experience` varchar(255) DEFAULT NULL,
  `marketing` varchar(255) DEFAULT NULL,
  `management` varchar(255) DEFAULT NULL,
  `administration` varchar(255) DEFAULT NULL,
  `presentation_skill` varchar(255) DEFAULT NULL,
  `quality_of_Work` varchar(255) DEFAULT NULL,
  `efficiency` varchar(255) DEFAULT NULL,
  `integrity` varchar(255) DEFAULT NULL,
  `professionalism` varchar(255) DEFAULT NULL,
  `team_work` varchar(255) DEFAULT NULL,
  `critical_thinking` varchar(255) DEFAULT NULL,
  `conflict_management` varchar(255) DEFAULT NULL,
  `attendance` varchar(255) DEFAULT NULL,
  `ability_to_meet_deadline` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `performance_indicators`
--

CREATE TABLE `performance_indicators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `customer_eperience` varchar(255) DEFAULT NULL,
  `marketing` varchar(255) DEFAULT NULL,
  `management` varchar(255) DEFAULT NULL,
  `administration` varchar(255) DEFAULT NULL,
  `presentation_skill` varchar(255) DEFAULT NULL,
  `quality_of_Work` varchar(255) DEFAULT NULL,
  `efficiency` varchar(255) DEFAULT NULL,
  `integrity` varchar(255) DEFAULT NULL,
  `professionalism` varchar(255) DEFAULT NULL,
  `team_work` varchar(255) DEFAULT NULL,
  `critical_thinking` varchar(255) DEFAULT NULL,
  `conflict_management` varchar(255) DEFAULT NULL,
  `attendance` varchar(255) DEFAULT NULL,
  `ability_to_meet_deadline` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `performance_indicator_lists`
--

CREATE TABLE `performance_indicator_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `per_name_list` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `performance_indicator_lists`
--

INSERT INTO `performance_indicator_lists` (`id`, `per_name_list`, `created_at`, `updated_at`) VALUES
(1, 'None', NULL, NULL),
(2, 'Beginner', NULL, NULL),
(3, 'Intermediate', NULL, NULL),
(4, 'Advanced', NULL, NULL),
(5, 'Expert / Leader', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_lists`
--

CREATE TABLE `permission_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_name` varchar(255) DEFAULT NULL,
  `read` varchar(255) DEFAULT NULL,
  `write` varchar(255) DEFAULT NULL,
  `create` varchar(255) DEFAULT NULL,
  `delete` varchar(255) DEFAULT NULL,
  `import` varchar(255) DEFAULT NULL,
  `export` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_lists`
--

INSERT INTO `permission_lists` (`id`, `permission_name`, `read`, `write`, `create`, `delete`, `import`, `export`) VALUES
(1, 'Holidays', 'Y', 'Y', 'Y', 'Y', 'Y', 'N'),
(2, 'Leaves', 'Y', 'Y', 'Y', 'N', 'N', 'N'),
(3, 'Clients', 'Y', 'Y', 'Y', 'N', 'N', 'N'),
(4, 'Projects', 'Y', 'N', 'Y', 'N', 'N', 'N'),
(5, 'Tasks', 'Y', 'Y', 'Y', 'Y', 'N', 'N'),
(6, 'Chats', 'Y', 'Y', 'Y', 'Y', 'N', 'N'),
(7, 'Assets', 'Y', 'Y', 'Y', 'Y', 'N', 'N'),
(8, 'Timing Sheets', 'Y', 'Y', 'Y', 'Y', 'N', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_information`
--

CREATE TABLE `personal_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `passport_no` varchar(255) NOT NULL,
  `passport_expiry_date` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `marital_status` varchar(255) DEFAULT NULL,
  `employment_of_spouse` varchar(255) DEFAULT NULL,
  `children` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `position_types`
--

CREATE TABLE `position_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `position_types`
--

INSERT INTO `position_types` (`id`, `position`, `created_at`, `updated_at`) VALUES
(1, 'CEO', NULL, NULL),
(2, 'CFO', NULL, NULL),
(3, 'Manager', NULL, NULL),
(4, 'Web Designer', NULL, NULL),
(5, 'Web Developer', NULL, NULL),
(6, 'Android Developer', NULL, NULL),
(7, 'IOS Developer', NULL, NULL),
(8, 'Team Leader', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profile_information`
--

CREATE TABLE `profile_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `birth_date` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pin_code` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `reports_to` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `questions` varchar(255) DEFAULT NULL,
  `option_a` varchar(255) DEFAULT NULL,
  `option_b` varchar(255) DEFAULT NULL,
  `option_c` varchar(255) DEFAULT NULL,
  `option_d` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `code_snippets` varchar(255) DEFAULT NULL,
  `answer_explanation` varchar(255) DEFAULT NULL,
  `video_link` varchar(255) DEFAULT NULL,
  `image_to_question` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permissions_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles_permissions`
--

INSERT INTO `roles_permissions` (`id`, `permissions_name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', NULL, NULL),
(2, 'CEO', NULL, NULL),
(3, 'Manager', NULL, NULL),
(4, 'Team Leader', NULL, NULL),
(5, 'Accountant', NULL, NULL),
(6, 'Web Developer', NULL, NULL),
(7, 'Web Designer', NULL, NULL),
(8, 'HR', NULL, NULL),
(9, 'UI/UX Developer', NULL, NULL),
(10, 'SEO Analyst', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_type_users`
--

CREATE TABLE `role_type_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_type_users`
--

INSERT INTO `role_type_users` (`id`, `role_type`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Super Admin', NULL, NULL),
(3, 'Normal User', NULL, NULL),
(4, 'Client', NULL, NULL),
(5, 'Employee', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sequence_estimates`
--

CREATE TABLE `sequence_estimates` (
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sequence_tbls`
--

CREATE TABLE `sequence_tbls` (
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sequence_tbls`
--

INSERT INTO `sequence_tbls` (`id`) VALUES
(1),
(2);

-- --------------------------------------------------------

--
-- Table structure for table `staff_salaries`
--

CREATE TABLE `staff_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `basic` varchar(255) DEFAULT NULL,
  `da` varchar(255) DEFAULT NULL,
  `hra` varchar(255) DEFAULT NULL,
  `conveyance` varchar(255) DEFAULT NULL,
  `allowance` varchar(255) DEFAULT NULL,
  `medical_allowance` varchar(255) DEFAULT NULL,
  `tds` varchar(255) DEFAULT NULL,
  `esi` varchar(255) DEFAULT NULL,
  `pf` varchar(255) DEFAULT NULL,
  `leave` varchar(255) DEFAULT NULL,
  `prof_tax` varchar(255) DEFAULT NULL,
  `labour_welfare` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `trainer_id` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE `trainings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trainer_id` varchar(255) DEFAULT NULL,
  `employees_id` varchar(255) DEFAULT NULL,
  `training_type` varchar(255) DEFAULT NULL,
  `trainer` varchar(255) DEFAULT NULL,
  `employees` varchar(255) DEFAULT NULL,
  `training_cost` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `training_types`
--

CREATE TABLE `training_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `type_jobs`
--

CREATE TABLE `type_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_type_job` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type_jobs`
--

INSERT INTO `type_jobs` (`id`, `name_type_job`, `created_at`, `updated_at`) VALUES
(1, 'Full Time', NULL, NULL),
(2, 'Part Time', NULL, NULL),
(3, 'Internship', NULL, NULL),
(4, 'Temporary', NULL, NULL),
(5, 'Remote', NULL, NULL),
(6, 'Others', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `join_date` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_id`, `email`, `join_date`, `phone_number`, `status`, `role_name`, `avatar`, `position`, `department`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'KH_00001', 'company@example.com', 'Thu, Jun 15, 2023 7:43 PM', NULL, 'Active', 'Admin', 'photo_defaults.jpg', NULL, NULL, NULL, '$2y$10$C9keVAcyqgHkryWH7l6/JOEWJikg1aenCxOzLj2Gt2nhPXQc3YP.G', NULL, '2023-06-15 13:58:13', '2023-06-15 13:58:13'),
(2, 'bimal', 'KH_00002', 'vat@gmail.com', 'Tue, Jun 20, 2023 10:30 PM', NULL, 'Active', 'Employee', 'photo_defaults.jpg', NULL, NULL, NULL, '$2y$10$dOp79ZM3/VmZVYmUo/eBfuofl4w3NUQt3aSCGJAY6CJFTm4ZRi6Ui', NULL, '2023-06-20 16:45:18', '2023-06-20 16:45:18');

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `id_store` BEFORE INSERT ON `users` FOR EACH ROW BEGIN
                INSERT INTO sequence_tbls VALUES (NULL);
                SET NEW.user_id = CONCAT("KH_", LPAD(LAST_INSERT_ID(), 5, "0"));
            END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_activity_logs`
--

CREATE TABLE `user_activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `modify_user` varchar(255) DEFAULT NULL,
  `date_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `type_name`, `created_at`, `updated_at`) VALUES
(1, 'Active', NULL, NULL),
(2, 'Inactive', NULL, NULL),
(3, 'Disable', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_jobs`
--
ALTER TABLE `add_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apply_for_jobs`
--
ALTER TABLE `apply_for_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estimates`
--
ALTER TABLE `estimates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estimates_adds`
--
ALTER TABLE `estimates_adds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves_admins`
--
ALTER TABLE `leaves_admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_permissions`
--
ALTER TABLE `module_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `performance_appraisals`
--
ALTER TABLE `performance_appraisals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `performance_indicators`
--
ALTER TABLE `performance_indicators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `performance_indicator_lists`
--
ALTER TABLE `performance_indicator_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_lists`
--
ALTER TABLE `permission_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `personal_information`
--
ALTER TABLE `personal_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position_types`
--
ALTER TABLE `position_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_information`
--
ALTER TABLE `profile_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_type_users`
--
ALTER TABLE `role_type_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequence_estimates`
--
ALTER TABLE `sequence_estimates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequence_tbls`
--
ALTER TABLE `sequence_tbls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_salaries`
--
ALTER TABLE `staff_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_types`
--
ALTER TABLE `training_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_jobs`
--
ALTER TABLE `type_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_join_date_unique` (`join_date`);

--
-- Indexes for table `user_activity_logs`
--
ALTER TABLE `user_activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `add_jobs`
--
ALTER TABLE `add_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `apply_for_jobs`
--
ALTER TABLE `apply_for_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estimates`
--
ALTER TABLE `estimates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estimates_adds`
--
ALTER TABLE `estimates_adds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `leaves_admins`
--
ALTER TABLE `leaves_admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `module_permissions`
--
ALTER TABLE `module_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `performance_appraisals`
--
ALTER TABLE `performance_appraisals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `performance_indicators`
--
ALTER TABLE `performance_indicators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `performance_indicator_lists`
--
ALTER TABLE `performance_indicator_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permission_lists`
--
ALTER TABLE `permission_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_information`
--
ALTER TABLE `personal_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `position_types`
--
ALTER TABLE `position_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `profile_information`
--
ALTER TABLE `profile_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `role_type_users`
--
ALTER TABLE `role_type_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sequence_estimates`
--
ALTER TABLE `sequence_estimates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sequence_tbls`
--
ALTER TABLE `sequence_tbls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff_salaries`
--
ALTER TABLE `staff_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `training_types`
--
ALTER TABLE `training_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `type_jobs`
--
ALTER TABLE `type_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_activity_logs`
--
ALTER TABLE `user_activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
