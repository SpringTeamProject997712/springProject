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

//뒤로가기, 새로고침, 페이지 이동시 음악 플레이 정보 저장하기
window.onbeforeunload = function (event) { 
	event.preventDefault();
	
	sessionStorage.removeItem("currentTime");
	sessionStorage.removeItem("duration");
	sessionStorage.removeItem("currentList");
		
	let timeNow=$(".jp-current-time").text();
	let timeEnd=$(".jp-duration").text();
	let listNow= sessionStorage.getItem("NowList");
	
	console.log(timeNow);
	console.log(timeEnd);
	console.log(listNow);
	
	sessionStorage.setItem("currentTime",timeNow);
	sessionStorage.setItem("duration",timeEnd);
	sessionStorage.setItem("currentList",listNow);
}

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
	
	if(upload_track.uploadMusic.value=="") {
		alert("アルバムカバーを入れてください");
		upload_track.uploadMusic.focus();
		return false;
	}
	if(upload_track.name.value=="") {
		alert("トラック名を入力してください");
		upload_track.name.focus();
		return false;
	}
	if(upload_track.detail.value=="") {
		alert("詳細を入力してください");
		upload_track.detail.focus();
		return false;
	}
	if(upload_track.price.value=="") {
		alert("値段を入力してください");
		upload_track.price.focus();
		return false;
	}

	document.upload_track.submit();

 }

function go_upload_goods() {

	if(upload_goods.detail.value=="") {
		alert("詳細を入力してください");
		upload_goods.detail.focus();
		return false;
	}
	if(upload_goods.price.value=="") {
		alert("値段を入力してください");
		upload_goods.price.focus();
		return false;
	}

	document.upload_goods.submit();
	
 }
function go_reset() {
	$('form').each(function() {

	      this.reset();

	  });
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
$().ready(function(){
	var heart_arr = [];
	var fav_heart = $(".ms_fav_icon");
	$(".fav_box").each(function(index,item){
		heart_arr.push($(this).attr('id').substring(5))
	});
	console.log(heart_arr);
	if(fav_heart){
		for(var i=0; i<heart_arr.length; i++){
			$.ajax({
				type:"get",
				data:{pbno : heart_arr[i]},
				async:false,
				url:"/favourite/favourite_checker",
				success:function(data){
					if(data=='1'){
						$("#pbno_"+heart_arr[i]).empty();
						$("#pbno_"+heart_arr[i]).append("<span><img src='/images/svg/pink-heart.svg' style='width:24px; height:24px'></span>");
					}else{
						console.log("빈하트");
					}
				},error:function(xhr,status,err){
					console.log(xhr.status + "\n"+xhr.reponseText +  "\n"+ err );
				}
			
			});
		}
	}
})

$(".fav_box").on("click", function(){
	let nope = $(this).find(".ms_fav_icon");
	let like_status = 0;
	let like_pbno = $(this).attr('id').substring(5);
	console.log(nope);
	console.log(like_pbno);
	if(nope.length){
		console.log("좋아요 안함");
	}else{
		like_status = 1;
	}
	//로그인 체크
	let login_flag=0;
	
	$.ajax({
    	type:"get",
    	url:"/member/loginChecker",
    	async:false,
    	success:function(data){
    		console.log("나온 값 : "+data);
    		if(data != '1'){
    		login_flag=data;
    		}		
    	},error:function(xhr,status,error){
    		console.log("xhr : "+xhr.status+"\n text : "+xhr.responseText+"\n error : "+error);
    	}
	});
	
	if(login_flag){
		$.ajax({
			type:"get",
			url:"/favourite/updateLike",
			data:{likes:like_status, pbno:like_pbno},
			async:false,
			error:function(xhr,status,err){
				console.log(xhr.status + "\n"+xhr.reponseText +  "\n"+ err );
			},success:function(data){
				console.log(data);
				if(data=='1'){
					$("#pbno_"+like_pbno).empty();
					$("#pbno_"+like_pbno).append("<span><img src='/images/svg/pink-heart.svg' style='width:24px; height:24px'></span>");
				}else{
					$("#pbno_"+like_pbno).empty();
					$("#pbno_"+like_pbno).append("<span class='ms_icon1 ms_fav_icon'></span>");
				}
			}
	})
	}else{
		alert("좋아요를 표시하기 위해 로그인이 필요합니다.");
	}
})

$(".create_playlist").on("click", function(){
	$.ajax({
		type:"get",
		url:"/createPlaylist/insertPlaylist",
		success:function(data){
			console.log("돌아온 값"+data)
			if(data=='1'){
				console.log("실-패");
			}else{
				location.href=data;
			}
		},error:function(xhr,status,err){
			console.log(xhr.status +"\n" +xhr.reponseText +"\n" +err);
		}
	});
})
let flag = 1;
$(".musicSearch_on").off().on("click", function(){
	console.log("클릭 함");
	
	if(flag==1){
		$("#musicSearchMan").slideDown();
		flag=0;
	}else{
		$("#musicSearchMan").slideUp();
		flag=1;
	}
})



//앨범 업로드 이미지 시 미리보기
$(document).ready(function(){ 
	var fileTarget = $('.ms_upload_btn .form-control'); 
	
	fileTarget.on('change', function(){ // 값이 변경되면 
		if(window.FileReader){ // modern browser 
			var filename = $(this)[0].files[0].name; } 
		else { // old IE 
			var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출 
		} 
	// 추출한 파일명 삽입 
	$(this).siblings('.upload-name').val(filename); 
	}); 	
});

$(".remove_single_track_in_playlist").on("click", function(){
	let this_track = $(this).parent().parent();
	this_track.slideUp();
	let tbno = this_track.attr('id').substring(16);
	let plbno = document.getElementById('this_plbno').value;

	$.ajax({
		type:"get",
		data:{tbno:tbno , plbno:plbno},
		url:"/createPlaylist/deletePlaylistDetailTbno",
		error:function(xhr,status,err){
			console.log(xhr.status + xhr.responseText + err);
		},success:function(data){
			if(data=="삭제됨"){
				reload.document;
			}
		}
	});
})



function modify_playlist_name(){
	let plbno = document.getElementById('this_plbno').value;
	let name = document.getElementById('playlist-name').value;
	
	$.ajax({
		type:"get",
		url:"/createPlaylist/modifyPlaylistName",
		data:{name:name, plbno:plbno},
		error:function(xhr,status,err){
			console.log(xhr.status + xhr.responseText + err);
		},success:function(data){
			if(data=='1'){
				console.log("수정완료")
			}
		}
	});
}

$(".slideDown-details").on("click", function(abno){
	let cbno = $(this).attr('id')
	$(".cart-details").slideUp(10);
	$("#cart-details_"+cbno).slideDown();
})
$(".cart-details").on("click", function(abno){
	$(".cart-details").slideUp(10);
})

$(".remove-from-cart").on("click", function(){
	let cbno = this.dataset.cbno;
	$(this).parent().parent().slideUp(20,function(){
		$.ajax({
			type:"get",
			data:{cbno:cbno},
			url:"/cart/deleteOneCart",
			success:function(data){
				if(data=='1'){
					console.log("삭제완료");
				}
			},error:function(xhr,status,err){
				console.log(xhr.status + xhr.responseText + err);
			}
		})
	});
})

$(".remove-all-cart").on("click", function(){
	
	if(confirm("정말로 삭제하시겠습니까? \n 장바구니가 전부 초기화 됩니다")){
		$.ajax({
			type:"get",
			url:"/cart/deleteCart",
			success:function(data){
				if(data=='1'){
					console.log("삭제완료");
				}
			},error:function(xhr,status,err){
				console.log(xhr.status + xhr.responseText + err);
			}
		})
	}
})

////preview image 
//var imgTarget = $('.preview-image .upload-hidden');
//
//imgTarget.on('change', function(){
//    var parent = $(this).parent();
//    parent.children('.upload-display').remove();
//
//    if(window.FileReader){
//        //image 파일만
//        if (!$(this)[0].files[0].type.match(/image\//)) return;
//        
//        var reader = new FileReader();
//        reader.onload = function(e){
//            var src = e.target.result;
//            parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb" style="margin:0px;"></div></div>');
//        }
//        reader.readAsDataURL($(this)[0].files[0]);
//    }
//
//    else {
//        $(this)[0].select();
//        $(this)[0].blur();
//        var imgSrc = document.selection.createRange().text;
//        parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');
//
//        var img = $(this).siblings('.upload-display').find('img');
//        img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";        
//    }
//});


//액티브 (해더 내부에 넣어야 작동함 ㅅㅂ;)
//var pageSubmitFn = function(menu) {
//		if(menu === "menu_main") {
//			$("#activefrm").attr("action", "/");
//			$("#pageName").val(menu);
//		}else if(menu === "menu_album") {
//			$("#activefrm").attr("action", "album/album");
//			$("#pageName").val(menu);
//		}else if(menu === "menu_artists"){
//			$("#activefrm").attr("action", "artists/artists");
//			$("#pageName").val(menu);
//		}
//		$("#activefrm").submit();
//}
//
//$(function(){
//	$(".menu").removeClass("active");
////	var pageName = "<c:out value='${param.pageName}'/>";
//	var pageName = '${param.pageName}';
//	console.log(pageName);
//	$("#"+pageName).addClass("active");
//})

//외부 API
$("#audio").on("canplaythrough", function(e){
    var seconds = e.currentTarget.duration;
    var duration = moment.duration(seconds, "seconds");
    console.log("secondes:"+seconds);
    console.log("duration:"+duration);
    var duration1 = moment.duration(seconds);
    console.log("duration1:"+duration1);
    
    var time = "";
    var hours = duration.hours();
    if (hours > 0) { time = hours + ":" ; }
    console.log("hours:"+hours);
    
    
    time = time + duration.minutes() + ":" + duration.seconds();
    time_cal = duration%60;
    $("#upload_duration").text(time);
    $('input[id=upload_duration1]').attr('value',Math.round(seconds));
    
});

$("#songname").change(function(e){
    var file = e.currentTarget.files[0];
   
    $("#filename").text(file.name);
    $("#filetype").text(file.type);
    $("#filesize").text(file.size);
    
    objectUrl = URL.createObjectURL(file);
    $("#audio").prop("src", objectUrl);
});

//API 끝
