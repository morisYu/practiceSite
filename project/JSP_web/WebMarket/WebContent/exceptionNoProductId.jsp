<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>상품 아이디 오류</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" 
integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" 
crossorigin="anonymous">
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="bg-success p-2 text-dark bg-opacity-10">
		<div class="container">
			<h2 class="alert alert-danger">해당 상품이 존재하지 않습니다.</h2>
		</div>
	</div>
	<div class="container">
		<p> <%= request.getRequestURL() %>?<%= request.getQueryString() %>
		<p> <a href="products.jsp" class="btn btn-secondary">상품 등록 &raquo;</a>
	</div>
</body>
</html>