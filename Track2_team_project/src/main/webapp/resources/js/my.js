function go_login() {                                  //로그인
	if(document.loginForm.username.value == "") {
		alert("아이디를 입력하세요");
		document.loginForm.username.focus();
	}else if(document.loginForm.password.value == "") {
		alert("비밀번호 입력");
		document.loginForm.password.focus();
	}else{
		document.loginForm.submit();
	}
}

function check_id(){
	let id = document.joinForm.id.value;
	$.ajax({
		type:"post",
		url:"/member/checkId",
		data:id,
		success:function(data){
			console.log(data);
			if(data == 1){
				$("#msg_checked_id").text("중복 아이디입니다");
				document.getElementById('msg_checked_id').style.color = "red";
			}else{
				$("#msg_checked_id").text("사용 가능한 아이디입니다");
				document.getElementById('msg_checked_id').style.color = "blue";
			}
		},error:function(xhr, status, error){
			alert("문제발생 : " + xhr + status + error)
		}
	});
}

function go_join() {                                  //회원가입
	if(document.joinForm.id.value == "") {
		alert("아이디를 입력하세요");
		document.joinForm.id.focus();
	}else if(document.joinForm.pw.value == "") {
		alert("비밀번호 입력");
		document.joinForm.pw.focus();
	}else{
		document.joinForm.submit();
	}
}
function go_writemusic() {	
	theForm.action = "product/productWrite.do";
	theForm.submit();
}

function go_upload() {
 	document.album_upload.action = "album_uploadpro";
 	document.album_upload.submit();

 }



