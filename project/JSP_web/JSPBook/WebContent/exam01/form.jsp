<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>회원가입(유성화)</title>
<link href="./form.css" rel="stylesheet">

</head>
<body>
	<table>
		<tr>
			<td class="side">아이디</td>
			<td>
				<input type="text" minlength="6" maxlength="12">
				<input type="button" value="중복확인" onclick="">
				<h5>6-12자의 영문 대소문자와 숫자 사용.</h5>
			</td>
		</tr>
		
		<tr>
			<td class="side">비밀번호</td>
			<td>
				<input type="text">
				<h5>8-12자의 영문대소문자, 숫자, 특수문자 중 2종류 이상을 조합한 10자리 이상 또는 3종류이상을 조합한
					8자리 이상 사용 가능.
				</h5>
			</td>
		</tr>
		
		<tr>
			<td class="side">비밀번호 확인</td>
			<td>
				<input type="text">
				<h5>비밀번호를 다시 확인해주세요.</h5>
			</td>
		</tr>
		
		<tr>
			<td class="side">이름</td>
			<td>
				<input type="text">
				<h5 style="color: #FF6600;">이름을 입력해 주세요.</h5>
			</td>
		</tr>
		
		<tr>
			<td class="side">성별</td>
			<td>
				<input type="radio" name="gender" value="남성">&nbsp;남성&nbsp;&nbsp;&nbsp;
				<input type="radio" name="gender" value="여성">&nbsp;여성
				<br>
				<input type="checkbox" name="collect_gender" value="선택정보(성별) 수집 및 이용 동의">
				&nbsp;선택정보(성별) 수집 및 이용 동의
				<table class="sub_tbl">
					<tr>
						<th>수집목적</th>
						<th>수집항목</th>
						<th>보유기간</th>
					</tr>
					<tr>
						<td>이용자 식별 및 본인 여부 확인</td>
						<td>성별</td>
						<td><strong>회원탈퇴 시 까지</strong></td>
					</tr>
				</table>
				<h6>* 해당 내용에 동의하지 않을 권리가 있으며, 동의하지 않아도 서비스를 이용하실 수 있습니다.</h6>
			</td>
		</tr>
		
		<tr>
			<td class="side">생년월일</td>
			<td>
				<select name="year">
					<%
						for(int i = 1950; i < 2010 ;i++){
							if(i == 1990){
								out.println("<option value='" + i + "' selected>" + i + "</option>");
							}else{
								out.println("<option value='" + i + "'>" + i + "</option>");
							}
						}
					%>
				</select>년&nbsp;
				
				<select name="month">
					<%
						for(int i = 1; i <= 12 ;i++){
							if(i < 10){
								out.println("<option value='" + i + "'>0" + i + "</option>");
							}else{
								out.println("<option value='" + i + "'>" + i + "</option>");
							}
						}
					%>
				</select>월&nbsp;
				
				<select name="day">
					<%
						for(int i = 1; i <= 31 ;i++){
							if(i < 10){
								out.println("<option value='" + i + "'>0" + i + "</option>");
							}else{
								out.println("<option value='" + i + "'>" + i + "</option>");
							}
						}
					%>
				</select>일&nbsp;
			</td>
		</tr>
		
		<tr>
			<td class="side">지역정보</td>
			<td>
				<input type="button" value="주소검색">
				<br>
				<input type="text" name="add1" size="15">
				<input type="text" name="add2" size="15">
				<input type="text" name="add3" size="15">
				<br>
				<input type="checkbox" name="collect_add" value="선택정보(지역정보) 수집 및 이용 동의">
				&nbsp;선택정보(지역정보) 수집 및 이용 동의
				<table class="sub_tbl">
					<tr>
						<th>수집목적</th>
						<th>수집항목</th>
						<th>보유기간</th>
					</tr>
					<tr>
						<td>이용자 지역 정보 확인</td>
						<td>지역정보</td>
						<td><strong>회원탈퇴 시 까지</strong></td>
					</tr>
				</table>
				<h6>* 해당 내용에 동의하지 않을 권리가 있으며, 동의하지 않아도 서비스를 이용하실 수 있습니다.</h6>
			</td>
		</tr>
		
		<tr>
			<td class="side">이메일</td>
			<td>
				<input type="text" name="email1"> @
				<input type="text" name="email2">
				<h5>아이디나 비밀번호를 찾기위해 사용되오니 정확한 정보로 입력하시기 바랍니다.</h5>
			</td>
		</tr>
		
		<tr>
			<td class="side">휴대폰</td>
			<td>
				<input type="text" name="phone">
				<br>
				<input type="checkbox" name="collect_add" value="선택정보(휴대폰) 수집 및 이용 동의">
				&nbsp;선택정보(휴대폰) 수집 및 이용 동의
				<table class="sub_tbl">
					<tr>
						<th>수집목적</th>
						<th>수집항목</th>
						<th>보유기간</th>
					</tr>
					<tr>
						<td>이용자 식별 및 본인 여부 확인</td>
						<td>휴대전화번호</td>
						<td><strong>회원탈퇴 시 까지</strong></td>
					</tr>
				</table>
				<h6>* 해당 내용에 동의하지 않을 권리가 있으며, 동의하지 않아도 서비스를 이용하실 수 있습니다.</h6>
				<h5>아이디나 비밀번호를 찾기위해 사용되오니 정확한 정보로 입력하시기 바랍니다.</h5>
			</td>
		</tr>
		
		<tr>
			<td class="side">인증방법</td>
			<td>
				<input type="radio" name="certification" value="phone">&nbsp;휴대폰
				&nbsp;&nbsp;&nbsp;
				<input type="radio" name="certification" value="email">&nbsp;이메일
				&nbsp;&nbsp;&nbsp;
				<input type="button" value="인증" onclick="">
				<h5>휴대폰 인증을 위한 인증번호 발송은 1일 최대 3회까지 가능합니다.</h5>
			</td>
		</tr>
		
		<tr>
			<td class="side">인증번호</td>
			<td>
				<input type="text" name="certification_number">
				<input type="button" value="확인" onclick="">
			</td>
		</tr>
	</table>
	<h6> ※회원님을 위한 인증은 가입 후 회원정보수정에서 인증하실 수 있습니다.</h6>
	<input type="submit" value="확인">
</body>
</html>