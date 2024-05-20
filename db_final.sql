-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2024 at 06:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `thumbnail`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Women', 1, '2024-03-17 06:58:29', NULL),
(4, 'Men', 1, '2024-03-17 07:23:56', NULL),
(5, 'Girl', 2, '2024-03-17 07:24:47', NULL),
(6, 'Old Men', 1, '2024-03-17 07:34:10', NULL),
(7, 'Old women', 1, '2024-03-17 07:34:24', NULL),
(8, 'Boy', 2, '2024-03-23 16:48:10', NULL);

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_08_154143_create_products_table', 1),
(6, '2024_03_08_154210_create_category_table', 1),
(7, '2024_03_08_154254_create_user_table', 1),
(8, '2024_03_08_154338_create_news_table', 1),
(9, '2024_03_08_155416_create_web_logo_table', 1),
(10, '2014_10_12_000000_create_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `newstype` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `viewer` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `thumbnail`, `banner`, `description`, `newstype`, `user_id`, `viewer`, `created_at`, `updated_at`) VALUES
(4, 'អនាគតម្ដាយក្មេកសរសើរមិនដាច់ពីមាត់ ចំពោះអាល់ប៊ុមថ្មីរបស់ Taylor', '2024-04-26-662b20212ba8a_1714102260_medium.jpg', '26-04-24-11-33-06_662b2029728bf_1714102260_medium.jpg', 'Helloទើបទម្លាក់បទចម្រៀងថ្មីសម្រាប់អាល់ប៊ុមទី១១របស់ខ្លួន Taylor Swift ត្រូវបានអនាគតម្ដាយក្មេក បង្ហាញការពេញចិត្ត និងសរសើរយ៉ាងខ្លាំងចំពោះសមត្ថភាព Taylor តាមរយៈចម្រៀងក្នុងអាល់ប៊ុមទាំងនោះ។អ្នកស្រី Donna Kelce គឺជាម្ដាយបង្កើតរបស់កីឡាករបស់កីឡាករបាល់ឱប Travis Kelce ដែលគ្រប់គ្នាត្រូវបានស្គាល់ថាជាមិត្តប្រុសកំពូលតារាចម្រៀងស្រីសហរដ្ឋអាមេរិក Taylor Swift។ ឆ្លៀតឱកាសចូលរួមក្នុងកិច្ចប្រជុំ QVC Summit ក្នុងទីក្រុង Los Angeles អ្នកស្រី Donna Kelce បានបង្ហើបប្រាប់ទស្សនាវដ្ដីបរទេសឱ្យដឹងថា អ្នកស្រីពិតជាមានការពេញចិត្តយ៉ាងខ្លាំងសម្រាប់ស្នាដៃចម្រៀងថ្មីក្នុងអាល់ប៊ុមទី១១ របស់ Taylor។', 'Entertainment', 4, 0, '2026-04-24 04:14:11', '2026-04-24 04:54:34'),
(5, 'ការចេញមុខរបស់នាយិកា ADOR មិនបានស្រង់ស្ថានភាពឲ្យប្រសើរ តែដូចធាក់ខ្លួនឯងធ្លាក់រណ្ដៅជ្រៅលើសដើម', '2024-04-26-662b1f2d6f80e_1714102020_medium.png', '2024-04-26-662b1f33cca2c_1714102020_medium.png', 'កាលពីថ្ងៃទី ២៥ ខែមេសា នាយកប្រតិបត្តិរបស់ ADOR គឺ Min Hee Jin បានធ្វើសន្និសីទសារព័ត៌មានបន្ទាន់មួយ ដើម្បីដោះស្រាយជម្លោះដែលកំពុងកើតមានរវាងនាង និង HYBE ដែលជាក្រុមហ៊ុនមេ។សន្និសិទសារព័ត៌មានបានបន្សល់នូវរឿងរ៉ាវគួរឱ្យភ្ញាក់ផ្អើលជាច្រើន ដោយមិនត្រឹមតែមិនអាចស្ទួយស្ថានភាពឲ្យមានភាពល្អប្រសើរជាងមុន តែកាន់តែធ្វើឲ្យភាពវឹកវរខ្លាំងលើសដើម។ រឿងកាន់តែវែងឆ្ងាយ ពេលនាងបង្ហាញរូបថតអេក្រង់នៃការសន្ទនារបស់នាងជាមួយលោក Bang Si Hyuk ស្ថាបនិក HYBE។ទោះជាយ៉ាងណា ការលាតត្រដាងទាំងនេះ មិនមែនជាហេតុផលតែមួយគត់ដែលធ្វើឲ្យអ្នកគាំទ្រ K-Pop និងអ្នកសារព័ត៌មាន មានការងឿងឆ្ងល់ឡើយ ប៉ុន្តែគ្រប់គ្នាមានការភ្ញាក់ផ្អើលនៅពេលដែលឃើញនាយកប្រតិបត្តិ ADOR ព្រលែងខ្លួន ដោយមិនបានតុបតែងឲ្យរៀបរយ ពោលគឺពាក់អាវយឺតធម្មតា ពាក់មួក មិនទាំងផាត់មុខ ហើយមកទាំងសក់មិនបានសិត ដែលហាក់មិនឲ្យតម្លៃសន្និសិទសារព័ត៌មានពេលនេះសោះ។ បន្ថែមពីលើនេះ នាងថែមទាំងប្រើពាក្យជេរប្រមាថ នៅពេលនិយាយអំពីអ្វីដែលកើតឡើង។', 'Entertainment', 4, 1, '2026-04-24 04:33:55', '2026-04-24 04:54:22'),
(6, 'បែកគ្នា ២៥ឆ្នាំ ទើប​ជួប​ក្នុង​វ័យជ្រេរៀងៗខ្លួន ក្នុងឆ្នាំ​២០២៤ ប៉ុន្ដែម៉ាក់ថឺង និងមើយចឺយ នៅ​តែផ្អែមល្ហែម', '2024-04-26-662b240e35c3c_1714103280_medium.jpg', '2024-04-26-662b240e35c3c_1714103280_medium.jpg', 'តារាសម្ដែង​ជើង​ចាស់ បេ វណ្ណារ៉ា និង​អ្នកនាង ព្រំ រដ្ឋា ទើប​បាន​ជួបគ្នា​ជា​លើក​ដំបូង បន្ទាប់​ពី​អាក់ខាន​ជួប​មុខ​គ្នា និង​បាន​ប៉ះដៃគ្នា​ក្នុង​នាម​ជា​ដៃគូសម្ដែង​យ៉ាង​សក្ដិសម​ក្នុង​ខ្សែភាពយន្ដ​ចម្រៀង \"ម៉ាក់ថឺង\" ដែល​ល្បី​ខ្លាំង​កាល​ពី​អំឡុង​ឆ្នាំ​២០០១។តាម​រយៈ​ជំនួប​ពិសា​អាហារ​សាមគ្គី​ជាមួយ​សិល្បករ-សិល្បការិនី និង​សម្ដេច​នាយក​រដ្ឋមន្ដ្រី កាល​ពី​ថ្ងៃ​ទី២៥ ខែ​មេសា ឆ្នាំ​២០២៤ បាន​បើក​ឱកាស​ឲ្យ​អតីត​តារាសម្ដែង​ទាំង​ពីរដួង​នេះជួប​គ្នា។ ក្នុងឱកាស​នោះ​អ្នក​ទាំង​ពីរ​​ បាន​ជួប​ជជែក​គ្នាលេង ពិសាអាហារ​ជាមួយ​គ្នា ព្រមទាំងបាន​ថត​រូប​ទុកជា​អនុស្សាវរីយ៍​ជាមួយ​គ្នា​ទៀត​ផង។សម្រាប់​ម្ចាស់​ផលិតកម្ម PR អ្នកនាង ព្រំ រដ្ឋា ដែល​បានដើរ​តួ​មើយចឺយ បាន​បង្ហោះ​សារ​ដោយ​មាន​ភ្ជាប់​រូប​ថត​ពីរ​សន្លឹក​បង្ហាញ​ពី​ការ​រាក់ទាក់​របស់ខ្លួនជាមួយ​អតី​ត​ដៃគូសម្ដែង គឺ​លោក បេ វណ្ណារ៉ា ថា៖ \"គិតថា ១៥ឆ្នាំ តាមពិត ២៥ឆ្នាំ​បែកបងម៉ាក់ថឺង\"។ ឆ្លើយតប​នឹង​សារ​នេះ លោក បេ វណ្ណារ៉ា ក៏​បាន​ចូល​ឆ្លើយតប​យ៉ាង​ខ្លី​វិញ​ថា៖ \"អរគុណ អូន មឺយ ជឺយ ជូនពរមានសុខភាព ល្អ​អាយុវែង\"។', 'Entertainment', 4, 0, '2026-04-24 04:35:22', '2026-04-24 04:54:12'),
(7, 'Pep មិន​ទាន់​សម្រេច​អនាគត​ Joao Cancelo នៅ​ Man City ​ទេ', '2024-04-26-662a332d72aed_1714041600_medium.jpg', '2024-04-26-662a332ceb50e_1714041600_medium.jpg', 'លោក​ Pep Guardiola អ្នកចាត់ការ​ក្លឹប​ Manchester City បាន​និយាយ​ទៅ​កាន់​សារព័ត៌មាន​កាល​ពី​ពេលថ្មីៗ​នេះ​ថា​ លោក​មិន​ទាន់​សម្រេច​យ៉ាង​ណា​ទាក់ទង​នឹង​អនាគត​របស់​ ខ្សែការពារ​ Joao Cancelo នោះ​ទេ​ ខណៈ​គេ​នឹង​ចប់​កុងត្រា​ខ្ចី​ជើង​ទៅ​ឲ្យ​ Barcelona នៅ​ថ្ងៃ​ទី​៣០ ខែ​មិថុនា​ ឆ្នាំ​២០២៤​ខាង​មុខ​។លោក​ Pep បាន​និយាយ​ថា​៖\" យើង​មិន​ទាន់​សម្រេច​យ៉ាង​ណា​ទៅ​នឹង​អនាគត​របស់​ Joao Cancelo នោះ​ទេ​។ យើង​នឹង​ធ្វើ​ការ​ចរចា​និយាយ​គ្នា​នៅ​ចុង​រដូវកាល​ខាង​មុខ​នេះ​ \"។\r\nបើ​ការ​ចុះ​ផ្សាយ​កន្លង​មក​បាន​ឲ្យ​ដឹង​ថា​ Cancelo បាន​បង្ហាញ​ចំណាប់​អារម្មណ៍​ក្នុង​ការ​នៅ​បន្ត​ Barca ក្នុង​នាម​ជា​កីឡាករ​ពេញ​សិទ្ធិ​ ដោយ​គេ​បាន​បង្ហាញ​តាម​សារព័ត៌មាន​ពី​ចេតនា​របស់​គេ​ក្នុង​នៅ​បន្ត​រហូត​មក​។', 'Sport', 4, 2, '2026-04-24 04:36:45', '2026-04-24 04:54:02'),
(8, 'ដៃ​ធ្ងន់​ដូច​ ធឿន​ ធារ៉ា​ អីចឹង​ធ្វើ​បាន​ជោគជ័យ​ទេ​ប្រកួត​ Kick Boxing ​យប់​នេះ', '2024-04-26-6629ca35c6c18_1714014720_medium.jpg', '2024-04-26-6629ca36d143e_1714014720_medium.jpg', 'កីឡាករ​ជើង​ខ្លាំង​ ធឿន​ ធារ៉ា​ នឹង​ធ្វើ​ការ​ប្រកួត​លក្ខណៈ​ Kick Boxing​ លើក​ដំបូង​នៅ​ថ្ងៃ​នេះ​ជា​មួយ​អ្នក​លេង​ក្បាច់​គុន​ចិន​ ខៃ ហ្សេបពីង ​ ក្នុង​កម្មវិធី​ GANZBERG​ រាជសីហ៍ KUN KHMER ​នៅ​ខណ្ឌ​កំបូល​ រាជធានី​ភ្នំពេញ។​លោក​ Tommy Kim ​ទីប្រឹក្សា​ស្ថានីយ​ទូរទស្សន៍​ថោន​ (TOWN)​  បាន​ឲ្យ​ដឹង​ថា​ ឥលូវ​នេះ​ទីផ្សារ​ប្រកួត​ Kick Boxing​ លើ​ពិភពលោក​គឺ​មាន​ការ​ផុលផុស​ និង​មាន​ច្រើន​ ដូច្នេះ​កម្ពុជា​ក៏​ត្រូវ​ពង្រឹង​សមត្ថភាព​ត្រៀម​ខ្លួន​ជា​បណ្ដើរៗ​ផង​ដែរ។​លោក​បន្ថែម​ទៀត​ថា​ កីឡាករ​កម្ពុជា​ត្រូវ​ត្រៀម​ខ្លួន​ ពង្រឹង​សមត្ថភាព​ ឲ្យ​បាន​គ្រប់គ្រាន់​ និង​គ្រប់​ពេល​ដើម្បី​បង្ហាញ​ក្បាច់​របស់​ខ្មែរ​ដល់​ពិភពលោក​ឲ្យ​បានដឹង​ បាន​ស្គាល់។ ​សម្រាប់​ការ​ប្រកួត​យប់​នេះ​មាន​កីឡាករ​កម្ពុជា​ខ្លះ​​ទើប​តែ​ប្រកួត​លក្ខណៈ​ Kick Boxing​ នោះ​ទេ​ ដូច្នេះ​ប្រសិន​បើ​ ចាញ់​-ឈ្នះ​ យ៉ាងណា​សូម​អ្នក​គាំទ្រ​យោគយល់​ និង​បន្ត​លើក​ទឹកចិត្ត​បន្ថែម​ទៀត។', 'Sport', 4, 0, '2026-04-24 05:05:45', NULL),
(9, 'នេះគឺជាតម្លៃឡាន Toyota Tacoma ឆ្នាំ 2024 ប្រភេទ TRD Off-road 4WD ពេលមកដល់ខ្មែរ!', '2024-04-26-662b11cfe6879_1714098600_medium.jpg', '2024-04-26-662b11cdcb613_1714098600_medium.jpg', 'បើយោងតាមគេហទំព័រ Auto US Direct ដែលជាអ្នកនាំចូលឡានពីសហរដ្ឋអាមេរិកដោយផ្ទាល់ បានបង្ហាញឲ្យឃើញពីតម្លៃឡានភីកអាប់ Toyota Tacoma ឆ្នាំ 2024 ប្រភេទ TRD Off-road 4WD ពេលមកដល់ខ្មែរ ដោយមានតម្លៃសរុប ខ្ទង់ $77,000 បូករួមទាំងថ្លៃពន្ធនាំចូលរួចស្រេច ផងដែរ។សូមបញ្ជាក់ថា ភីកអាប់របស់ជប៉ុន ប្រភេទ TRD Off-road 4WD នេះ ​ប្រើម៉ាស៊ីនសាំង ចំណុះ 2.4L i-Force ទំហំ 4 ស៊ីឡាំង មានកម្លាំង 278 HP និង កម្លាំងរមួល 429 NM ដំណើរការដោយប្រអប់លេខអូតូ 8 វគ្គថ្មី ជាមួយ ប្រព័ន្ធកាប់ពីតាស់ប្រើភ្លើង Two-speed Transfer Case, ប្រព័ន្ធទប់លំនឹង Active Traction Control និង ប្រព័ន្ធ Limited-slip Differential ព្រមទាំងមុខងារចាក់សោរប៉ុង Center Locking Differential និង Electronic Locking Rear Differential ទៀតផង។ពាក់ព័ន្ធជាមួយនឹងមុខងារ Off-road វិញ Tacoma ឆ្នាំ 2024 មានបំពាក់ប្រព័ន្ធទប់លំនឹងពេលចុះចំណោត Downhill Assist Control, ប្រព័ន្ធមើលផ្លូវមួយជុំឡាន Multi-Terrain Monitor, ប្រព័ន្ធគ្រប់គ្រងស្ថានភាពផ្លូវ Multi-Terrain Select System និង ប្រព័ន្ធ CRAWL Control ទៀតផង។', 'Technology', 4, 2, '2026-04-24 05:11:43', NULL),
(10, 'ប្តូរប្រេងម៉ាស៊ីន អស់លុយគគោកមិនស្តាយ! តែមិនហ៊ានចាយលុយប្រើតម្រងល្អ អ៊ីចឹង​ម៉ាស៊ីនឡានខ្ទេចដដែល', '2024-04-28-66272bfb079c7_1713843180_medium.jpg', '2024-04-28-66272bfb8d5fa_1713843180_medium.jpg', 'ជារឿង​ល្អសម្រាប់​ម៉ាស៊ីន ដែលម្ចាស់រថយន្ត​ហ៊ាន​ចំណាយលុយ​ប្រើប្រាស់​ប្រេងម៉ាស៊ីន​ដែលមានគុណភាព​ ប៉ុន្តែប្រសិន​បើរិះថាំ​​មិនហ៊ាន​ចំណាយលុយបន្ថែម​លើតម្រងប្រេងម៉ាស៊ីនល្អៗទេនោះ ក៏មិន​អាច​ជួយថែរក្សា​ម៉ាស៊ីនឱ្យនៅបានយូរឡើយ ជាពិសេសកុំឱ្យសោះ រឿងប្តូរប្រេង២ដង ប្តូរតម្រង១ដង ពោលគឺ​ត្រូវប្តូរ​តម្រងគ្រប់ពេល​ រាល់ការ​ប្តូរប្រេង​ម៉ាស៊ីន​ជាមួយគ្នាតែម្តង។ជាងមេកានិច បានប្រៀបធៀប​តម្រង​ប្រេងម៉ាស៊ីន ដូច ក្រលៀន ឬតម្រងនោម របស់​មនុស្សយើងដែរ ដែល​មានតួនាទី​ច្រោះជាតិពុលក្នុងរាងកាយ។ ឯតម្រងប្រេងម៉ាស៊ីន វាក៏មានតួនាទី​ច្រោះ​កម្ទេចកម្ទី​ដែលមាន​ក្នុងប្រេងម៉ាស៊ីន​ មិនឱ្យហូរចូលទៅក្នុងប្លុកម៉ាស៊ីនបានដែរ។ មានន័យថា ប្រេង​ម៉ាស៊ីន ត្រូវបាន​ច្រោះស្អាត​ជាមុនសិន ទើប​ហូរ​ចូលទៅរំអិលគ្រឿងបង្គុំ​ម៉ាស៊ីន។ ប៉ុន្តែបើតម្រងគ្មានគុណភាព វាមិន​អាច​ច្រោះបានស្អាតឡើយ ដែល​បណ្តាល​ឱ្យកម្ទេច​ដែកអាចចូលទៅបង្កផលប៉ះពាល់​ខ្លាំង​ក្នុងម៉ាស៊ីន។\r\nក្រៅតែពីការជួយសម្អាតប្រេងម៉ាស៊ីន តម្រងនេះ​ក៏បាន​ជួយឱ្យប្រេង​ស្ថិតនៅទីតាំង​ត្រឹមត្រូវតាមពេល​វេលាដែរ។', 'Technology', 4, 1, '2024-04-28 06:12:23', '2024-04-28 06:12:23'),
(11, 'មកស្គាល់ប្រព័ន្ធសុវត្ថិភាពចំនួន ១០ ដែលបំពាក់លើ​រថយន្ត​បច្ចុប្បន្ន', '2024-04-28-63e3659293e23_1675847040_medium.jpg', '2024-04-28-63e365ecbdb08_1675847100_medium.png', 'ប្រសិន​បើលោកអ្នកទិញរថយន្តមួយទឹក ឬរថយន្តជជុះ គឺ​ចាំបាច់ត្រូវមើលពីសភាព​ម៉ាស៊ីន ជើងក្រោម ទឹកថ្នាំ និងឆែកមើល​ថាតើ​ជារថយន្តកាត់ ត ពីរបីកំណាត់​ ឬអត់។ ផ្ទុយមកវិញ បើចង់ទិញ​រថយន្តថ្មីខ្លាញ់គោមកប្រើប្រាស់​ គឺ​គេមិនចាំបាច់​ត្រូវមើលចំណុចទាំងអស់នេះទេ ប៉ុន្តែបច្ចុប្បន្ន គេ​មើលថាតើរថយន្តនោះ បាន​បំពាក់​ប្រព័ន្ធ​សុវត្ថិភាពអ្វីខ្លះ។ ដូច្នេះ យើងសូម​បង្ហាញ​ប្រព័ន្ធ​សុវត្ថិភាព ១០ចំណុច​ដែល​គួរតែមាន​លើរថយន្ត​​ដែលលោកអ្នក​ចង់ទិញ រួមមានដូចជា៖\r\n\r\n១. Blind Spot Detection: ជាមុខងារ​មួយ​ដែល​ផ្តល់​សញ្ញាឱ្យអ្នកតាមកញ្ចក់ចំហៀង ដើម្បី​ឱ្យ​ដឹងថា មាន​អ្វីមួយ​ដែលអ្នកមិនអាចមើលឃើញ មកកៀក​រថយន្តរបស់អ្នក ឬមាន​យានយន្ត​ណាមួយ​ចង់វ៉ាជែង​រថយន្តអ្នក។\r\n២. Lane Assist: ជាប្រព័ន្ធជំនួយ​រថយន្តឱ្យរក្សា​ការបើកក្នុងគន្លងត្រឹមត្រូវ ហើយ​ប្រសិន​បើ​វា​ជិតចាក​ចេញពីគន្លង នោះវាផ្តល់សញ្ញាឱ្យអ្នកបើកបានដឹង។\r\n៣. Forward Collison Warning: ជាប្រព័ន្ធ​ផ្តល់ឱ្យសញ្ញាឱ្យអ្នកប្រុងប្រយ័ត្ន ថានឹង​អាចមានការប៉ះទង្គិច​នឹង​ឧបសគ្គអ្វីមួយ។\r\n៤. Autonomous Emergency Braking: ប្រសិនបើមានឧបសគ្គ​អ្វីមួយនៅខាងមុខ​ ដែលរថយន្តអ្នក​ហៀបនឹងបុកទៅហើយនោះ វា​នឹង​ចាប់ហ្វ្រាំង​ដោយអូតូតែម្តង។\r\n៥. Backup Cameras: ជាកាមេរ៉ា​មើលក្រោយ​នៅពេល​អាយ៉ែ ដែល​វាបង្ហាញខ្សែបន្ទាត់​ទៀតផង ជាជំនួយ​ដល់​ការចូលចតផងដែរ។\r\n៦. Pedestrian Detection: វាជាមុខងារ​ដែល​អាច​ចាប់ចលនា​របស់​អ្នកថ្មើរជើង និងអ្នកជិះកង់ ហើយ​ផ្តល់​សញ្ញាឱ្យអ្នកបានដឹង។ ពេលខ្លះ​វា​ក៏មាន​មុខងារចាប់ហ្វ្រាំងអូតូផងដែរ។\r\n៧. Rear Cross Traffic Alert: វាប្រើសេនស័រដើម្បីអង្កេត​អ្នកថ្មើរជើង និង​រថយន្តផ្សេងៗ​ ដែលមកកៀកខាងក្រោយ ឬចំហៀង​រថយន្តអ្នក ពេល​ចាកចេញពីចំណត។ វា​មានប្រយោជន៍ណាស់ ក្នុងទីកន្លែងដែលលមានមនុស្សច្រើន។\r\n៨. Parking Sensors: ជាប្រព័ន្ធជំនួយចូលចត។\r\n៩. Driver-Attention Monitor: វា​ជា​មុខងារ​មួយ​ដែលកត់សម្គាល់​ទៅ​ឥរិយាបថអ្នកបើកបរ ថាតើងងុយដេក ធ្វេសប្រហែសឬភាំងអត់ ដែល​វាអាចដឹងបាន​តាមរយៈការកាន់ដៃចង្កូតរថយន្ត ហើយ​វា​នឹងផ្តល់សញ្ញាដាស់តឿន។\r\n១០. Traffic-Sign Recognition: ជាមុខងារសម្គាល់​ផ្លាកសញ្ញាចរាចរណ៍ ហើយ​បង្ហាញ​ទិន្នន័យដល់អ្នកបើកបរ ដើម្បីក្រើនរំលឹក ដូចជាកុំឱ្យបើកបរលើសល្បឿន​កំណត់​ជាដើម៕', 'Technology', 4, 5, '2024-04-28 06:15:53', '2024-04-28 06:15:53'),
(12, 'ដៃធ្លាប់កាន់ម៉ៃក្រូស្រែកច្រៀងលើឆាក បច្ចុប្បន្ន Celine បានត្រឹមសំងំព្យាបាលជំងឺកម្រជាមួយក្ដីសង្ឃឹម', '2024-04-28-662b5c328e691_1714117680_medium.jpg', '2024-04-28-662b5c28d3b4b_1714117620_medium.jpg', 'តារាចម្រៀងសហរដ្ឋអាមេរិក និងជាម្ចាស់បទ “The Power Of love” Celine Dion បានរៀបរាប់ពីទុក្ខលំបាករបស់ខ្លួនក្នុងដំណាក់ការព្យាបាលជំងឺកម្រ និងប្រាប់ពីក្ដីសង្ឃឹមរបស់នាង។\r\nCeline Dion បានចែករំលែកព័ត៌មានលម្អិតអំពីសុខភាពរបស់នាងជាលើកដំបូងក្នុងបទសម្ភាសន៍ជាមួយ ទស្សនាវដ្ដី Vogue របស់បារាំង ដែលបានចេញផ្សាយកាលពីថ្មីៗនេះ។ តារាស្រី វ័យ ៥៦ឆ្នាំដែលកំពុងមានជម្ងឺ Stiff Person Syndrome បានបង្ហាញពីដំណើរការព្យាបាលរបស់នាង និងរបៀបដែលនាងទទួលយកដើម្បីរស់នៅជាមួយជំងឺនេះ។', 'Entertainment', 4, 2, '2024-04-28 06:47:26', '2024-04-28 06:47:26');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `color` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `sale_price` double(8,2) NOT NULL,
  `regular_price` double(8,2) NOT NULL,
  `discount` double(8,2) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `viewer` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL,
  `stock_qty` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `color`, `size`, `sale_price`, `regular_price`, `discount`, `thumbnail`, `viewer`, `category_id`, `stock_qty`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'HOODIE', 'REST DAY ESSENTIALS HOODIE', 'Blue,Grey,Black', 'S,M,L,XL', 50.40, 56.00, 10.00, '24-03-24-01-31-40_RestDayEssentialsHoodie-GSLinenBrown-A3A8Z-NBZL-0715_f6b89f69-c0f2-4b0f-9b5b-5fb841bb9e53.webp', 7, 4, 10, 2, '2024-03-23 18:31:40', '2024-03-29 07:33:03'),
(3, 'Tshirt', 'Tokyo Revengers Anime Draken Pattern Oversize fit T Shirt Men Printed Crew Neck Poly Cotton White', 'Grey,Black', 'S,M', 40.00, 40.00, 0.00, '24-03-24-02-36-35_xl-tshirt-half-black-draken-pattern-comicsense-original-imagtez6rby3mg9d.webp', 4, 4, 10, 1, '2024-03-24 07:36:35', '2024-03-24 07:36:35'),
(4, 'Unotobe Jeans', 'Unotobe Jeans', 'Blue,Grey,Black', '', 23.75, 25.00, 5.00, '29-03-24-03-08-30_71eiDji5YaL._AC_UY1000_.jpg', 6, 2, 10, 2, '2024-03-29 08:08:30', '2024-03-29 08:08:30'),
(5, 'Jeans', 'Jeans Men Blue Slim Fit Light Fade Mid Rise Stretchable Jeans on', 'Grey,Black', '', 28.00, 28.00, 0.00, '29-03-24-03-12-11_d1c4c3a4-559b-4246-a680-1bbace425ca61650710509768-Louis-Philippe-Jeans-Men-Jeans-8191650710509116-1.webp', 7, 2, 20, 2, '2024-03-29 08:12:11', '2024-03-29 08:12:11'),
(8, 'T-Shirt With Denim Patch', 'T-Shirt With Denim Patch', 'Grey,Black', 'S,M,L,XL', 19.00, 19.00, 0.00, '18-04-24-12-24-06_T-shirt.jpg', 1, 4, 10, 4, '2024-04-18 05:24:06', '2024-04-18 05:24:06'),
(10, 'T-Shirt With Print', 'T-Shirt With Print', 'Grey,Black', 'S,M,L,XL', 18.05, 19.00, 5.00, '18-04-24-12-26-41_T-shirt02.jpg', 2, 4, 10, 4, '2024-04-18 05:26:41', '2024-04-18 05:26:41'),
(11, 'Cargo Trousers', 'Cargo Trousers', 'Grey,Black', '', 25.00, 25.00, 0.00, '18-04-24-12-27-50_Trouser.jpg', 0, 4, 10, 4, '2024-04-18 05:27:50', '2024-04-18 05:27:50'),
(12, 'Mini Dress', 'Mini Dress', 'Blue,Grey,Black', 'S,M,L,XL', 18.05, 19.00, 5.00, '18-04-24-12-29-56_Dress2.jpg', 2, 2, 10, 4, '2024-04-18 05:29:56', '2024-04-18 05:29:56'),
(13, 'Mini Skirt', 'Mini Skirt', 'Blue,Grey,Black', 'S,M,L,XL', 14.00, 14.00, 0.00, '18-04-24-12-31-32_Skirtjpg.jpg', 0, 2, 10, 4, '2024-04-18 05:31:32', '2024-04-18 05:31:32'),
(14, 'All Over Printed T-Shirt', 'All Over Printed T-Shirt', 'Blue,Grey,Black', 'S,M,L', 16.00, 16.00, 0.00, '18-04-24-01-46-28_AllOver.jpg', 2, 4, 10, 4, '2024-04-18 06:38:40', '2024-04-18 06:46:28'),
(15, 'Regular T-Shirt', 'Regular T-Shirt', 'Blue,Grey,Black', 'S,M,L', 12.00, 12.00, 0.00, '18-04-24-01-47-29_RegularT-Shirt.jpg', 1, 4, 5, 4, '2024-04-18 06:39:52', '2024-04-18 06:47:29');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `thumbnail`, `created_at`, `updated_at`) VALUES
(1, 'MoMo', 'MoMo1234@gmail.com', '$2y$12$MJxfMhPG0.jlF4YxmOJvsuh6EuZRlx/xPgEiQ6Rk98pYtFObV44EO', '090324065212_f897ade4cfef5f85b88cbf8697d0417e.webp', NULL, NULL),
(2, 'Dara', 'Dara@gmail.com', '$2y$12$OV44qswk3cZgENSRnptpmem2NMIPeu51Mmy5YPkjct.p.bt.YSoj2', '090324070710_Ben.webp', NULL, NULL),
(3, 'Lina', 'Lina123@gmail.com', '$2y$12$6UrnL7fsgDqAiQGLCQx8bu7RPQ7iAlOi.aOA0xVh16yxKLFnZOkuS', '100324061438_pexels-george-dolgikh-1310522.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `thumbnail`, `created_at`, `updated_at`) VALUES
(1, 'Dara', 'Dara@gmail.com', '$2y$12$.zxMevr.FISN.lDOolLtzeICFk1Dt1tzFwFOHM/VLR34Yrbt5teXa', '090324072942_Ben.webp', NULL, NULL),
(2, 'Lina', 'Lina123@gmail.com', '$2y$12$xd7pdwTgaKXU77ur02YPRukI/T.djjH6eZlA5QbyViQkc9nxnzQ0i', '100324061811_photo_2024-03-07_14-35-54.jpg', NULL, NULL),
(3, 'Sokban', 'Sokban@gmail.com', '$2y$12$xM8yDJiDxWZh8MG7gdP8W.MR1HFCKM213WWhREtTZnqfJWUTfL1a.', '290324024138_xl-tshirt-half-black-draken-pattern-comicsense-original-imagtez6rby3mg9d.webp', NULL, NULL),
(4, 'Punleu', 'khoempunleu320@gmail.com', '$2y$12$M5UQedf/HGmMD5Xb19c0V.x0VsOSjlMfwOzbFkMRHvFGZ9FEol6.S', '130424015606_photo_2024-04-13_13-55-53.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `web_logo`
--

CREATE TABLE `web_logo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_logo`
--

INSERT INTO `web_logo` (`id`, `thumbnail`, `user_id`, `created_at`, `updated_at`) VALUES
(7, '2024-03-16-News-Banner.png', 2, '2016-03-23 22:48:30', '2016-03-23 23:19:20'),
(9, '2024-04-24-logo-no-background.png', 4, '2024-04-24 05:35:56', NULL),
(10, '2024-04-24-logo-color.png', 4, '2024-04-24 05:36:10', NULL),
(11, '2024-04-24-logo-black.png', 4, '2024-04-24 05:36:53', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `news`
--
ALTER TABLE `news`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `web_logo`
--
ALTER TABLE `web_logo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `web_logo`
--
ALTER TABLE `web_logo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
