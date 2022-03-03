
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

//멤버 수정
function go_member_delete(clicked_ID){
	
	console.log(clicked_ID);
	if(confirm("회원 "+clicked_ID+" : 정말로 비활설화 하시겠습니까?")){
		$.ajax({
			type:"get",
			data:{id:clicked_ID},
			url:"/convertMemberActive",
			success:function(data){
				if(data=='1'){
					alert('비활성화되었습니다');
					document.location.reload();
				}else(
					alert("실패")
				)
			},error:function(xhr, status, error){
				alert("코드 : " + xhr.status + "\n메세지 : " + xhr.responseText + "\n에러 : " + error)
			}
		})
	}
}

function go_update(){
	let form = document.privacyForm;
	form.action= "/member/updateMember";
	form.submit();



}

function go_update_album() {
	let form = document.formAlbum;
	form.action = "/album/updateAlbum";
	form.submit;
}

// 공지관련

function go_update_notice(){
	let form = document.NoticeForm;
	form.action= "/member/updateNotice";
	form.submit();

}

function go_upload_notice() {
	if(upload_notice.title.value=="") {
		alert("please input title");
		upload_notice.uploadImage.focus();
		return false;
	}
	if(upload_notice.content.value=="") {
		alert("please input content");
		upload_notice.content.focus();
		return false;
	}

	if(upload_notice.price.value=="") {
		alert("値段を入力してください");
		upload_album.price.focus();
		return false;
	}
	
 	document.upload_notice.submit();
 }

//파일 수정 관련
var actionForm = $("#actionForm");
$(".page-item > a").on("click", function(e) {
	e.preventDefault();
	actionForm.find("input[name='pageNum']").val($(this).attr("href"));
	actionForm.submit();
	
})

$(document).ready(function(){
	  var fileTarget = $('.input-group .upload-hidden');

	    fileTarget.on('change', function(){
	        if(window.FileReader){
	            var filename = $(this)[0].files[0].name;
	        } else {
	            var filename = $(this).val().split('/').pop().split('\\').pop();
	        }

	        $(this).siblings('.form-control').val(filename);
	    });
	}); 



//파일 삭제문

$(function(){
	  $("#delete_track").click(function(){
		confirm("정말로 삭제하겠습니까");
	    $(this).submit();
	  });
	});

//오디오 수정
$("#audio").on("canplaythrough", function(e){
    var seconds = e.currentTarget.duration;
    var duration = moment.duration(seconds, "seconds");
    var duration1 = moment.duration(seconds);
    
    var time = "";
    var hours = duration.hours();
    if (hours > 0) { time = hours + ":" ; }
    console.log("hours:"+hours);
    
    time = time + duration.minutes() + ":" + duration.seconds();
    time_cal = duration%60;
    $("#upload_duration").text(time);
    $('input[id=upload_duration1]').attr('value',Math.floor(seconds));
    
});

$("#songname").change(function(e){
    var file = e.currentTarget.files[0];
   
    $("#filename").text(file.name);
    $("#filetype").text(file.type);
    $("#filesize").text(file.size);
    
    objectUrl = URL.createObjectURL(file);
    $("#audio").prop("src", objectUrl);
});
