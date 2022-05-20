<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.io.*, java.util.*"%>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>요청 파라미터 이름</th>
			<th>요청 파라미터 값</th>
		</tr>
		<%
			request.setCharacterEncoding("utf-8");
		
			Enumeration paraNames = request.getParameterNames();
			while(paraNames.hasMoreElements()){
				String name = (String) paraNames.nextElement();
				out.println("<tr><td>" + name + "</td>\n");
				String paramValue = request.getParameter(name);
				out.println("<td>" + paramValue + "</td><tr>\n");
			}
		%>
	</table>
</body>
</html>