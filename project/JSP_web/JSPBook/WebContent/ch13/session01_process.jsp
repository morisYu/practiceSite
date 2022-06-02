<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<title>Session</title>
</head>
<body>
	<%
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");
		
		if(user_id.equals("admin") && user_pw.equals("1234")){
			session.setAttribute("userID", user_id);
			session.setAttribute("userPW", user_pw);
			out.println("세션 설정이 성공했습니다<br>");
			out.println(user_id + "님 환영합니다.<br>");
	%>
	<!-- 세션이 생성되면서 세션ID가 생성됨 -->
	<% out.println("생성된 세션 ID : " + session.getId()); %>
	<%
		}else{
			out.println("세션 설정이 실패했습니다.");
		}
	%>

</body>
</html>