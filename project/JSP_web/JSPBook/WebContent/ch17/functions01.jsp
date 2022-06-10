<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
<title>JSTL</title>
</head>
<body>
	<p>java 문자열 검색
	<p>Hello, Java Server Pages! => ${ fn:contains("Hello, Java Server Pages!", "java") }
	<p>Hello, Java Server Pages! => ${ fn:containsIgnoreCase("Hello, Java Server Pages!", "java") }
</body>
</html>