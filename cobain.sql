-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 16, 2023 at 05:02 AM
-- Server version: 8.0.28
-- PHP Version: 8.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cobain`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Programming', 'programming', '2023-11-15 21:53:23', '2023-11-15 21:53:23'),
(2, 'Web Design', 'web-design', '2023-11-15 21:53:23', '2023-11-15 21:53:23'),
(3, 'Personal', 'personal', '2023-11-15 21:53:24', '2023-11-15 21:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_01_033413_create_posts_table', 1),
(6, '2022_03_01_083716_create_categories_table', 1),
(7, '2022_04_09_093238_add_is_admin_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `category_id`, `user_id`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 'Excepturi aliquam aut perspiciatis.', 1, 3, 'culpa-aut-non-sequi-qui-fugit-est', NULL, 'Debitis ipsam aut eveniet quia quae temporibus. Iure corrupti atque ratione magnam. Aut a aperiam corporis sunt. Rerum est placeat officiis.', '<p>Ipsum voluptatem id dolores aut ex recusandae nulla. Tenetur quis reprehenderit voluptas perspiciatis voluptas. Dolor porro voluptate optio qui ullam.</p><p>Minima culpa iusto est sint. Quasi consequuntur at qui illo quibusdam velit. Explicabo repudiandae neque aut est at. Quod nihil aut quis rerum. At iste officiis iste aut reprehenderit et consequuntur.</p><p>Adipisci et laudantium nostrum reprehenderit commodi quos nisi. Sed quasi eos officia nihil sed eligendi. Vel nam labore fugit incidunt eos voluptatibus.</p><p>Aut quod neque et qui minus. Omnis quaerat necessitatibus recusandae sint. Sequi nam qui at laboriosam consequuntur illum eaque. Et quo distinctio excepturi.</p><p>Porro vero debitis corporis quo veritatis. Placeat dolorem doloribus non quibusdam earum ratione quis. Deserunt vitae quia deleniti laudantium suscipit. Quae a libero est impedit a.</p>', NULL, '2023-11-15 21:53:24', '2023-11-15 21:53:24'),
(2, 'Neque laudantium impedit.', 3, 3, 'commodi-ut-ab-qui-sed-ipsum', NULL, 'Voluptas amet sit perspiciatis ea. Dolor suscipit nihil neque nesciunt aut earum. Sit dolores facilis quaerat esse et veniam velit. Officiis omnis autem veritatis vero cum vel. Sunt aut minus quidem nobis repudiandae et.', '<p>Repellendus vitae consequatur ex optio eos est. Expedita alias sapiente iure fugiat fugit totam consequatur neque. Illum ratione magni voluptatem aut quo aut placeat. Et est incidunt officiis deserunt facere facere ullam.</p><p>Non quo est aut. Veniam accusamus modi qui neque natus voluptatem nobis facere. Reiciendis recusandae amet molestiae in. Sequi fuga aut atque impedit in.</p><p>Labore aperiam rerum omnis voluptatibus sint quisquam est. Ut omnis ab cumque quos. Dolor impedit magnam repudiandae dolorem.</p><p>Nihil deserunt iste odit placeat ullam non. Blanditiis optio pariatur suscipit labore suscipit quasi perspiciatis. Voluptatem ut reprehenderit rerum sapiente. Dolores dolore possimus et aut deserunt voluptatem dolorum.</p><p>Quasi animi et architecto. Tenetur a dolor eligendi quia. Corporis et dolores amet animi beatae aut necessitatibus maxime. Et ea minima in hic id. Quia possimus repellat est quod eos iste.</p><p>Et libero labore velit sint. Nesciunt quia ut provident animi temporibus id porro. Voluptatibus atque ducimus dolorem voluptatem.</p>', NULL, '2023-11-15 21:53:24', '2023-11-15 21:53:24'),
(3, 'Et consequatur voluptatem eum quas.', 3, 3, 'vero-beatae-animi-delectus-quibusdam-possimus-ducimus', NULL, 'Quia et omnis porro neque. Alias saepe esse rem cumque. Repellat consequatur eveniet provident.', '<p>Aut natus qui eius. Magnam porro blanditiis minus est quia veritatis ut. Doloribus harum accusamus officiis placeat enim quis.</p><p>Architecto cumque cumque totam. Delectus esse ratione accusantium a.</p><p>Dolorum deleniti iste saepe ratione. Aliquam laudantium molestias amet totam earum sequi. Nam consequuntur quam corporis delectus voluptates.</p><p>Sequi et aspernatur facilis est earum aliquam est. Sunt est nemo laudantium sapiente optio sapiente sequi. Vel tenetur in numquam et possimus eum est.</p><p>Sed praesentium et nesciunt facere. Explicabo recusandae vel dolor nobis vero. Repellat aut fugiat ut eaque odit. Voluptatem id dolor nemo eligendi repudiandae.</p><p>Et voluptatum occaecati ullam dolores rem cum. Accusantium cupiditate doloribus et laboriosam veritatis dolor. Autem dolore odit possimus aut suscipit. Quos aut amet sint veritatis assumenda quam voluptas.</p><p>Assumenda ut cupiditate voluptate ut harum alias esse. Sed aliquid quos voluptas qui corrupti ea. Et vero provident voluptates doloremque. Est ea modi dolorem quasi autem saepe blanditiis facilis.</p><p>Sint aut nobis aliquid sit asperiores iusto. Sapiente nobis doloremque adipisci. Veritatis architecto animi assumenda et.</p>', NULL, '2023-11-15 21:53:24', '2023-11-15 21:53:24'),
(4, 'Nulla non quos qui.', 1, 3, 'enim-aliquid-sapiente-aperiam-tenetur-placeat-sequi', NULL, 'Id commodi est in porro molestiae laborum sed aut. Veritatis debitis molestiae sed cumque commodi magnam fugit. Sit asperiores ipsa ratione sequi tenetur. Tenetur dolore nostrum aspernatur qui.', '<p>Et perferendis odit cum quo earum ducimus quidem qui. Est nesciunt quasi atque magni incidunt quibusdam. Quod totam non consequuntur sapiente est nisi.</p><p>Perspiciatis repudiandae error porro ut. Maiores dolorem nihil pariatur dolores et dolor molestiae. Omnis et at rerum quo vero vel inventore ipsam.</p><p>Voluptatem maxime eos in sed doloremque est. Reprehenderit ipsam tempora et id. Earum ipsam qui illo quidem cupiditate autem. Omnis accusamus at expedita sint rerum sequi.</p><p>Deleniti atque sequi perferendis in accusantium ut. In sed sint est. Dolorum eum omnis nostrum dolores quis. Incidunt reiciendis et odio sit et.</p><p>Distinctio esse ex et velit dolores cupiditate. Vel accusamus eligendi dolores repellat eligendi est.</p><p>Recusandae numquam quidem aut qui magni dolores. Omnis quia dolores dicta atque. Et porro saepe facilis qui sequi. Non voluptatum nemo ratione atque qui veniam in facere.</p><p>Ut ex molestiae sit quo dolorem non rerum sit. Labore voluptas nisi ducimus sunt aut perspiciatis et. Repudiandae non nisi repudiandae maxime facere quibusdam.</p><p>In et rem eum sed repellat soluta accusantium. Soluta laudantium ut dolorum fugit et ut exercitationem earum. Dicta aut quo sapiente dolorem reprehenderit.</p><p>Ipsa facilis porro autem minus aut voluptatem. Fuga quas corporis atque neque quos omnis. Quia voluptatem iusto ratione tempora enim et.</p>', NULL, '2023-11-15 21:53:24', '2023-11-15 21:53:24'),
(5, 'Voluptates occaecati quae porro beatae beatae molestiae quam sunt voluptas est.', 1, 3, 'qui-odio-occaecati-rerum-ullam-facere-velit-vero-id', NULL, 'Dolorum ipsa quasi sed omnis impedit ad minus officia. At illo dolorem qui amet consequatur mollitia qui at. Omnis non distinctio quae sed animi magni sed quae.', '<p>Alias quibusdam reiciendis delectus ut quidem molestiae a quia. Atque quia provident cumque deleniti. Voluptatem animi quam praesentium dignissimos libero. Aliquam quidem voluptate et et ut dolorem.</p><p>Rerum minus rerum beatae quam quo temporibus. Et corporis sed ut ut quo tempora. Magni odio eum iure praesentium veritatis. Dolorum omnis quibusdam et dolores voluptatem.</p><p>Aut eos aut animi ut officia possimus et. Et excepturi deleniti perferendis labore expedita reiciendis. Et minima recusandae consectetur hic atque porro consequatur maxime. Unde laborum et tenetur.</p><p>Qui ut nesciunt accusantium in placeat aut. Et eveniet vero sunt quos. Voluptatem quo quis vel sint.</p><p>Eum aliquam asperiores quae molestiae dolores aut. Quia dolorum nulla harum. Recusandae ex vel ullam ducimus doloremque.</p><p>Sed vero repudiandae voluptates earum consectetur soluta. Et ex voluptatem fuga sapiente delectus. Ipsa alias et dolorem aut.</p>', NULL, '2023-11-15 21:53:24', '2023-11-15 21:53:24'),
(6, 'Fugiat et.', 1, 2, 'qui-odit-est-est-placeat-voluptatum-quia-sunt', NULL, 'Ut voluptate nam quaerat deserunt ipsa iusto error. Molestias in iure minima voluptatem et ea quaerat. Asperiores illum recusandae incidunt cum et quaerat quo.', '<p>Ipsam reprehenderit et qui sed. Consectetur error consectetur consequatur dolore ut. Est ut a quas facilis.</p><p>Quas hic voluptas nihil sapiente neque necessitatibus in. Culpa nulla sed ipsa velit. Itaque tempora vitae ut provident. Quo ut et adipisci sapiente. Itaque at qui saepe natus eligendi vel.</p><p>Veritatis quibusdam qui rerum quidem. Et nobis odit enim quis molestias velit. Sed error laudantium repellat distinctio et et.</p><p>Maiores ullam consequatur delectus quia. Et qui quis soluta molestias. Vero tempore ratione odio iure.</p><p>Eum et placeat consequatur quia distinctio minus. Tempore quasi eos et corporis quaerat et odit totam. Amet maiores molestiae recusandae rem eos. Assumenda assumenda eveniet minus est rerum quia dignissimos voluptas.</p><p>Natus harum eligendi quasi qui laborum minima. Cumque quasi autem quas aut. Neque corporis maiores voluptatum dignissimos dolores nemo et.</p><p>Voluptatem hic nulla qui. Consequatur placeat illo eum quaerat. Aut eum vel quas sapiente et quos.</p><p>Qui fuga voluptate consectetur doloremque qui. Et et deserunt natus minus dolores voluptatibus earum. Vero ducimus reiciendis accusantium exercitationem et.</p>', NULL, '2023-11-15 21:53:25', '2023-11-15 21:53:25'),
(7, 'Fugit minus natus nihil.', 1, 1, 'et-officiis-magnam-est-ab-tempora', NULL, 'Illo illum at ut. Est rerum corrupti ut pariatur non. Sequi similique quia tempora voluptatum.', '<p>Quas sed placeat pariatur reiciendis et non. Natus consequuntur voluptatem ut quis debitis dolor neque nihil.</p><p>Enim distinctio in facilis laborum. Blanditiis itaque et culpa. Reiciendis voluptatem a rerum et consequatur.</p><p>Est sed nostrum quod dolores. Magnam numquam vel rerum cum asperiores officiis. Ea est earum ut aspernatur cumque.</p><p>Delectus assumenda laudantium architecto ut voluptatibus. Aut qui voluptatem voluptatem fugiat animi tenetur aliquid. Quis quia qui et sed.</p><p>Tempora velit perferendis et incidunt. Fugiat quibusdam necessitatibus rem corrupti dolorem nisi.</p><p>Animi deleniti molestias porro debitis eos molestias aut. Et nam numquam aperiam quaerat dolor molestiae.</p>', NULL, '2023-11-15 21:53:25', '2023-11-15 21:53:25'),
(8, 'Repellendus blanditiis perspiciatis accusamus sunt.', 2, 2, 'natus-omnis-sit-esse-iusto-odio', NULL, 'Ipsum earum hic autem accusantium et ea et. Ut eveniet odio dolor modi cum ut rerum. Vel corrupti nobis cum.', '<p>Perferendis animi totam optio laborum ipsam omnis dolor. Impedit deserunt consequatur ut aperiam sit vel dolorem. Ut dolores incidunt quidem mollitia sit.</p><p>Ut ut qui corporis distinctio sit quam aliquid. Ipsam aspernatur et blanditiis deserunt. Laboriosam ea minima voluptate sunt quasi. Non autem aut culpa iure nulla.</p><p>Ipsum quisquam libero autem. Quam saepe asperiores sint qui. Aspernatur doloribus velit vel necessitatibus possimus unde. Corporis beatae enim magnam dolores possimus quas quia molestiae.</p><p>Est dolore omnis ea ipsa pariatur quis. Ut non non nobis. Facere architecto quia modi saepe ab et. Consequatur similique tenetur totam.</p><p>Mollitia aliquam enim maxime id. Quas magni quia culpa ab. Possimus veniam et ipsa optio harum.</p>', NULL, '2023-11-15 21:53:25', '2023-11-15 21:53:25'),
(9, 'Omnis asperiores sit nobis eum velit voluptas suscipit cum aut qui.', 2, 2, 'quia-ipsam-officia-in-hic', NULL, 'Maxime rerum veritatis fugiat natus corrupti. Omnis soluta fuga aut consequuntur nulla. Atque porro animi eligendi dolores repudiandae veritatis. Omnis exercitationem fugit voluptatem laboriosam assumenda quibusdam.', '<p>Omnis voluptatibus a odio numquam. Dolor alias quod voluptatem dicta modi magni ad suscipit. Dolor atque ipsa voluptas cumque est adipisci. Aut nostrum numquam quo facilis molestiae sed libero.</p><p>Aut officiis omnis dolorem. Incidunt similique quia aliquid atque. Deleniti at aut nobis qui.</p><p>Corrupti architecto beatae suscipit distinctio optio. Dolor cum occaecati quidem tempore. Ipsam illum omnis tenetur dolorem.</p><p>Aut corporis dolores facilis quae non consequatur. Dolorem et voluptatem beatae qui exercitationem veritatis illum. Voluptatum possimus eius magnam qui. Dolorum neque est praesentium.</p><p>Est similique voluptas debitis est est sunt. Laudantium harum odio ut est cupiditate dicta. Sint voluptatum eveniet maiores vitae.</p>', NULL, '2023-11-15 21:53:25', '2023-11-15 21:53:25'),
(10, 'Dolorum minus et adipisci a sit repudiandae.', 1, 3, 'molestias-voluptatem-autem-quae-esse-tempora', NULL, 'Sunt repudiandae occaecati voluptatem magnam voluptatem dolor. Labore dolore aut aut aut. Libero quia praesentium et facere nesciunt.', '<p>Accusantium quia ipsa unde quos. Beatae eveniet voluptatem magni.</p><p>Laborum nesciunt id voluptatem dolorem ipsam quo sunt. Saepe expedita est dicta reiciendis consequatur fugit. Voluptas beatae quo qui dolorum rerum tempore non mollitia. Repellendus aliquid porro quasi asperiores.</p><p>Sint consequatur libero voluptas. Consequatur exercitationem dolores eos doloribus illum quo. Dignissimos voluptatum eveniet a est.</p><p>Illum aliquid distinctio dolorem et repellendus ea suscipit fuga. Aut eos nihil commodi facilis. Doloremque vel dignissimos saepe.</p><p>Modi blanditiis consequuntur nesciunt minima. In accusamus beatae porro veritatis. Est deleniti velit architecto deserunt et enim. Quo ducimus temporibus est totam maiores.</p><p>Et repellat quisquam voluptatem pariatur ut. Iste quibusdam reprehenderit possimus doloremque. Et illo molestias corrupti error quos id.</p><p>Ad corrupti odit sed labore odio. Quisquam vel repellendus nemo illum est ad. Inventore odio non mollitia architecto.</p><p>Dolorem consequatur nihil odio consequatur sapiente. Culpa voluptate eum eligendi ut. Voluptatem velit blanditiis sit esse. Nemo soluta expedita quae inventore.</p>', NULL, '2023-11-15 21:53:25', '2023-11-15 21:53:25'),
(11, 'Non minima earum rerum tenetur quia omnis quia rerum.', 3, 1, 'sint-in-nemo-aut-animi-maiores', NULL, 'Ab aut fugit veritatis porro saepe error. Et et dolor dolor sapiente numquam optio tempore eveniet. Rerum facilis repellat accusamus quia. Sed eaque temporibus sint maiores. Est deserunt placeat a occaecati adipisci.', '<p>Est voluptatem cupiditate fuga ipsa fugiat quis repudiandae. Velit aliquam sit ipsam modi. Perferendis aut libero illo dolores ut.</p><p>Ut reiciendis ipsam libero. Labore ex eos enim quo velit et. Ut incidunt officia unde est.</p><p>Perspiciatis et ut nihil distinctio ipsa aut. Nulla illo nostrum autem voluptas. Esse cumque sed est vel consectetur explicabo.</p><p>Aliquam possimus quod eum sed id. Corporis quisquam ut veniam. Dolor voluptatem autem tempore et eveniet maxime.</p><p>Voluptatem qui quos culpa excepturi. Non quia ducimus aperiam ut exercitationem veritatis quis. Fuga aliquam enim inventore et minus et possimus. Odit totam laboriosam est.</p>', NULL, '2023-11-15 21:53:25', '2023-11-15 21:53:25'),
(12, 'Voluptate doloribus aperiam nihil consequatur nihil temporibus qui.', 2, 2, 'beatae-quod-rerum-vel-porro', NULL, 'Nihil quos veritatis vel est. Nostrum aliquam qui beatae ea voluptates dolore autem.', '<p>Ut qui occaecati ipsa repellendus et. Deserunt veritatis quasi consectetur. Officia unde non ducimus eveniet.</p><p>Et non beatae facere alias voluptates. Magnam quis temporibus dignissimos libero. Exercitationem velit quam dolorum voluptatem et eum molestias.</p><p>Eaque officiis unde numquam assumenda delectus exercitationem dolore explicabo. Molestias dolor iusto officia non deleniti voluptatem. Qui vitae ducimus est ipsum aut doloremque. Est dolorem earum eligendi est laboriosam voluptatum. Nemo sit modi ut dolores.</p><p>Aspernatur error ut laudantium est inventore quis accusamus quia. Quidem qui similique occaecati excepturi assumenda deleniti. Exercitationem ut sint non eveniet magni veritatis rerum.</p><p>Iste eos itaque sed numquam asperiores fugiat. Dicta nisi odio sunt consequatur corrupti ratione. Consequatur voluptatibus eligendi molestiae ut praesentium non.</p><p>Aliquid non soluta placeat voluptatem sunt voluptas voluptates accusantium. Id ut earum dolorem eligendi qui nihil ex. Quia temporibus voluptatum accusantium modi voluptatem. Sit dolor perspiciatis aut consequuntur expedita voluptatem voluptatibus.</p><p>Necessitatibus neque quasi consequatur quo sit. Voluptatibus ut ut qui facilis et. Temporibus non vel ea saepe ea aut facilis.</p><p>Debitis culpa ex velit quod ut fugit non. Aut ipsa soluta pariatur quia laboriosam adipisci voluptate. Ut iure repudiandae voluptatum voluptas. Blanditiis quo eum ut aliquid. Impedit sunt nulla facilis aspernatur voluptatibus.</p><p>Veniam iusto quaerat occaecati. Voluptas aspernatur eius sint repudiandae. Temporibus eos facilis qui est eligendi voluptatem. Aut eos qui velit culpa nam atque architecto error.</p><p>Officia quia iste voluptatem et dolor. Temporibus eius neque expedita aut deserunt et. Quae est quis sunt qui est delectus.</p>', NULL, '2023-11-15 21:53:25', '2023-11-15 21:53:25'),
(13, 'Quisquam est.', 3, 1, 'voluptas-error-earum-dolorem-fugiat', NULL, 'Deserunt modi necessitatibus qui voluptatem consequatur. Harum expedita ipsa tenetur tempore aut iure in illum. Ipsam aut dolore odio ea qui voluptas rerum. Quis suscipit cupiditate ipsa rerum omnis.', '<p>Ea consequatur libero voluptates ut et quos. Maxime nostrum modi culpa necessitatibus pariatur animi et ullam. Dolorem quia nihil mollitia commodi. Ratione sed dolorem ex et modi voluptas.</p><p>Quos dolorum atque debitis molestias. Et harum qui iste dignissimos quia. Eum iste autem tempora expedita enim consequatur.</p><p>Maiores vitae hic voluptatem similique id necessitatibus alias. Qui laudantium nam enim at. Est deserunt accusamus asperiores non autem.</p><p>Aut et nesciunt vel fuga. Et laudantium nemo ducimus et sed veniam illum. Dolorem placeat laborum necessitatibus a. Voluptatum deleniti minus aperiam voluptatum.</p><p>Commodi dolorum possimus blanditiis nam. Sit laudantium cum asperiores sapiente expedita necessitatibus. Unde beatae excepturi ea temporibus aut qui ut est.</p><p>Quaerat corporis nesciunt illum suscipit. Voluptatem architecto atque sit. Debitis est est et corporis sunt qui numquam.</p><p>Veniam reprehenderit cupiditate et iure. Voluptate sunt quia pariatur et. Ipsam quos est vitae rerum.</p><p>Tempore cum et facilis et voluptatem iure blanditiis. Veritatis natus esse incidunt et ullam hic ullam eligendi. Expedita enim itaque perspiciatis officiis vel ut maiores. Veniam voluptas impedit dolorem quibusdam corporis qui voluptatum.</p>', NULL, '2023-11-15 21:53:26', '2023-11-15 21:53:26'),
(14, 'Labore dolorem consequatur recusandae.', 3, 1, 'iusto-cum-neque-illo-vero-cupiditate-illum-quia', NULL, 'Modi asperiores delectus officia nihil ut. Recusandae ut molestiae qui error necessitatibus eos. Eius perferendis et sint in quasi ipsum est.', '<p>Alias autem porro nemo et odio suscipit nobis. Veniam quia ut voluptatem eum. Ea adipisci earum voluptatem asperiores aut commodi.</p><p>Explicabo repellat id nam dolor officiis. Aperiam tenetur magni et libero beatae animi ab ab. Nesciunt provident est quia sed ullam.</p><p>Omnis pariatur in tempora et illo non. Est asperiores atque voluptas vero. Error soluta accusamus ipsam consequuntur cupiditate blanditiis ut eveniet. Soluta ut voluptas iste minus velit omnis adipisci.</p><p>Excepturi maxime aspernatur impedit. Perspiciatis sunt reprehenderit officiis fuga iusto iure et alias. Ducimus consequuntur optio adipisci similique deserunt laudantium id velit.</p><p>Delectus numquam ex consequatur nam architecto id dicta. Corrupti eum et earum tempora molestiae vero omnis. Et quo quis ut excepturi. Voluptas quasi molestiae aut.</p><p>Corporis consequatur vero eius libero sunt ut assumenda optio. Molestias ea pariatur quia veritatis necessitatibus. Est non laudantium tempore dolores.</p>', NULL, '2023-11-15 21:53:26', '2023-11-15 21:53:26'),
(15, 'Nisi eaque consequatur accusamus illum nostrum est.', 2, 3, 'vitae-unde-assumenda-impedit', NULL, 'Repellendus dolorem sit ut. Vel eligendi omnis earum consectetur et voluptatum. Facilis veniam voluptatem in quasi consequatur.', '<p>Dolor assumenda omnis autem. Qui molestiae perspiciatis ipsum inventore. Sequi hic beatae modi et voluptate qui sit. Ipsam ipsa quae possimus iure similique veritatis perferendis accusantium.</p><p>Ducimus tenetur culpa sapiente nostrum. Deleniti illum tenetur aspernatur. Dicta dolor autem quia nisi dolorum.</p><p>Qui facilis quia eum modi. Quia ex et officia consequatur. Quas est voluptatem deleniti tenetur neque.</p><p>Harum sequi praesentium eaque reiciendis. Iure esse dolor et quasi tenetur velit. Quae et debitis culpa esse ducimus quia. Consequatur vel iusto voluptatibus quidem ea soluta repellat quidem.</p><p>Culpa velit omnis unde quia possimus dolorum modi. Vero tenetur laboriosam in. Aut doloribus et ut autem.</p><p>Accusamus consectetur tenetur fugiat necessitatibus maiores. Vero eum ad est sed laudantium doloremque praesentium. Voluptatem illum eveniet magnam ratione inventore ullam. Qui sed quidem et eum tempore officia enim.</p><p>Quisquam nisi sit exercitationem et. Voluptatem asperiores dignissimos velit totam nihil non illum error. Quam ratione doloremque officia veritatis et sed ea asperiores. Ut harum doloremque est saepe incidunt et tenetur.</p>', NULL, '2023-11-15 21:53:26', '2023-11-15 21:53:26'),
(16, 'Sed qui earum corrupti corporis nisi suscipit vero.', 2, 1, 'ea-quibusdam-rerum-sit-eaque', NULL, 'Non nobis ut id et ea. Officiis magnam velit quia nihil laboriosam qui. Quia ab tenetur fuga similique qui est soluta.', '<p>Ut quod repudiandae cupiditate praesentium quaerat occaecati. Exercitationem aspernatur minima eum dolor qui eaque inventore. Repudiandae et iste rerum optio voluptatum et. Iure eius minus omnis magnam inventore quia porro. Eveniet vitae repudiandae voluptas repellendus ex perferendis.</p><p>Debitis et et natus ipsum distinctio aperiam sunt cum. Iure modi mollitia cum fugit consequatur recusandae odit. Officia dolor debitis est aut provident voluptatem saepe. Non delectus vel nesciunt et et tempora.</p><p>Aut qui voluptatum voluptatem voluptatibus voluptate nesciunt illum debitis. Quod quia aut earum molestias. Consequuntur accusamus porro voluptatum tenetur. Ratione architecto occaecati et non dolor beatae ea quia.</p><p>Sapiente quis deleniti hic dolores facilis quidem rerum numquam. Quisquam excepturi soluta perspiciatis aliquam alias ipsa. Sunt quibusdam omnis sit quia quaerat nostrum architecto.</p><p>Exercitationem doloribus a et blanditiis. Consequatur qui sequi aut ut.</p><p>Alias qui aliquam ut veritatis iste quia ea aut. Sunt voluptatem quis assumenda omnis nobis in. Animi consequatur earum amet aut aut et et. Sequi officiis autem voluptate ex.</p><p>Magnam dolor iste hic excepturi qui aut quo. Quia cumque accusantium adipisci hic quo molestias recusandae sed. Occaecati ut aut ratione error non ad omnis quasi. Quisquam harum natus dignissimos ipsum.</p><p>Non et non asperiores et. Voluptatem dolorem aut tenetur est. Voluptates harum exercitationem nemo qui eveniet. Voluptates molestias eius id quaerat sed et non.</p><p>Quo voluptatem mollitia pariatur dolorem sit qui sequi ipsam. Optio nobis velit nesciunt esse esse ex et. Voluptatem dolores veniam voluptates aperiam numquam adipisci sed.</p>', NULL, '2023-11-15 21:53:26', '2023-11-15 21:53:26'),
(17, 'Quis explicabo qui.', 3, 1, 'aspernatur-suscipit-voluptate-rem-iste', NULL, 'Sunt corrupti dignissimos fugit culpa qui voluptatem quod veritatis. Consequatur molestiae nihil et commodi quia voluptatibus molestias cupiditate. Incidunt officia possimus ipsam nostrum similique est voluptas. Ea in commodi eos et.', '<p>Inventore reiciendis aut aut rerum. Quibusdam omnis nam recusandae quis. Earum numquam dolor aut aspernatur vel est suscipit.</p><p>Eum fugit aliquid iure ipsam. Aliquam voluptatem optio vitae explicabo veritatis ullam ut corporis. Animi voluptatem ut dolores distinctio. Sed reiciendis omnis aut aspernatur voluptatum.</p><p>Rem nostrum veniam animi quo. Sed rerum asperiores consectetur facilis soluta harum officia. Dolor veniam dolor necessitatibus veritatis vero dolorem. Vero ea voluptate nihil ipsam maiores quaerat.</p><p>Eveniet dolorem doloribus nobis ipsam qui. Ut incidunt sint modi ullam non delectus nostrum. Nihil numquam eos velit aliquam maxime provident.</p><p>Nihil nam mollitia ipsa accusantium aut consequuntur. Assumenda quae ducimus quo sed ut autem qui ut. Nihil minus optio rerum molestiae. Est ad sit id atque aspernatur voluptatem nobis.</p><p>Sint aut praesentium animi quia delectus eos. Odit ducimus reiciendis officiis ducimus. Est quos et dicta ut magnam.</p><p>Dolor debitis ea in fugiat autem. Aspernatur vitae aspernatur minus quas suscipit.</p>', NULL, '2023-11-15 21:53:27', '2023-11-15 21:53:27'),
(18, 'Laudantium omnis dolorem voluptatem quod voluptas.', 2, 3, 'dolorum-in-debitis-dolorum-est-eligendi', NULL, 'Debitis libero aperiam vero sed maiores. Dolorem aliquam qui magnam facilis quia. Provident deserunt officia enim possimus quis recusandae. Laudantium at inventore sint.', '<p>Voluptas officiis ut et aut quod asperiores at adipisci. Ut ipsa excepturi aut id. Soluta fuga odit sint adipisci exercitationem. Aliquid quidem quo aut quaerat aut sed. Reiciendis rerum eos neque rem ut.</p><p>Numquam maiores recusandae et sed. Magni incidunt saepe est aut. Illum non voluptas quo neque ut.</p><p>Inventore iure aut sapiente sunt et. Veritatis est nam voluptatem dolores debitis. Laborum sapiente reprehenderit et architecto saepe. Quia corporis fugiat voluptatem tempore possimus molestiae dolores. Quo tempora architecto ipsam voluptates quia.</p><p>Possimus et qui et alias. Omnis minus sunt explicabo suscipit voluptas ut. Dicta quis qui dolore inventore incidunt dicta quos.</p><p>Rerum qui molestias et minima quia. Laborum id ipsum error exercitationem enim deleniti inventore. Aliquam quia esse ut omnis quia ad distinctio quo.</p><p>Exercitationem animi esse cumque possimus fugit hic a labore. Eligendi soluta et odit impedit omnis dolor. Eligendi dolorum fugiat ratione consequatur quidem. Alias voluptatem neque iste sequi cupiditate facilis dolorem ut. Qui et delectus voluptatem minus laudantium.</p><p>Nihil voluptate et nisi. Nesciunt quis qui non eum. Numquam dolorum consequatur non eos quae dicta sit. Sit accusantium et quia et autem beatae occaecati. Perferendis minima consectetur eos qui dolores.</p>', NULL, '2023-11-15 21:53:27', '2023-11-15 21:53:27'),
(19, 'Nesciunt odio nobis et fuga.', 3, 3, 'omnis-qui-laborum-minima-omnis-vero-eos-quisquam', NULL, 'Ad magnam explicabo voluptates. Est natus quia provident sed vitae minus. Libero pariatur perspiciatis explicabo unde sapiente. Reprehenderit inventore mollitia et vel blanditiis magnam. Voluptatem odio et quia tenetur.', '<p>Optio eveniet vel et minima sit nemo aut cupiditate. Neque consequatur fuga sit sunt. Laudantium qui autem expedita aut et nobis.</p><p>Nesciunt autem voluptatem neque reprehenderit ea. Dolorem ab molestias laborum aut ea quas qui. Placeat ducimus natus delectus.</p><p>Qui dolores iure ut illum vero est odit. Voluptatem enim blanditiis aut et dolores.</p><p>Laborum quaerat et voluptatem deleniti maxime non consectetur. Quisquam est sit quod explicabo cupiditate ducimus similique. Harum placeat ut dolorem dolorum amet assumenda. In ipsa in occaecati ducimus in delectus hic.</p><p>Molestiae porro facere quaerat maiores commodi nam. Voluptatem ipsa non alias assumenda perferendis repellendus. Et ut illum voluptatem non enim. Voluptatem qui quia dolore fugit. Accusamus alias voluptates ipsam quia aperiam optio eos quis.</p><p>Iure officiis explicabo quos ex sunt totam quae quia. Non ut illum minus labore. Aliquam et et cum modi nihil recusandae at.</p><p>Deserunt aut et laboriosam quo non. Voluptatum molestiae soluta dignissimos quae. Facere quis iste sit non modi soluta in. Voluptas aliquid nulla et minima omnis vel.</p><p>Aut molestias dignissimos repellendus necessitatibus pariatur fuga dolorum. Dolore distinctio dolorem cum ad. Reiciendis earum recusandae fugiat provident autem assumenda voluptate optio. Incidunt est maiores recusandae sunt modi eveniet minima velit.</p><p>Totam at cumque qui in ut dolorem error. Fuga error et dignissimos doloribus. Sed deserunt id natus nisi ullam qui non.</p><p>Repellendus rerum id possimus rerum doloribus. Inventore perspiciatis corrupti temporibus omnis non hic et. Unde ipsam sed sit mollitia ex quae quis. Natus vero maxime ea non.</p>', NULL, '2023-11-15 21:53:27', '2023-11-15 21:53:27'),
(20, 'Sint quasi neque.', 1, 3, 'nisi-sit-assumenda-quia-rem-deleniti-optio', NULL, 'Itaque facilis suscipit officiis dolorem rerum enim. Est omnis qui cumque quo vel voluptatem soluta. Ab qui accusantium sequi recusandae. Voluptatum iste assumenda suscipit delectus unde ea. Nemo tenetur nesciunt in dolores rerum.', '<p>Eius harum libero magni ex sed quidem perferendis. Deleniti voluptas et dicta maiores architecto eum totam. Consequatur esse perferendis qui autem.</p><p>Voluptate reprehenderit culpa autem nisi exercitationem ducimus. Aliquid distinctio sit autem porro. Nobis et dolorum cumque velit excepturi error. Qui et voluptates et sit ex repellat.</p><p>Rerum laborum tenetur et perferendis placeat quidem dolore et. Quia error possimus facilis quibusdam iusto amet corrupti. At ut blanditiis quis vel impedit nam placeat qui. Enim error quaerat reiciendis modi quidem rerum.</p><p>Eum nihil et reiciendis maxime nobis expedita. Est modi voluptatem non amet consequatur et. Tenetur magnam omnis omnis et. Nobis odio repellat est qui fugiat sunt.</p><p>Dolorem eos ex omnis et qui. Ipsa adipisci expedita corporis reprehenderit sequi est ut. Vero placeat praesentium nam rem. Eligendi quia aut provident sapiente.</p><p>Ex ipsam labore asperiores laudantium ab est. Ea voluptatem eveniet consequatur soluta. Recusandae error consectetur ipsa cum officiis. Earum eum consequatur voluptatem est ipsa ut blanditiis quod.</p><p>Laborum repellat et velit temporibus modi ut et. Voluptates non ab excepturi nulla voluptatibus. Quisquam facere repudiandae odit asperiores ratione necessitatibus delectus minima. Quia nulla mollitia ut deserunt.</p>', NULL, '2023-11-15 21:53:27', '2023-11-15 21:53:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Winton', 'Winton Almundarisna', 'winton@gmail.com', NULL, '$2y$10$/RSE9BjceFfeHXAJyTDmCOcK.NManmkx//hsAZNJiYlcuJ71bMso.', NULL, '2023-11-15 21:53:22', '2023-11-15 21:53:22', 0),
(2, 'Oskar Anggabaya Hutapea', 'eka.nuraini', 'timbul52@example.org', '2023-11-15 21:53:22', '$2y$1\n            0$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oeigdNeMht', '2023-11-15 21:53:22', '2023-11-15 21:53:22', 0),
(3, 'Galar Umay Mangunsong', 'ramadan.samsul', 'puspasari.diah@example.net', '2023-11-15 21:53:22', '$2y$1\n            0$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6fDiq3vbNh', '2023-11-15 21:53:22', '2023-11-15 21:53:22', 0),
(4, 'Tiara Laras Hariyah S.Gz', 'reksa.utama', 'csihombing@example.org', '2023-11-15 21:53:22', '$2y$1\n            0$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '41ZqLrl5z9', '2023-11-15 21:53:22', '2023-11-15 21:53:22', 0),
(5, 'Asirwanda Sihombing S.Pd', 'qpuspasari', 'citra72@example.org', '2023-11-15 21:53:22', '$2y$1\n            0$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IMq12h9Wjz', '2023-11-15 21:53:23', '2023-11-15 21:53:23', 0),
(6, 'Karsana Hakim', 'vpudjiastuti', 'tantri.usamah@example.org', '2023-11-15 21:53:22', '$2y$1\n            0$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xeGzloxGA3', '2023-11-15 21:53:23', '2023-11-15 21:53:23', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_title_unique` (`title`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
