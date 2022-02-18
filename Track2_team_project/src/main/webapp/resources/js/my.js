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
	}else if(document.joinForm.pw.value != document.joinForm.pw2.value) {
		alert("비밀번호가 서로 일치하지 않습니다");
		document.joinForm.pw2.focus();
	}else{
		document.joinForm.submit();
	}
}
function go_writemusic() {	
	theForm.action = "product/productWrite.do";
	theForm.submit();
}

//업로드 스크립트
function go_upload_album() {
	if(upload_album.uploadImage.value=="") {
		alert("アルバムカバーを入れてください");
		upload_album.uploadImage.focus();
		return false;
	}
	if(upload_album.name.value=="") {
		alert("アルバム名を入力してください");
		upload_album.name.focus();
		return false;
	}
	if(upload_album.singer.value=="") {
		alert("アーティスト名を入力してください");
		upload_album.singer.focus();
		return false;
	}
	if(upload_album.detail.value=="") {
		alert("詳細を入力してください");
		upload_album.detail.focus();
		return false;
	}
	if(upload_album.price.value=="") {
		alert("値段を入力してください");
		upload_album.price.focus();
		return false;
	}
	if(upload_album.regdate.value=="") {
		alert("登録日を入力してください");
		upload_album.regdate.focus();
		return false;
	}
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
function go_reset() {
	$('form').each(function() {

	      this.reset();

	  });
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

//하트모양 채우기
$().on("ready", function(){
	var fav_heart = $(".fav_box");
	if(fav_heart){
		$.ajax({
			type:"get",
			data:{tbno : fav_heart.attr('id')},
			url:"favourite/favourite_checker",
			success:function(){
				
			},error:function(xhr,request,err){
				console.log(xhr.request + "\n"+xhr.reponseText +  "\n"+ err );
			}
		
		})
	
	}
})




