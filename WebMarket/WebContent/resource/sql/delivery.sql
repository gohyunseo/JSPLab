CREATE TABLE `delivery` (
	`did` INT(11) NOT NULL AUTO_INCREMENT,
	`dpid` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`dmid` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`dmaddr` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`dmtel` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`dpname` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`dprice` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`dstatus` VARCHAR(50) NULL DEFAULT '1' COLLATE 'utf8mb4_general_ci',
	`ddone` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`ddate` TIMESTAMP NULL DEFAULT current_timestamp(),
	PRIMARY KEY (`did`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=4
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

-- 테이블 데이터 webmarket.delivery:~3 rows (대략적) 내보내기
INSERT INTO `delivery` (`did`, `dpid`, `dmid`, `dmaddr`, `dmtel`, `dpname`, `dprice`, `dstatus`, `ddone`, `ddate`) VALUES
	(1, 'abc-999', '21', '경기도 고양시 일산동구 백석로 175', '123', '강아지', '999,999', '1', NULL, '2022-08-24 08:50:24'),
	(2, 'abc-999', '21', '경기도 고양시 일산동구 백석로 175', '123', '강아지', '999,999', '1', NULL, '2022-08-24 08:50:57'),
	(3, 'AK-47', '21', '경기도 고양시 일산동구 백석로 175', '123', 'AK-47', '1,500,000', '1', NULL, '2022-08-24 08:51:18');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
