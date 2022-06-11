/* 쇼핑몰 데이터베이스 */

-- 데이터베이스 생성
DROP DATABASE IF EXISTS WebMarketDB;
CREATE DATABASE WebMarketDB;
USE WebMarketDB;

-- 데이터베이스의 인코딩 설정
-- 기존 utf8(utf8mb3, 문자 하나에 3 byte 사용)은 이모지를 지원하지 않기 때문에 utf8mb4(문자 하나에 4 byte 사용)로 설정
ALTER DATABASE WebMarketDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- A character set is an encoding system to let computers know how to recognize Character,
-- including letters, numbers, punctuation marks, and whitespace.(mozilla.org 참고)
-- MySQL 에서 지원하는 CHARACTER SET 목록 확인
SHOW CHAR SET;

-- COLLATE 는 문자셋을 어떻게 정렬할지 결정하는 알고리즘
-- MySQL 에서 제공하는 COLLATE 목록 확인
SHOW COLLATION;

-- 제품 테이블 생성(생성하면서 테이블의 문자셋 설정)
DROP TABLE IF EXISTS product;
CREATE TABLE product(
	p_id VARCHAR(10) NOT NULL,
    p_name VARCHAR(20),
    p_unitPrice INTEGER,
    p_description TEXT,
    p_category VARCHAR(20),
    p_manufacturer VARCHAR(20),
    p_unitsInStock LONG,
    p_condition VARCHAR(20),
    p_fileName VARCHAR(20),
    PRIMARY KEY(p_id)
) DEFAULT CHARSET=utf8mb4;

-- 테이블의 전체 컬럼에 대한 정보 확인(문자셋 확인 가능)
SHOW FULL COLUMNS FROM product;

-- 테이블 전체 내용 조회
SELECT * FROM product;

-- 샘플 상품 등록
INSERT INTO product VALUES
	('P1234', 'iPhone 6s', 800000, '1334X750 Renina HD display, 8-megapixel iSight Camera', 
	'Smart Phone', 'Apple', 1000, 'new', 'P1234.png');
INSERT INTO product VALUES
	('P1235', 'LG PC gram', 1500000, '3.3-inch, IPS LED display, 5rd Generation Intel Core processors', 
	'Notebook', 'LG', 1000, 'new', 'P1235.png');
INSERT INTO product VALUES
	('P1236', 'Galaxy Tbl S', 900000, '3.3-inch, 212.8*125.6*6.6mm, Super AMOLED display, Octa-Core processor', 
	'Tablet', 'Samsung', 1000, 'new', 'P1236.png');

-- 회원 테이블 생성
DROP TABLE IF EXISTS member;
CREATE TABLE member(
	id VARCHAR(10) NOT NULL,
    password VARCHAR(10) NOT NULL,
    name VARCHAR(10) NOT NULL,
    gender VARCHAR(4),
    birth VARCHAR(10),
    mail VARCHAR(30),
    phone VARCHAR(20),
    address VARCHAR(90),
    regist_day VARCHAR(50),
    PRIMARY KEY(id)
)DEFAULT CHARSET=UTF8MB4;

DESC member;

INSERT INTO member VALUES('user02', '2222', '박모씨', '여', '2000/10/11', 'user02@daum.net', '010-2222-5678', 'there is park', now());

SELECT * FROM member;