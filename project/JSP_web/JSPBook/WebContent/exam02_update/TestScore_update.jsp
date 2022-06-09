<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<title>성적입력</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	<h2>학생 성적 입력</h2>
	<form action="TestScore_process_update.jsp" method="post" id="score">
		<table border="1">
			<tr>
				<td>학생이름</td>
				<td>
					<input type="text" name="name1" size="10" required>
				</td>
				<td>국어성적</td>
				<td>
					<input type="number" name="kor1" min="0" max="100" required>
				</td>
				<td>영어성적</td>
				<td>
					<input type="number" name="eng1" min="0" max="100" required>
				</td>
				<td>수학성적</td>
				<td>
					<input type="number" name="mat1" min="0" max="100" required>
				</td>
			</tr>
			<tbody id="tableRow"></tbody>
			<tr>
				<td colspan="8" align="center">+ 추가하기 +</td>
			</tr>
		</table>
		<input type="submit" value="전송">
		<input type="button" value="추가" onclick="addRow()">
		<input type="button" value="삭제" onclick="deleteRow()">
	</form>
	<script type="text/javascript" src="exam02.js"></script>
</body>
</html>