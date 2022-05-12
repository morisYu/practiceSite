<html>
<head>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<title>Scripting Tag</title>
</head>
<body>
	<h1>CHAP2. 스크립트 태그: 시작 페이지 만들기</h1>
	<h2>03. 스크립틀릿 태그의 기능과 사용법</h2>
	<h3>스크립틀릿 태그에 지역변수 선언</h3>
	<%
		int a = 2;
		int b = 3;
		int sum = a + b;
		out.println("2 + 3 = " + sum);
	%>
	
	<%= "<h3>스크립틀릿 태그에 0부터 10까지의 짝수 출력</h3>" %>
	<%
		for(int i = 0; i <= 10; i++){
			if(i%2 == 0){
				out.println(i + "<br>");
			}
		}
	%>
</body>
</html>