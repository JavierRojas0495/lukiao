-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2023 a las 05:06:17
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lukiao`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pais_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`id`, `nombre`, `pais_id`, `created_at`, `updated_at`) VALUES
(1, 'Buenos Aires', 1, NULL, NULL),
(2, 'Córdoba', 1, NULL, NULL),
(3, 'Rosario', 1, NULL, NULL),
(4, 'Mendoza', 1, NULL, NULL),
(5, 'La Plata', 1, NULL, NULL),
(6, 'Salta', 1, NULL, NULL),
(7, 'Santa Fe', 1, NULL, NULL),
(8, 'Mar del Plata', 1, NULL, NULL),
(9, 'San Juan', 1, NULL, NULL),
(10, 'Neuquén', 1, NULL, NULL),
(11, 'Tucumán', 1, NULL, NULL),
(12, 'San Miguel de Tucumán', 1, NULL, NULL),
(13, 'Bahía Blanca', 1, NULL, NULL),
(14, 'La Rioja', 1, NULL, NULL),
(15, 'Corrientes', 1, NULL, NULL),
(16, 'Posadas', 1, NULL, NULL),
(17, 'Jujuy', 1, NULL, NULL),
(18, 'Formosa', 1, NULL, NULL),
(19, 'San Luis', 1, NULL, NULL),
(20, 'Rawson', 1, NULL, NULL),
(21, 'Río de Janeiro', 2, NULL, NULL),
(22, 'São Paulo', 2, NULL, NULL),
(23, 'Brasilia', 2, NULL, NULL),
(24, 'Salvador', 2, NULL, NULL),
(25, 'Fortaleza', 2, NULL, NULL),
(26, 'Belo Horizonte', 2, NULL, NULL),
(27, 'Manaos', 2, NULL, NULL),
(28, 'Curitiba', 2, NULL, NULL),
(29, 'Recife', 2, NULL, NULL),
(30, 'Porto Alegre', 2, NULL, NULL),
(31, 'Belém', 2, NULL, NULL),
(32, 'Goiânia', 2, NULL, NULL),
(33, 'Campinas', 2, NULL, NULL),
(34, 'São Luís', 2, NULL, NULL),
(35, 'Guarulhos', 2, NULL, NULL),
(36, 'São Gonçalo', 2, NULL, NULL),
(37, 'Maceió', 2, NULL, NULL),
(38, 'Campo Grande', 2, NULL, NULL),
(39, 'Natal', 2, NULL, NULL),
(40, 'Teresina', 2, NULL, NULL),
(41, 'Bogotá', 3, NULL, NULL),
(42, 'Medellín', 3, NULL, NULL),
(43, 'Cali', 3, NULL, NULL),
(44, 'Barranquilla', 3, NULL, NULL),
(45, 'Cartagena', 3, NULL, NULL),
(46, 'Cúcuta', 3, NULL, NULL),
(47, 'Soledad', 3, NULL, NULL),
(48, 'Ibagué', 3, NULL, NULL),
(49, 'Bucaramanga', 3, NULL, NULL),
(50, 'Santa Marta', 3, NULL, NULL),
(51, 'Villavicencio', 3, NULL, NULL),
(52, 'Pasto', 3, NULL, NULL),
(53, 'Manizales', 3, NULL, NULL),
(54, 'Neiva', 3, NULL, NULL),
(55, 'Pereira', 3, NULL, NULL),
(56, 'Montería', 3, NULL, NULL),
(57, 'Popayán', 3, NULL, NULL),
(58, 'Valledupar', 3, NULL, NULL),
(59, 'Quibdó', 3, NULL, NULL),
(60, 'Armenia', 3, NULL, NULL),
(61, 'Ciudad de México', 4, NULL, NULL),
(62, 'Guadalajara', 4, NULL, NULL),
(63, 'Monterrey', 4, NULL, NULL),
(64, 'Puebla', 4, NULL, NULL),
(65, 'Tijuana', 4, NULL, NULL),
(66, 'León', 4, NULL, NULL),
(67, 'Juárez', 4, NULL, NULL),
(68, 'Zapopan', 4, NULL, NULL),
(69, 'Mérida', 4, NULL, NULL),
(70, 'Mexicali', 4, NULL, NULL),
(71, 'Acapulco', 4, NULL, NULL),
(72, 'Toluca', 4, NULL, NULL),
(73, 'Cancún', 4, NULL, NULL),
(74, 'Querétaro', 4, NULL, NULL),
(75, 'Morelia', 4, NULL, NULL),
(76, 'Culiacán', 4, NULL, NULL),
(77, 'Hermosillo', 4, NULL, NULL),
(78, 'Chihuahua', 4, NULL, NULL),
(79, 'Durango', 4, NULL, NULL),
(80, 'Saltillo', 4, NULL, NULL),
(81, 'Madrid', 5, NULL, NULL),
(82, 'Barcelona', 5, NULL, NULL),
(83, 'Valencia', 5, NULL, NULL),
(84, 'Sevilla', 5, NULL, NULL),
(85, 'Zaragoza', 5, NULL, NULL),
(86, 'Málaga', 5, NULL, NULL),
(87, 'Murcia', 5, NULL, NULL),
(88, 'Palma de Mallorca', 5, NULL, NULL),
(89, 'Las Palmas de Gran Canaria', 5, NULL, NULL),
(90, 'Bilbao', 5, NULL, NULL),
(91, 'Alicante', 5, NULL, NULL),
(92, 'Córdoba', 5, NULL, NULL),
(93, 'Valladolid', 5, NULL, NULL),
(94, 'Vigo', 5, NULL, NULL),
(95, 'Gijón', 5, NULL, NULL),
(96, 'Hospitalet de Llobregat', 5, NULL, NULL),
(97, 'Vitoria-Gasteiz', 5, NULL, NULL),
(98, 'Granada', 5, NULL, NULL),
(99, 'A Coruña', 5, NULL, NULL),
(100, 'Santa Cruz de Tenerife', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `razon_social` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_documento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_telefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pais_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `apellido`, `razon_social`, `num_documento`, `num_telefono`, `pais_id`, `ciudad`, `created_at`, `updated_at`) VALUES
(12, 'Javier Andres', 'Rojas Erazo', 'Prueba', '123', '3173280247', '3', '43', '2023-11-28 09:05:23', '2023-11-28 09:05:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_11_27_235352_empleado', 1),
(3, '2014_10_12_000000_create_users_table', 2),
(4, '2014_10_12_100000_create_password_resets_table', 2),
(5, '2019_08_19_000000_create_failed_jobs_table', 2),
(6, '2023_11_28_001112_create_empleados_table', 3),
(7, '2023_11_28_015434_create_paises_table', 4),
(8, '2023_11_28_015439_create_ciudades_table', 4),
(9, '2023_11_28_022126_rename_ciudads_to_ciudades_table', 5),
(10, '2023_11_28_035142_create_paises_table', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Argentina', NULL, NULL),
(2, 'Brasil', NULL, NULL),
(3, 'Colombia', NULL, NULL),
(4, 'México', NULL, NULL),
(5, 'España', NULL, NULL),
(6, 'Francia', NULL, NULL),
(7, 'Italia', NULL, NULL),
(8, 'Australia', NULL, NULL),
(9, 'Canadá', NULL, NULL),
(10, 'Japón', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ciudades_pais_id_foreign` (`pais_id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
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
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- Filtros para la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD CONSTRAINT `ciudades_pais_id_foreign` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
