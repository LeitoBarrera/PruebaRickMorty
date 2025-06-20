-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-06-2025 a las 04:06:49
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rickmorty`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_06_20_012333_create_personajes_table', 1);

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
-- Estructura de tabla para la tabla `personajes`
--

CREATE TABLE `personajes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `character_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `species` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `gender` varchar(255) NOT NULL,
  `origin_name` varchar(255) NOT NULL,
  `origin_url` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`id`, `character_id`, `name`, `status`, `species`, `type`, `gender`, `origin_name`, `origin_url`, `image`, `created_at`, `updated_at`) VALUES
(77, 77, 'Cowboy Morty', 'Alive', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/77.jpeg', '2025-06-20 06:42:14', '2025-06-20 06:42:14'),
(78, 78, 'Cowboy Rick', 'Alive', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/78.jpeg', '2025-06-20 06:42:14', '2025-06-20 06:42:14'),
(79, 79, 'Crab Spider', 'Alive', 'Alien', 'Animal', 'unknown', 'Hideout Planet', 'https://rickandmortyapi.com/api/location/27', 'https://rickandmortyapi.com/api/character/avatar/79.jpeg', '2025-06-20 06:42:14', '2025-06-20 06:42:14'),
(80, 80, 'Creepy Little Girl', 'Alive', 'Human', '', 'Female', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/80.jpeg', '2025-06-20 06:42:14', '2025-06-20 06:42:14'),
(81, 81, 'Crocubot', 'Dead', 'Animal', 'Robot-Crocodile hybrid', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/81.jpeg', '2025-06-20 06:42:14', '2025-06-20 06:42:14'),
(82, 82, 'Cronenberg Rick', 'unknown', 'Cronenberg', '', 'Male', 'Cronenberg Earth', 'https://rickandmortyapi.com/api/location/12', 'https://rickandmortyapi.com/api/character/avatar/82.jpeg', '2025-06-20 06:42:14', '2025-06-20 06:42:14'),
(83, 83, 'Cronenberg Morty', 'unknown', 'Cronenberg', '', 'Male', 'Cronenberg Earth', 'https://rickandmortyapi.com/api/location/12', 'https://rickandmortyapi.com/api/character/avatar/83.jpeg', '2025-06-20 06:42:14', '2025-06-20 06:42:14'),
(84, 84, 'Cult Leader Morty', 'Alive', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/84.jpeg', '2025-06-20 06:42:14', '2025-06-20 06:42:14'),
(85, 85, 'Cyclops Morty', 'Alive', 'Humanoid', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/85.jpeg', '2025-06-20 06:42:14', '2025-06-20 06:42:14'),
(86, 86, 'Cyclops Rick', 'Dead', 'Humanoid', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/86.jpeg', '2025-06-20 06:42:14', '2025-06-20 06:42:14'),
(87, 87, 'Cynthia', 'Dead', 'Alien', 'Zigerion', 'Female', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/87.jpeg', '2025-06-20 06:42:14', '2025-06-20 06:42:14'),
(88, 88, 'Cynthia', 'Alive', 'Human', '', 'Female', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/88.jpeg', '2025-06-20 06:42:14', '2025-06-20 06:42:14'),
(89, 89, 'Dale', 'Dead', 'Mythological Creature', 'Giant', 'Male', 'Giant\'s Town', 'https://rickandmortyapi.com/api/location/14', 'https://rickandmortyapi.com/api/character/avatar/89.jpeg', '2025-06-20 06:42:14', '2025-06-20 06:42:14'),
(90, 90, 'Daron Jefferson', 'Alive', 'Alien', 'Cone-nippled alien', 'Male', 'Unity\'s Planet', 'https://rickandmortyapi.com/api/location/28', 'https://rickandmortyapi.com/api/character/avatar/90.jpeg', '2025-06-20 06:42:14', '2025-06-20 06:42:14'),
(91, 91, 'David Letterman', 'Alive', 'Human', '', 'Male', 'Earth (C-500A)', 'https://rickandmortyapi.com/api/location/23', 'https://rickandmortyapi.com/api/character/avatar/91.jpeg', '2025-06-20 06:42:14', '2025-06-20 06:42:14'),
(92, 92, 'Davin', 'Dead', 'Human', '', 'Male', 'Earth (C-137)', 'https://rickandmortyapi.com/api/location/1', 'https://rickandmortyapi.com/api/character/avatar/92.jpeg', '2025-06-20 06:42:14', '2025-06-20 06:42:14'),
(93, 93, 'Diablo Verde', 'Dead', 'Mythological Creature', 'Demon', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/93.jpeg', '2025-06-20 06:42:14', '2025-06-20 06:42:14'),
(94, 94, 'Diane Sanchez', 'Dead', 'Human', '', 'Female', 'Earth (C-137)', 'https://rickandmortyapi.com/api/location/1', 'https://rickandmortyapi.com/api/character/avatar/94.jpeg', '2025-06-20 06:42:14', '2025-06-20 06:42:14'),
(95, 95, 'Dipper and Mabel Mortys', 'unknown', 'Human', '', 'unknown', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/95.jpeg', '2025-06-20 06:42:14', '2025-06-20 06:42:14'),
(96, 96, 'Tuberculosis', 'Dead', 'Disease', '', 'unknown', 'Anatomy Park', 'https://rickandmortyapi.com/api/location/5', 'https://rickandmortyapi.com/api/character/avatar/96.jpeg', '2025-06-20 06:42:14', '2025-06-20 06:42:14'),
(97, 97, 'Gonorrhea', 'Dead', 'Disease', '', 'unknown', 'Anatomy Park', 'https://rickandmortyapi.com/api/location/5', 'https://rickandmortyapi.com/api/character/avatar/97.jpeg', '2025-06-20 06:42:14', '2025-06-20 06:42:14'),
(98, 98, 'Hepatitis A', 'Dead', 'Disease', '', 'unknown', 'Anatomy Park', 'https://rickandmortyapi.com/api/location/5', 'https://rickandmortyapi.com/api/character/avatar/98.jpeg', '2025-06-20 06:42:14', '2025-06-20 06:42:14'),
(99, 99, 'Hepatitis C', 'Dead', 'Disease', '', 'unknown', 'Anatomy Park', 'https://rickandmortyapi.com/api/location/5', 'https://rickandmortyapi.com/api/character/avatar/99.jpeg', '2025-06-20 06:42:14', '2025-06-20 06:42:14'),
(100, 100, 'Bubonic Plague', 'Dead', 'Disease', '', 'unknown', 'Anatomy Park', 'https://rickandmortyapi.com/api/location/5', 'https://rickandmortyapi.com/api/character/avatar/100.jpeg', '2025-06-20 06:42:14', '2025-06-20 06:42:14'),
(101, 1, 'Rick Sanchez', 'Alive', 'Human', '', 'Male', 'Earth (C-137)', 'https://rickandmortyapi.com/api/location/1', 'https://rickandmortyapi.com/api/character/avatar/1.jpeg', '2025-06-20 07:05:07', '2025-06-20 07:05:07'),
(102, 2, 'Morty Smith', 'Alive', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/2.jpeg', '2025-06-20 07:05:07', '2025-06-20 07:05:07'),
(103, 3, 'Summer Smith', 'Alive', 'Human', '', 'Female', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/3.jpeg', '2025-06-20 07:05:07', '2025-06-20 07:05:07'),
(104, 4, 'Beth Smith', 'Alive', 'Human', '', 'Female', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/4.jpeg', '2025-06-20 07:05:07', '2025-06-20 07:05:07'),
(105, 5, 'Jerry Smith', 'Alive', 'Human', '', 'Male', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/5.jpeg', '2025-06-20 07:05:07', '2025-06-20 07:05:07'),
(106, 6, 'Abadango Cluster Princess', 'Alive', 'Alien', '', 'Female', 'Abadango', 'https://rickandmortyapi.com/api/location/2', 'https://rickandmortyapi.com/api/character/avatar/6.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(107, 7, 'Abradolf Lincler', 'unknown', 'Human', 'Genetic experiment', 'Male', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/7.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(108, 8, 'Adjudicator Rick', 'Dead', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/8.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(109, 9, 'Agency Director', 'Dead', 'Human', '', 'Male', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/9.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(110, 10, 'Alan Rails', 'Dead', 'Human', 'Superhuman (Ghost trains summoner)', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/10.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(111, 11, 'Albert Einstein', 'Dead', 'Human', '', 'Male', 'Earth (C-137)', 'https://rickandmortyapi.com/api/location/1', 'https://rickandmortyapi.com/api/character/avatar/11.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(112, 12, 'Alexander', 'Dead', 'Human', '', 'Male', 'Earth (C-137)', 'https://rickandmortyapi.com/api/location/1', 'https://rickandmortyapi.com/api/character/avatar/12.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(113, 13, 'Alien Googah', 'unknown', 'Alien', '', 'unknown', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/13.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(114, 14, 'Alien Morty', 'unknown', 'Alien', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/14.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(115, 15, 'Alien Rick', 'unknown', 'Alien', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/15.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(116, 16, 'Amish Cyborg', 'Dead', 'Alien', 'Parasite', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/16.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(117, 17, 'Annie', 'Alive', 'Human', '', 'Female', 'Earth (C-137)', 'https://rickandmortyapi.com/api/location/1', 'https://rickandmortyapi.com/api/character/avatar/17.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(118, 18, 'Antenna Morty', 'Alive', 'Human', 'Human with antennae', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/18.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(119, 19, 'Antenna Rick', 'unknown', 'Human', 'Human with antennae', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/19.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(120, 20, 'Ants in my Eyes Johnson', 'unknown', 'Human', 'Human with ants in his eyes', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/20.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(121, 21, 'Aqua Morty', 'unknown', 'Humanoid', 'Fish-Person', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/21.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(122, 22, 'Aqua Rick', 'unknown', 'Humanoid', 'Fish-Person', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/22.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(123, 23, 'Arcade Alien', 'unknown', 'Alien', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/23.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(124, 24, 'Armagheadon', 'Alive', 'Alien', 'Cromulon', 'Male', 'Signus 5 Expanse', 'https://rickandmortyapi.com/api/location/22', 'https://rickandmortyapi.com/api/character/avatar/24.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(125, 25, 'Armothy', 'Dead', 'unknown', 'Self-aware arm', 'Male', 'Post-Apocalyptic Earth', 'https://rickandmortyapi.com/api/location/8', 'https://rickandmortyapi.com/api/character/avatar/25.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(126, 26, 'Arthricia', 'Alive', 'Alien', 'Cat-Person', 'Female', 'Purge Planet', 'https://rickandmortyapi.com/api/location/9', 'https://rickandmortyapi.com/api/character/avatar/26.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(127, 27, 'Artist Morty', 'Alive', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/27.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(128, 28, 'Attila Starwar', 'Alive', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/28.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(129, 29, 'Baby Legs', 'Alive', 'Human', 'Human with baby legs', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/29.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(130, 30, 'Baby Poopybutthole', 'Alive', 'Poopybutthole', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/30.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(131, 31, 'Baby Wizard', 'Dead', 'Alien', 'Parasite', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/31.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(132, 32, 'Bearded Lady', 'Dead', 'Alien', 'Parasite', 'Female', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/32.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(133, 33, 'Beebo', 'Dead', 'Alien', '', 'Male', 'Venzenulon 7', 'https://rickandmortyapi.com/api/location/10', 'https://rickandmortyapi.com/api/character/avatar/33.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(134, 34, 'Benjamin', 'Alive', 'Poopybutthole', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/34.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(135, 35, 'Bepisian', 'Alive', 'Alien', 'Bepisian', 'unknown', 'Bepis 9', 'https://rickandmortyapi.com/api/location/11', 'https://rickandmortyapi.com/api/character/avatar/35.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(136, 36, 'Beta-Seven', 'Alive', 'Alien', 'Hivemind', 'unknown', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/36.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(137, 37, 'Beth Sanchez', 'Alive', 'Human', '', 'Female', 'Earth (C-500A)', 'https://rickandmortyapi.com/api/location/23', 'https://rickandmortyapi.com/api/character/avatar/37.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(138, 38, 'Beth Smith', 'Alive', 'Human', '', 'Female', 'Earth (C-137)', 'https://rickandmortyapi.com/api/location/1', 'https://rickandmortyapi.com/api/character/avatar/38.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(139, 39, 'Beth Smith', 'Alive', 'Human', '', 'Female', 'Earth (Evil Rick\'s Target Dimension)', 'https://rickandmortyapi.com/api/location/34', 'https://rickandmortyapi.com/api/character/avatar/39.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(140, 40, 'Beth\'s Mytholog', 'Dead', 'Mythological Creature', 'Mytholog', 'Female', 'Nuptia 4', 'https://rickandmortyapi.com/api/location/13', 'https://rickandmortyapi.com/api/character/avatar/40.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(141, 41, 'Big Boobed Waitress', 'Alive', 'Mythological Creature', '', 'Female', 'Fantasy World', 'https://rickandmortyapi.com/api/location/48', 'https://rickandmortyapi.com/api/character/avatar/41.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(142, 42, 'Big Head Morty', 'unknown', 'Human', 'Human with giant head', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/42.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(143, 43, 'Big Morty', 'Dead', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/43.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(144, 44, 'Body Guard Morty', 'Dead', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/44.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(145, 45, 'Bill', 'Alive', 'Human', '', 'Male', 'Earth (C-137)', 'https://rickandmortyapi.com/api/location/1', 'https://rickandmortyapi.com/api/character/avatar/45.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(146, 46, 'Bill', 'unknown', 'Animal', 'Dog', 'Male', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/46.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(147, 47, 'Birdperson', 'Alive', 'Alien', 'Bird-Person', 'Male', 'Bird World', 'https://rickandmortyapi.com/api/location/15', 'https://rickandmortyapi.com/api/character/avatar/47.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(148, 48, 'Black Rick', 'Alive', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/48.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(149, 49, 'Blamph', 'Alive', 'Alien', '', 'unknown', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/49.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(150, 50, 'Blim Blam', 'Alive', 'Alien', 'Korblock', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/50.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(151, 51, 'Blue Diplomat', 'Alive', 'Alien', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/51.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(152, 52, 'Blue Footprint Guy', 'Dead', 'Human', '', 'Male', 'Post-Apocalyptic Earth', 'https://rickandmortyapi.com/api/location/8', 'https://rickandmortyapi.com/api/character/avatar/52.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(153, 53, 'Blue Shirt Morty', 'unknown', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/53.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(154, 54, 'Bobby Moynihan', 'Alive', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/54.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(155, 55, 'Boobloosian', 'Dead', 'Alien', 'Boobloosian', 'unknown', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/55.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(156, 56, 'Bootleg Portal Chemist Rick', 'Dead', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/56.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(157, 57, 'Borpocian', 'Alive', 'Alien', 'Elephant-Person', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/57.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(158, 58, 'Brad', 'Alive', 'Human', '', 'Male', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/58.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(159, 59, 'Brad Anderson', 'Dead', 'Human', '', 'Male', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/59.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(160, 60, 'Calypso', 'Dead', 'Human', 'Superhuman', 'Female', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/60.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(161, 61, 'Campaign Manager Morty', 'Dead', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/61.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(162, 62, 'Canklanker Thom', 'Dead', 'Alien', 'Gromflomite', 'Male', 'Gromflom Prime', 'https://rickandmortyapi.com/api/location/19', 'https://rickandmortyapi.com/api/character/avatar/62.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(163, 63, 'Centaur', 'Alive', 'Mythological Creature', 'Centaur', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/63.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(164, 64, 'Chris', 'Dead', 'Alien', 'Organic gun', 'unknown', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/64.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(165, 65, 'Chris', 'Alive', 'Humanoid', 'Microverse inhabitant', 'Male', 'Rick\'s Battery Microverse', 'https://rickandmortyapi.com/api/location/24', 'https://rickandmortyapi.com/api/character/avatar/65.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(166, 66, 'Coach Feratu (Balik Alistane)', 'Dead', 'Mythological Creature', 'Vampire', 'Male', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/66.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(167, 67, 'Collector', 'Alive', 'Alien', 'Light bulb-Alien', 'Male', 'The Menagerie', 'https://rickandmortyapi.com/api/location/25', 'https://rickandmortyapi.com/api/character/avatar/67.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(168, 68, 'Colossus', 'Dead', 'Human', '', 'Male', 'Post-Apocalyptic Earth', 'https://rickandmortyapi.com/api/location/8', 'https://rickandmortyapi.com/api/character/avatar/68.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(169, 69, 'Commander Rick', 'Dead', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/69.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(170, 70, 'Concerto', 'Dead', 'Humanoid', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/70.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(171, 71, 'Conroy', 'Dead', 'Robot', '', 'unknown', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/71.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(172, 72, 'Cool Rick', 'Alive', 'Human', '', 'Male', 'Earth (K-83)', 'https://rickandmortyapi.com/api/location/26', 'https://rickandmortyapi.com/api/character/avatar/72.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(173, 73, 'Cop Morty', 'Dead', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/73.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(174, 74, 'Cop Rick', 'Alive', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/74.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(175, 75, 'Courier Flap', 'Alive', 'Alien', '', 'unknown', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/75.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08'),
(176, 76, 'Cousin Nicky', 'Dead', 'Alien', 'Parasite', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/76.jpeg', '2025-06-20 07:05:08', '2025-06-20 07:05:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
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
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
-- Indices de la tabla `personajes`
--
ALTER TABLE `personajes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personajes_character_id_unique` (`character_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `personajes`
--
ALTER TABLE `personajes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
