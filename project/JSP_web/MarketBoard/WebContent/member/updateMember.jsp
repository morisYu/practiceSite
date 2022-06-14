<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" 
integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" 
crossorigin="anonymous">

<%
	String sessionId = (String)session.getAttribute("sessionId");
%>
<sql:setDataSource var="dataSource"
	url="jdbc:mysql://localhost:3306/MarketBoardDB?useSSL=false&serverTimezone=Asia/Seoul"
	driver="com.mysql.cj.jdbc.Driver" user="root" password="1234" />

<sql:query dataSource="${ dataSource }" var="resultSet">
	SELECT * FROM membership WHERE id = ?
	<sql:param value="<%= sessionId %>" />
</sql:query>

<title>회원 수정</title>
</head>
<body onload="init()">
	<jsp:include page="/menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">회원 수정</h1>
		</div>
	</div>
	
	<c:forEach var="row" items="${ resultSet.rows }">
		
		<div class="container">
			<form name="newMember" method="post" action="processUpdateMember.jsp" 
				class="form-horizontal" onsubmit="return checkForm()">
				<div class="form-group row">
					<label class="col-sm-2">아이디</label>
					<div class="col-sm-3">
						<input type="text" name="id" class="form-control" placeholder="${ row.id }"
							value="<c:out value='${ row.id }'/>" readonly/>
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2">비밀번호</label>
					<div class="col-sm-3">
						<input type="password" name="password" class="form-control" 
							placeholder="${ row.password }" value="<c:out value='${ row.password }'/>">
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2">비밀번호 확인</label>
					<div class="col-sm-3">
						<input type="password" name="password_confirm" class="form-control"
							placeholder="password_confirm">
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2">성명</label>
					<div class="col-sm-3">
						<input type="text" name="name" class="form-control"
							placeholder="${ row.name }" value="<c:out value='${ row.name }'/>">
					</div>
				</div>
				
				<div class="form-group  row">
					<div class="col-sm-offset-2 col-sm-10 ">
						<input type="submit" class="btn btn-primary" value="회원수정 "> 
						<a href="deleteMember.jsp" class="btn btn-primary">회원탈퇴</a>
					</div>
				</div>
			</form>
		</div>		
	</c:forEach>
	
<script type="text/javascript">
	function checkForm(){
		var member = document.newMember;
		if(!member.id.value){
			alert("아이디를 입력하세요");
			member.id.focus();
			return false;
		}
		if(!member.password.value){
			alert("비밀번호를 입력하세요");
			member.password.focus();
			return false;
		}
		if(member.password.value != member.password_confirm.value){
			alert("비밀번호와 동일하게 입력하세요");
			member.password_confirm.focus();
			return false;
		}
	}
</script>
</body>
</html>