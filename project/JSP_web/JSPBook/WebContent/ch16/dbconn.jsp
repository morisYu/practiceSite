<%@ page import="java.sql.*" %>
<%
	Connection conn = null;

	// 데이터베이스 연결 시 useSSL 설정 안하면 쿼리문 실행마다 경고 뜸
	String url = "jdbc:mysql://localhost:3306/JSPBookDB?useSSL=false&serverTimezone=Asia/Seoul";
	String user = "root";
	String password = "1234";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url, user, password);
%>