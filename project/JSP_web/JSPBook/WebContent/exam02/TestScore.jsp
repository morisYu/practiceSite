<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<title>성적입력</title>
</head>
<body>
	<h2>학생 성적 입력</h2>
	<form action="TestScore_process.jsp" method="post">
		<table>
			<tr>
				<td>학생이름1: </td>
				<td>
					<input type="text" name="name1" size="10">
				</td>
				<td>국어성적1: </td>
				<td>
					<input type="number" name="kor1" min="0" max="100">
				</td>
				<td>영어성적1: </td>
				<td>
					<input type="number" name="eng1" min="0" max="100">
				</td>
				<td>수학성적1: </td>
				<td>
					<input type="number" name="mat1" min="0" max="100">
				</td>
			</tr>
			
			<tr>
				<td>학생이름2: </td>
				<td>
					<input type="text" name="name2" size="10">
				</td>
				<td>국어성적2: </td>
				<td>
					<input type="number" name="kor2" min="0" max="100">
				</td>
				<td>영어성적2: </td>
				<td>
					<input type="number" name="eng2" min="0" max="100">
				</td>
				<td>수학성적2: </td>
				<td>
					<input type="number" name="mat2" min="0" max="100">
				</td>
			</tr>
			
			<tr>
				<td>학생이름3: </td>
				<td>
					<input type="text" name="name3" size="10">
				</td>
				<td>국어성적3: </td>
				<td>
					<input type="number" name="kor3" min="0" max="100">
				</td>
				<td>영어성적3: </td>
				<td>
					<input type="number" name="eng3" min="0" max="100">
				</td>
				<td>수학성적3: </td>
				<td>
					<input type="number" name="mat3" min="0" max="100">
				</td>
			</tr>
		</table>
		<input type="submit" value="전송">
	</form>
</body>
</html>