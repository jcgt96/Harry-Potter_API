CREATE DATABASE `API_harry_potter` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
-- API_harry_potter.blood_status definition

CREATE TABLE `blood_status` (
  `blood_status_id` int NOT NULL AUTO_INCREMENT,
  `blood_status` varchar(20) NOT NULL,
  PRIMARY KEY (`blood_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- API_harry_potter.hogwarts_houses definition

CREATE TABLE `hogwarts_houses` (
  `hogwarts_house_id` int NOT NULL AUTO_INCREMENT,
  `house_name` varchar(30) NOT NULL,
  PRIMARY KEY (`hogwarts_house_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- API_harry_potter.wand definition

CREATE TABLE `wand` (
  `wand_id` int NOT NULL AUTO_INCREMENT,
  `material` varchar(30) NOT NULL,
  `nucleus` varchar(30) NOT NULL,
  `measure` float NOT NULL,
  PRIMARY KEY (`wand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- API_harry_potter.wizard definition

CREATE TABLE `wizard` (
  `wizard_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `wand_id` int NOT NULL,
  `blood_status_id` int NOT NULL,
  `hogwarts_house_id` int NOT NULL,
  `birthdate` date NOT NULL,
  `boggart` varchar(50) NOT NULL,
  `patronus` varchar(50) NOT NULL,
  `animagus` tinyint(1) NOT NULL,
  PRIMARY KEY (`wizard_id`),
  KEY `wizard_FK` (`wand_id`),
  KEY `wizard_FK_1` (`hogwarts_house_id`),
  KEY `wizard_FK_2` (`blood_status_id`),
  CONSTRAINT `wizard_FK` FOREIGN KEY (`wand_id`) REFERENCES `wand` (`wand_id`),
  CONSTRAINT `wizard_FK_1` FOREIGN KEY (`hogwarts_house_id`) REFERENCES `hogwarts_houses` (`hogwarts_house_id`),
  CONSTRAINT `wizard_FK_2` FOREIGN KEY (`blood_status_id`) REFERENCES `blood_status` (`blood_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

