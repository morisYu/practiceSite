<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<sql:setDataSource var="dataSource"
	url="jdbc:mysql://localhost:3306/MarketBoardDB?useSSL=false&serverTimezone=Asia/Seoul"
	driver="com.mysql.cj.jdbc.Driver" user="root" password="1234" />

<sql:update dataSource="${ dataSource }" var="resultSet">
	DELETE FROM membership WHERE id = ?
	<sql:param value="<%= sessionId %>"/>
</sql:update>

<c:if test="${ resultSet>=1 }">
	<c:import url="logoutMember.jsp" />	
	<c:redirect url="resultMember.jsp?msg=5" />
</c:if>