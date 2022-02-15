function go_login() {                            //로그인
	var idChk = $("#saveBtn").is(":checked");
	if(document.loginForm.username.value == "") {
		alert("아이디를 입력하세요");
		document.loginForm.username.focus();
		return false;
	}else if(document.loginForm.password.value == "") {
		alert("비밀번호 입력");
		document.loginForm.password.focus();
		return false;
	}else if(idChk){ //체크박스에 체크 되어있으면 아이디 저장 쿠키(7일) 넣기
		console.log("쿠키 넣기 가동");
		setCookie("Cookie_mail", document.loginForm.username.value, 7); 
	}else{ //안돼있으면 아이디 저장 쿠키 삭제하기
		deleteCookie("Cookie_mail"); 
	}
	document.loginForm.submit();
}

$(function(){ // document가 다 로딩된 후 쿠키 있는지 확인해서 아이디 넣기
	var mail = getCookie("Cookie_mail");
	console.log("쿠-키  : " + mail);
	if(mail){ 
		document.loginForm.username.value = mail; 
		$("#saveBtn").attr("checked", true); 
	} 
});

function getCookie(cookieName) { 
	cookieName = cookieName + '='; 
	var cookieData = document.cookie; 
	var start = cookieData.indexOf(cookieName); 
	var cookieValue = ''; 
	if(start != -1){ 
		start += cookieName.length; 
		var end = cookieData.indexOf(';', start); 
		if(end == -1)end = cookieData.length; 
		cookieValue = cookieData.substring(start, end); 
		} 
		return unescape(cookieValue); 
	}

function setCookie(cookieName, value, exdays){ //쿠키 이름, 쿠키 값, 쿠키 날짜(일수)로 쿠키 넣기
	var exdate = new Date(); 
	exdate.setDate(exdate.getDate() + exdays); 
	var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString()); 
	document.cookie = cookieName + "=" + cookieValue; 
} //쿠키에 아이디 저장하기

function deleteCookie(cookieName){ //이름이 맞는 쿠키 삭제하기
	var expireDate = new Date(); 
	expireDate.setDate(expireDate.getDate() - 1); 
	document.cookie = cookieName + "= " + "\; expires=" + expireDate.toGMTString();
}

$("#joinForm_id").on("blur",function(){ //아이디 입력창에서 blur할때마다 아이디 체크함
	let id = document.joinForm.id.value;
	console.log(id);
	$.ajax({
		type:"get",
		url:"member/checkId?id="+id,
		success:function(data){
			console.log(data);
			console.log(typeof data);
			if(data == 1){
				$("#msg_checked_id").text("중복 아이디입니다");
				document.getElementById('msg_checked_id').style.color = "red";
			}else{
				$("#msg_checked_id").text("사용 가능한 아이디입니다");
				document.getElementById('msg_checked_id').style.color = "blue";
			}
		},error:function(xhr, status, error){
			alert("코드 : " + xhr.status + "\n메세지 : " + xhr.responseText + "\n에러 : " + error)
		}
	});
})

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

function go_upload_album() {
 	document.upload_album.action="uploadpro_album";
 	document.upload_album.submit();
 }
function go_upload_track() {
 	document.upload_track.action="uploadpro_track";
 	document.upload_track.submit();
 }
function go_upload_goods() {
 	document.upload_goods.action="uploadpro_goods";
 	document.upload_goods.submit();
 }

function findAddr(){ //우편번호 찾기
	new daum.Postcode({
        oncomplete: function(data) {
        	
        	console.log(data);
        	
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var jibunAddr = data.jibunAddress; // 지번 주소 변수
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('member_post').value = data.zonecode;
            if(roadAddr !== ''){
                document.getElementById("member_addr").value = roadAddr;
            } 
            else if(jibunAddr !== ''){
                document.getElementById("member_addr").value = jibunAddr;
            }
        }
    }).open();
}

