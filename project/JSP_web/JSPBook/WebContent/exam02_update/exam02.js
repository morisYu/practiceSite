/* 버튼으로 입력 항목 추가 및 삭제 */

// 항목 추가 버튼
function addRow(){
	var tbody = document.getElementById('tableRow');
	var row = tbody.insertRow(tbody.rows.length);
	let cell= new Array();
	
	for(var i = 0; i < 8; i++){
		cell[i] = row.insertCell(i);
	}
	
	cell[0].innerHTML = "학생이름";
	cell[1].innerHTML = "<input type='text' name='name" + (tbody.rows.length+1) + "' size='10' required>";
	cell[2].innerHTML = "국어성적";
	cell[3].innerHTML = "<input type='number' name='kor" + (tbody.rows.length+1) + "' min='0' max='100' required>";
	cell[4].innerHTML = "영어성적";
	cell[5].innerHTML = "<input type='number' name='eng" + (tbody.rows.length+1) + "' min='0' max='100' required>";
	cell[6].innerHTML = "수학성적";
	cell[7].innerHTML = "<input type='number' name='mat" + (tbody.rows.length+1) + "' min='0' max='100' required>";
		
}

// 항목 삭제 버튼
function deleteRow() {
  var tbody = document.getElementById('tableRow');
  if (tbody.rows.length < 1) return;
  // tbody.deleteRow(0); // 상단부터 삭제
  tbody.deleteRow(tbody.rows.length-1); // 하단부터 삭제
}
