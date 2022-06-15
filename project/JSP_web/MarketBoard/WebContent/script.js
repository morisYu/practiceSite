/**
 * 
 */

function checkForm(){
	if(true){
		alert("로그인 해주세요.");
		return false;
	}
	location.href = "./BoardWriteForm.do?id=<%=sessionId%>";
}
		