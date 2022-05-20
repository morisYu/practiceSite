<%@ page contentType="text/html; charset=utf-8" %>
<html>
<header>
<title>Implicit Objects</title>
</header>
<body>
	<p> 이 페이지는 5 초마다 새로고침 됩니다.
	<%
		response.setIntHeader("Refresh", 5);
	%>

	<p> <%= new java.util.Date() %>
</body>
</html>