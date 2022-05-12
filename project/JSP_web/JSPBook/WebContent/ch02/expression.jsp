<html>
<head>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<title>Scripting Tag</title>
</head>
<body>
	<h1>CHAP2. 스크립트 태그: 시작 페이지 만들기</h1>
	<h2>04. 표현문 태그의 기능과 사용법</h2>
	<h3>표현문 태그로 현재 날짜 출력하기</h3>
	
	<p> Today's date: <%= new java.util.Date() %> <p>
	
	<h3>표현문 태그로 연산 결과 출력하기</h3>
	
	<%
		int a = 10;
		int b = 20;
		int c = 30;
	%>
	
	<%= a+b+c %>
</body>
</html>