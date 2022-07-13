<%@ page contentType="text/html; charset=UTF-8" %>
<%
	request.setCharacterEncoding("UTF-8");

	String[] menu = {"김치찌개", "된장찌개", "순두부찌개", "짜장면", "짬뽕", "탕수육", "연어초밥", "광어회",
										"매운탕", "아메리카노", "카페모카", "에스프레소", "유자차", "자몽차", "녹차", "사과주스", "딸기주스", "키위주스"};
	int total_price = 0;
	
	String pay = request.getParameter("지불방법");
	String name = request.getParameter("이름");
	String mobile = request.getParameter("전화번호");
	String addr = request.getParameter("배달주소");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>주문표</title>
</head>
<body>
	
		<h3 style="text-align: center">주문표</h3>
		<div style="justify-content: center; display: flex; margin-bottom: 20px">
			<table>
				<%
					for (int i=0; i < menu.length; i++){
						String menu_name = request.getParameter(menu[i]);
						String menu_price = menu_name + "가격";
						String menu_unit = menu_name + "갯수";
						if(menu_name != null){
							int price = Integer.parseInt(request.getParameter(menu_price));
							int unit = Integer.parseInt(request.getParameter(menu_unit));
							if(unit != 0){
				%>
				<tr>
					<td style="width: 100px"><%= menu_name %></td>
					<td style="text-align: right;">
						<%= price %> X <%= unit %> =
					</td>
					<td style="text-align: right;"><%= price*unit %> 원</td>
				</tr>
				<%
								total_price += price*unit;
							}
						}
					}
				%>
				<tr>
					<td colspan="2" style="text-align: right; font-size: 1.2rem; font-weight: bold;">합계: </td>
					<td style="text-align: right; font-size: 1.2rem; font-weight: bold;"> <%= total_price %> 원</td>
				</tr>
			</table>
			
		</div>
		
		<div style="justify-content: center; display: flex; margin-bottom: 20px; font-size: 1.1rem">
			<table>
				<tr>
					<td style="width: 100px">지불방법: </td>
					<td><%= pay %></td>
				</tr>
				<tr>
					<td style="width: 100px">이름: </td>
					<td><%= name %></td>
				</tr>
				<tr>
					<td style="width: 100px">전화번호: </td>
					<td><%= mobile %></td>
				</tr>
				<tr>
					<td style="width: 100px">배달주소: </td>
					<td><%= addr %></td>
				</tr>
			</table>
		</div>
</body>
</html>