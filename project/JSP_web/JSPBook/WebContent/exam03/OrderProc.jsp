<%@ page contentType="text/html; charset=UTF-8" %>
<%
	request.setCharacterEncoding("UTF-8");
	
	String kfood_menu = request.getParameter("한식메뉴");
	String kfood_name = kfood_menu + "가격";
	int kfood_price = 0;
	int kfood_pieces = 0;
	if(kfood_menu != null){
		kfood_price = Integer.parseInt(request.getParameter(kfood_name));
		kfood_pieces = Integer.parseInt(request.getParameter("한식갯수"));
	}
	
	String efood_menu = request.getParameter("양식메뉴");
	String efood_name = efood_menu + "가격";
	int efood_price = 0;
	int efood_pieces = 0;
	if(efood_menu != null){
		efood_price = Integer.parseInt(request.getParameter(efood_name));
		efood_pieces = Integer.parseInt(request.getParameter("양식갯수"));
	}
	
	String cfood_menu = request.getParameter("중식메뉴");
	String cfood_name = cfood_menu + "가격";
	int cfood_price = 0;
	int cfood_pieces = 0;
	if(cfood_menu != null){
		cfood_price = Integer.parseInt(request.getParameter(cfood_name));
		cfood_pieces = Integer.parseInt(request.getParameter("중식갯수"));
	}
	
	String coffee_menu = request.getParameter("커피메뉴");
	String coffee_name = coffee_menu + "가격";
	int coffee_price = 0;
	int coffee_pieces = 0;
	if(coffee_menu != null){
		coffee_price = Integer.parseInt(request.getParameter(coffee_name));
		coffee_pieces = Integer.parseInt(request.getParameter("커피갯수"));
	}
	
	String tea_menu = request.getParameter("차메뉴");
	String tea_name = tea_menu + "가격";
	int tea_price = 0;
	int tea_pieces = 0;
	if(tea_menu != null){
		tea_price = Integer.parseInt(request.getParameter(tea_name));
		tea_pieces = Integer.parseInt(request.getParameter("차갯수"));
	}
	
	String juice_menu = request.getParameter("주스메뉴");
	String juice_name = juice_menu + "가격";
	int juice_price = 0;
	int juice_pieces = 0;
	if(juice_menu != null){
		juice_price = Integer.parseInt(request.getParameter(juice_name));
		juice_pieces = Integer.parseInt(request.getParameter("주스갯수"));
	}
	
	int total_price = kfood_price*kfood_pieces + efood_price*efood_pieces + cfood_price*cfood_pieces
									+ coffee_price*coffee_pieces + tea_price*tea_pieces + juice_price*juice_pieces;
	
	String addr = request.getParameter("배송주소");
	String mobile = request.getParameter("연락처");
	String pay = request.getParameter("지불방법");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>주문표</title>
</head>
<body>
	
		<h3 style="text-align: center">주문표</h3>
		<div style="justify-content: center; display: flex">
			<div style="display: inline-block; margin-right: 5px;">
				<%
					if(kfood_menu != null){
						out.println(kfood_menu + "<br>");
					}
					if(efood_menu != null){
						out.println(efood_menu + "<br>");
					}
					if(cfood_menu != null){
						out.println(cfood_menu + "<br>");
					}
					if(coffee_menu != null){
						out.println(coffee_menu + "<br>");
					}
					if(tea_menu != null){
						out.println(tea_menu + "<br>");
					}
					if(juice_menu != null){
						out.println(juice_menu + "<br>");
					}
				%>
			</div>
			<div style="display: inline-block; text-align: right">
				<%
					if(kfood_menu != null){
						out.println(kfood_price + " x " + kfood_pieces + " = " + kfood_price*kfood_pieces + " 원<br>");
					}
					if(efood_menu != null){
						out.println(efood_price + " x " + efood_pieces + " = " + efood_price*efood_pieces + " 원<br>");
					}
					if(cfood_menu != null){
						out.println(cfood_price + " x " + cfood_pieces + " = " + cfood_price*cfood_pieces + " 원<br>");
					}
					if(coffee_menu != null){
						out.println(coffee_price + " x " + coffee_pieces + " = " + coffee_price*coffee_pieces + " 원<br>");
					}
					if(tea_menu != null){
						out.println(tea_price + " x " + tea_pieces + " = " + tea_price*tea_pieces + " 원<br>");
					}
					if(juice_menu != null){
						out.println(juice_price + " x " + juice_pieces + " = " + juice_price*juice_pieces + " 원<br>");
					}
				%>
			</div>
		</div>
		
		<div style="text-align: center;font-weight: bold; font-size: 1.2rem">
			<span>합계: </span><%= total_price %> 원
		</div>
		
		<div style="text-align: center; font-size: 1.2rem">
			<span>지불방법: </span><%= pay %><br>
			<span>배송주소: </span><%= addr %><br>
			<span>연락처: </span><%= mobile %>
		</div>
</body>
</html>