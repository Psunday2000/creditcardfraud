-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2023 at 02:26 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `creditcardfraud`
--

-- --------------------------------------------------------

--
-- Table structure for table `credit_cards`
--

CREATE TABLE `credit_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `card_number` varchar(255) NOT NULL,
  `expiration_date` date NOT NULL,
  `cvv` varchar(255) NOT NULL,
  `security_question` varchar(255) NOT NULL,
  `security_answer` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `credit_cards`
--

INSERT INTO `credit_cards` (`id`, `user_id`, `card_number`, `expiration_date`, `cvv`, `security_question`, `security_answer`, `created_at`, `updated_at`) VALUES
(1, 15, '4556949067120483', '2025-05-22', '273', 'What is your favorite color?', 'Salmon', '2023-12-18 12:23:02', '2023-12-18 12:23:02'),
(2, 20, '2720250102194285', '2024-05-06', '409', 'What is your favorite food?', 'Yam and Beans', '2023-12-18 12:23:02', '2023-12-18 12:23:02'),
(3, 11, '6011977791826186', '2026-07-25', '297', 'What is your favorite color?', 'LightYellow', '2023-12-18 12:23:02', '2023-12-18 12:23:02'),
(4, 6, '343293299640323', '2026-03-18', '862', 'What is your favorite color?', 'Silver', '2023-12-18 12:23:02', '2023-12-18 12:23:02'),
(5, 16, '2588317040056099', '2024-09-16', '60', 'What is your favorite color?', 'Gray', '2023-12-18 12:23:02', '2023-12-18 12:23:02'),
(6, 13, '4485358527468571', '2025-06-03', '675', 'What is your favorite color?', 'MediumOrchid', '2023-12-18 12:23:02', '2023-12-18 12:23:02'),
(7, 13, '4485939231159422', '2025-06-26', '439', 'What is your favorite color?', 'Tan', '2023-12-18 12:23:02', '2023-12-18 12:23:02'),
(8, 7, '4556208443847362', '2024-05-13', '515', 'What is your favorite color?', 'OliveDrab', '2023-12-18 12:23:02', '2023-12-18 12:23:02'),
(9, 2, '4539621607062432', '2025-05-23', '905', 'What is your favorite color?', 'Moccasin', '2023-12-18 12:23:02', '2023-12-18 12:23:02'),
(10, 10, '4024007180519232', '2025-04-30', '248', 'What is your favorite color?', 'GhostWhite', '2023-12-18 12:23:02', '2023-12-18 12:23:02'),
(11, 7, '4556675974006149', '2024-03-31', '790', 'What is your favorite color?', 'Aquamarine', '2023-12-18 12:23:02', '2023-12-18 12:23:02'),
(12, 20, '4556348702258164', '2024-11-26', '916', 'What is your favorite color?', 'Turquoise', '2023-12-18 12:23:02', '2023-12-18 12:23:02'),
(13, 15, '5223297590559037', '2026-01-22', '165', 'What is your favorite color?', 'PaleVioletRed', '2023-12-18 12:23:02', '2023-12-18 12:23:02'),
(14, 6, '4539417486498924', '2024-05-19', '664', 'What is your favorite color?', 'Beige', '2023-12-18 12:23:02', '2023-12-18 12:23:02'),
(15, 6, '4532049779695', '2024-12-09', '816', 'What is your favorite color?', 'Plum', '2023-12-18 12:23:02', '2023-12-18 12:23:02'),
(16, 12, '4916588630234713', '2026-10-10', '123', 'What is your favorite color?', 'MediumSeaGreen', '2023-12-18 12:23:02', '2023-12-18 12:23:02'),
(17, 13, '4916490888323001', '2025-03-01', '92', 'What is your favorite color?', 'OrangeRed', '2023-12-18 12:23:02', '2023-12-18 12:23:02'),
(18, 12, '5415262747960189', '2025-04-18', '799', 'What is your favorite color?', 'LightPink', '2023-12-18 12:23:02', '2023-12-18 12:23:02'),
(19, 7, '6011120294718176', '2025-05-05', '216', 'What is your favorite color?', 'DeepPink', '2023-12-18 12:23:02', '2023-12-18 12:23:02'),
(20, 13, '4556916521302', '2024-03-04', '146', 'What is your favorite color?', 'WhiteSmoke', '2023-12-18 12:23:02', '2023-12-18 12:23:02');

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
(13, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(14, '2023_12_18_000001_create_users_table', 1),
(15, '2023_12_18_000002_create_failed_jobs_table', 1),
(16, '2023_12_18_000004_create_password_reset_tokens_table', 1),
(17, '2023_12_18_000005_create_credit_cards_table', 1),
(18, '2023_12_18_000006_create_transactions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `credit_card_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `credit_card_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'success', '2023-12-18 12:24:02', '2023-12-18 12:24:02'),
(2, 3, 1, 'success', '2023-12-18 12:24:02', '2023-12-18 12:24:02'),
(3, 1, 2, 'success', '2023-12-18 12:24:02', '2023-12-18 12:24:02'),
(4, 2, 4, 'success', '2023-12-18 12:24:02', '2023-12-18 12:24:02'),
(5, 3, 4, 'success', '2023-12-18 12:24:03', '2023-12-18 12:24:03'),
(6, 2, 3, 'success', '2023-12-18 12:24:03', '2023-12-18 12:24:03'),
(7, 4, 1, 'success', '2023-12-18 12:24:03', '2023-12-18 12:24:03'),
(8, 4, 1, 'success', '2023-12-18 12:24:03', '2023-12-18 12:24:03'),
(9, 3, 4, 'success', '2023-12-18 12:24:03', '2023-12-18 12:24:03'),
(10, 5, 1, 'failure', '2023-12-18 12:24:03', '2023-12-18 12:24:03'),
(11, 4, 2, 'failure', '2023-12-18 12:24:27', '2023-12-18 12:24:27'),
(12, 6, 2, 'success', '2023-12-18 12:24:27', '2023-12-18 12:24:27'),
(13, 7, 5, 'failure', '2023-12-18 12:24:27', '2023-12-18 12:24:27'),
(14, 7, 3, 'failure', '2023-12-18 12:24:27', '2023-12-18 12:24:27'),
(15, 8, 1, 'success', '2023-12-18 12:24:27', '2023-12-18 12:24:27'),
(16, 4, 4, 'failure', '2023-12-18 12:24:27', '2023-12-18 12:24:27'),
(17, 9, 2, 'failure', '2023-12-18 12:24:27', '2023-12-18 12:24:27'),
(18, 3, 1, 'success', '2023-12-18 12:24:27', '2023-12-18 12:24:27'),
(19, 1, 3, 'failure', '2023-12-18 12:24:27', '2023-12-18 12:24:27'),
(20, 2, 4, 'failure', '2023-12-18 12:24:27', '2023-12-18 12:24:27'),
(21, 20, 2, 'success', '2023-12-19 09:55:51', '2023-12-19 09:55:51'),
(22, 15, 1, 'success', '2023-12-21 07:14:18', '2023-12-21 07:14:18'),
(23, 15, 1, 'success', '2023-12-21 08:13:46', '2023-12-21 08:13:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mara Paucek', 'kreynolds@example.org', '2023-12-18 12:18:33', '$2y$12$GntvrxlsQ0r0crl8ncw9IOsgKB1LdBYBlKEqVmkvKQzfoPId4ob2G', 'pGvD7BydxA', '2023-12-18 12:18:33', '2023-12-18 12:18:33'),
(2, 'Brooks Torp', 'herzog.audrey@example.org', '2023-12-18 12:18:33', '$2y$12$GntvrxlsQ0r0crl8ncw9IOsgKB1LdBYBlKEqVmkvKQzfoPId4ob2G', 'HEVToHYN1w', '2023-12-18 12:18:33', '2023-12-18 12:18:33'),
(3, 'Theodora Johnston', 'quentin.bradtke@example.net', '2023-12-18 12:18:33', '$2y$12$GntvrxlsQ0r0crl8ncw9IOsgKB1LdBYBlKEqVmkvKQzfoPId4ob2G', 'y2UCJ2KNcL', '2023-12-18 12:18:33', '2023-12-18 12:18:33'),
(4, 'Mrs. Aracely Parker', 'lilian.rau@example.com', '2023-12-18 12:18:33', '$2y$12$GntvrxlsQ0r0crl8ncw9IOsgKB1LdBYBlKEqVmkvKQzfoPId4ob2G', 'K1sT7DyYkL', '2023-12-18 12:18:33', '2023-12-18 12:18:33'),
(5, 'Gisselle Keeling', 'vmiller@example.org', '2023-12-18 12:18:33', '$2y$12$GntvrxlsQ0r0crl8ncw9IOsgKB1LdBYBlKEqVmkvKQzfoPId4ob2G', 'u1LFvyZGMK', '2023-12-18 12:18:33', '2023-12-18 12:18:33'),
(6, 'Jayne Marks', 'christy.klocko@example.org', '2023-12-18 12:21:11', '$2y$12$0iIMOmmvG.ONNKPDCUia9udKE0cPsRCCsZWW6VXNQ/IIGtEuKZky.', 'eDYNidx4X0', '2023-12-18 12:21:11', '2023-12-18 12:21:11'),
(7, 'Marguerite Powlowski', 'christine22@example.org', '2023-12-18 12:21:11', '$2y$12$0iIMOmmvG.ONNKPDCUia9udKE0cPsRCCsZWW6VXNQ/IIGtEuKZky.', 'mZkAcrfIpD', '2023-12-18 12:21:11', '2023-12-18 12:21:11'),
(8, 'Victor Reichel V', 'collin.hansen@example.org', '2023-12-18 12:21:11', '$2y$12$0iIMOmmvG.ONNKPDCUia9udKE0cPsRCCsZWW6VXNQ/IIGtEuKZky.', 'flYPMz96Ep', '2023-12-18 12:21:11', '2023-12-18 12:21:11'),
(9, 'Dr. Ethelyn Oberbrunner', 'kovacek.donavon@example.org', '2023-12-18 12:21:11', '$2y$12$0iIMOmmvG.ONNKPDCUia9udKE0cPsRCCsZWW6VXNQ/IIGtEuKZky.', '7WyhPlaBnX', '2023-12-18 12:21:11', '2023-12-18 12:21:11'),
(10, 'Maryam Lehner III', 'lon95@example.com', '2023-12-18 12:21:11', '$2y$12$0iIMOmmvG.ONNKPDCUia9udKE0cPsRCCsZWW6VXNQ/IIGtEuKZky.', 'crmKmcK1C7', '2023-12-18 12:21:11', '2023-12-18 12:21:11'),
(11, 'Dr. Blake Padberg V', 'antoinette.gibson@example.net', '2023-12-18 12:21:20', '$2y$12$tq7WluJdY.KCneq5MH2ThejhC5mUWsMd5CqHiZdQEzkEf3cy0sU4W', 'bMuc7DWVOv', '2023-12-18 12:21:20', '2023-12-18 12:21:20'),
(12, 'Dr. Karelle Bosco Sr.', 'clifford54@example.net', '2023-12-18 12:21:20', '$2y$12$tq7WluJdY.KCneq5MH2ThejhC5mUWsMd5CqHiZdQEzkEf3cy0sU4W', '1Td5a79CDF', '2023-12-18 12:21:20', '2023-12-18 12:21:20'),
(13, 'Maritza Durgan', 'kyle.turcotte@example.com', '2023-12-18 12:21:20', '$2y$12$tq7WluJdY.KCneq5MH2ThejhC5mUWsMd5CqHiZdQEzkEf3cy0sU4W', '9p8mwEWMtj', '2023-12-18 12:21:20', '2023-12-18 12:21:20'),
(14, 'Aisha Beier', 'dtreutel@example.net', '2023-12-18 12:21:20', '$2y$12$tq7WluJdY.KCneq5MH2ThejhC5mUWsMd5CqHiZdQEzkEf3cy0sU4W', 'TJhwcyofQ1', '2023-12-18 12:21:20', '2023-12-18 12:21:20'),
(15, 'Bernhard Parisian II', 'eldon.fahey@example.com', '2023-12-18 12:21:20', '$2y$12$tq7WluJdY.KCneq5MH2ThejhC5mUWsMd5CqHiZdQEzkEf3cy0sU4W', 'NyfLcwUrgz', '2023-12-18 12:21:20', '2023-12-18 12:21:20'),
(16, 'Prof. Newell Denesik DVM', 'xshanahan@example.com', '2023-12-18 12:21:22', '$2y$12$mk/2kzpp8rIis20xBGyhk.dXIbNDuYyrCQ3lp.W57Bv4mHw9JiFJG', 'vPQowkQHS8', '2023-12-18 12:21:22', '2023-12-18 12:21:22'),
(17, 'Dr. Shane Schowalter PhD', 'iva.hessel@example.org', '2023-12-18 12:21:22', '$2y$12$mk/2kzpp8rIis20xBGyhk.dXIbNDuYyrCQ3lp.W57Bv4mHw9JiFJG', 'pIVPg09ZkI', '2023-12-18 12:21:22', '2023-12-18 12:21:22'),
(18, 'Thad Schiller', 'thomas71@example.org', '2023-12-18 12:21:22', '$2y$12$mk/2kzpp8rIis20xBGyhk.dXIbNDuYyrCQ3lp.W57Bv4mHw9JiFJG', 'h13FHnf32B', '2023-12-18 12:21:22', '2023-12-18 12:21:22'),
(19, 'Dayne Rolfson', 'maiya.schroeder@example.org', '2023-12-18 12:21:22', '$2y$12$mk/2kzpp8rIis20xBGyhk.dXIbNDuYyrCQ3lp.W57Bv4mHw9JiFJG', 'vzXR6iWAps', '2023-12-18 12:21:22', '2023-12-18 12:21:22'),
(20, 'Dr. Reese Russel III', 'vhyatt@example.com', '2023-12-18 12:21:22', '$2y$12$mk/2kzpp8rIis20xBGyhk.dXIbNDuYyrCQ3lp.W57Bv4mHw9JiFJG', 'v6qm3e2ZKI', '2023-12-18 12:21:22', '2023-12-18 12:21:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `credit_cards`
--
ALTER TABLE `credit_cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `credit_cards_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_credit_card_id_foreign` (`credit_card_id`);

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
-- AUTO_INCREMENT for table `credit_cards`
--
ALTER TABLE `credit_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `credit_cards`
--
ALTER TABLE `credit_cards`
  ADD CONSTRAINT `credit_cards_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_credit_card_id_foreign` FOREIGN KEY (`credit_card_id`) REFERENCES `credit_cards` (`id`),
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
