<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">
	function checkLogin(){
		var form = document.loginForm;
		if(form.id.value.trim() == ""){
			alert("아이디를 입력하세요");
			form.id.focus();
			return false;
		} else if(form.passwd.value.trim() == ""){
			alert("비밀번호를 입력하세요");
			form.passwd.focus();
			return false;
		}
		form.submit();
	}
</script>

<body>
	<form name="loginForm" id="loginForm" action="validation02_process.jsp" method="post">
		<p> 아 이 디 : <input type="text" name="id">
		<p> 비밀번호 : <input type="password" name="passwd">
		<p> <input type="button" value="전송" onclick="checkLogin()">
	</form>
</body>
</html>














