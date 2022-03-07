
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
	if(confirm("会員 "+clicked_ID+" : 本当に非活動化にしますか?")){
		$.ajax({
			type:"get",
			data:{id:clicked_ID},
			url:"/convertMemberActive",
			success:function(data){
				if(data=='1'){
					alert('非活動化しました');
					document.location.reload();
				}else(
					alert("失敗しました")
				)
			},error:function(xhr, status, error){
				alert("コード : " + xhr.status + "\nメッセージ : " + xhr.responseText + "\nエラー : " + error)
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
	form.action= "/notice/updateNotice";
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
	
	if(upload_notice.header.value=="") {
		alert("please select header");
		upload_notice.header.focus();
		return false;
	}
	

 	document.upload_notice.submit();
 }
 
function go_upload_coupon(){
	var formm = document.upload_coupon;
	if(!formm.couponname.value){
		alert("dd");
		return false;
	}else if(!formm.type.value){
		alert("ta");
		return false;
	}
	formm.submit();
}

function go_update_coupon(){
	var forrm = document.update_coupon;
	if(!forrm.type.value){
		alert("type is null");
		return false;
	}else{
		
	}
	forrm.submit();
}
 
$(function(){

$('#summernote').summernote({
				height: 300,                 // 에디터 높이
				minHeight: null,             // 최소 높이
				maxHeight: null,             // 최대 높이
				focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
				lang: "jp-JP",					// 한글 설정
				placeholder: '最大2048字まで入力できます',	//placeholder 설정
				callbacks: {	//여기 부분이 이미지를 첨부하는 부분
					onImageUpload : function(files) {
						uploadSummernoteImageFile(files[0],this);
					},
					onPaste: function (e) {
						var clipboardData = e.originalEvent.clipboardData;
						if (clipboardData && clipboardData.items && clipboardData.items.length) {
							var item = clipboardData.items[0];
							if (item.kind === 'file' && item.type.indexOf('images/') !== -1) {
								e.preventDefault();
							}
						}
					}
				}
	});
})	
        
        

	/**
	* 이미지 파일 업로드
	*/
	function uploadSummernoteImageFile(file, editor) {
		data = new FormData();
		data.append("file", file);
		var csrfHeaderName = "${_csrf.headerName}";
		var csrfTokenValue = "${_csrf.token}";
		$(document).ajaxSend(function(e, xhr, options) {
			xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
		});
		$.ajax({
			data : data,
			type : "POST",
			url : "/uploadSummernoteImageFile",
			contentType : false,
			processData : false,
			beforeSend: function (jqXHR, settings) {
	           var header = $("meta[name='_csrf_header']").attr("content");
	           var token = $("meta[name='_csrf']").attr("content");
	           jqXHR.setRequestHeader(header, token);
			},
			success : function(data) {
            	//항상 업로드된 파일의 url이 있어야 한다.
				$(editor).summernote('insertImage', data.url);
			}
		});
	}

function sendFile(file, el) {
var form_data = new FormData();
       form_data.append('file', file);
       $.ajax({
         data: form_data,
         type: "POST",
         url: './notifileImage.do',
         cache: false,
         contentType: false,
         enctype: 'multipart/form-data',
         processData: false,
         success: function(img_name) {
        	 alert(img_name);
           $(el).summernote('editor.insertImage', img_name);
         }
       });
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
		confirm("本当に削除しますか？");
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
})
