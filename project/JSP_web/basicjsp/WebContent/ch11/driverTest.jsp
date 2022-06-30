<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<h2>JDBC드라이버 테스트</h2>

<%
  Connection conn=null;

  try{
	 String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp";
     String dbId="root";
     String dbPass="1234";
	
	 Class.forName("com.mysql.jdbc.Driver");
	 conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
	 out.println("데이터베이스 연결 성공!!!.");
  }catch(Exception e){ 
	 e.printStackTrace();
  }
%>