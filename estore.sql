-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 19, 2022 at 05:04 PM
-- Server version: 8.0.21
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `estore`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'dolorem possimusgfggtrg', 'dolorem-possimusgfggtrg', '2022-06-25 07:34:01', '2022-07-15 08:42:22'),
(2, 'Cameras', 'cameras', '2022-06-25 07:34:01', '2022-07-15 08:42:33'),
(3, 'ullam deleniti', 'ullam-deleniti', '2022-06-25 07:34:01', '2022-06-25 07:34:01'),
(4, 'quod fugiat', 'quod-fugiat', '2022-06-25 07:34:01', '2022-06-25 07:34:01'),
(5, 'alias vel', 'alias-vel', '2022-06-25 07:34:01', '2022-06-25 07:34:01');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

DROP TABLE IF EXISTS `home_sliders`;
CREATE TABLE IF NOT EXISTS `home_sliders` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtittle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2022_05_25_041440_create_sessions_table', 1),
(13, '2022_06_04_044225_create_categories_table', 2),
(14, '2022_06_04_045639_create_products_table', 2),
(15, '2022_07_15_163508_create_home_sliders_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `quantity` int UNSIGNED NOT NULL DEFAULT '10',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_slug_unique` (`slug`),
  KEY `products_category_id_foreign` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'nesciunt et', 'nesciunt-et', 'Quia vitae praesentium architecto quibusdam. Rerum rerum modi voluptatibus earum rerum explicabo at. Dolorum aperiam modi tempora repudiandae. Quaerat dolorem laborum neque sit neque vel.', 'Quidem aliquid deleniti consequatur expedita nam quasi sint. Saepe voluptate sed voluptas facere nulla labore. Ut enim aspernatur unde adipisci quia velit aspernatur nesciunt. Suscipit explicabo modi reiciendis. Earum dignissimos culpa est possimus debitis ducimus. Eaque omnis ea voluptas nobis pariatur. Facere autem temporibus vel soluta voluptate consequatur. Eius est unde facilis id aliquid eaque sint. Dolore qui nemo et et corporis consequatur quidem.', '188.00', NULL, 'DIGI230', 'instock', 0, 371, 'digital_20.jpg', NULL, 1, '2022-06-25 07:34:01', '2022-06-25 07:34:01'),
(2, 'fugit mollitia', 'fugit-mollitia', 'Perspiciatis qui enim et sunt. Ex dolor aut recusandae dignissimos eum consequatur facere. Et eos sit voluptatibus quisquam nobis. Odit architecto aut accusamus et.', 'Est commodi saepe vel odit delectus consequatur officia. Assumenda velit amet facere laboriosam illo ut et quod. Harum quis aut autem cum. Cupiditate eos eos molestiae voluptates. Cum culpa consequatur maiores. Expedita itaque doloremque officia in nisi doloremque. Sunt corrupti dolorem beatae quidem incidunt. Qui natus earum ut at.', '268.00', NULL, 'DIGI240', 'instock', 0, 197, 'digital_21.jpg', NULL, 3, '2022-06-25 07:34:01', '2022-06-25 07:34:01'),
(3, 'rerum quasi', 'rerum-quasi', 'Eius voluptas provident iste ut. Quam magni rerum voluptatem et dignissimos commodi nostrum. Voluptas eaque officia non cupiditate. Sit ea deleniti quis adipisci pariatur.', 'Et molestiae odit perferendis et. Voluptate quo aliquid incidunt provident qui laborum rem possimus. Facere quisquam et vero qui commodi sit. Nulla veritatis est est suscipit et ut occaecati mollitia. Quia deserunt quasi explicabo eos. Omnis dolorem rem hic animi qui ab perspiciatis. Praesentium rerum saepe quia non maiores dolor doloremque sit.', '447.00', NULL, 'DIGI327', 'instock', 0, 330, 'digital_12.jpg', NULL, 2, '2022-06-25 07:34:01', '2022-06-25 07:34:01'),
(4, 'ea aperiam', 'ea-aperiam', 'Ut aut sed quae totam. Repellat debitis est cupiditate commodi nam optio. Qui reprehenderit commodi iusto expedita odio.', 'Facilis voluptas omnis et et quaerat. Commodi exercitationem ab optio ut totam aliquid. Eos deleniti omnis et sed molestiae possimus est. Ut eos veniam debitis sed laborum veniam. Ut saepe corporis voluptatem optio ab laboriosam ducimus eum. Saepe eligendi repellat commodi maiores itaque magnam. Repudiandae consequatur molestias aliquam accusamus voluptatibus.', '423.00', NULL, 'DIGI117', 'instock', 0, 387, 'digital_11.jpg', NULL, 5, '2022-06-25 07:34:01', '2022-06-25 07:34:01'),
(5, 'sint fuga', 'sint-fuga', 'Quia tempore veniam quas saepe vel cum cumque nesciunt. Esse ea quae qui optio nulla porro. Ex non veritatis ducimus aperiam. Consequuntur illo assumenda dolores facilis nostrum.', 'Et et sint eveniet fuga aut. Sed ut quisquam ea inventore eum voluptatum sed. At blanditiis laboriosam laudantium impedit dolore. Eos quo omnis qui voluptas adipisci dolorem cum. Ipsa nihil consectetur voluptatem qui illo et. Eum quidem et voluptatem iure nobis doloremque ut. Error autem animi aliquid et. Ratione nisi in reprehenderit aspernatur aut explicabo corporis. Sit perferendis fugit ea et omnis nihil. Autem iure voluptatibus veniam dolor modi vero ipsam assumenda.', '413.00', NULL, 'DIGI137', 'instock', 0, 399, 'digital_3.jpg', NULL, 1, '2022-06-25 07:34:01', '2022-06-25 07:34:01'),
(6, 'delectus sint', 'delectus-sint', 'Asperiores aut eum harum est quibusdam. Porro enim eum labore voluptates. Mollitia aperiam modi voluptatem nam nemo delectus.', 'Aliquid sit et aliquam dicta. Similique dolorem quibusdam eaque veniam labore libero et. Et sequi amet ut est architecto consequuntur. Error quod similique velit. Fuga pariatur veniam voluptas id est non quia. Non iusto eos fugiat dolor molestiae. Suscipit et ratione praesentium. Quo porro natus laborum a. Sequi iusto ut et explicabo et. Deserunt ab qui sed sit cumque repellendus. Eaque iure ad quidem aspernatur quia qui. Totam maiores itaque eius ipsa est et.', '11.00', NULL, 'DIGI245', 'instock', 0, 374, 'digital_2.jpg', NULL, 5, '2022-06-25 07:34:01', '2022-06-25 07:34:01'),
(7, 'atque dolores', 'atque-dolores', 'Earum perferendis ut iusto similique sed. Molestias fugiat delectus explicabo autem. Aut non odit ut rerum voluptate. Nisi quae aperiam cumque dolorum neque.', 'Sit voluptate error sed rerum officiis cupiditate. Corrupti voluptatem rem dolorem fugiat delectus aut consectetur. Officiis aut dolore aperiam molestias. Dolores quidem delectus omnis aspernatur. Inventore quia ea id necessitatibus illum. Et voluptatem aspernatur similique sit reiciendis eius atque. Saepe non non sit maxime accusantium eos eos ullam. Commodi sint provident nostrum blanditiis facere. Dolore reprehenderit sunt corporis autem magni. Id eligendi corporis id.', '456.00', NULL, 'DIGI235', 'instock', 0, 257, 'digital_7.jpg', NULL, 4, '2022-06-25 07:34:01', '2022-06-25 07:34:01'),
(8, 'sint quod', 'sint-quod', 'Impedit labore est id earum quam amet. Consequatur repellat aperiam eaque doloribus sapiente. Esse molestias autem sequi omnis culpa. Reiciendis suscipit illum est maxime.', 'Asperiores vero est eius nesciunt qui. Impedit sit excepturi reiciendis a assumenda voluptate est. Ab ab vero consequuntur explicabo dolor vel illo. Perspiciatis et reprehenderit sed ea autem qui quia. Libero voluptatem in debitis sed minus. Error neque totam eos voluptatem qui quam. Sunt ipsa quo qui dolorem occaecati autem. Hic consequatur fugit optio. Ut et quos at perferendis quas qui. Ipsa asperiores eos magnam odio soluta. Rem praesentium molestiae accusamus mollitia qui deleniti.', '373.00', NULL, 'DIGI469', 'instock', 0, 439, 'digital_13.jpg', NULL, 4, '2022-06-25 07:34:01', '2022-06-25 07:34:01'),
(9, 'recusandae sint', 'recusandae-sint', 'Dolor in nostrum dicta reprehenderit. Iure dolorem ut fugit a et omnis. Fugiat earum id ipsam cupiditate incidunt aut. Ex ut repellat quia ut labore et ullam quia.', 'Odit pariatur suscipit voluptatem rerum autem. Ratione enim eum quia ea. Sit quaerat eos voluptates ipsa. Aut maiores dolorem minima deserunt iure quo laudantium. Commodi eaque iure voluptatum. Ullam reiciendis et et et consequatur aut. Sed non quos est. Odit ipsum dolor nobis expedita tempora assumenda iste provident. Id quia in earum voluptates distinctio. Explicabo eos animi quas. Qui itaque maxime corporis.', '128.00', NULL, 'DIGI318', 'instock', 0, 159, 'digital_22.jpg', NULL, 5, '2022-06-25 07:34:01', '2022-06-25 07:34:01'),
(10, 'odit rerum', 'odit-rerum', 'Temporibus quas ut animi quas eos. Nobis est non et voluptas. Quasi et sunt tenetur voluptas totam est.', 'Alias sint ipsa nam inventore et. Deserunt impedit veniam eum doloribus sed. Quisquam sit ut quia itaque et velit. Accusamus exercitationem eos corporis quidem sed. Nulla facere vero expedita quis. Impedit ea et quis et. Eum odit quia ea deleniti rem eos mollitia. Dolor recusandae similique est libero et maxime quia. Qui qui sunt quam ex. Ratione quo aut et et nulla et soluta. Voluptas inventore aperiam ex nemo modi molestias molestias perferendis. Nobis qui inventore commodi impedit.', '207.00', NULL, 'DIGI285', 'instock', 0, 401, 'digital_10.jpg', NULL, 2, '2022-06-25 07:34:01', '2022-06-25 07:34:01'),
(11, 'nisi velit', 'nisi-velit', 'Et soluta dolor qui molestias et. Ipsam quisquam vel quidem corporis nihil numquam unde. Enim neque omnis et velit eius illo.', 'Consequatur enim commodi recusandae eos quibusdam aut blanditiis. Minus ea magni nam et. Reprehenderit optio mollitia necessitatibus. Quia voluptatem eos rerum id. Officiis optio consequuntur quia soluta earum qui. Molestias voluptas neque omnis omnis. Error eos et consequatur. Animi possimus et vel ipsum et nam. Voluptatem repudiandae et quia omnis et. Et aperiam eligendi quia fuga possimus mollitia est.', '235.00', NULL, 'DIGI424', 'instock', 0, 155, 'digital_19.jpg', NULL, 2, '2022-06-25 07:34:01', '2022-06-25 07:34:01'),
(12, 'voluptas beatae', 'voluptas-beatae', 'Neque quisquam modi cum aspernatur iste. Qui repellendus sed eius voluptatem. Nulla repellat et cumque ut quibusdam. Alias quia esse velit atque consequuntur autem.', 'Quo debitis atque natus nemo. Praesentium aperiam facilis illum totam. Ut qui inventore itaque aut. Inventore cupiditate error ipsum quod sit. Atque optio enim saepe odio dignissimos doloremque. Accusamus dolorum quos nulla autem. Et natus asperiores quibusdam quae ut numquam minus aut. Eum eaque voluptatem rerum et ex aut rerum aliquid. Molestiae itaque consectetur eius quasi debitis soluta quos exercitationem.', '297.00', NULL, 'DIGI188', 'instock', 0, 103, 'digital_14.jpg', NULL, 4, '2022-06-25 07:34:01', '2022-06-25 07:34:01'),
(13, 'commodi vel', 'commodi-vel', 'Cupiditate molestiae id dignissimos veritatis sunt expedita dolor. Ut incidunt corrupti in. At voluptates illum id autem cumque. Voluptatem vero ut praesentium magnam sed qui pariatur.', 'Non ratione omnis aperiam rerum provident saepe. Ducimus ut laborum et ex et ducimus quo consectetur. Laborum placeat cumque ipsum delectus repudiandae eveniet perspiciatis voluptate. Sint in dolorem magnam provident eaque. Quia itaque nihil occaecati sit accusamus soluta. Dicta molestiae saepe voluptatum magni voluptas cupiditate quas rem. Quasi ipsa harum velit deserunt. Quos perspiciatis eligendi ducimus dicta. Ipsa et nesciunt nemo. Nihil inventore deserunt temporibus saepe.', '254.00', NULL, 'DIGI378', 'instock', 0, 135, 'digital_9.jpg', NULL, 2, '2022-06-25 07:34:01', '2022-06-25 07:34:01'),
(14, 'aperiam eum', 'aperiam-eum', 'Qui ea voluptas sapiente voluptatum. Doloremque et reprehenderit est vel quis labore doloribus.', 'Labore maxime nostrum id veritatis. Maiores et assumenda quibusdam. Quas et et aspernatur quo tenetur ipsum labore. Magni quam a omnis aut. Et aut architecto voluptas excepturi. Officiis consequatur repudiandae magnam. Porro amet maiores voluptatem non sint quis sunt quibusdam. Maxime est ipsum delectus eius. Modi est consequatur sunt iure eum. Porro voluptatem sed veniam cumque. Et sint blanditiis et ut beatae corporis voluptatum. Amet blanditiis ipsa sint consectetur rerum.', '280.00', NULL, 'DIGI238', 'instock', 0, 132, 'digital_17.jpg', NULL, 5, '2022-06-25 07:36:36', '2022-06-25 07:36:36'),
(15, 'animi a', 'animi-a', 'Fugit dicta amet id. Nam aut non maiores asperiores odio.', 'Reprehenderit dignissimos nisi veniam perspiciatis molestias libero minima. Quis quia ut culpa numquam esse delectus molestiae. Et et voluptatem assumenda sunt vitae. Nam est asperiores vel nihil. Qui earum consequatur eligendi voluptatem quas nihil. Voluptas iste suscipit eos tempore consequatur voluptate. Est ut et sit molestias. Sunt cumque dolores quasi ad. At id aut vitae id et. Qui nam dignissimos explicabo facilis perspiciatis est.', '230.00', NULL, 'DIGI497', 'instock', 0, 409, 'digital_16.jpg', NULL, 2, '2022-06-25 07:36:36', '2022-06-25 07:36:36'),
(16, 'occaecati quis', 'occaecati-quis', 'Blanditiis recusandae non unde ut sit alias nesciunt. Fugiat voluptatum ab ut distinctio.', 'Ex incidunt quis eum dignissimos. Itaque et eum officiis voluptatem ipsa ut qui. Quidem delectus ex assumenda nihil asperiores odit. Cupiditate qui praesentium non dolorum debitis qui atque. Ut ducimus enim voluptatibus tempora sunt officia. Atque dolorem ullam ut voluptate sequi quidem aspernatur. Pariatur ipsa illo qui tempora consequatur.', '369.00', NULL, 'DIGI259', 'instock', 0, 389, 'digital_13.jpg', NULL, 4, '2022-06-25 07:36:36', '2022-06-25 07:36:36'),
(17, 'enim quas', 'enim-quas', 'Quidem ipsam recusandae hic sit. Vitae qui velit quisquam qui et. Consequuntur libero sed tempora.', 'Maiores quibusdam voluptatem sit autem est consectetur architecto fuga. Fugit ducimus ducimus mollitia nobis est sed non. Iste dolorem occaecati porro enim nihil aut inventore. Sequi minima eligendi consequatur soluta. Facere et aliquam eius praesentium. Esse sit neque tempora quasi. Neque aut maxime ut tempora voluptatem dolores. Omnis aut dolor neque et et. Perferendis doloribus aut ut et alias exercitationem sed omnis.', '302.00', NULL, 'DIGI159', 'instock', 0, 486, 'digital_4.jpg', NULL, 1, '2022-06-25 07:36:36', '2022-06-25 07:36:36'),
(18, 'cum ut', 'cum-ut', 'Rerum eius fuga unde quia voluptatem a. Minus qui velit fugiat omnis perferendis.', 'Voluptatem voluptas qui soluta placeat. Ea repellendus ex rerum qui. Optio voluptas et quo et quibusdam quisquam molestias. Possimus dignissimos molestiae adipisci sit. Sint inventore at tenetur totam expedita. Quibusdam neque eum placeat velit recusandae placeat in eum. Quos consequuntur necessitatibus nihil tenetur quia quos sed.', '72.00', NULL, 'DIGI287', 'instock', 0, 305, 'digital_15.jpg', NULL, 1, '2022-06-25 07:36:36', '2022-06-25 07:36:36'),
(19, 'harum ut', 'harum-ut', 'Quam suscipit inventore veniam vel rerum officia. Omnis laborum aut neque accusantium non.', 'Id quos et repellat possimus autem reiciendis amet. Voluptate velit placeat consequuntur nobis in aliquam facere. Et cumque et eligendi vel id beatae consectetur est. Repellat quibusdam ipsam qui. Veniam quod reiciendis necessitatibus minus. Ad voluptatem eaque corrupti voluptatibus magni alias eum. Nihil voluptatem quia mollitia atque. Id dolor eaque repellat inventore quo amet aliquid.', '64.00', NULL, 'DIGI403', 'instock', 0, 316, 'digital_11.jpg', NULL, 1, '2022-06-25 07:36:36', '2022-06-25 07:36:36'),
(20, 'neque quos', 'neque-quos', 'Tenetur quae incidunt nihil laboriosam omnis autem incidunt vitae. Totam facilis quis et ad.', 'Dicta sit similique recusandae atque asperiores aliquam deleniti. Qui perspiciatis quia est dolor recusandae atque qui. Aut quasi aut quod aspernatur et. Fugit aut animi et. Repellendus et consequatur quas voluptates voluptatem corrupti. Voluptatem quasi quam aspernatur quas necessitatibus. Iste consequatur sit saepe id. Amet quae accusamus magnam ab suscipit illo accusamus.', '152.00', NULL, 'DIGI112', 'instock', 0, 129, 'digital_5.jpg', NULL, 1, '2022-06-25 07:36:36', '2022-06-25 07:36:36'),
(21, 'rem ad', 'rem-ad', 'Suscipit minima id est et. Aut minus iure ipsum aut itaque. In ipsa iure minus ullam et.', 'Rerum officiis tempora libero nobis ullam esse. Quia dolor dolor vel. Ducimus voluptatem repudiandae culpa. Harum officia culpa officia alias repellendus sit. Dolorem nihil sit ut ullam voluptas dolorem suscipit quo. Quam dicta amet laudantium perspiciatis in facilis mollitia. Voluptatem fugiat atque vel quas ut corporis. Veritatis qui aliquam dolorum nihil neque ratione.', '323.00', NULL, 'DIGI170', 'instock', 0, 225, 'digital_9.jpg', NULL, 1, '2022-06-25 07:36:36', '2022-06-25 07:36:36'),
(22, 'officiis et', 'officiis-et', 'Quia sunt eaque et ut. Qui ut dicta beatae. Asperiores et dolorem aut consectetur harum officia.', 'Voluptas iusto rerum animi iure consectetur quia ut doloribus. Iure laudantium est odit velit cupiditate ut exercitationem reiciendis. Aliquam cum molestiae voluptatem tempore. Autem incidunt labore inventore qui rerum quibusdam. Qui quis debitis voluptas quae natus ab sit. Mollitia autem officiis porro possimus sed eum eos dolorem. Eum minima aspernatur dolore.', '279.00', NULL, 'DIGI212', 'instock', 0, 266, 'digital_20.jpg', NULL, 4, '2022-06-25 07:36:36', '2022-06-25 07:36:36'),
(23, 'voluptatibus reprehenderit', 'voluptatibus-reprehenderit', 'Veniam rem unde vel dolorum. Qui ipsam dolor autem aut. Laudantium ipsa illo et et saepe esse et.', 'Dolores nemo vero atque illum earum iure. Blanditiis iusto suscipit corrupti quae. Qui dolorem qui dignissimos tenetur. Vitae labore tempore quia. Assumenda nisi perspiciatis iste nam consequatur et. Quisquam sit ipsa laudantium voluptas debitis dolorem. Quia voluptatibus natus distinctio animi sunt et ex. Vero est eveniet corrupti molestiae officiis rerum ipsum. Quis enim ad esse fuga non ipsum non. Quo qui voluptatem omnis quaerat iusto odit enim.', '281.00', NULL, 'DIGI301', 'instock', 0, 297, 'digital_6.jpg', NULL, 4, '2022-06-25 07:36:36', '2022-06-25 07:36:36'),
(24, 'et eos', 'et-eos', 'Et neque itaque tempore ipsum. Rerum dolorum voluptas id asperiores quasi enim.', 'Eaque commodi dolorem repellendus mollitia nostrum facilis dolor. Provident vitae debitis enim maiores quia rerum neque sit. Sapiente qui est id unde consequatur rerum. Corrupti vitae voluptatem omnis sunt est qui. Fuga sit debitis fuga animi nostrum error quis. Facilis nihil vel ut soluta ad. Sed doloribus impedit eaque error animi recusandae. Officia voluptatibus deleniti excepturi. Fugit voluptatibus libero recusandae quis voluptas vel. Iusto beatae dolorem perspiciatis mollitia.', '35.00', NULL, 'DIGI221', 'instock', 0, 405, 'digital_19.jpg', NULL, 5, '2022-06-25 07:36:36', '2022-06-25 07:36:36'),
(25, 'sequi dolore', 'sequi-dolore', 'Atque earum neque aliquid. Harum similique quasi laborum quia.', 'Labore et consequatur quia vel natus at nulla unde. Esse laboriosam voluptas in corporis doloremque repellendus asperiores. Eum neque nemo dolor neque quas molestiae hic. Distinctio nam quis nesciunt aut numquam. Ut itaque eveniet voluptatem unde sit. Sint incidunt est est est deserunt maiores. Ratione ex porro quia voluptatem expedita molestiae. Ducimus vero laborum et et consequatur. Alias rerum cupiditate ut soluta quis.', '328.00', NULL, 'DIGI374', 'instock', 0, 342, 'digital_12.jpg', NULL, 1, '2022-06-25 07:36:36', '2022-06-25 07:36:36'),
(26, 'non numquam', 'non-numquam', 'Mollitia non dolor quos eum nihil nam ut. Ut exercitationem non animi voluptatibus.', 'Non quidem ratione at molestias animi qui cupiditate. In tenetur corporis beatae consequatur repellendus est eius eum. Facilis commodi repudiandae qui vel. Sit veritatis ullam molestiae ut. Laboriosam molestias veritatis rerum molestias ea. Natus labore quasi cupiditate unde adipisci expedita ut et. Voluptates aperiam voluptatem temporibus eaque minus debitis. Iure qui reiciendis rem dolore hic aut voluptatem.', '220.00', NULL, 'DIGI313', 'instock', 0, 347, 'digital_10.jpg', NULL, 3, '2022-06-25 07:36:36', '2022-06-25 07:36:36'),
(27, 'sed eum', 'sed-eum', 'Repellendus facere ut reprehenderit occaecati sint nisi. Voluptatum et eos maxime aperiam.', 'Sint doloribus deserunt ipsum sed vel voluptas veniam. Dolorem quibusdam sed est eius occaecati repudiandae dignissimos. Et ratione omnis alias accusantium qui totam eos. Facere ipsam quos et incidunt error illum. Ullam voluptas saepe et voluptates itaque repellat impedit. Quos aut dolor aperiam magnam. Nihil ipsa expedita quibusdam aut. Adipisci alias quidem iste omnis rem ut. Sit aut tempore id hic illo. Magni velit et sed voluptate iste nostrum voluptas.', '303.00', NULL, 'DIGI192', 'instock', 0, 376, 'digital_22.jpg', NULL, 3, '2022-06-25 07:36:36', '2022-06-25 07:36:36'),
(28, 'ipsum alias', 'ipsum-alias', 'Dolorem sed ipsum voluptates autem. Tenetur placeat eveniet quia est nobis.', 'Sint ipsam qui repudiandae repellat vel repellendus. Possimus dicta quos repudiandae culpa quibusdam facere. Ut error ut delectus cum aut beatae aut. Sequi aut sit quos dolores. Temporibus suscipit eos itaque occaecati. Nam perferendis ea quas. Quia consequatur et dolorem aut et est. Voluptatem molestiae aliquid praesentium doloribus. Et aut consectetur et ut et. In dolorum amet error quae reprehenderit vero. Eos omnis ipsum id. Nam illum totam consequuntur adipisci. Et debitis rerum aut.', '156.00', NULL, 'DIGI134', 'instock', 0, 406, 'digital_8.jpg', NULL, 2, '2022-06-25 07:36:36', '2022-06-25 07:36:36'),
(29, 'dolores eius', 'dolores-eius', 'Rerum dolores eius et. Unde aut itaque saepe quo qui. Quasi ea voluptas quia eos rerum voluptatem.', 'In rem quasi praesentium quia incidunt et rerum et. Architecto alias officia nihil omnis. Sed adipisci id nulla omnis. Dicta et odio aliquid officiis id veritatis. Quae non sint qui natus ipsa voluptatem. Esse consectetur eos aliquid et deleniti et nisi repellat. Accusamus et non voluptas quos rerum. Aut atque autem quo velit quaerat et voluptates. Rem sunt nesciunt laudantium est vitae dolorem ut rerum. Et fugit quaerat reprehenderit facere. Accusantium sed ea vero rem libero autem facilis.', '352.00', NULL, 'DIGI177', 'instock', 0, 283, 'digital_1.jpg', NULL, 5, '2022-06-25 07:36:36', '2022-06-25 07:36:36'),
(30, 'dicta recusandae', 'dicta-recusandae', 'Aut nihil explicabo sint minima. Voluptatem dolorem et nobis quis rerum alias.', 'Ex voluptate corporis omnis. Consequatur quis voluptas recusandae est neque. Numquam dolores ut quos modi saepe fugiat commodi. Vel quisquam vel provident et sit. Et consequuntur commodi delectus vel eos et. Dolor aut illum velit aperiam consequatur repellat dicta corrupti. Sed aut quidem laborum facere. Culpa dignissimos quo harum accusamus cupiditate. Laboriosam temporibus assumenda autem optio vero eum rerum. Et sunt quam iusto aspernatur mollitia vero.', '294.00', NULL, 'DIGI220', 'instock', 0, 494, 'digital_18.jpg', NULL, 3, '2022-06-25 07:36:36', '2022-06-25 07:36:36'),
(31, 'pariatur veniam', 'pariatur-veniam', 'Autem aperiam ab qui temporibus perspiciatis. Delectus ipsum dolores odio atque qui est.', 'Repellat corporis sed nesciunt qui ex eveniet veritatis. Tempore cupiditate neque laudantium voluptatibus. Dolor corporis deserunt est velit officiis sunt omnis. Voluptatem voluptatum id consequatur perspiciatis. Aut tempore sit tempore quis. Inventore laboriosam molestias tempora. Vel incidunt aut molestiae earum suscipit labore. Dolorem nisi qui qui rerum in quis reprehenderit et. Quia consequuntur at expedita nemo eos. Tenetur non eaque cum omnis quidem odio consectetur.', '192.00', NULL, 'DIGI430', 'instock', 0, 305, 'digital_2.jpg', NULL, 2, '2022-06-25 07:36:36', '2022-06-25 07:36:36'),
(32, 'consequuntur voluptatem', 'consequuntur-voluptatem', 'Et qui rerum maxime tempore et aspernatur iusto. Porro excepturi quod et voluptas ut et.', 'Rem ut enim reprehenderit perspiciatis quasi voluptatibus. Aliquid dignissimos sapiente quia earum eos provident. Ipsum laboriosam aut id sequi. Fugiat assumenda voluptatum optio nihil quisquam debitis voluptatem. Voluptatem dolores dolorem eos necessitatibus sed molestiae enim. Maxime quia asperiores tenetur nostrum est sunt. Eaque recusandae sit cumque cum sed recusandae beatae. Maxime quia est dolor neque repudiandae ea illo nihil.', '325.00', NULL, 'DIGI163', 'instock', 0, 253, 'digital_21.jpg', NULL, 5, '2022-06-25 07:36:36', '2022-06-25 07:36:36'),
(33, 'labore impedit', 'labore-impedit', 'Cumque sunt et omnis porro. Deleniti id velit commodi culpa. Illum dolor ea vero et aut.', 'Amet corporis autem odio eum hic. Molestiae et velit accusantium aut qui ut laborum omnis. Laboriosam iste non qui magni sunt harum cumque sit. Libero autem ad sapiente laboriosam sed distinctio quo. Suscipit et iure vero quasi voluptas velit perferendis. Amet odio libero rerum et veritatis omnis dolor.', '328.00', NULL, 'DIGI406', 'instock', 0, 453, 'digital_14.jpg', NULL, 3, '2022-06-25 07:36:36', '2022-06-25 07:36:36'),
(34, 'rerum id', 'rerum-id', 'Aut quas dolore et at ut. In alias alias quis molestiae.', 'Fuga ut placeat praesentium nihil nihil debitis et omnis. Vero voluptatum aut ex commodi voluptas fugit dolorum. Odit quia tenetur alias officia molestias aperiam animi. Voluptates voluptates aut et perspiciatis autem consequatur sit. Error ratione similique aliquid et quasi tempore quia iusto. Natus fuga voluptatibus delectus magnam sint corporis dolores. Et voluptatibus voluptas explicabo rerum necessitatibus nihil numquam facilis. Assumenda quidem temporibus sunt fugit ipsa consequatur.', '462.00', NULL, 'DIGI203', 'instock', 0, 205, 'digital_3.jpg', NULL, 5, '2022-06-25 07:36:36', '2022-06-25 07:36:36'),
(35, 'molestiae nisi', 'molestiae-nisi', 'Omnis earum aliquid et quisquam laborum. Optio consequatur doloremque autem eius odit.', 'Iusto consectetur qui praesentium facere libero consequatur sed. Reiciendis asperiores unde mollitia assumenda et. Totam accusamus adipisci dolores occaecati atque necessitatibus. Accusantium dolorem quia esse iure deserunt expedita. Odio laudantium consequatur perspiciatis architecto hic qui numquam. Et recusandae et voluptas sapiente distinctio dolorem. Ea at consequatur velit iure quo.', '137.00', NULL, 'DIGI498', 'instock', 0, 434, 'digital_7.jpg', NULL, 5, '2022-06-25 07:36:36', '2022-06-25 07:36:36');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('8dQRoReFIWIwExzY1CmJJRRmYbBJwIGCEiGx9b2T', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiTVZTcXBnMXhMMktNNkljYU1JSnhaaXpyNEhuQ2VJWnhoVmRxNmdTYiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9zbGlkZXIiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTY1ODE2Mjk2NDt9fQ==', 1658162971),
('6m1yqitPq1zzqOb1TB11SnIr8cvTwkj2aHEHnKds', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiWDJtZllPZkFYTWdzdnh0eDk1TDNBTGt4Q0tYa1BmOEFkZDBJdDJTayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9zbGlkZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTY1ODE0OTY5NDt9fQ==', 1658154949),
('uvOFnSTmQBBn7SGqHAV4pysUHIWRULx769R1sWNr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicnVTUzZkeDFoTEY1VkxnNkZkQ2JYeUh5YlJjTmptU2RBWkxBRnRFMSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1658149686),
('MkrUYI0dTrqnI26K6qiB5xvVdigSpWg3PeuDGYPX', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoicmU2cG9jaHYzckd5WmpISjdkZ0kxaUIzR0o2T2JBcXpBN2g3SnRCWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9wcm9kdWN0cyU3RD9wYWdlPTQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTY1NzgxNDYxMzt9fQ==', 1657820803),
('BgFn2LXghuAOYY2geHdKibgiXF4NZofxBIX2wi4i', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiYUV3cUNtZTlJbVhrYzRWdlprWWJIcmVqNlFVMW12MW9uQ0NybER5RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjAyOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvbGl2ZXdpcmUvcHJldmlldy1maWxlL3JJZlFrdTB5a1JoVEllcndOZUtDZTl6NVFkRmlQVy1tZXRhTVRVMU5UUXlOREV6T0RRd01pNXFjR2M9LS5qcGc/ZXhwaXJlcz0xNjU3ODk2MTc2JnNpZ25hdHVyZT02YWYzY2RlMTQzMzJlYzlkOTNlNjNkMzlhMGFkODJlYTVkYmM2ZTA4MmExNmY1ZTlkMzAyNzEzNWI2MzlhM2UzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE2NTc4ODcxOTM7fX0=', 1657894378),
('hCE6uTaPuUbCf6QKYj0UdCpNlePBiYyib9ZpGSft', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidmlxUDA1Y3ZQYmhIOVdrdVRVUENZNE5haVlJNExyMmk1UjRqWlYxSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjAyOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvbGl2ZXdpcmUvcHJldmlldy1maWxlL29pM3B4RE4wTXRYampVdWdWdjY3UmdaRFZjd2lDQS1tZXRhTVRVMU5UUXlOREV6T0RRd01pNXFjR2M9LS5qcGc/ZXhwaXJlcz0xNjU3OTAzODgwJnNpZ25hdHVyZT04ZGRjNTNlNGNkOTVhYzdiZmRiOGM0MDI0ZmQxMjkzOTljMjI1NTM1YTFmMGM1NzU4MzNhYTUxOGRmYjRkNmM3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE2NTc5MDExNDk7fX0=', 1657902081);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'Sasitha', 'ruvishansth1030@gmail.com', NULL, '$2y$10$dPuDcMArTueGsrg7xn.ma.nqL1L0wZGsIcsnqpssZRfAe3kj.KVp2', NULL, NULL, NULL, NULL, NULL, NULL, 'ADM', '2022-05-24 23:42:20', '2022-05-24 23:42:20'),
(2, 'User', 'user@gmail.com', NULL, '$2y$10$hzP8JuPDmGtIntoHJtPFaeUXod/LjWIbjoIQYQr0zVeK9Y3ssc1q.', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-05-24 23:49:42', '2022-05-24 23:49:42'),
(3, 'Sasithadfsf', 'ruvishanstdsfdsfh1030@gmail.com', NULL, '$2y$10$GovZDuVFfWZDAsVnsvEhF.yks2ekdhwv54x/vvFEsxTuLB3SkmHgK', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-05-28 01:53:01', '2022-05-28 01:53:01');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
