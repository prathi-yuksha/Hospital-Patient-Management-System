-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital_management
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `appointment_id` int NOT NULL,
  `patient_id` int DEFAULT NULL,
  `doctor_id` int DEFAULT NULL,
  `appointment_date` date DEFAULT NULL,
  `diagnosis` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`appointment_id`),
  KEY `patient_id` (`patient_id`),
  KEY `doctor_id` (`doctor_id`),
  CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`),
  CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (1,4,2,'2025-07-02','Cold and Fever'),(2,1,4,'2025-07-03','Cold and Fever'),(3,5,2,'2025-07-04','Skin Allergy'),(4,1,2,'2025-07-05','Fracture'),(5,3,5,'2025-07-06','Fracture'),(6,1,2,'2025-07-07','Fracture'),(7,1,4,'2025-07-08','Cold and Fever'),(8,1,2,'2025-07-09','Cold and Fever'),(9,1,3,'2025-07-10','Cold and Fever'),(10,1,5,'2025-07-11','High BP'),(11,2,4,'2025-07-12','Cough and Cold'),(12,3,1,'2025-07-13','High Cholesterol'),(13,4,2,'2025-07-14','Migraine'),(14,5,3,'2025-07-15','Knee Pain'),(15,6,5,'2025-07-16','Routine Checkup'),(16,7,1,'2025-07-17','Diabetes'),(17,8,4,'2025-07-18','Skin Rash'),(18,9,3,'2025-07-19','Back Pain'),(19,10,2,'2025-07-20','Anxiety'),(20,11,5,'2025-07-21','General Checkup'),(21,12,1,'2025-07-22','BP Monitoring'),(22,13,4,'2025-07-23','Allergy'),(23,14,3,'2025-07-24','Sprain'),(24,15,2,'2025-07-25','Migraine'),(25,16,5,'2025-07-26','Regular Check'),(26,17,1,'2025-07-27','High Sugar'),(27,18,4,'2025-07-28','Acne'),(28,19,3,'2025-07-29','Fracture'),(29,20,2,'2025-07-30','Hair Loss'),(30,21,5,'2025-07-31','Chest Pain'),(31,22,1,'2025-08-01','Thyroid'),(32,23,4,'2025-08-02','Fever'),(33,24,3,'2025-08-03','Joint Pain'),(34,25,2,'2025-08-04','Fatigue'),(35,26,5,'2025-08-05','High BP'),(36,27,1,'2025-08-06','Headache'),(37,28,4,'2025-08-07','Skin Allergy'),(38,29,3,'2025-08-08','Arthritis'),(39,30,2,'2025-08-09','Cough'),(40,31,5,'2025-08-10','Check-up'),(41,32,1,'2025-08-11','Fever'),(42,33,4,'2025-08-12','Infection'),(43,34,3,'2025-08-13','Muscle Pain'),(44,35,2,'2025-08-14','Cough'),(45,36,5,'2025-08-15','Fever'),(46,37,1,'2025-08-16','Migraine'),(47,38,4,'2025-08-17','Skin Issue'),(48,39,3,'2025-08-18','Sprain'),(49,40,2,'2025-08-19','BP Issue'),(50,41,5,'2025-08-20','Routine Check');
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bills` (
  `bill_id` int NOT NULL,
  `appointment_id` int DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  PRIMARY KEY (`bill_id`),
  KEY `appointment_id` (`appointment_id`),
  CONSTRAINT `bills_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`appointment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills`
--

LOCK TABLES `bills` WRITE;
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
INSERT INTO `bills` VALUES (1,1,602.00,'Unpaid','2025-07-08'),(2,2,671.00,'Paid','2025-07-03'),(3,3,660.00,'Paid','2025-07-04'),(4,4,558.00,'Unpaid','2025-07-08'),(5,5,760.00,'Unpaid','2025-07-05'),(6,6,764.00,'Unpaid','2025-07-09'),(7,7,728.00,'Paid','2025-07-08'),(8,8,581.00,'Unpaid','2025-07-04'),(9,9,791.00,'Paid','2025-07-10'),(10,10,929.00,'Unpaid','2025-07-03'),(11,11,745.00,'Paid','2025-07-11'),(12,12,812.00,'Unpaid','2025-07-12'),(13,13,678.00,'Paid','2025-07-13'),(14,14,590.00,'Unpaid','2025-07-14'),(15,15,660.00,'Paid','2025-07-15'),(16,16,700.00,'Unpaid','2025-07-16'),(17,17,840.00,'Paid','2025-07-17'),(18,18,610.00,'Paid','2025-07-18'),(19,19,790.00,'Unpaid','2025-07-19'),(20,20,885.00,'Paid','2025-07-20'),(21,21,920.00,'Unpaid','2025-07-21'),(22,22,688.00,'Paid','2025-07-22'),(23,23,720.00,'Unpaid','2025-07-23'),(24,24,595.00,'Paid','2025-07-24'),(25,25,820.00,'Unpaid','2025-07-25'),(26,26,645.00,'Paid','2025-07-26'),(27,27,600.00,'Unpaid','2025-07-27'),(28,28,720.00,'Paid','2025-07-28'),(29,29,770.00,'Unpaid','2025-07-29'),(30,30,840.00,'Paid','2025-07-30'),(31,31,690.00,'Paid','2025-07-31'),(32,32,785.00,'Unpaid','2025-08-01'),(33,33,812.00,'Paid','2025-08-02'),(34,34,599.00,'Unpaid','2025-08-03'),(35,35,688.00,'Paid','2025-08-04'),(36,36,705.00,'Unpaid','2025-08-05'),(37,37,720.00,'Paid','2025-08-06'),(38,38,810.00,'Unpaid','2025-08-07'),(39,39,777.00,'Paid','2025-08-08'),(40,40,888.00,'Unpaid','2025-08-09'),(41,41,725.00,'Paid','2025-08-10'),(42,42,640.00,'Unpaid','2025-08-11'),(43,43,770.00,'Paid','2025-08-12'),(44,44,810.00,'Unpaid','2025-08-13'),(45,45,659.00,'Paid','2025-08-14'),(46,46,785.00,'Unpaid','2025-08-15'),(47,47,799.00,'Paid','2025-08-16'),(48,48,899.00,'Unpaid','2025-08-17'),(49,49,615.00,'Paid','2025-08-18'),(50,50,870.00,'Unpaid','2025-08-19');
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `doctor_id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `specialization` varchar(50) DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`doctor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'Dr. Asha Mehta','Cardiology','9988776655'),(2,'Dr. Raj Verma','Neurology','9871234567'),(3,'Dr. Neha Jain','Orthopedics','9123456789'),(4,'Dr. Suresh Iyer','Dermatology','9012345678'),(5,'Dr. Anjali Kapoor','General Physician','9090909090'),(6,'Dr. Ravi Sharma','Pediatrics','9876000006'),(7,'Dr. Meena Patel','ENT','9876000007'),(8,'Dr. Vikram Joshi','Gynecology','9876000008'),(9,'Dr. Sunita Agarwal','Oncology','9876000009'),(10,'Dr. Karan Verma','Psychiatry','9876000010'),(11,'Dr. Anjali Reddy','Cardiology','9876000011'),(12,'Dr. Suresh Sharma','Neurology','9876000012'),(13,'Dr. Neha Jain','Orthopedics','9876000013'),(14,'Dr. Raj Mehta','Dermatology','9876000014'),(15,'Dr. Asha Kapoor','General Physician','9876000015'),(16,'Dr. Meena Iyer','Pediatrics','9876000016'),(17,'Dr. Vikram Reddy','ENT','9876000017'),(18,'Dr. Anjali Sharma','Gynecology','9876000018'),(19,'Dr. Raj Joshi','Oncology','9876000019'),(20,'Dr. Neha Agarwal','Psychiatry','9876000020'),(21,'Dr. Karan Jain','Cardiology','9876000021'),(22,'Dr. Suresh Kapoor','Neurology','9876000022'),(23,'Dr. Asha Mehta','Orthopedics','9876000023'),(24,'Dr. Sunita Verma','Dermatology','9876000024'),(25,'Dr. Ravi Patel','General Physician','9876000025'),(26,'Dr. Meena Singh','Pediatrics','9876000026'),(27,'Dr. Vikram Mehta','ENT','9876000027'),(28,'Dr. Anjali Joshi','Gynecology','9876000028'),(29,'Dr. Raj Agarwal','Oncology','9876000029'),(30,'Dr. Neha Reddy','Psychiatry','9876000030'),(31,'Dr. Asha Sharma','Cardiology','9876000031'),(32,'Dr. Raj Patel','Neurology','9876000032'),(33,'Dr. Meena Jain','Orthopedics','9876000033'),(34,'Dr. Suresh Verma','Dermatology','9876000034'),(35,'Dr. Anjali Reddy','General Physician','9876000035'),(36,'Dr. Ravi Agarwal','Pediatrics','9876000036'),(37,'Dr. Sunita Kapoor','ENT','9876000037'),(38,'Dr. Vikram Singh','Gynecology','9876000038'),(39,'Dr. Nisha Iyer','Oncology','9876000039'),(40,'Dr. Deepak Joshi','Psychiatry','9876000040'),(41,'Dr. Swati Mehta','Cardiology','9876000041'),(42,'Dr. Rakesh Sharma','Neurology','9876000042'),(43,'Dr. Nidhi Patel','Orthopedics','9876000043'),(44,'Dr. Manoj Kapoor','Dermatology','9876000044'),(45,'Dr. Preeti Verma','General Physician','9876000045'),(46,'Dr. Karan Reddy','Pediatrics','9876000046'),(47,'Dr. Neha Joshi','ENT','9876000047'),(48,'Dr. Amit Sharma','Gynecology','9876000048'),(49,'Dr. Meena Agarwal','Oncology','9876000049'),(50,'Dr. Raj Singh','Psychiatry','9876000050');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medications`
--

DROP TABLE IF EXISTS `medications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medications` (
  `medication_id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `stock` int DEFAULT NULL,
  PRIMARY KEY (`medication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medications`
--

LOCK TABLES `medications` WRITE;
/*!40000 ALTER TABLE `medications` DISABLE KEYS */;
INSERT INTO `medications` VALUES (1,'Amlodipine','Used for BP control',100),(2,'Paracetamol','Pain and fever reducer',500),(3,'Atorvastatin','Cholesterol reducer',200),(4,'Metformin','Used for diabetes',300),(5,'Cetrizine','Anti-allergic',250),(6,'Ibuprofen','Anti-inflammatory and pain reliever',400),(7,'Amoxicillin','Antibiotic for infections',150),(8,'Losartan','Treats high blood pressure',180),(9,'Pantoprazole','Reduces stomach acid',220),(10,'Salbutamol','Asthma inhaler',120),(11,'Dolo 650','Fever and pain relief',300),(12,'Aspirin','Blood thinner',200),(13,'Clopidogrel','Prevents blood clots',140),(14,'Ranitidine','Used for acidity and ulcers',190),(15,'Azithromycin','Antibiotic for bacterial infections',100),(16,'Levothyroxine','Thyroid hormone replacement',180),(17,'Omeprazole','Treats GERD and ulcers',250),(18,'Hydrochlorothiazide','Diuretic for hypertension',160),(19,'Montelukast','Asthma and allergies',210),(20,'Cetirizine','Allergy relief',300),(21,'Insulin','Diabetes control',130),(22,'Naproxen','Pain and inflammation relief',170),(23,'Dexamethasone','Steroid anti-inflammatory',90),(24,'Furosemide','Treats fluid retention',200),(25,'Glibenclamide','Type 2 diabetes management',110),(26,'Domperidone','Used for nausea',180),(27,'Loratadine','Allergy antihistamine',240),(28,'Prednisolone','Steroid for inflammation',130),(29,'Metoprolol','Heart and BP control',190),(30,'Warfarin','Blood thinner',85),(31,'Tamsulosin','Treats enlarged prostate',100),(32,'Fluconazole','Antifungal',95),(33,'Cyclobenzaprine','Muscle relaxant',60),(34,'Acyclovir','Antiviral',70),(35,'Carbamazepine','Seizure medication',100),(36,'Diazepam','Anti-anxiety',90),(37,'Risperidone','Antipsychotic',110),(38,'Olanzapine','Mood stabilizer',100),(39,'Haloperidol','Schizophrenia treatment',80),(40,'Venlafaxine','Antidepressant',120),(41,'Sertraline','Treats depression and anxiety',130),(42,'Escitalopram','SSRI antidepressant',150),(43,'Morphine','Pain relief',50),(44,'Codeine','Cough and pain relief',75),(45,'Clindamycin','Antibiotic for serious infections',90),(46,'Erythromycin','Antibiotic',70),(47,'Theophylline','Bronchodilator for asthma',100),(48,'Ciprofloxacin','Urinary tract infections',120),(49,'Levofloxacin','Respiratory infection treatment',90),(50,'Dicyclomine','Stomach cramps relief',150);
/*!40000 ALTER TABLE `medications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `patient_id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'Ravi Kumar',34,'Male','9876543210','Chennai'),(2,'Priya Sharma',28,'Female','9123456780','Mumbai'),(3,'Arun Singh',45,'Male','9001123456','Delhi'),(4,'Sneha Reddy',31,'Female','9988776655','Hyderabad'),(5,'Karan Patel',50,'Male','9873214560','Ahmedabad'),(6,'Amit Verma',30,'Male','9876000006','Delhi'),(7,'Swati Sharma',25,'Female','9876000007','Mumbai'),(8,'Rakesh Patel',43,'Male','9876000008','Kolkata'),(9,'Meena Reddy',35,'Female','9876000009','Bangalore'),(10,'Deepak Gupta',50,'Male','9876000010','Chennai'),(11,'Preeti Joshi',29,'Female','9876000011','Hyderabad'),(12,'Manoj Kapoor',38,'Male','9876000012','Ahmedabad'),(13,'Sunita Singh',42,'Female','9876000013','Pune'),(14,'Vikram Mehta',55,'Male','9876000014','Lucknow'),(15,'Anjali Agarwal',33,'Female','9876000015','Jaipur'),(16,'Ravi Gupta',36,'Male','9876000016','Delhi'),(17,'Nisha Mehta',27,'Female','9876000017','Mumbai'),(18,'Amit Sharma',48,'Male','9876000018','Chennai'),(19,'Swati Joshi',31,'Female','9876000019','Bangalore'),(20,'Manoj Verma',45,'Male','9876000020','Kolkata'),(21,'Meena Agarwal',39,'Female','9876000021','Ahmedabad'),(22,'Deepak Singh',51,'Male','9876000022','Hyderabad'),(23,'Preeti Reddy',29,'Female','9876000023','Pune'),(24,'Rakesh Kapoor',53,'Male','9876000024','Jaipur'),(25,'Anjali Gupta',34,'Female','9876000025','Lucknow'),(26,'Sunita Verma',40,'Female','9876000026','Mumbai'),(27,'Vikram Joshi',37,'Male','9876000027','Delhi'),(28,'Nisha Singh',28,'Female','9876000028','Chennai'),(29,'Ravi Mehta',46,'Male','9876000029','Bangalore'),(30,'Anjali Kapoor',32,'Female','9876000030','Kolkata'),(31,'Amit Patel',44,'Male','9876000031','Ahmedabad'),(32,'Swati Reddy',36,'Female','9876000032','Hyderabad'),(33,'Rakesh Agarwal',53,'Male','9876000033','Pune'),(34,'Meena Sharma',41,'Female','9876000034','Jaipur'),(35,'Deepak Verma',50,'Male','9876000035','Lucknow'),(36,'Preeti Singh',30,'Female','9876000036','Delhi'),(37,'Manoj Mehta',47,'Male','9876000037','Mumbai'),(38,'Sunita Joshi',33,'Female','9876000038','Chennai'),(39,'Vikram Kapoor',38,'Male','9876000039','Bangalore'),(40,'Anjali Reddy',29,'Female','9876000040','Kolkata'),(41,'Ravi Agarwal',55,'Male','9876000041','Ahmedabad'),(42,'Nisha Sharma',31,'Female','9876000042','Hyderabad'),(43,'Amit Kapoor',45,'Male','9876000043','Pune'),(44,'Swati Gupta',28,'Female','9876000044','Jaipur'),(45,'Rakesh Singh',49,'Male','9876000045','Lucknow'),(46,'Meena Verma',40,'Female','9876000046','Delhi'),(47,'Deepak Patel',52,'Male','9876000047','Mumbai'),(48,'Preeti Mehta',34,'Female','9876000048','Chennai'),(49,'Manoj Reddy',46,'Male','9876000049','Bangalore'),(50,'Sunita Gupta',39,'Female','9876000050','Kolkata');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescriptions`
--

DROP TABLE IF EXISTS `prescriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescriptions` (
  `prescription_id` int NOT NULL,
  `appointment_id` int DEFAULT NULL,
  `medication_id` int DEFAULT NULL,
  `dosage` varchar(20) DEFAULT NULL,
  `duration` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`prescription_id`),
  KEY `appointment_id` (`appointment_id`),
  KEY `medication_id` (`medication_id`),
  CONSTRAINT `prescriptions_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`appointment_id`),
  CONSTRAINT `prescriptions_ibfk_2` FOREIGN KEY (`medication_id`) REFERENCES `medications` (`medication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescriptions`
--

LOCK TABLES `prescriptions` WRITE;
/*!40000 ALTER TABLE `prescriptions` DISABLE KEYS */;
INSERT INTO `prescriptions` VALUES (1,1,2,'5mg','5 days'),(2,2,2,'20mg','10 days'),(3,3,5,'500mg','5 days'),(4,4,4,'5mg','7 days'),(5,5,1,'500mg','10 days'),(6,6,1,'500mg','7 days'),(7,7,3,'5mg','10 days'),(8,8,3,'5mg','10 days'),(9,9,5,'500mg','5 days'),(10,10,5,'500mg','10 days'),(11,11,2,'10mg','5 days'),(12,12,1,'500mg','7 days'),(13,13,4,'5mg','10 days'),(14,14,3,'20mg','5 days'),(15,15,5,'500mg','3 days'),(16,16,2,'10mg','6 days'),(17,17,1,'500mg','4 days'),(18,18,4,'2.5mg','5 days'),(19,19,5,'10mg','2 days'),(20,20,3,'20mg','6 days'),(21,21,3,'15mg','5 days'),(22,22,1,'500mg','7 days'),(23,23,2,'5mg','4 days'),(24,24,4,'5mg','5 days'),(25,25,5,'500mg','3 days'),(26,26,3,'10mg','7 days'),(27,27,1,'500mg','10 days'),(28,28,2,'5mg','5 days'),(29,29,3,'10mg','3 days'),(30,30,5,'500mg','5 days'),(31,31,4,'5mg','4 days'),(32,32,3,'10mg','3 days'),(33,33,2,'5mg','7 days'),(34,34,1,'500mg','5 days'),(35,35,2,'10mg','5 days'),(36,36,3,'20mg','6 days'),(37,37,4,'5mg','10 days'),(38,38,5,'500mg','7 days'),(39,39,1,'500mg','6 days'),(40,40,2,'10mg','5 days'),(41,41,3,'5mg','4 days'),(42,42,4,'5mg','5 days'),(43,43,5,'500mg','6 days'),(44,44,2,'10mg','5 days'),(45,45,1,'500mg','7 days'),(46,46,4,'5mg','4 days'),(47,47,3,'20mg','3 days'),(48,48,5,'500mg','5 days'),(49,49,2,'10mg','5 days'),(50,50,1,'500mg','6 days');
/*!40000 ALTER TABLE `prescriptions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-02 17:34:16
