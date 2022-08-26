CREATE TABLE `member` (
	`mno` INT(11) NOT NULL AUTO_INCREMENT,
	`mname` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`mpass` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`mtel` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`memail` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`mgender` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`maddr` VARCHAR(100) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`mlevel` VARCHAR(10) NULL DEFAULT '5' COLLATE 'utf8mb4_general_ci',
	`miname` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`mdate` TIMESTAMP NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
	PRIMARY KEY (`mno`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=23
;

-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.8.3-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- 테이블 데이터 webmarket.member:~0 rows (대략적) 내보내기
INSERT INTO `member` (`mno`, `mname`, `mpass`, `mtel`, `memail`, `mgender`, `maddr`, `mlevel`, `miname`, `mdate`) VALUES
	(21, '123', '123', '123', '123', '여성', '경기도 고양시 일산동구 백석로 175', '5', 'Hamburger.jpg', '2022-08-24 02:38:55'),
	(22, '김찬호', '0000', '010-2400-2400', 'ralo@gmail.com', '남성', '서울특별시 종로구 우정국로2길 21', '5', 'ralo3.jpg', '2022-08-24 03:17:30');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
