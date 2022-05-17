<%@ page contentType="text/html; charset=utf-8" %>
<html>
	<head>
		<title>Action Tag</title>
	</head>
	<body>
	<h3>이 파일은 first.jsp 입니다.</h3>
	<jsp:include page="second.jsp" flush="false" />
	<p>First Java Server Page </p>
	</body>
</html>