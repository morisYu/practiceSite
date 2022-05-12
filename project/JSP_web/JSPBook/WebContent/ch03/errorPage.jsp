<%@ page contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>

<html>
<head>
	<title>test page</title>
</head>
<body>
	<h1>에러 페이지</h1>
	<h3>exception 내장 객체 변수</h3>
	
	<%
		exception.printStackTrace(new java.io.PrintWriter(out));
	%>
</body>
</html>