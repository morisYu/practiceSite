<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>


<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	Date now = new Date();
	SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy/MM/dd(HH:mm:ss)");
	String regist_day = simpleDate.format(now);
%>

<sql:setDataSource var="dataSource"
	url="jdbc:mysql://localhost:3306/MarketBoardDB?useSSL=false&serverTimezone=Asia/Seoul"
	driver="com.mysql.cj.jdbc.Driver" user="root" password="1234" />

<sql:update dataSource="${ dataSource }" var="resultSet">
	UPDATE membership SET password = ?, name= ? WHERE id = ?;
	<sql:param value="<%= password %>" />
	<sql:param value="<%= name %>" />
	<sql:param value="<%= id %>" />
</sql:update>

<c:if test="${ resultSet >= 1 }">
	<c:redirect url="resultMember.jsp?msg=0" />
</c:if>