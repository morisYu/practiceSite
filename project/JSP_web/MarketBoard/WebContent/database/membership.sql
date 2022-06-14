/* 게시판 */

DROP DATABASE IF EXISTS MarketBoardDB;
CREATE DATABASE MarketBoardDB;
USE MarketBoardDB;
ALTER DATABASE MarketBoardDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

/********************** 회원 *************************/
DROP TABLE IF EXISTS membership;
CREATE TABLE membership(
	num INT AUTO_INCREMENT,
    id VARCHAR(10) NOT NULL UNIQUE,
    password VARCHAR(10) NOT NULL,
    name VARCHAR(10) NOT NULL,
    regist_day VARCHAR(50),
    PRIMARY KEY (num)
)DEFAULT CHARSET=utf8mb4;

SELECT * FROM membership;

-- 회원 추가
INSERT INTO membership (id, password, name, regist_day) 
	VALUES ("admin", 'admin1234', "관리자", "2022/06/10(13:30:20)");

INSERT INTO membership (id, password, name, regist_day) 
	VALUES ("user01", "user1111", "사용자", "2022/06/11(13:30:20)");

INSERT INTO membership (id, password, name, regist_day) 
	VALUES ("user02", "user2222", "사용자", "2022/05/11(13:20:20)");

INSERT INTO membership (id, password, name, regist_day) 
	VALUES ("user03", "user3333", "사용자", "2022/04/26(11:20:30)");

SELECT * FROM membership WHERE id LIKE 'user%';

SELECT * FROM membership WHERE id = 'admin';

DELETE FROM membership;
