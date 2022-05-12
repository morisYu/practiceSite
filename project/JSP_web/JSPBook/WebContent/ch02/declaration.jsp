<html>
<head>
	<!-- 한글 깨지는 경우 아래 코드 추가하면 됨 -->
 	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<title>Scripting Tag</title>
</head>
<body>
	<h1>CHAP2. 스크립트 태그: 시작 페이지 만들기</h1>
	<h2>02. 선언문 태그의 기능과 사용법</h2>
	
	<h3>전역 변수 사용하기</h3>
	<%! int data = 50; %>
	<%
		out.println("Value of the variable is: " + data);
	%>
	
	<h3>전역 메소드 사용하기</h3>
	<%!
		public int sum(int a, int b){
			return a + b;
		}
	
		String makeItLower(String data){
			return data.toLowerCase();
		}
	%>
	<%
		out.println("method1: 2 + 3 = " + sum(2,3) + "<br>");
		out.println(makeItLower(" | method2: HEllo World"));
	%>
</body>
</html>









