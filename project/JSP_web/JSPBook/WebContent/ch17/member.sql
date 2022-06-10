DROP DATABASE IF EXISTS jspbook;
CREATE DATABASE jspbook;
USE jspbook;

DROP TABLE IF EXISTS member;
CREATE TABLE member(
	id VARCHAR(20) NOT NULL,
    passwd VARCHAR(20),
    name VARCHAR(30),
    PRIMARY KEY(id)
);

INSERT INTO member VALUES('1', '1234', '홍길순');
INSERT INTO member VALUES('2', '1235', '홍길동');

SELECT * FROM member;

UPDATE member SET name='2222' WHERE id = '11' AND passwd = '123';
