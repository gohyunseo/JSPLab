CREATE TABLE `board` (
	`bid` INT(11) NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(20) NOT NULL COLLATE 'utf8mb4_general_ci',
	`content` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`iname` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`author` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`bdate` TIMESTAMP NULL DEFAULT current_timestamp(),
	PRIMARY KEY (`bid`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=21
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

-- 테이블 데이터 webmarket.board:~8 rows (대략적) 내보내기
INSERT INTO `board` (`bid`, `title`, `content`, `iname`, `author`, `bdate`) VALUES
	(1, 'ralo', 'hi', 'ralo.jpg', NULL, '2022-08-18 03:03:24'),
	(12, 'ralo2', 'hello', 'ralo2.jpg', NULL, '2022-08-18 06:11:27'),
	(13, 'ralo3', 'bye', 'ralo3.jpg', NULL, '2022-08-18 06:15:20'),
	(14, 'r4', 'why', 'ralo3.jpg', NULL, '2022-08-18 06:40:34'),
	(15, 'hi', 'hello', 'ralo2.jpg', NULL, '2022-08-18 06:51:01'),
	(16, 'ㅇㄴ', 'ㄹㅇㄹㅇㄹ', 'Austn.jpg', NULL, '2022-08-18 07:33:04'),
	(17, 'marusche', 'walwal', 'marusche.jpg', NULL, '2022-08-18 07:41:07'),
	(18, 'hihi', 'hihi', 'marusche.jpg', NULL, '2022-08-18 08:07:03');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

