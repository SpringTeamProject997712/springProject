
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
	    		let printData = "<div class='ms_weekly_wrapper padding_top_10'><div class='ms_weekly_inner'><div class='row'><div class='col-lg-8 col-md-12 padding_right40'>";
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
	    		printData += "</div></div></div></div>";
	    		$("#instant_table_wrapper").slideDown();
	    		$("#instant_table_wrapper").html(printData); //테이블 생성
	    	}
	    });
	}); 

	$("#track_tracker").blur(function closeTable(){
		setTimeout(function(){
			$("#instant_table_wrapper").html("");
			$("#instant_table_wrapper").slideUp();
		}, 1000);
	});
	
$("#musicSearcherForPlaylist").on("input", function(){
	let this_input = $("#musicSearcherForPlaylist");
	let current_val = $(this).val();
	$.ajax({
		type:"get",
	    data:{name:current_val},
//	    dataType:"json",
	    url:"/track/trackSearcher",
	    error:function(xhr,p,rd){
	    	alert(xhr.p+"\n"+xhr.responseText+"\n"+rd+"라서 실패");
	    },success:function(data){
	    	data = JSON.parse(data);
	    	console.log(data);
	    	let printData = "<div class='ms_weekly_wrapper padding_top_10'><div class='ms_weekly_inner'><div class='row'><div class='col-lg-8 col-md-12 padding_right40'>";
	    	for(let i=0; i < data.length; i++ ){
	    		printData += "<div class='ms_weekly_box click_for_playlist'>";
                printData += "<div class='weekly_left'>";
                printData += "<div class='w_top_song'>";
	    		printData += "<div class='w_tp_song_img'><img src='/images/weekly/song1.jpg' alt='' class='img-fluid'>";
	    		printData += "<div class='ms_song_overlay'></div><div class='ms_play_icon' id="+data[i].tbno+"><img src='/images/svg/play.svg' alt=''></div>";
	    		printData += "</div><div class='w_tp_song_name'><h3><a href='javascript:void(0)' onclick='go_add_playlist_this(this.id)' id='tbno_for_playlist_"+data[i].tbno+"'>"+data[i].tname+"</a></h3><p>"+data[i].singer+"</p></div></div></div>";
	    		printData += "<div class='weekly_right'>";
				printData += "</div></div><div class='ms_divider'></div>";
	    		//테이블값 넣기
	    	}
	    	printData += "</div></div></div></div>"
	    	$("#instantTable").html(printData); //테이블 생성
	    }
	})
})	

function go_add_playlist_this(track_id){
	let tbno = track_id.substring(18);
	let plbno = document.getElementById("this_plbno").value;
	console.log(tbno);
	console.log(plbno);
	$.ajax({
		type:"get",
		data:{tbno:tbno,plbno:plbno},
		url:"/createPlaylist/addOneTrack",
		error:function(xhr,status,err){
			console.log(xhr.status+"\n"+xhr.responseText+"\n"+err+"라서 실패")
		},success:function(data){
			if(data=='1'){
				location.reload();
			}else{
				console.log("실패...");
			}
		}
	})
}
	