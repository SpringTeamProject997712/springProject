function go_login() {                                  //로그인
	if(document.loginForm.username.value == "") {
		alert("아이디를 입력하세요");
		document.loginForm.username.focus();
	}else if(document.loginForm.password.value == "") {
		alert("비밀번호 입력");
		document.loginForm.password.focus();
	}else{
		document.loginForm.action="/login";
		document.loginForm.submit();
	}
}

function go_join() {                                  //로그인
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
