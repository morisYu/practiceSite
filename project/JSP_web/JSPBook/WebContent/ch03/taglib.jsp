<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- 이 사이트에서 jstl-1.2.jar 파일을 lib 폴더에 넣기  https://repo1.maven.org/maven2/javax/servlet/jstl/1.2/ --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
	<title>Directive Tag</title>
</head>
<body>
	<h1>CHAP3. 디렉티브 태그: 한글 출력 및 페이지 모듈화하기</h1>
	<h2>04. taglib 디렉티브 태그의 기능과 사용법</h2>
	<h3>include 디렉티브 태그로 외부 파일의 내용 포함하기</h3>
	<br><br>

	<c:forEach var="k" begin="1" end="10" step="1">
		<c:out value="${k}" />
	</c:forEach>
</body>
</html>