<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<html>
<head>
	<!-- 부트스트랩 css -->
	<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
	<title>Welcome</title>
</head>
<body>
	<%-- 제일 위 메뉴 --%>
	<%@ include file="menu.jsp" %>
	<%!
		String greeting = "웹 쇼핑몰에 오신것을 환영합니다.";
		String tagline = "Welcome to Web Market!";
	%>
	
	<%-- 메인 --%>
	<div class="jumbotron bg-light">
		<div class="container">
			<h1 class="display-3">
				<%= greeting %>
			</h1>
		</div>
	</div>
	
	<div class="container bg-light">
		<div class="text-center">
			<h3>
				<%= tagline %>
			</h3>
			<%
				Date day = new java.util.Date();
				String am_pm;
				int hour = day.getHours();
				int minute = day.getMinutes();
				int second = day.getSeconds();
				if(hour / 12 == 0){
					am_pm = "AM";
				}else{
					am_pm = "PM";
					hour = hour - 12;
				}
				String CT = hour + ":" + minute + ":" + second + " " + am_pm;
				out.print("현재 접속 시간: " + CT);
			%>
		</div>
	</div>
	
	<%-- 제일 아래 푸터 --%>
	<%@ include file="footer.jsp" %>
</body>
</html>