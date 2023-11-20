-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-11-2023 a las 08:54:07
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `regasist`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dni` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `email`, `dni`, `created_at`, `updated_at`) VALUES
(1, 'Adrienne', 'Thompson', 'ffunk@gmail.com', '915', '2023-11-20 11:09:34', '2023-11-20 11:09:34'),
(2, 'Alvena', 'Toy', 'jermey.spencer@jones.com', '874', '2023-11-20 11:09:34', '2023-11-20 11:09:34'),
(3, 'Hailee', 'Schinner', 'cale20@yahoo.com', '075', '2023-11-20 11:09:34', '2023-11-20 11:09:34'),
(4, 'Elwyn', 'Satterfield', 'considine.dion@yahoo.com', '701', '2023-11-20 11:09:34', '2023-11-20 11:09:34'),
(5, 'Elise', 'Bogisich', 'alvena74@jast.com', '747', '2023-11-20 11:09:34', '2023-11-20 11:09:34'),
(6, 'Thelma', 'Buckridge', 'mwaelchi@hotmail.com', '569', '2023-11-20 11:09:35', '2023-11-20 11:09:35'),
(7, 'Vicenta', 'Ward', 'tristin.brakus@lindgren.com', '280', '2023-11-20 11:09:35', '2023-11-20 11:09:35'),
(8, 'Edmond', 'Rippin', 'louvenia68@yahoo.com', '103', '2023-11-20 11:09:36', '2023-11-20 11:09:36'),
(9, 'Ben', 'Auer', 'gstracke@gmail.com', '249', '2023-11-20 11:09:36', '2023-11-20 11:09:36'),
(10, 'Jalen', 'Moen', 'juvenal17@yahoo.com', '972', '2023-11-20 11:09:37', '2023-11-20 11:09:37'),
(11, 'Garett', 'Auer', 'alison08@hotmail.com', '476', '2023-11-20 11:09:37', '2023-11-20 11:09:37'),
(12, 'Art', 'Streich', 'van69@hotmail.com', '189', '2023-11-20 11:09:37', '2023-11-20 11:09:37'),
(13, 'Modesta', 'Predovic', 'ankunding.lyric@gmail.com', '481', '2023-11-20 11:09:37', '2023-11-20 11:09:37'),
(14, 'Kira', 'Spinka', 'ihoeger@donnelly.biz', '334', '2023-11-20 11:09:37', '2023-11-20 11:09:37'),
(15, 'Gaetano', 'Botsford', 'lonnie.wisoky@kirlin.org', '041', '2023-11-20 11:09:37', '2023-11-20 11:09:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_curso`
--

CREATE TABLE `alumno_curso` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alumno_id` bigint(20) UNSIGNED NOT NULL,
  `curso_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias`
--

CREATE TABLE `asistencias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alumno_id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `estado` enum('A','T','F') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Imani Kuphal', '2023-11-20 11:12:02', '2023-11-20 11:12:02'),
(2, 'Cleve Ledner', '2023-11-20 11:12:03', '2023-11-20 11:12:03'),
(3, 'Mr. Maurice Cummings PhD', '2023-11-20 11:12:03', '2023-11-20 11:12:03'),
(4, 'Tre Connelly', '2023-11-20 11:12:04', '2023-11-20 11:12:04'),
(5, 'Ethel Predovic', '2023-11-20 11:12:04', '2023-11-20 11:12:04'),
(6, 'Gregg Bogan V', '2023-11-20 11:12:04', '2023-11-20 11:12:04'),
(7, 'Jason Skiles', '2023-11-20 11:12:05', '2023-11-20 11:12:05'),
(8, 'Dahlia Ferry', '2023-11-20 11:12:05', '2023-11-20 11:12:05'),
(9, 'Mr. Haskell Wunsch DVM', '2023-11-20 11:12:05', '2023-11-20 11:12:05'),
(10, 'Alexie Kautzer PhD', '2023-11-20 11:12:05', '2023-11-20 11:12:05'),
(11, 'Nelle Raynor', '2023-11-20 11:12:05', '2023-11-20 11:12:05'),
(12, 'Garnet Lakin', '2023-11-20 11:12:05', '2023-11-20 11:12:05'),
(13, 'Betsy Bayer Sr.', '2023-11-20 11:12:05', '2023-11-20 11:12:05'),
(14, 'Adrian Romaguera PhD', '2023-11-20 11:12:05', '2023-11-20 11:12:05'),
(15, 'Nikki Braun', '2023-11-20 11:12:05', '2023-11-20 11:12:05'),
(16, 'Giovanni Effertz DDS', '2023-11-20 11:12:06', '2023-11-20 11:12:06'),
(17, 'Dedrick Prosacco', '2023-11-20 11:12:06', '2023-11-20 11:12:06'),
(18, 'Clint Funk Jr.', '2023-11-20 11:12:06', '2023-11-20 11:12:06'),
(19, 'Mr. Kamren Buckridge MD', '2023-11-20 11:12:06', '2023-11-20 11:12:06'),
(20, 'Dixie Yundt PhD', '2023-11-20 11:12:06', '2023-11-20 11:12:06'),
(21, 'Programaciòn', '2023-11-20 11:13:19', '2023-11-20 11:13:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`id`, `nombre`, `apellido`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Casimir', 'Hegmann', 'laurie08@gmail.com', '2023-11-20 11:06:24', '2023-11-20 11:06:24'),
(2, 'Adele', 'Doyle', 'estell40@zemlak.info', '2023-11-20 11:06:24', '2023-11-20 11:06:24'),
(3, 'Eryn', 'Greenfelder', 'bode.trey@gmail.com', '2023-11-20 11:06:24', '2023-11-20 11:06:24'),
(4, 'Vincenza', 'Towne', 'pouros.schuyler@gmail.com', '2023-11-20 11:06:24', '2023-11-20 11:06:24'),
(5, 'Osbaldo', 'Mitchell', 'mshields@yahoo.com', '2023-11-20 11:06:24', '2023-11-20 11:06:24'),
(6, 'Arnold', 'Borer', 'schumm.ernesto@yahoo.com', '2023-11-20 11:06:24', '2023-11-20 11:06:24'),
(7, 'Tomasa', 'Bayer', 'reichel.tyrique@yahoo.com', '2023-11-20 11:06:24', '2023-11-20 11:06:24'),
(8, 'Florence', 'Kovacek', 'cassin.cole@leuschke.com', '2023-11-20 11:06:24', '2023-11-20 11:06:24'),
(9, 'Beulah', 'Turner', 'wisoky.ada@block.com', '2023-11-20 11:06:25', '2023-11-20 11:06:25'),
(10, 'Rachelle', 'Cassin', 'abshire.jakob@gmail.com', '2023-11-20 11:06:25', '2023-11-20 11:06:25'),
(11, 'Roland', 'stiki', 'roland@roland', '2023-11-20 11:07:57', '2023-11-20 11:07:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(56, '2014_10_12_000000_create_users_table', 1),
(57, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(58, '2019_08_19_000000_create_failed_jobs_table', 1),
(59, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(60, '2023_11_18_145811_create_docentes_table', 1),
(61, '2023_11_18_225314_create_alumnos_table', 1),
(62, '2023_11_19_032322_create_cursos_table', 1),
(63, '2023_11_19_054226_create_alumno_curso_table', 1),
(64, '2023_11_19_054447_create_asistencias_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
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
-- Estructura de tabla para la tabla `users`
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
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alumnos_dni_unique` (`dni`);

--
-- Indices de la tabla `alumno_curso`
--
ALTER TABLE `alumno_curso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumno_curso_alumno_id_foreign` (`alumno_id`),
  ADD KEY `alumno_curso_curso_id_foreign` (`curso_id`);

--
-- Indices de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asistencias_alumno_id_foreign` (`alumno_id`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `alumno_curso`
--
ALTER TABLE `alumno_curso`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno_curso`
--
ALTER TABLE `alumno_curso`
  ADD CONSTRAINT `alumno_curso_alumno_id_foreign` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `alumno_curso_curso_id_foreign` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD CONSTRAINT `asistencias_alumno_id_foreign` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
