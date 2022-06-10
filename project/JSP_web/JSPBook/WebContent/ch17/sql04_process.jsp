<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html>
<head>
<title>JSTL</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
	%>
	<sql:setDataSource var="dataSource"
		url="jdbc:mysql://localhost:3306/jspbook"
		driver="com.mysql.jdbc.Driver" user="root" password="1111"/>
	
	<sql:update dataSource="${ dataSource }" var="resultSet">
		DELETE FROM member WHERE id = ? and passwd = ?
		<sql:param value="<%= id %>" />
		<sql:param><%= passwd %></sql:param>
	</sql:update>
	
	<c:import var="url" url="sql01.jsp" />
	${ url }
</body>
</html>