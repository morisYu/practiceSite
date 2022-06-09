<%@ page contentType="text/html; charset=UTF-8" %>
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
		String name1 = request.getParameter("name1");
		int kor1 = Integer.parseInt(request.getParameter("kor1"));
		int eng1 = Integer.parseInt(request.getParameter("eng1"));
		int mat1 = Integer.parseInt(request.getParameter("mat1"));
		int sum1 = kor1 + eng1 + mat1;
		int tmp1 = sum1*1000/3;
		double avg1_ = (double)tmp1/1000;
		String avg1 = "";
		if((avg1_*10)%10 == 0){
			avg1 = Integer.toString((int)avg1_);
		}else{
			avg1 = Double.toString(avg1_);
		}
		int rank1 = 1;
		
		String name2 = request.getParameter("name2");
		int kor2 = Integer.parseInt(request.getParameter("kor2"));
		int eng2 = Integer.parseInt(request.getParameter("eng2"));
		int mat2 = Integer.parseInt(request.getParameter("mat2"));
		int sum2 = kor2 + eng2 + mat2;
		int tmp2 = sum2*1000/3;
		double avg2_ = (double)tmp2/1000;
		String avg2 = "";
		if((avg2_*10)%10 == 0){
			avg2 = Integer.toString((int)avg2_);
		}else{
			avg2 = Double.toString(avg2_);
		}
		int rank2 = 1;
		
		String name3 = request.getParameter("name3");
		int kor3 = Integer.parseInt(request.getParameter("kor3"));
		int eng3 = Integer.parseInt(request.getParameter("eng3"));
		int mat3 = Integer.parseInt(request.getParameter("mat3"));
		int sum3 = kor3 + eng3 + mat3;
		int tmp3 = sum3*1000/3;
		double avg3_ = (double)tmp3/1000;
		String avg3 = "";
		if((avg3_*10)%10 == 0){
			avg3 = Integer.toString((int)avg3_);
		}else{
			avg3 = Double.toString(avg3_);
		}
		int rank3 = 1;
		
		if(sum1 < sum2){
			rank1++;
		}else{
			rank2++;
		}
		
		if(sum1 < sum3){
			rank1++;
		}else{
			rank3++;
		}
		
		if(sum2 < sum3){
			rank2++;
		}else{
			rank3++;
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
		
		<tr>
			<td><%= name1 %></td>
			<td><%= kor1 %></td>
			<td><%= eng1 %></td>
			<td><%= mat1 %></td>
			<td><%= sum1 %></td>
			<td><%= avg1 %></td>
			<td><%= rank1 %></td>
		</tr>
		
		<tr>
			<td><%= name2 %></td>
			<td><%= kor2 %></td>
			<td><%= eng2 %></td>
			<td><%= mat2 %></td>
			<td><%= sum2 %></td>
			<td><%= avg2 %></td>
			<td><%= rank2 %></td>
		</tr>
		
		<tr>
			<td><%= name3 %></td>
			<td><%= kor3 %></td>
			<td><%= eng3 %></td>
			<td><%= mat3 %></td>
			<td><%= sum3 %></td>
			<td><%= avg3 %></td>
			<td><%= rank3 %></td>
		</tr>
	</table>
</body>
</html>