<html>
<head>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<title>Directives Tag</title>
</head>
<body>
	<h1>헤더 페이지 영역입니다.</h1>
	<%!
		int pageCount = 0;
		void addCount(){
			pageCount++;
		}
	%>
	<%
		addCount();
	%>
	<p>이 사이트 방문은 <%= pageCount %> 번째 입니다.</p>
</body>
</html>