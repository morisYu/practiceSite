<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<title>Exception</title>
</head>
<head>
	<p> 잘못된 데이터가 입력되었습니다.
	<p> <%= "숫자 1 : " + request.getParameter("num1") %>
	<p> <%= "숫자 2 : " + request.getParameter("num2") %>
</head>
</html>