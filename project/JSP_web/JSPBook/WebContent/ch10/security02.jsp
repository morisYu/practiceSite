<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Security</title>
</head>
<body>
	<%-- getParameter로 로그인 시 입력한 값을 볼 수 없음 --%>
	<%
		String name1 = request.getParameter("j_security_check");
		String name2 = request.getParameter("j_password");
		out.println(name1);
		out.println(name2);
	%>
	<p> 사용자명: <%= request.getRemoteUser() %>
	<p> 인증방법: <%= request.getAuthType() %>
	<p> 인증한 사용자명이 역할명 "role1" 에 속하는 사용자인가요?<%= request.isUserInRole("role1") %>
	<p> 인증한 사용자명이 역할명 "tomcat" 에 속하는 사용자인가요?<%= request.isUserInRole("tomcat") %>
</body>
</html>