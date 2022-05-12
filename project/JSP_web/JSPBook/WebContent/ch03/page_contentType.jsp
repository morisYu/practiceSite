<html>
<head>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<title></title>
</head>
<body>
	<h1>CHAP3. 디렉티브 태그: 한글 출력 및 페이지 모듈화하기</h1>
	<h2>02. page 디렉티브 태그의 기능과 사용법</h2>
	<h3>page 디렉티브 태그에 콘텐츠 유형을 마이크로소프트 워드 문서로 설정</h3>
	<p> contentType 을 "application/msword" 로 설정하면 파일을 워드 문서로 다운로드 됨 </p>
	<br>
	
	<h3>page 디렉티브 태그에 콘텐츠 유형을 xml 문서로 한글 출력 설정</h3>
	<p> contentType 을 "text/xml" 로 설정하고 charset 을 "utf-8" 로 설정하면 됨 </p> 
	<br>
	
	<h3>import 속성</h3>
	<%@ page import="java.util.Date" %>
	<p> import 에서 "java.util.Date" 와 같이 사용할 자바 클래스를 설정</p>
	Today is <%= new Date() %>
	<br>
	
	<h3>buffer 속성</h3>
	<%@ page buffer="16kb" %>
	<p> buffer 에서 "16kb" 와 같이 버퍼 크기를 설정</p>
	<p> 페이지가 완료되거나 출력이 명확하지 않을 때에는 버퍼 용량이 되기 전에는 출력되지 않음</p>
	Today is <%= new Date() %>
	<br>
	
	<h3>info 속성</h3>
	<%@ page info="Date 클래스를 이용한 날짜 출력" %>
	<p>info 에서 "설명내용" 을 작성해서 JSP 페이지에 대한 설명을 설정</p>
	<p>주석과 같은 기능</p>
	Today is <%= new Date() %>
	<br>
	
	<h3>errorPage 속성</h3>
	<%@ page errorPage="./errorPage.jsp" %>
	<p>errorPage 에서 "생성한 오류페이지 파일명" 을 작성해서 JSP 페이지에 대한 설명을 설정</p>
	<p>에러가 발생한 경우 직접 작성한 오류페이지로 이동할 수 있음</p>
	
	<%
		String str = null;
		out.println(str.toString());
	%>
	<br>
</body>
</html>