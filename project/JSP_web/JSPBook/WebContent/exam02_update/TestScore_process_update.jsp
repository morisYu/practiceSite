<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="exam02.StudentDao" %>
<%@ page import="exam02.StudentDto" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>성적 처리</title>
<style type="text/css">
	table{
		border-collapse: collapse;
	}
	td{
		border: 1px solid;
		margin: 0px;
		padding-left: 10px;
		width: 120px;
	}
</style>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	<%
		StudentDao dao = StudentDao.getInstance();
		StudentDto dto;
		ArrayList<StudentDto> list = dao.getList();
		
		// 입력한 행의 수를 확인하기 위해서 Map 사용
		Map map = request.getParameterMap();
		int size = map.size()/4;
		
		for(int i = 1;i <= size;i++){
			String nameStr = "name" + i;
			String korStr = "kor" + i;
			String engStr = "eng" + i;
			String matStr	= "mat" + i;
			
			String name = request.getParameter(nameStr);
				int kor = Integer.parseInt(request.getParameter(korStr));
				int eng = Integer.parseInt(request.getParameter(engStr));
				int mat = Integer.parseInt(request.getParameter(matStr));
				
				dto = new StudentDto(name, kor, eng, mat);
				if(list.indexOf(dto) < 0){
					dao.addList(dto);
				}else{
					dao.setList(list.indexOf(dto), dto);
				}
		}
		
	%>
	<h2>성적처리</h2>
	<table>
		<tr>
			<td>학생이름</td>
			<td>국어점수</td>
			<td>영어점수</td>
			<td>수학점수</td>
			<td>합계</td>
			<td>평균</td>
			<td>등수</td>
		</tr>
		<%
			for(int i =0; i < list.size(); i++){
				StudentDto student = list.get(i);
				// rank 는 ArrayList 를 합계 기준으로 정렬하고 값을 배정하면 됨
				int rank = list.indexOf(student) + 1;
		%>
		<tr>
			<td><%= student.getName() %></td>
			<td><%= student.getKor() %></td>
			<td><%= student.getEng() %></td>
			<td><%= student.getMat() %></td>
			<td><%= student.getSum() %></td>
			<td><%= student.getAvg() %></td>
			<td><%= rank %></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>