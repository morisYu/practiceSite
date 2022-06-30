<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>메뉴선택</title>
<style type="text/css">
	h3{
		margin: 10px;
		text-align: center;
	}
	h6{
		margin: 2px;
		padding-top: 2px;
		font-weight: bold;
		font-size: 1rem;
	}
	ul{
		padding: 2px 5px;
	}
	li{
		list-style: none;
	}
	table{
		border-spacing: 0;
	}
	tr{
		padding: 0;
	}
	td{
		padding: 2px;
		margin: 0;
		width: 350px;
	}
	.container{
		disply: flex;
		justify-content: center;
		text-align: center;
	}
	.menuName{
		display: inline-block;
		margin-left: 2px
	}
	.menuPrice{
		display: inline-block;
		text-align: right;
	}
	.menuPieces{
		display: inline-block;
	}
</style>
</head>
<body>
	<h3>메뉴판</h3>
	<form action="./OrderProc.jsp" method="post">
		<table>
			<tr>
				<!-- 한식 메뉴 -->
				<td style="border: 1px solid;">
					<h6>* 한식</h6>
					<div class="menuName">
						<ul>
							<li>
								<input type="radio" name="한식메뉴" value="김치찌개">&nbsp;&nbsp;김치찌개
								<input type="hidden" name="김치찌개가격" value="8000">
							</li>
							<li>
								<input type="radio" name="한식메뉴" value="된장찌개">&nbsp;&nbsp;된장찌개
								<input type="hidden" name="된장찌개가격" value="8000">
							</li>
							<li>
								<input type="radio" name="한식메뉴" value="순두부찌개">&nbsp;&nbsp;순두부찌개
								<input type="hidden" name="순두부찌개가격" value="9000">
							</li>
							<li>
								<input type="radio" name="한식메뉴" value="부대찌개">&nbsp;&nbsp;부대찌개
								<input type="hidden" name="부대찌개가격" value="15000">
							</li>
							<li>
								<input type="radio" name="한식메뉴" value="닭볶음탕">&nbsp;&nbsp;닭볶음탕
								<input type="hidden" name="닭볶음탕가격" value="22000">
							</li>
						</ul>
					</div>
					<div class="menuPrice">
						<ul>
							<li>&nbsp;&nbsp;8,000</li>
							<li>&nbsp;&nbsp;8,000</li>
							<li>&nbsp;&nbsp;9,000</li>
							<li>&nbsp;&nbsp;15,000</li>
							<li>&nbsp;&nbsp;22,000</li>
						</ul>
					</div>
					<div class="menuPieces">
						<ul>
							<li><input type="number" name="한식갯수" min="1" max="5" value="1"></li>
						</ul>
					</div>
				</td>
				
				<!-- 양식 메뉴 -->
				<td style="border: 1px solid;">
					<h6>* 양식</h6>
					<div class="menuName">
						<ul>
							<li>
								<input type="radio" name="양식메뉴" value="등심돈까스">&nbsp;&nbsp;등심돈까스
								<input type="hidden" name="등심돈까스가격" value="8000">
							</li>
							<li>
								<input type="radio" name="양식메뉴" value="리코타그린샐러드">&nbsp;&nbsp;리코타그린샐러드
								<input type="hidden" name="리코타그린샐러드가격" value="12000">
							</li>
							<li>
								<input type="radio" name="양식메뉴" value="베이컨크림리조또">&nbsp;&nbsp;베이컨크림리조또
								<input type="hidden" name="베이컨크림리조또가격" value="16000">
							</li>
							<li>
								<input type="radio" name="양식메뉴" value="게살치즈피자">&nbsp;&nbsp;게살치즈피자
								<input type="hidden" name="게살치즈피자가격" value="17000">
							</li>
							<li>
								<input type="radio" name="양식메뉴" value="해산물크림파스타">&nbsp;&nbsp;해산물크림파스타
								<input type="hidden" name="해산물크림파스타가격" value="18000">
							</li>
						</ul>
					</div>
					<div class="menuPrice">
						<ul>
							<li>&nbsp;&nbsp;8,000</li>
							<li>&nbsp;&nbsp;12,000</li>
							<li>&nbsp;&nbsp;16,000</li>
							<li>&nbsp;&nbsp;17,000</li>
							<li>&nbsp;&nbsp;18,000</li>
						</ul>
					</div>
					<div class="menuPieces">
						<ul>
							<li><input type="number" name="양식갯수" min="1" max="5" value="1"></li>
						</ul>
					</div>
				</td>
				
				<!-- 중식 메뉴 -->
				<td style="border: 1px solid; width:">
					<h6>* 중식</h6>
					<div class="menuName">
						<ul>
							<li>
								<input type="radio" name="중식메뉴" value="짜장면">&nbsp;&nbsp;짜장면
								<input type="hidden" name="짜장면가격" value="7000">
							</li>
							<li>
								<input type="radio" name="중식메뉴" value="짬뽕">&nbsp;&nbsp;짬뽕
								<input type="hidden" name="짬뽕가격" value="8000">
							</li>
							<li>
								<input type="radio" name="중식메뉴" value="탕수육">&nbsp;&nbsp;탕수육
								<input type="hidden" name="탕수육가격" value="10000">
							</li>
							<li>
								<input type="radio" name="중식메뉴" value="양장피">&nbsp;&nbsp;양장피
								<input type="hidden" name="양장피가격" value="18000">
							</li>
							<li>
								<input type="radio" name="중식메뉴" value="팔보채">&nbsp;&nbsp;팔보채
								<input type="hidden" name="팔보채가격" value="18000">
							</li>
						</ul>
					</div>
					<div class="menuPrice">
						<ul>
							<li>&nbsp;&nbsp;7,000</li>
							<li>&nbsp;&nbsp;8,000</li>
							<li>&nbsp;&nbsp;10,000</li>
							<li>&nbsp;&nbsp;18,000</li>
							<li>&nbsp;&nbsp;18,000</li>
						</ul>
					</div>
					<div class="menuPieces">
						<ul>
							<li><input type="number" name="중식갯수" min="1" max="5" value="1"></li>
						</ul>
					</div>
				</td>
			</tr>
			<tr>
				<!-- 커피 메뉴 -->
				<td style="border: 1px solid; width:">
					<h6>* 커피</h6>
					<div class="menuName">
						<ul>
							<li>
								<input type="radio" name="커피메뉴" value="아메리카노">&nbsp;&nbsp;아메리카노
								<input type="hidden" name="아메리카노가격" value="3000">
							</li>
							<li>
								<input type="radio" name="커피메뉴" value="에스프레소">&nbsp;&nbsp;에스프레소
								<input type="hidden" name="에스프레소가격" value="3000">
							</li>
							<li>
								<input type="radio" name="커피메뉴" value="카푸치노">&nbsp;&nbsp;카푸치노
								<input type="hidden" name="카푸치노가격" value="3500">
							</li>
							<li>
								<input type="radio" name="커피메뉴" value="카페라떼">&nbsp;&nbsp;카페라떼
								<input type="hidden" name="카페라떼가격" value="3800">
							</li>
							<li>
								<input type="radio" name="커피메뉴" value="카라멜마끼야또">&nbsp;&nbsp;카라멜마끼야또
								<input type="hidden" name="카라멜마끼야또가격" value="4000">
							</li>
						</ul>
					</div>
					<div class="menuPrice">
						<ul>
							<li>&nbsp;&nbsp;3,000</li>
							<li>&nbsp;&nbsp;3,000</li>
							<li>&nbsp;&nbsp;3,500</li>
							<li>&nbsp;&nbsp;3,800</li>
							<li>&nbsp;&nbsp;4,000</li>
						</ul>
					</div>
					<div class="menuPieces">
						<ul>
							<li><input type="number" name="커피갯수" min="1" max="5" value="1"></li>
						</ul>
					</div>
				</td>
				
				<!-- 차 메뉴 -->
				<td style="border: 1px solid;">
					<h6>* 차</h6>
					<div class="menuName">
						<ul>
							<li>
								<input type="radio" name="차메뉴" value="유자차">&nbsp;&nbsp;유자차
								<input type="hidden" name="유자차가격" value="3000">
							</li>
							<li>
								<input type="radio" name="차메뉴" value="레몬차">&nbsp;&nbsp;레몬차
								<input type="hidden" name="레몬차가격" value="3200">
							</li>
							<li>
								<input type="radio" name="차메뉴" value="자몽차">&nbsp;&nbsp;자몽차
								<input type="hidden" name="자몽차가격" value="3300">
							</li>
							<li>
								<input type="radio" name="차메뉴" value="허니차">&nbsp;&nbsp;허니차
								<input type="hidden" name="허니차가격" value="3400">
							</li>
							<li>
								<input type="radio" name="차메뉴" value="설록차">&nbsp;&nbsp;설록차
								<input type="hidden" name="설록차가격" value="4000">
							</li>
						</ul>
					</div>
					<div class="menuPrice">
						<ul>
							<li>&nbsp;&nbsp;3,000</li>
							<li>&nbsp;&nbsp;3,200</li>
							<li>&nbsp;&nbsp;3,300</li>
							<li>&nbsp;&nbsp;3,400</li>
							<li>&nbsp;&nbsp;4,000</li>
						</ul>
					</div>
					<div class="menuPieces">
						<ul>
							<li><input type="number" name="차갯수" min="1" max="5" value="1"></li>
						</ul>
					</div>
				</td>
				
				<!-- 주스 메뉴 -->
				<td style="border: 1px solid;">
					<h6>* 주스</h6>
					<div class="menuName">
						<ul>
							<li>
								<input type="radio" name="주스메뉴" value="사과주스">&nbsp;&nbsp;사과주스
								<input type="hidden" name="사과주스가격" value="3500">
							</li>
							<li>
								<input type="radio" name="주스메뉴" value="딸기주스">&nbsp;&nbsp;딸기주스
								<input type="hidden" name="딸기주스가격" value="3800">
							</li>
							<li>
								<input type="radio" name="주스메뉴" value="키위주스">&nbsp;&nbsp;키위주스
								<input type="hidden" name="키위주스가격" value="3900">
							</li>
							<li>
								<input type="radio" name="주스메뉴" value="수박주스">&nbsp;&nbsp;수박주스
								<input type="hidden" name="수박주스가격" value="4000">
							</li>
							<li>
								<input type="radio" name="주스메뉴" value="오곡주스">&nbsp;&nbsp;오곡주스
								<input type="hidden" name="오곡주스가격" value="5000">
							</li>
						</ul>
					</div>
					<div class="menuPrice">
						<ul>
							<li>&nbsp;&nbsp;3,500</li>
							<li>&nbsp;&nbsp;3,800</li>
							<li>&nbsp;&nbsp;3,900</li>
							<li>&nbsp;&nbsp;4,000</li>
							<li>&nbsp;&nbsp;5,000</li>
						</ul>
					</div>
					<div class="menuPieces">
						<ul>
							<li><input type="number" name="주스갯수" min="1" max="5" value="1"></li>
						</ul>
					</div>
				</td>
			</tr>
		</table>
		
		<h3>지불방법</h3>
		<div class="container">
			<select name="지불방법">
				<option value="현금">현금</option>
				<option value="카드">카드</option>
				<option value="상품권">상품권</option>
			</select>
		</div>
		
		<h3>배송정보</h3>
		<div class="container">
			<p>배송주소: <input type="text" name="배송주소"></p>
			<p>연락처: <input type="text" name="연락처"></p>
		</div>
		<div class="container">
			<input type="submit" value="주문하기">
			<input type="reset" value="취소하기">
		</div>
	</form>
</body>
</html>