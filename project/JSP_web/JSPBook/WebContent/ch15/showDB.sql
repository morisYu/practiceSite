-- 데이터베이스 조회
show databases;

-- 테이블 생성
CREATE TABLE member(
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL,
	passwd VARCHAR(50) NOT NULL,
	PRIMARY KEY (id)
);

-- 테이블 조회
SHOW TABLES;
DESC member;

-- 기존 테이블에 열 추가
ALTER TABLE member ADD phone VARCHAR(100);

-- 기존 테이블의 열 삭제
ALTER TABLE member DROP COLUMN phone;

-- 기존 테이블의 열 이름 수정
ALTER TABLE member CHANGE COLUMN passwd password VARCHAR(60);

-- 테이블 이름 변경
RENAME TABLE member TO student;

-- 데이터 등록
INSERT INTO student VALUES('1', '홍길동', '1234');

-- 데이터 조회
SELECT * FROM student;

-- 데이터 수정
UPDATE student SET name='홍길순' WHERE id='1';

-- 데이터 삭제
DELETE FROM student WHERE id='1';