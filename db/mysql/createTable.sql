-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: owa
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `owa_action_fact`
--

DROP TABLE IF EXISTS `owa_action_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owa_action_fact` (
  `id` bigint NOT NULL,
  `visitor_id` bigint DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `referer_id` bigint DEFAULT NULL,
  `ua_id` bigint DEFAULT NULL,
  `host_id` bigint DEFAULT NULL,
  `os_id` bigint DEFAULT NULL,
  `location_id` bigint DEFAULT NULL,
  `referring_search_term_id` bigint DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `yyyymmdd` int DEFAULT NULL,
  `year` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `day` tinyint DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int DEFAULT NULL,
  `weekofyear` int DEFAULT NULL,
  `last_req` bigint DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_new_visitor` tinyint(1) DEFAULT NULL,
  `is_repeat_visitor` tinyint(1) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `days_since_prior_session` int DEFAULT NULL,
  `days_since_first_session` int DEFAULT NULL,
  `num_prior_sessions` int DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `source_id` bigint DEFAULT NULL,
  `ad_id` bigint DEFAULT NULL,
  `campaign_id` bigint DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cv1_name` varchar(255) DEFAULT NULL,
  `cv1_value` varchar(255) DEFAULT NULL,
  `cv2_name` varchar(255) DEFAULT NULL,
  `cv2_value` varchar(255) DEFAULT NULL,
  `cv3_name` varchar(255) DEFAULT NULL,
  `cv3_value` varchar(255) DEFAULT NULL,
  `cv4_name` varchar(255) DEFAULT NULL,
  `cv4_value` varchar(255) DEFAULT NULL,
  `cv5_name` varchar(255) DEFAULT NULL,
  `cv5_value` varchar(255) DEFAULT NULL,
  `document_id` bigint DEFAULT NULL,
  `action_name` varchar(255) DEFAULT NULL,
  `action_label` varchar(255) DEFAULT NULL,
  `action_group` varchar(255) DEFAULT NULL,
  `numeric_value` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  KEY `site_id` (`site_id`),
  KEY `yyyymmdd` (`yyyymmdd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `owa_ad_dim`
--

DROP TABLE IF EXISTS `owa_ad_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owa_ad_dim` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `owa_campaign_dim`
--

DROP TABLE IF EXISTS `owa_campaign_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owa_campaign_dim` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `owa_click`
--

DROP TABLE IF EXISTS `owa_click`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owa_click` (
  `id` bigint NOT NULL,
  `visitor_id` bigint DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `referer_id` bigint DEFAULT NULL,
  `ua_id` bigint DEFAULT NULL,
  `host_id` bigint DEFAULT NULL,
  `os_id` bigint DEFAULT NULL,
  `location_id` bigint DEFAULT NULL,
  `referring_search_term_id` bigint DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `yyyymmdd` int DEFAULT NULL,
  `year` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `day` tinyint DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int DEFAULT NULL,
  `weekofyear` int DEFAULT NULL,
  `last_req` bigint DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_new_visitor` tinyint(1) DEFAULT NULL,
  `is_repeat_visitor` tinyint(1) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `days_since_prior_session` int DEFAULT NULL,
  `days_since_first_session` int DEFAULT NULL,
  `num_prior_sessions` int DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `source_id` bigint DEFAULT NULL,
  `ad_id` bigint DEFAULT NULL,
  `campaign_id` bigint DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cv1_name` varchar(255) DEFAULT NULL,
  `cv1_value` varchar(255) DEFAULT NULL,
  `cv2_name` varchar(255) DEFAULT NULL,
  `cv2_value` varchar(255) DEFAULT NULL,
  `cv3_name` varchar(255) DEFAULT NULL,
  `cv3_value` varchar(255) DEFAULT NULL,
  `cv4_name` varchar(255) DEFAULT NULL,
  `cv4_value` varchar(255) DEFAULT NULL,
  `cv5_name` varchar(255) DEFAULT NULL,
  `cv5_value` varchar(255) DEFAULT NULL,
  `last_impression_id` bigint DEFAULT NULL,
  `document_id` bigint DEFAULT NULL,
  `target_id` bigint DEFAULT NULL,
  `target_url` varchar(255) DEFAULT NULL,
  `hour` tinyint DEFAULT NULL,
  `minute` tinyint DEFAULT NULL,
  `second` int DEFAULT NULL,
  `msec` varchar(255) DEFAULT NULL,
  `click_x` int DEFAULT NULL,
  `click_y` int DEFAULT NULL,
  `page_width` int DEFAULT NULL,
  `page_height` int DEFAULT NULL,
  `position` int DEFAULT NULL,
  `approx_position` bigint DEFAULT NULL,
  `dom_element_x` int DEFAULT NULL,
  `dom_element_y` int DEFAULT NULL,
  `dom_element_name` varchar(255) DEFAULT NULL,
  `dom_element_id` varchar(255) DEFAULT NULL,
  `dom_element_value` varchar(255) DEFAULT NULL,
  `dom_element_tag` varchar(255) DEFAULT NULL,
  `dom_element_text` varchar(255) DEFAULT NULL,
  `dom_element_class` varchar(255) DEFAULT NULL,
  `dom_element_parent_id` varchar(255) DEFAULT NULL,
  `tag_id` bigint DEFAULT NULL,
  `placement_id` bigint DEFAULT NULL,
  `ad_group_id` bigint DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  KEY `site_id` (`site_id`),
  KEY `yyyymmdd` (`yyyymmdd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `owa_commerce_line_item_fact`
--

DROP TABLE IF EXISTS `owa_commerce_line_item_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owa_commerce_line_item_fact` (
  `id` bigint NOT NULL,
  `visitor_id` bigint DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `referer_id` bigint DEFAULT NULL,
  `ua_id` bigint DEFAULT NULL,
  `host_id` bigint DEFAULT NULL,
  `os_id` bigint DEFAULT NULL,
  `location_id` bigint DEFAULT NULL,
  `referring_search_term_id` bigint DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `yyyymmdd` int DEFAULT NULL,
  `year` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `day` tinyint DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int DEFAULT NULL,
  `weekofyear` int DEFAULT NULL,
  `last_req` bigint DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_new_visitor` tinyint(1) DEFAULT NULL,
  `is_repeat_visitor` tinyint(1) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `days_since_prior_session` int DEFAULT NULL,
  `days_since_first_session` int DEFAULT NULL,
  `num_prior_sessions` int DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `source_id` bigint DEFAULT NULL,
  `ad_id` bigint DEFAULT NULL,
  `campaign_id` bigint DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cv1_name` varchar(255) DEFAULT NULL,
  `cv1_value` varchar(255) DEFAULT NULL,
  `cv2_name` varchar(255) DEFAULT NULL,
  `cv2_value` varchar(255) DEFAULT NULL,
  `cv3_name` varchar(255) DEFAULT NULL,
  `cv3_value` varchar(255) DEFAULT NULL,
  `cv4_name` varchar(255) DEFAULT NULL,
  `cv4_value` varchar(255) DEFAULT NULL,
  `cv5_name` varchar(255) DEFAULT NULL,
  `cv5_value` varchar(255) DEFAULT NULL,
  `document_id` bigint DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `unit_price` bigint DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `item_revenue` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  KEY `site_id` (`site_id`),
  KEY `yyyymmdd` (`yyyymmdd`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `owa_commerce_transaction_fact`
--

DROP TABLE IF EXISTS `owa_commerce_transaction_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owa_commerce_transaction_fact` (
  `id` bigint NOT NULL,
  `visitor_id` bigint DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `referer_id` bigint DEFAULT NULL,
  `ua_id` bigint DEFAULT NULL,
  `host_id` bigint DEFAULT NULL,
  `os_id` bigint DEFAULT NULL,
  `location_id` bigint DEFAULT NULL,
  `referring_search_term_id` bigint DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `yyyymmdd` int DEFAULT NULL,
  `year` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `day` tinyint DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int DEFAULT NULL,
  `weekofyear` int DEFAULT NULL,
  `last_req` bigint DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_new_visitor` tinyint(1) DEFAULT NULL,
  `is_repeat_visitor` tinyint(1) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `days_since_prior_session` int DEFAULT NULL,
  `days_since_first_session` int DEFAULT NULL,
  `num_prior_sessions` int DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `source_id` bigint DEFAULT NULL,
  `ad_id` bigint DEFAULT NULL,
  `campaign_id` bigint DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cv1_name` varchar(255) DEFAULT NULL,
  `cv1_value` varchar(255) DEFAULT NULL,
  `cv2_name` varchar(255) DEFAULT NULL,
  `cv2_value` varchar(255) DEFAULT NULL,
  `cv3_name` varchar(255) DEFAULT NULL,
  `cv3_value` varchar(255) DEFAULT NULL,
  `cv4_name` varchar(255) DEFAULT NULL,
  `cv4_value` varchar(255) DEFAULT NULL,
  `cv5_name` varchar(255) DEFAULT NULL,
  `cv5_value` varchar(255) DEFAULT NULL,
  `document_id` bigint DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `order_source` varchar(255) DEFAULT NULL,
  `gateway` varchar(255) DEFAULT NULL,
  `total_revenue` bigint DEFAULT NULL,
  `tax_revenue` bigint DEFAULT NULL,
  `shipping_revenue` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  KEY `site_id` (`site_id`),
  KEY `yyyymmdd` (`yyyymmdd`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `owa_configuration`
--

DROP TABLE IF EXISTS `owa_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owa_configuration` (
  `id` bigint NOT NULL,
  `settings` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `owa_document`
--

DROP TABLE IF EXISTS `owa_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owa_document` (
  `id` bigint NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `page_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `owa_domstream`
--

DROP TABLE IF EXISTS `owa_domstream`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owa_domstream` (
  `id` bigint NOT NULL,
  `visitor_id` bigint DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `referer_id` bigint DEFAULT NULL,
  `ua_id` bigint DEFAULT NULL,
  `host_id` bigint DEFAULT NULL,
  `os_id` bigint DEFAULT NULL,
  `location_id` bigint DEFAULT NULL,
  `referring_search_term_id` bigint DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `yyyymmdd` int DEFAULT NULL,
  `year` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `day` tinyint DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int DEFAULT NULL,
  `weekofyear` int DEFAULT NULL,
  `last_req` bigint DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_new_visitor` tinyint(1) DEFAULT NULL,
  `is_repeat_visitor` tinyint(1) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `days_since_prior_session` int DEFAULT NULL,
  `days_since_first_session` int DEFAULT NULL,
  `num_prior_sessions` int DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `source_id` bigint DEFAULT NULL,
  `ad_id` bigint DEFAULT NULL,
  `campaign_id` bigint DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cv1_name` varchar(255) DEFAULT NULL,
  `cv1_value` varchar(255) DEFAULT NULL,
  `cv2_name` varchar(255) DEFAULT NULL,
  `cv2_value` varchar(255) DEFAULT NULL,
  `cv3_name` varchar(255) DEFAULT NULL,
  `cv3_value` varchar(255) DEFAULT NULL,
  `cv4_name` varchar(255) DEFAULT NULL,
  `cv4_value` varchar(255) DEFAULT NULL,
  `cv5_name` varchar(255) DEFAULT NULL,
  `cv5_value` varchar(255) DEFAULT NULL,
  `document_id` bigint DEFAULT NULL,
  `domstream_guid` bigint DEFAULT NULL,
  `events` blob,
  `duration` int DEFAULT NULL,
  `page_url` varchar(255) DEFAULT NULL,
  `page_width` int DEFAULT NULL,
  `page_height` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  KEY `site_id` (`site_id`),
  KEY `yyyymmdd` (`yyyymmdd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `owa_exit`
--

DROP TABLE IF EXISTS `owa_exit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owa_exit` (
  `id` bigint NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `anchortext` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `owa_feed_request`
--

DROP TABLE IF EXISTS `owa_feed_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owa_feed_request` (
  `id` bigint NOT NULL,
  `visitor_id` bigint DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `document_id` bigint DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `ua_id` varchar(255) DEFAULT NULL,
  `host_id` bigint DEFAULT NULL,
  `os_id` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `feed_reader_guid` varchar(255) DEFAULT NULL,
  `subscription_id` bigint DEFAULT NULL,
  `timestamp` bigint DEFAULT NULL,
  `yyyymmdd` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `day` tinyint DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int DEFAULT NULL,
  `weekofyear` int DEFAULT NULL,
  `year` int DEFAULT NULL,
  `hour` tinyint DEFAULT NULL,
  `minute` tinyint DEFAULT NULL,
  `second` tinyint DEFAULT NULL,
  `msec` int DEFAULT NULL,
  `last_req` bigint DEFAULT NULL,
  `feed_format` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `yyyymmdd` (`yyyymmdd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `owa_host`
--

DROP TABLE IF EXISTS `owa_host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owa_host` (
  `id` bigint NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `full_host` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `owa_impression`
--

DROP TABLE IF EXISTS `owa_impression`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owa_impression` (
  `id` bigint NOT NULL,
  `visitor_id` bigint DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `tag_id` bigint DEFAULT NULL,
  `placement_id` bigint DEFAULT NULL,
  `campaign_id` bigint DEFAULT NULL,
  `ad_group_id` bigint DEFAULT NULL,
  `ad_id` bigint DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `last_impression_id` bigint DEFAULT NULL,
  `last_impression_timestamp` bigint DEFAULT NULL,
  `timestamp` bigint DEFAULT NULL,
  `year` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `day` int DEFAULT NULL,
  `dayofyear` int DEFAULT NULL,
  `weekofyear` int DEFAULT NULL,
  `hour` tinyint DEFAULT NULL,
  `minute` tinyint DEFAULT NULL,
  `msec` bigint DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `ua_id` bigint DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `host_id` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `owa_location_dim`
--

DROP TABLE IF EXISTS `owa_location_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owa_location_dim` (
  `id` bigint NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `owa_os`
--

DROP TABLE IF EXISTS `owa_os`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owa_os` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `owa_queue_item`
--

DROP TABLE IF EXISTS `owa_queue_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owa_queue_item` (
  `id` bigint NOT NULL,
  `event_type` varchar(255) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `event` blob,
  `insertion_datestamp` timestamp NULL DEFAULT NULL,
  `insertion_timestamp` int DEFAULT NULL,
  `handled_timestamp` int DEFAULT NULL,
  `last_attempt_timestamp` int DEFAULT NULL,
  `not_before_timestamp` int DEFAULT NULL,
  `failed_attempt_count` int DEFAULT NULL,
  `is_assigned` tinyint(1) DEFAULT NULL,
  `last_error_msg` varchar(255) DEFAULT NULL,
  `handled_by` varchar(255) DEFAULT NULL,
  `handler_duration` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `owa_referer`
--

DROP TABLE IF EXISTS `owa_referer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owa_referer` (
  `id` bigint NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `query_terms` varchar(255) DEFAULT NULL,
  `refering_anchortext` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `snippet` mediumtext,
  `is_searchengine` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `owa_request`
--

DROP TABLE IF EXISTS `owa_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owa_request` (
  `id` bigint NOT NULL,
  `visitor_id` bigint DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `referer_id` bigint DEFAULT NULL,
  `ua_id` bigint DEFAULT NULL,
  `host_id` bigint DEFAULT NULL,
  `os_id` bigint DEFAULT NULL,
  `location_id` bigint DEFAULT NULL,
  `referring_search_term_id` bigint DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `yyyymmdd` int DEFAULT NULL,
  `year` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `day` tinyint DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int DEFAULT NULL,
  `weekofyear` int DEFAULT NULL,
  `last_req` bigint DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_new_visitor` tinyint(1) DEFAULT NULL,
  `is_repeat_visitor` tinyint(1) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `days_since_prior_session` int DEFAULT NULL,
  `days_since_first_session` int DEFAULT NULL,
  `num_prior_sessions` int DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `source_id` bigint DEFAULT NULL,
  `ad_id` bigint DEFAULT NULL,
  `campaign_id` bigint DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cv1_name` varchar(255) DEFAULT NULL,
  `cv1_value` varchar(255) DEFAULT NULL,
  `cv2_name` varchar(255) DEFAULT NULL,
  `cv2_value` varchar(255) DEFAULT NULL,
  `cv3_name` varchar(255) DEFAULT NULL,
  `cv3_value` varchar(255) DEFAULT NULL,
  `cv4_name` varchar(255) DEFAULT NULL,
  `cv4_value` varchar(255) DEFAULT NULL,
  `cv5_name` varchar(255) DEFAULT NULL,
  `cv5_value` varchar(255) DEFAULT NULL,
  `inbound_visitor_id` bigint DEFAULT NULL,
  `inbound_session_id` bigint DEFAULT NULL,
  `feed_subscription_id` bigint DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `hour` tinyint DEFAULT NULL,
  `minute` tinyint DEFAULT NULL,
  `second` tinyint DEFAULT NULL,
  `msec` int DEFAULT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `prior_document_id` bigint DEFAULT NULL,
  `is_comment` tinyint(1) DEFAULT NULL,
  `is_entry_page` tinyint(1) DEFAULT NULL,
  `is_browser` tinyint(1) DEFAULT NULL,
  `is_robot` tinyint(1) DEFAULT NULL,
  `is_feedreader` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  KEY `site_id` (`site_id`),
  KEY `yyyymmdd` (`yyyymmdd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `owa_search_term_dim`
--

DROP TABLE IF EXISTS `owa_search_term_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owa_search_term_dim` (
  `id` bigint NOT NULL,
  `terms` varchar(255) DEFAULT NULL,
  `term_count` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `owa_session`
--

DROP TABLE IF EXISTS `owa_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owa_session` (
  `id` bigint NOT NULL,
  `visitor_id` bigint DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `referer_id` bigint DEFAULT NULL,
  `ua_id` bigint DEFAULT NULL,
  `host_id` bigint DEFAULT NULL,
  `os_id` bigint DEFAULT NULL,
  `location_id` bigint DEFAULT NULL,
  `referring_search_term_id` bigint DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `yyyymmdd` int DEFAULT NULL,
  `year` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `day` tinyint DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int DEFAULT NULL,
  `weekofyear` int DEFAULT NULL,
  `last_req` bigint DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_new_visitor` tinyint(1) DEFAULT NULL,
  `is_repeat_visitor` tinyint(1) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `days_since_prior_session` int DEFAULT NULL,
  `days_since_first_session` int DEFAULT NULL,
  `num_prior_sessions` int DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `source_id` bigint DEFAULT NULL,
  `ad_id` bigint DEFAULT NULL,
  `campaign_id` bigint DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cv1_name` varchar(255) DEFAULT NULL,
  `cv1_value` varchar(255) DEFAULT NULL,
  `cv2_name` varchar(255) DEFAULT NULL,
  `cv2_value` varchar(255) DEFAULT NULL,
  `cv3_name` varchar(255) DEFAULT NULL,
  `cv3_value` varchar(255) DEFAULT NULL,
  `cv4_name` varchar(255) DEFAULT NULL,
  `cv4_value` varchar(255) DEFAULT NULL,
  `cv5_name` varchar(255) DEFAULT NULL,
  `cv5_value` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `hour` tinyint DEFAULT NULL,
  `minute` tinyint DEFAULT NULL,
  `num_pageviews` int DEFAULT NULL,
  `num_comments` int DEFAULT NULL,
  `is_bounce` tinyint(1) DEFAULT NULL,
  `prior_session_lastreq` bigint DEFAULT NULL,
  `prior_session_id` bigint DEFAULT NULL,
  `time_sinse_priorsession` int DEFAULT NULL,
  `prior_session_year` tinyint DEFAULT NULL,
  `prior_session_month` varchar(255) DEFAULT NULL,
  `prior_session_day` tinyint DEFAULT NULL,
  `prior_session_dayofweek` int DEFAULT NULL,
  `prior_session_hour` tinyint DEFAULT NULL,
  `prior_session_minute` tinyint DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `first_page_id` bigint DEFAULT NULL,
  `last_page_id` bigint DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `is_robot` tinyint(1) DEFAULT NULL,
  `is_browser` tinyint(1) DEFAULT NULL,
  `is_feedreader` tinyint(1) DEFAULT NULL,
  `latest_attributions` blob,
  `num_goals` tinyint(1) DEFAULT NULL,
  `num_goal_starts` tinyint(1) DEFAULT NULL,
  `goals_value` bigint DEFAULT NULL,
  `commerce_trans_count` int DEFAULT NULL,
  `commerce_trans_revenue` bigint DEFAULT NULL,
  `commerce_items_revenue` bigint DEFAULT NULL,
  `commerce_items_count` int DEFAULT NULL,
  `commerce_items_quantity` int DEFAULT NULL,
  `commerce_shipping_revenue` bigint DEFAULT NULL,
  `commerce_tax_revenue` bigint DEFAULT NULL,
  `goal_1` tinyint(1) DEFAULT NULL,
  `goal_1_start` tinyint(1) DEFAULT NULL,
  `goal_1_value` bigint DEFAULT NULL,
  `goal_2` tinyint(1) DEFAULT NULL,
  `goal_2_start` tinyint(1) DEFAULT NULL,
  `goal_2_value` bigint DEFAULT NULL,
  `goal_3` tinyint(1) DEFAULT NULL,
  `goal_3_start` tinyint(1) DEFAULT NULL,
  `goal_3_value` bigint DEFAULT NULL,
  `goal_4` tinyint(1) DEFAULT NULL,
  `goal_4_start` tinyint(1) DEFAULT NULL,
  `goal_4_value` bigint DEFAULT NULL,
  `goal_5` tinyint(1) DEFAULT NULL,
  `goal_5_start` tinyint(1) DEFAULT NULL,
  `goal_5_value` bigint DEFAULT NULL,
  `goal_6` tinyint(1) DEFAULT NULL,
  `goal_6_start` tinyint(1) DEFAULT NULL,
  `goal_6_value` bigint DEFAULT NULL,
  `goal_7` tinyint(1) DEFAULT NULL,
  `goal_7_start` tinyint(1) DEFAULT NULL,
  `goal_7_value` bigint DEFAULT NULL,
  `goal_8` tinyint(1) DEFAULT NULL,
  `goal_8_start` tinyint(1) DEFAULT NULL,
  `goal_8_value` bigint DEFAULT NULL,
  `goal_9` tinyint(1) DEFAULT NULL,
  `goal_9_start` tinyint(1) DEFAULT NULL,
  `goal_9_value` bigint DEFAULT NULL,
  `goal_10` tinyint(1) DEFAULT NULL,
  `goal_10_start` tinyint(1) DEFAULT NULL,
  `goal_10_value` bigint DEFAULT NULL,
  `goal_11` tinyint(1) DEFAULT NULL,
  `goal_11_start` tinyint(1) DEFAULT NULL,
  `goal_11_value` bigint DEFAULT NULL,
  `goal_12` tinyint(1) DEFAULT NULL,
  `goal_12_start` tinyint(1) DEFAULT NULL,
  `goal_12_value` bigint DEFAULT NULL,
  `goal_13` tinyint(1) DEFAULT NULL,
  `goal_13_start` tinyint(1) DEFAULT NULL,
  `goal_13_value` bigint DEFAULT NULL,
  `goal_14` tinyint(1) DEFAULT NULL,
  `goal_14_start` tinyint(1) DEFAULT NULL,
  `goal_14_value` bigint DEFAULT NULL,
  `goal_15` tinyint(1) DEFAULT NULL,
  `goal_15_start` tinyint(1) DEFAULT NULL,
  `goal_15_value` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`),
  KEY `yyyymmdd` (`yyyymmdd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `owa_site`
--

DROP TABLE IF EXISTS `owa_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owa_site` (
  `id` bigint NOT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` mediumtext,
  `site_family` varchar(255) DEFAULT NULL,
  `settings` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `owa_site_user`
--

DROP TABLE IF EXISTS `owa_site_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owa_site_user` (
  `site_id` bigint DEFAULT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `owa_source_dim`
--

DROP TABLE IF EXISTS `owa_source_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owa_source_dim` (
  `id` bigint NOT NULL,
  `source_domain` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `owa_ua`
--

DROP TABLE IF EXISTS `owa_ua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owa_ua` (
  `id` bigint NOT NULL,
  `ua` varchar(255) DEFAULT NULL,
  `browser_type` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `owa_user`
--

DROP TABLE IF EXISTS `owa_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owa_user` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `temp_passkey` varchar(255) DEFAULT NULL,
  `creation_date` bigint DEFAULT NULL,
  `last_update_date` bigint DEFAULT NULL,
  `api_key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `owa_visitor`
--

DROP TABLE IF EXISTS `owa_visitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owa_visitor` (
  `id` bigint NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `first_session_id` bigint DEFAULT NULL,
  `first_session_year` int DEFAULT NULL,
  `first_session_month` varchar(255) DEFAULT NULL,
  `first_session_day` int DEFAULT NULL,
  `first_session_dayofyear` int DEFAULT NULL,
  `first_session_timestamp` bigint DEFAULT NULL,
  `first_session_yyyymmdd` bigint DEFAULT NULL,
  `last_session_id` bigint DEFAULT NULL,
  `last_session_year` int DEFAULT NULL,
  `last_session_month` varchar(255) DEFAULT NULL,
  `last_session_day` int DEFAULT NULL,
  `last_session_dayofyear` int DEFAULT NULL,
  `num_prior_sessions` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-04 11:17:52
