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

/********************** 게시판 *************************/
DROP TABLE IF EXISTS board;
CREATE TABLE board(
	num INT NOT NULL AUTO_INCREMENT,
    id VARCHAR(10) NOT NULL,
    name VARCHAR(10) NOT NULL,
    subject VARCHAR(100) NOT NULL,
    content text NOT NULL,
    regist_day VARCHAR(30),
    hit INT,
    ip VARCHAR(20),
    PRIMARY KEY(num)
)DEFAULT CHARSET=utf8mb4;

SELECT * FROM board;

INSERT INTO board (num, id, name, subject, content, regist_day, hit, ip)
	VALUES(null, "admin", "관리자", "공지사항", "공지입니다", "2022/10/03(13:20:10)", 0, "localhost");

INSERT INTO board (num, id, name, subject, content, regist_day, hit, ip)
	VALUES(null, "admin", "관리자", "공지사항002", "공지입니다2222", "2022/10/05(14:20:10)", 1, "localhost");

INSERT INTO board (num, id, name, subject, content, regist_day, hit, ip)
	VALUES(null, "admin", "관리자", "공지사항003", "공지입니다3333", "2022/10/05(16:14:10)", 3, "localhost");

INSERT INTO board (num, id, name, subject, content, regist_day, hit, ip)
	VALUES(null, "admin", "관리자", "공지사항004", "공지입니다4444", "2022/10/06(16:14:10)", 0, "localhost");

INSERT INTO board (num, id, name, subject, content, regist_day, hit, ip)
	VALUES(null, "admin", "관리자", "공지사항005", "공지입니다5555", "2022/10/07(16:14:10)", 1, "localhost");

INSERT INTO board (num, id, name, subject, content, regist_day, hit, ip)
	VALUES(null, "admin", "관리자", "공지사항006", "공지입니다6666", "2022/10/08(16:14:10)", 5, "localhost");

SELECT * FROM board ORDER BY num DESC;

UPDATE board set name = '관리자', subject = 'test111', content = 'test11111111' WHERE num = '6';