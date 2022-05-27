<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<%@ page errorPage="exceptionNoProductId.jsp" %>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" 
integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" 
crossorigin="anonymous">

<title>상품 상세 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		ProductRepository dao = ProductRepository.getInstance();
		Product product = dao.getProductById(id);
	%>
	
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<%-- 크롬에서 외부 저장소 이미지 접근 막아놔서 프로젝트 폴더에 있는 Server.xml 에서 경로 추가해야함 --%>
				<img src="/fileupload/<%= product.getFilename() %>" style="height: 200px">
			</div>
			<div class="col-md-6">
				<h3><%= product.getPname() %></h3>
				<p><%= product.getDescription() %>
				<p><b>상품코드 : </b><span class="badge badge-danger">
				<%= product.getProductId() %></span>
				<p><b>제조사</b> : <%= product.getManufacturer() %>
				<p><b>분류</b> : <%= product.getCategory() %>
				<p><b>재고 수</b> : <%= product.getUnitsInStock() %>
				<h4><%= product.getUnitPrice() %></h4>
				<a href="#" class="btn btn-info">상품 주문 &raquo;</a>
				<a href="./products.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>