<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");
%>

<sql:setDataSource var="dataSource"
	url="jdbc:mysql://localhost:3306/MarketBoardDB?useSSL=false&serverTimezone=Asia/Seoul"
	driver="com.mysql.cj.jdbc.Driver" user="root" password="1234" />

<sql:query dataSource="${dataSource}" var="resultSet">
 	SELECT * FROM membership WHERE id = ? AND password = ?
 	<sql:param value="${ param.id }" />
 	<sql:param value="${ param.password }" />
</sql:query>

<c:forEach var="row" items="${resultSet.rows}" varStatus="row12">
	<%
		session.setAttribute("sessionId", id);
	%>
	<c:redirect url="resultMember.jsp?msg=2" />
</c:forEach>
<c:redirect url="loginMember.jsp?error=1" />