
	let a="";
	let b="";
	$("#entire_music_searcher").off().on("click" , "#selectData" , function jumpKing(){
		a = $(this).children(".bname").text();
		b = $(this).children(".bnum").text();
		if(a=="" || b==""){
			alert("꺼마워용");
		}else{
			$("#bookname").val(a);
			$("#book_num").val(b);
		}
		console.log(a);
		console.log(b);
	});

	$("#track_tracker").on("input", function() {
	    var currentVal = $(this).val();
	    $.ajax({
	    	type:"get",
	    	data:{name:currentVal},
//	    	dataType:"json",
	    	url:"/album/albumSearcher",
	    	error:function(xhr,p,rd){
	    		alert(xhr.p+"\n"+xhr.responseText+"\n"+rd+"라서 실패");
	    	},success:function(data){
	    		data = JSON.parse(data);
	    		console.log(data);
	    		let printData = "<div class='ms_weekly_wrapper'><div class='ms_weekly_inner'><div class='row'><div class='col-lg-8 col-md-12 padding_right40'>";
	    		for(let i=0; i < data.length; i++ ){
	    			printData += "<div class='ms_weekly_box'>";
                    printData += "<div class='weekly_left'>";
                    printData += "<div class='w_top_song'>";
	    			printData += "<div class='w_tp_song_img'><img src='/images/weekly/song1.jpg' alt='' class='img-fluid'>";
	    			printData += "<div class='ms_song_overlay'></div><div class='ms_play_icon'><img src='/images/svg/play.svg' alt=''></div>";
	    			printData += "</div><div class='w_tp_song_name'><h3><a href='/album/album_single?abno="+data[i].abno+"'>"+data[i].tname+"</a></h3><p>"+data[i].singer+"</p></div></div></div>";
	    			printData += "<div class='weekly_right'>";
					printData += "</div></div><div class='ms_divider'></div>";
	    			//테이블값 넣기
	    		}
	    		printData += "</div></div></div></div>"
	    		$("#instant_table_wrapper").html(printData); //테이블 생성
	    	}
	    });
	}); 

	$("#track_tracker").blur(function closeTable(){
		setTimeout(function(){
		$("#instant_table_wrapper").html("");
		}, 1000);
	});