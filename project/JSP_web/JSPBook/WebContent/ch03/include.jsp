<html>
<head>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<title>Directive Tag</title>
</head>
<body>
	<h1>CHAP3. 디렉티브 태그: 한글 출력 및 페이지 모듈화하기</h1>
	<h2>03. include 디렉티브 태그의 기능과 사용법</h2>
	<h3>include 디렉티브 태그로 외부 파일의 내용 포함하기</h3>
	<br><br>
	
	<%-- 헤더 영역을 작성한 파일을 포함 --%>
	<%@ include file="include_header.jsp" %>
	<h3>----- 현재 페이지 영역 ------</h3>
	<h3>방문해 주셔서 감사합니다.</h3>
	<%@ include file="include_footer.jsp" %>

</body>
</html>