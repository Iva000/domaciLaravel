/*
SQLyog Community v13.1.9 (64 bit)
MySQL - 10.4.25-MariaDB : Database - domaci2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`domaci2` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `domaci2`;

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `categories` */

insert  into `categories`(`id`,`name`,`created_at`,`updated_at`) values 
(1,'Restoran','2022-12-22 20:52:08','2022-12-22 20:52:08'),
(2,'Kafeterija','2022-12-22 20:52:40','2022-12-22 20:52:40'),
(3,'Koncert','2022-12-22 20:53:19','2022-12-22 20:53:19');

/*Table structure for table `cities` */

DROP TABLE IF EXISTS `cities`;

CREATE TABLE `cities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cities` */

insert  into `cities`(`id`,`name`,`created_at`,`updated_at`) values 
(1,'Beograd','2022-12-22 20:36:05','2022-12-22 20:36:05'),
(2,'Novi Sad','2022-12-22 21:06:28','2022-12-22 21:06:28'),
(3,'Nis','2022-12-22 21:07:19','2022-12-22 21:07:19'),
(4,'Uzice','2022-12-22 23:00:04','2022-12-22 23:00:04');

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2019_12_14_000001_create_personal_access_tokens_table',1),
(5,'2022_12_19_195150_create_reviews_table',1),
(6,'2022_12_19_214442_create_categories_table',1),
(7,'2022_12_19_220032_add_column_user_id_to_reviews_table',1),
(8,'2022_12_19_220321_add_column_category_id_to_reviews_table',1),
(9,'2022_12_21_214622_create_cities_table',1),
(10,'2022_12_22_202843_add_column_city_to_reviews_table',1);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

insert  into `personal_access_tokens`(`id`,`tokenable_type`,`tokenable_id`,`name`,`token`,`abilities`,`last_used_at`,`expires_at`,`created_at`,`updated_at`) values 
(1,'App\\Models\\User',1,'auth_token','b4405b77628628f33ee75bedf4aaa7a40ff5f69f32ce363ee20068ce6afcb802','[\"*\"]','2022-12-22 21:11:04',NULL,'2022-12-22 20:33:45','2022-12-22 21:11:04'),
(2,'App\\Models\\User',4,'auth_token','5721192061a31bcec034b2b01a2c9776b3554566e3aaf88a0eb439747bf4e025','[\"*\"]','2022-12-22 22:04:34',NULL,'2022-12-22 21:34:49','2022-12-22 22:04:34'),
(3,'App\\Models\\User',5,'auth_token','31fb9f87e4c46a97e1e23d1a1b4c2801510c711e13200b1cd136f44b08eb4e68','[\"*\"]',NULL,NULL,'2022-12-22 22:38:35','2022-12-22 22:38:35'),
(4,'App\\Models\\User',5,'auth_token','7104fbae48a1ab1a3079901e1d4b78670f587f99ee9437f6959becc95a0711fb','[\"*\"]','2022-12-23 19:28:39',NULL,'2022-12-22 22:42:02','2022-12-23 19:28:39');

/*Table structure for table `reviews` */

DROP TABLE IF EXISTS `reviews`;

CREATE TABLE `reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `city` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `reviews` */

insert  into `reviews`(`id`,`title`,`body`,`rating`,`created_at`,`updated_at`,`user_id`,`category_id`,`city`) values 
(3,'Fun Review','Fun Review content',6,'2022-12-22 21:30:21','2022-12-22 21:30:21',3,2,3),
(4,'Novogodisnji koncert filharmonije','Kaoi uvek ocarani emocijama koje su nam preneli muzicari. Savrsen kraj godine.',10,'2022-12-22 21:35:30','2022-12-22 21:35:30',4,3,2),
(5,'Vrh Beograda','Divna basta za kafu na suncanom danu, a tart jos lepsi.',10,'2022-12-22 23:06:16','2022-12-22 23:06:16',5,1,2),
(6,'Kafeterija Gardos','Na keju na Zemunu, pogled na reku i divna kafa. Ako dodjete zimi sacekace vas i divni ukrasi',9,'2022-12-22 23:16:23','2022-12-23 19:28:39',5,2,2);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) values 
(1,'Sabryna Bode','haley.garry@example.net','2022-12-22 21:31:41','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','risgNwcQ3v','2022-12-22 21:31:41','2022-12-22 21:31:41'),
(2,'Kallie Hills','hane.eulah@example.org','2022-12-22 21:31:41','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','l54sNkTMeQ','2022-12-22 21:31:41','2022-12-22 21:31:41'),
(3,'Dr. Deron McLaughlin','sandy.mertz@example.com','2022-12-22 21:31:41','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','KkMFm26XUC','2022-12-22 21:31:41','2022-12-22 21:31:41'),
(4,'Iva','iva@gmail.com',NULL,'$2y$10$biauH3hOHQsT3KfLOqefgei8VHEaWNn87BZNA/xSyiHbh1YMEelqG',NULL,'2022-12-22 21:34:49','2022-12-22 21:34:49'),
(5,'Jana Jankovic','jana@gmail.com',NULL,'$2y$10$2TF3LO3gIt/opIY89jrRZelqQJvQxzd1F7Ehbu0/bWZS.P/9b55Pq',NULL,'2022-12-22 22:38:35','2022-12-22 22:38:35');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
