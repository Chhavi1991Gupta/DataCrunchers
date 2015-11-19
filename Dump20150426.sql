CREATE DATABASE  IF NOT EXISTS `cmpe239_proj` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cmpe239_proj`;
-- MySQL dump 10.13  Distrib 5.6.19, for Win32 (x86)
--
-- Host: localhost    Database: cmpe239_proj
-- ------------------------------------------------------
-- Server version	5.6.20-enterprise-commercial-advanced

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mytable1`
--

DROP TABLE IF EXISTS `mytable1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;                               j
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mytable1` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `Cash_and_Cash_Equivalents` mediumint(9) DEFAULT NULL,
  `Total_Current_Assets` mediumint(9) DEFAULT NULL,
  `Total_Assets` mediumint(9) DEFAULT NULL,
  `Short_Term_Debt` mediumint(9) DEFAULT NULL,
  `Long_Term_Debt` mediumint(9) DEFAULT NULL,
  `Net_Debt` mediumint(9) DEFAULT NULL,
  `Total_Liabilities` mediumint(9) DEFAULT NULL,
  `Depreciation_and_amortization` mediumint(9) DEFAULT NULL,
  `CAPEX` mediumint(9) DEFAULT NULL,
  `Net_Sales` mediumint(9) DEFAULT NULL,
  `Gross_Margin` mediumint(9) DEFAULT NULL,
  `EBITDA` mediumint(9) DEFAULT NULL,
  `Market_Capitalization` mediumint(9) DEFAULT NULL,
  `Financial_Costs` mediumint(9) DEFAULT NULL,
  `Share_Values` mediumint(9) DEFAULT NULL,
  `Number_of_Employees` mediumint(9) DEFAULT NULL,
  `Company_Name` varchar(255) DEFAULT NULL,
  `Year` text,
  `Sector` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mytable1`
--

LOCK TABLES `mytable1` WRITE;
/*!40000 ALTER TABLE `mytable1` DISABLE KEYS */;
INSERT INTO `mytable1` VALUES (1,492,229,137,156,256,165,406,148,469,426,114,235,359,232,293,333,'picasa','2012','software'),(2,203,103,163,275,298,111,411,240,305,155,421,395,472,207,242,373,'picasa','2013','software'),(3,311,492,128,386,321,313,455,117,109,431,358,500,452,490,228,473,'picasa','2014','software'),(4,490,172,342,391,337,456,365,488,318,471,227,107,429,272,209,100,'imdb','2012','software'),(5,356,475,431,388,433,401,496,378,219,318,288,189,499,475,425,123,'imdb','2013','software'),(6,243,233,489,338,488,129,468,276,117,112,459,222,214,300,255,149,'imdb','2014','software'),(7,108,235,246,459,182,457,113,258,469,214,440,186,125,239,132,394,'sun microsystems','2012','software'),(8,340,449,148,388,486,248,427,194,365,193,282,215,151,401,412,475,'sun microsystems','2013','software'),(9,124,376,344,277,420,174,470,411,317,326,320,110,243,158,204,489,'sun microsystems','2014','software'),(10,118,387,270,138,429,116,317,153,311,111,228,364,349,397,194,145,'beats international','2012','hardware'),(11,105,355,158,308,371,165,447,348,397,410,228,451,404,188,361,148,'beats international','2013','hardware'),(12,307,405,320,341,143,252,199,313,114,165,436,193,276,351,337,392,'beats international','2014','hardware'),(13,217,260,273,375,309,439,377,262,106,136,238,138,295,347,349,310,'arun','2012','networking'),(14,224,358,259,152,317,138,108,150,368,181,473,303,495,171,461,358,'arun','2013','networking'),(15,355,129,242,135,233,103,432,384,286,169,268,491,439,271,262,364,'arun','2014','networking'),(16,403,141,272,246,464,469,120,260,324,109,399,350,132,449,413,57,'whatsapp','2012','software'),(17,302,387,406,275,161,128,171,248,365,269,472,327,266,431,347,62,'whatsapp','2013','software'),(18,143,425,469,225,394,232,473,330,130,120,303,109,325,111,441,90,'whatsapp','2014','software'),(19,399,428,195,368,325,379,379,287,236,418,471,262,294,284,313,241,'webex','2012','software'),(20,137,330,245,144,436,234,247,190,366,324,206,138,348,147,196,284,'webex','2013','software'),(21,248,125,157,339,384,415,178,112,303,169,426,374,392,134,360,332,'webex','2014','software'),(22,429,287,376,316,328,394,347,156,461,284,267,396,247,228,101,359,'nok','2012','Gadget'),(23,243,457,447,287,237,306,182,390,202,271,170,159,415,243,297,440,'nok','2013','Gadget'),(24,311,480,328,393,298,384,368,252,258,222,259,420,229,353,235,468,'nok','2014','Gadget'),(25,220,157,453,408,235,216,106,486,133,236,178,477,304,331,423,378,'cloudant inc.','2012','software'),(26,112,439,463,206,291,332,424,271,133,498,199,246,276,310,410,420,'cloudant inc.','2013','software'),(27,171,430,281,346,488,297,393,236,446,458,109,275,246,469,309,455,'cloudant inc.','2014','software'),(28,471,408,413,323,310,147,418,394,249,244,285,313,141,157,346,82,'tumblr','2012','software'),(29,323,251,489,227,165,254,298,344,418,361,385,161,379,291,414,101,'tumblr','2013','software'),(30,443,250,177,227,487,339,339,440,115,273,405,340,472,164,105,136,'tumblr','2014','software'),(101,980,915,890,696,523,760,551,603,639,946,735,601,914,975,710,1752,'goog','2012','software'),(102,737,611,600,633,735,673,603,633,693,969,987,709,647,649,980,1880,'goog','2013','software'),(103,917,661,626,588,809,832,783,958,784,947,973,966,680,761,520,1950,'goog','2014','software'),(104,739,647,842,784,909,872,906,973,526,697,832,940,986,972,825,2011,'amzn','2012','software'),(105,983,985,547,999,1000,791,705,823,552,609,670,511,808,899,841,2201,'amzn','2013','software'),(106,737,598,911,879,536,772,966,967,723,901,968,743,706,917,948,2383,'amzn','2014','software'),(107,955,828,775,545,906,794,939,933,735,987,591,987,939,977,883,2415,'orcl','2012','software'),(108,952,543,699,887,812,698,891,506,740,926,865,713,706,521,846,2605,'orcl','2013','software'),(109,886,816,619,619,667,564,990,845,803,891,657,705,755,743,675,2710,'orcl','2014','software'),(110,871,576,752,713,934,991,697,555,580,692,573,840,582,602,927,2019,'aapl','2012','software'),(111,629,674,946,979,522,560,782,616,998,902,747,629,693,953,967,2221,'aapl','2013','software'),(112,684,754,751,818,905,783,856,560,584,998,831,991,863,927,776,2440,'aapl','2014','software'),(113,842,721,892,708,569,897,866,953,787,527,756,865,679,544,875,2570,'hpq','2012','software'),(114,708,518,955,783,691,769,692,960,815,535,584,875,968,617,797,2780,'hpq','2013','software'),(115,618,868,595,621,677,781,598,512,568,500,750,674,639,507,586,2282,'hpq','2014','software'),(116,881,844,847,864,751,659,875,811,662,908,969,686,828,927,976,921,'fb','2012','software'),(117,603,878,844,567,658,786,549,826,718,978,895,774,597,741,767,1002,'fb','2013','software'),(118,583,652,715,887,563,630,515,716,924,798,874,596,803,951,868,1104,'fb','2014','software'),(119,690,523,930,948,537,931,528,509,611,805,867,780,992,512,622,2879,'csco','2012','Networking'),(120,927,856,879,881,565,923,869,684,857,916,787,573,807,911,683,3001,'csco','2013','Networking'),(121,886,733,796,598,816,991,997,565,743,642,742,786,858,519,752,3212,'csco','2014','Networking'),(122,751,774,605,636,514,823,685,820,899,593,625,912,607,577,859,2345,'ibm','2012','software'),(123,517,921,554,811,906,640,675,988,925,530,586,937,882,605,841,2517,'ibm','2013','software'),(124,680,975,683,990,833,748,509,574,884,915,790,518,878,633,518,2790,'ibm','2014','software'),(125,963,642,723,875,795,610,621,709,609,740,910,921,594,538,887,2100,'msft','2012','software'),(126,992,765,611,773,554,782,702,902,793,647,542,773,960,552,645,2280,'msft','2013','software'),(127,999,731,899,815,596,911,950,980,828,806,823,677,886,682,580,2423,'msft','2014','software'),(128,550,963,620,938,793,934,827,876,925,844,983,969,528,978,715,2723,'yhoo','2012','software'),(129,663,576,695,835,635,820,569,650,788,614,579,796,930,851,967,2870,'yhoo','2013','software'),(130,593,624,832,760,611,560,916,566,772,563,818,920,908,606,710,3012,'yhoo','2014','software');
/*!40000 ALTER TABLE `mytable1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-26 14:09:33
