<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TestOrder</title>
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
	.subtbl{
		width: 400px;
	}
	.subtbl td{
		text-align: left;
	}
	.wrapper{
		display: flex;
		justify-content: center;
	}
</style>
</head>
<body>
	
	<h3>메뉴판</h3>
		<form action="./TestOrderResult.jsp" method="post">
			<div class="wrapper">
			<table>
				<tr>
					<!-- 한식 메뉴 -->
					<td style="border: 1px solid;">
						<h6>* 한식</h6>
						<table class="subtbl">
							<!-- 김치찌개 -->
							<tr>
								<td style="text-align: center; width: 10%">
									<img width="50px" height="50px" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA2MTZfMjAw%2FMDAxNjU1MzU2NjkxNTEx.
									9hW4pWfHbpkAwu7XdJ7evmvvhOjLTJU5U5HCK6qDtlEg.QjG6vsbC0QlfRmyvhoqyW7OSVzlpgptAGJa5dZ7p1vog.JPEG.ilsanchung%2F20220616%25A3%25DF124157.jpg&type=a340">
								</td>
								<td style="width: 50%">
									<input type="checkbox" name="김치찌개" value="김치찌개">&nbsp;&nbsp;김치찌개
									<input type="hidden" name="김치찌개가격" value="8000">
								</td>
								<td>
									<span>&nbsp;&nbsp;8,000</span>
								</td>
								<td>
									<input type="number" name="김치찌개갯수" min="0" max="100" value="0">
								</td>
							</tr>
							
							<!-- 된장찌개 -->
							<tr>
								<td style="text-align: center; width: 10%">
									<img width="50px" height="50px" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA2MTVfMTI2%2FMDAxNjU1MjcyMTEyODE0.
									iddgIwbpbjRW1cXx9s0ubc07vsSBVAFMbEsoQ3m3PwMg.QmbeTkn7IrcXLqXsP9d4SMjWgNXJldXGWF2JcVTqjx8g.JPEG.p9i9n7e%2FDSC04658.JPG&type=a340">
								</td>
								<td style="width: 50%">
									<input type="checkbox" name="된장찌개" value="된장찌개">&nbsp;&nbsp;된장찌개
									<input type="hidden" name="된장찌개가격" value="7000">
								</td>
								<td>
									<span>&nbsp;&nbsp;7,000</span>
								</td>
								<td>
									<input type="number" name="된장찌개갯수" min="0" max="100" value="0">
								</td>
							</tr>
							
							<!-- 순두부찌개 -->
							<tr>
								<td style="text-align: center; width: 10%">
									<img width="50px" height="50px" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA2MjFfNzAg%2FMDAxNjU1Nzg3MDE5MjEw.
									AXGUZupbkqUcJZ4hxYYnNkJ7Z-7DfN0yCrICRl2QGlIg.gqpXWTd3f4pZdg0LvROi2H-FrJzFy4Jx20jjiavXr7wg.JPEG.srbenedicta%2F20220620%25A3%25DF114544.jpg&type=a340">
								</td>
								<td style="width: 50%">
									<input type="checkbox" name="순두부찌개" value="순두부찌개">&nbsp;&nbsp;순두부찌개
									<input type="hidden" name="순두부찌개가격" value="10000">
								</td>
								<td>
									<span>&nbsp;&nbsp;10,000</span>
								</td>
								<td>
									<input type="number" name="순두부찌개갯수" min="0" max="100" value="0">
								</td>
							</tr>
						</table>
					</td>
					
					<!-- 중식 메뉴 -->
					<td style="border: 1px solid;">
						<h6>* 중식</h6>
						<table class="subtbl">
							<!-- 짜장면 -->
							<tr>
								<td style="text-align: center; width: 10%">
									<img width="50px" height="50px" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA0MjlfOTgg%2FMDAxNjUxMjE2MDc3Mjk2.
									HYOYELzKA4A_qyl0Ot4ymXHUYuU3nMItKvhaIw5zOBUg.4YjEFRs4x3SYkLbB4c1ztRqFBn4wrY0oFyuLyt7jyj0g.JPEG.pain0clinic%2FKakaoTalk_20220429_160137481_03.jpg&type=a340">
								</td>
								<td style="width: 50%">
									<input type="checkbox" name="짜장면" value="짜장면">&nbsp;&nbsp;짜장면
									<input type="hidden" name="짜장면가격" value="7000">
								</td>
								<td>
									<span>&nbsp;&nbsp;7,000</span>
								</td>
								<td>
									<input type="number" name="짜장면갯수" min="0" max="100" value="0">
								</td>
							</tr>
							
							<!-- 짬뽕 -->
							<tr>
								<td style="text-align: center; width: 10%">
									<img width="50px" height="50px" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA2MjJfMjc0%2FMDAxNjU1ODYwMzYxODMy.
									PLohbZnsrQzBZOZ8fcue1A-G5ys8_wPSt6YXerQHpfcg.fJ234RU_CC5D2tmeVgfVSa0YfCha73inu5sEQa7oHuUg.JPEG.th4524%2F1655860354493.jpg&type=a340">
								</td>
								<td style="width: 50%">
									<input type="checkbox" name="짬뽕" value="짬뽕">&nbsp;&nbsp;짬뽕
									<input type="hidden" name="짬뽕가격" value="8000">
								</td>
								<td>
									<span>&nbsp;&nbsp;8,000</span>
								</td>
								<td>
									<input type="number" name="짬뽕갯수" min="0" max="100" value="0">
								</td>
							</tr>
							
							<!-- 탕수육 -->
							<tr>
								<td style="text-align: center; width: 10%">
									<img width="50px" height="50px" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA2MTVfMTUx%2FMDAxNjU1Mjk1NjQ3MzE0.
									vVVCnocAz-eiUmQHTt7FgyfM_7hdYD4f-ZZO6Szmsn4g.QsZOHfophBO1Ga9hQyrGF6dtlsfz5-Vu3f1Qa5cVv1wg.JPEG.joa417%2FIMG_8786.JPG&type=a340">
								</td>
								<td style="width: 50%">
									<input type="checkbox" name="탕수육" value="탕수육">&nbsp;&nbsp;탕수육
									<input type="hidden" name="탕수육가격" value="10000">
								</td>
								<td>
									<span>&nbsp;&nbsp;10,000</span>
								</td>
								<td>
									<input type="number" name="탕수육갯수" min="0" max="100" value="0">
								</td>
							</tr>
						</table>
					</td>
					
					<!-- 일식 메뉴 -->
					<td style="border: 1px solid;">
						<h6>* 일식</h6>
						<table class="subtbl">
							<!-- 연어초밥 -->
							<tr>
								<td style="text-align: center; width: 10%">
									<img width="50px" height="50px" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA2MjdfMTE1%2FMDAxNjU2MzMyMzE3NTI3.
									mncfTrnVfc96jrkwoMRTuB21brQav6IIGIzuaxzPEBsg.iV38ZnUoEBUkUQtQPE4SRioYOalUqOqJaXZEt7PKa7Eg.JPEG.greenever7%2FIMG_4133.JPG&type=a340">
								</td>
								<td style="width: 50%">
									<input type="checkbox" name="연어초밥" value="연어초밥">&nbsp;&nbsp;연어초밥
									<input type="hidden" name="연어초밥가격" value="9000">
								</td>
								<td>
									<span>&nbsp;&nbsp;9,000</span>
								</td>
								<td>
									<input type="number" name="연어초밥갯수" min="0" max="100" value="0">
								</td>
							</tr>
							
							<!-- 광어회 -->
							<tr>
								<td style="text-align: center; width: 10%">
									<img width="50px" height="50px" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTEyMTZfMjUx%2FMDAxNjM5NjYxODUwMTk5.
									7Q-3cO4YIDyfNZ9uQb2Ggyo4b9Z15OzQLPqDSpW2LGgg.6MyqZk10MfUyWxtgIbPsIwyrbX5MypyWhDo6442dnqQg.JPEG.mairainm12%2F20211205%25A3%25DF200400.jpg&type=a340">
								</td>
								<td style="width: 50%">
									<input type="checkbox" name="광어회" value="광어회">&nbsp;&nbsp;광어회
									<input type="hidden" name="광어회가격" value="18000">
								</td>
								<td>
									<span>&nbsp;&nbsp;18,000</span>
								</td>
								<td>
									<input type="number" name="광어회갯수" min="0" max="100" value="0">
								</td>
							</tr>
							
							<!-- 매운탕 -->
							<tr>
								<td style="text-align: center; width: 10%">
									<img width="50px" height="50px" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA0MjFfMTA5%2FMDAxNjUwNTIzMzU0NDA4.
									PySKfjq3DosbDDx93Jpsb632lAA1BW39_9D3BPZWT2wg.885cY9wxeLoYF8_pauATHrKV9IbD8Q4Sg7WZkztHeDEg.JPEG.bonanzajme%2FIMG_6129.JPG&type=a340">
								</td>
								<td style="width: 50%">
									<input type="checkbox" name="매운탕" value="매운탕">&nbsp;&nbsp;매운탕
									<input type="hidden" name="매운탕가격" value="15000">
								</td>
								<td>
									<span>&nbsp;&nbsp;15,000</span>
								</td>
								<td>
									<input type="number" name="매운탕갯수" min="0" max="100" value="0">
								</td>
							</tr>
						</table>
					</td>
				<tr>
				
					<!-- 커피 메뉴 -->
					<td style="border: 1px solid;">
						<h6>* 커피</h6>
						<table class="subtbl">
							<!-- 아메리카노 -->
							<tr>
								<td style="text-align: center; width: 10%">
									<img width="50px" height="50px" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA2MjlfMTc1%2FMDAxNjU2NDc4NzczOTA1.
									mK8GBrmdtSEwTkVlc3k8Sd_zvGzxwG1UdZ0eipB3APcg.RvUafAx2AF0FgBqDCRIcJEWNHh80hE0Fix_ye2EyvBwg.JPEG.smartsnsk%2F20220629_135756.jpg&type=a340">
								</td>
								<td style="width: 50%">
									<input type="checkbox" name="아메리카노" value="아메리카노">&nbsp;&nbsp;아메리카노
									<input type="hidden" name="아메리카노가격" value="4000">
								</td>
								<td>
									<span>&nbsp;&nbsp;4,000</span>
								</td>
								<td>
									<input type="number" name="아메리카노갯수" min="0" max="100" value="0">
								</td>
							</tr>
							
							<!-- 카페모카 -->
							<tr>
								<td style="text-align: center; width: 10%">
									<img width="50px" height="50px" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.
									net%2F20150129_59%2Flll121234_14225096227033Vzyi_JPEG%2F20150129_142948.jpg&type=l340_165">
								</td>
								<td style="width: 50%">
									<input type="checkbox" name="카페모카" value="카페모카">&nbsp;&nbsp;카페모카
									<input type="hidden" name="카페모카가격" value="5500">
								</td>
								<td>
									<span>&nbsp;&nbsp;5,500</span>
								</td>
								<td>
									<input type="number" name="카페모카갯수" min="0" max="100" value="0">
								</td>
							</tr>
							
							<!-- 에스프레소 -->
							<tr>
								<td style="text-align: center; width: 10%">
									<img width="50px" height="50px" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.
									net%2FMjAyMjA0MTRfMjE1%2FMDAxNjQ5OTQzNTA0NTY4.rbn3BRem14VtFfCxsWAOy4MDvwBJBRNkMRZcvpmZNJ4g.sLtFWPD5nvkWpWxiZEhfCSBh1LBX3iFfEUVETqKB7kQg.
									JPEG.dlswo1027%2FIMG_2689.jpg&type=a340">
								</td>
								<td style="width: 50%">
									<input type="checkbox" name="에스프레소" value="에스프레소">&nbsp;&nbsp;에스프레소
									<input type="hidden" name="에스프레소가격" value="3000">
								</td>
								<td>
									<span>&nbsp;&nbsp;3,000</span>
								</td>
								<td>
									<input type="number" name="에스프레소갯수" min="0" max="100" value="0">
								</td>
							</tr>
						</table>
					</td>
					
					<!-- 차 메뉴 -->
					<td style="border: 1px solid;">
						<h6>* 차</h6>
						<table class="subtbl">
							<!-- 유자차 -->
							<tr>
								<td style="text-align: center; width: 10%">
									<img width="50px" height="50px" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.
									net%2FMjAyMjAyMjBfMjY4%2FMDAxNjQ1Mjg2Njc4MTAx.Be8tedNz3BEbA7ow45K6cCOwN4Bko9yqCCsBbx6Ji3cg.q4hXbPkIU8DwF7-wAyveEoC_8NL5e1jhOfRONyrIORog.
									JPEG.hae_z%2FIMG_3860.jpg&type=a340">
								</td>
								<td style="width: 50%">
									<input type="checkbox" name="유자차" value="유자차">&nbsp;&nbsp;유자차
									<input type="hidden" name="유자차가격" value="6000">
								</td>
								<td>
									<span>&nbsp;&nbsp;6,000</span>
								</td>
								<td>
									<input type="number" name="유자차갯수" min="0" max="100" value="0">
								</td>
							</tr>
							
							<!-- 자몽차 -->
							<tr>
								<td style="text-align: center; width: 10%">
									<img width="50px" height="50px" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.
									net%2FMjAyMjAxMzFfMjAx%2FMDAxNjQzNjA3NDIwNDEx.FzoRGfluTtxNyQzM5llZlkxspTlc_kMxOuklxq8EK7cg.oYA1jOBJUNkW-OtcNxReHsHHWqZAw6vJHUvS1tH3Q2og.
									JPEG.feelgood365%2F1643607407648.jpg&type=a340">
								</td>
								<td style="width: 50%">
									<input type="checkbox" name="자몽차" value="자몽차">&nbsp;&nbsp;자몽차
									<input type="hidden" name="자몽차가격" value="2500">
								</td>
								<td>
									<span>&nbsp;&nbsp;2,500</span>
								</td>
								<td>
									<input type="number" name="자몽차갯수" min="0" max="100" value="0">
								</td>
							</tr>
							
							<!-- 녹차 -->
							<tr>
								<td style="text-align: center; width: 10%">
									<img width="50px" height="50px" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.
									net%2FMjAyMjA1MjZfNTMg%2FMDAxNjUzNTcyNjAyMTA2.6dkowcrT9O4hfEYWsgDfJgECZPbSF6tUgwxy8I1gc8Ag.eAItl3ZD_mpCnO4ioXaWoLOt8I9Bpq4vp6M1Xv2SEYkg.
									JPEG.bom2eyo%2FIMG_6541.jpg&type=a340">
								</td>
								<td style="width: 50%">
									<input type="checkbox" name="녹차" value="녹차">&nbsp;&nbsp;녹차
									<input type="hidden" name="녹차가격" value="4000">
								</td>
								<td>
									<span>&nbsp;&nbsp;4,000</span>
								</td>
								<td>
									<input type="number" name="녹차갯수" min="0" max="100" value="0">
								</td>
							</tr>
						</table>
					</td>
					
					<!-- 주스 메뉴 -->
					<td style="border: 1px solid;">
						<h6>* 주스</h6>
						<table class="subtbl">
							<!-- 사과주스 -->
							<tr>
								<td style="text-align: center; width: 10%">
									<img width="50px" height="50px" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.
									net%2FMjAyMTAyMjdfOTAg%2FMDAxNjE0NDMyMDE3MTM2.dMGGz5uOaNc19OR0aXkvlFuxjOl_kiFgtOvs7riVaLUg.wT12xfLOZ_SzIM33-JEDZxXMgjKsWMXuGAp-KyBK5D0g.
									JPEG.pingkong0309%2FIMG_6495.JPG&type=a340">
								</td>
								<td style="width: 50%">
									<input type="checkbox" name="사과주스" value="사과주스">&nbsp;&nbsp;사과주스
									<input type="hidden" name="사과주스가격" value="3500">
								</td>
								<td>
									<span>&nbsp;&nbsp;3,500</span>
								</td>
								<td>
									<input type="number" name="사과주스갯수" min="0" max="100" value="0">
								</td>
							</tr>
							
							<!-- 딸기주스 -->
							<tr>
								<td style="text-align: center; width: 10%">
									<img width="50px" height="50px" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.
									net%2F20140412_1%2Fkitchen_blo_1397283784880gAlwf_JPEG%2Fs2_1.JPG&type=a340">
								</td>
								<td style="width: 50%">
									<input type="checkbox" name="딸기주스" value="딸기주스">&nbsp;&nbsp;딸기주스
									<input type="hidden" name="딸기주스가격" value="3800">
								</td>
								<td>
									<span>&nbsp;&nbsp;3,800</span>
								</td>
								<td>
									<input type="number" name="딸기주스갯수" min="0" max="100" value="0">
								</td>
							</tr>
							
							<!-- 키위주스 -->
							<tr>
								<td style="text-align: center; width: 10%">
									<img width="50px" height="50px" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.
									net%2F20150617_278%2Fkangriver04_1434514067473KhXWd_PNG%2F%25C5%25B0%25C0%25A7%25C1%25D6%25BD%25BA2.png&type=a340">
								</td>
								<td style="width: 50%">
									<input type="checkbox" name="키위주스" value="키위주스">&nbsp;&nbsp;키위주스
									<input type="hidden" name="키위주스가격" value="3900">
								</td>
								<td>
									<span>&nbsp;&nbsp;3,900</span>
								</td>
								<td>
									<input type="number" name="키위주스갯수" min="0" max="100" value="0">
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			</div>
			
			<h3>지불방법</h3>
			<div class="container">
				<select name="지불방법">
					<option value="현금">현금</option>
					<option value="카드">카드</option>
					<option value="상품권">상품권</option>
				</select>
			</div>
			
			<h3>배송정보</h3>
			<div class="wrapper">
				<table style="width: 300px">
					<tr>
						<td>
							<h6>이름</h6>
						</td>
						<td>
							<input type="text" name="이름">
						</td>
					</tr>
					
					<tr>
						<td>
							<h6>전화번호</h6>
						</td>
						<td>
							<input type="text" name="전화번호">
						</td>
					</tr>
					
					<tr>
						<td>
							<h6>배달주소</h6>
						</td>
						<td>
							<input type="text" name="배달주소">
						</td>
					</tr>
				</table>
			</div>
			<div class="container">
				<input type="submit" value="주문하기">
				<input type="reset" value="취소하기">
			</div>
		</form>
	
</body>
</html>