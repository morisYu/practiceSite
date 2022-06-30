create database basicjsp;

use basicjsp;


-- 회원 테이블
create table member(
id varchar(50) not null primary key,
passwd varchar(16) not null,
name varchar(10) not null,
reg_date datetime not null
);

insert into member(id,passwd,name,reg_date)
values('kingdora@dragon.com','1234','김길동',now());

insert into member(id,passwd,name,reg_date)
values('hongkd@aaa.com','1111','홍길동',now());

select * from member;


-- 게시판 테이블
create table board(
	num int not null primary key auto_increment, -- 글번호
    writer varchar(10) not null, -- 글쓴이
    email varchar(30), -- 이메일
    subject varchar(50) not null, -- 글제목
    passwd varchar(12) not null, -- 패스워드
    reg_date datetime not null, -- 글쓴 날짜
    readcount int default 0, -- 글 조회수
    ref int not null, -- 글 그룹번호
    re_step smallint not null, -- 제목과 답변글의 순서
    re_level smallint not null, -- 글의 레벨
    content text not null, -- 글 내용
    ip varchar(20) not null -- 글쓴이의 ip 주소
);