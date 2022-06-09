<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Database SQL</title>
</head>
<body>

	<!-- 자바 파일에서 데이터베이스 접속 시에는 Referenced Libraries 에만  -->
	<!-- mysql-connector-java-버전.jar 파일이 포함되면 되는데 -->
	<!-- 웹 서버에서 자바 코드 실행 시에는 .jar 파일이 WEB-INF 에 있는 lib 폴더에도 있어야 함 -->
	<%
		Connection conn = null;
		try{
			String url = "jdbc:mysql://localhost:3306/JSPBookDB";
			String user = "root";
			String password = "1234";
			
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
			out.println("데이터베이스 연결이 성공했습니다.");
		} catch(SQLException e){
			out.println("데이터베이스 연결이 실패했습니다.<br>");
			out.println("SQLException: " + e.getMessage());
		} finally{
			if(conn != null){
				conn.close();
			}
		}
	%>
</body>
</html>