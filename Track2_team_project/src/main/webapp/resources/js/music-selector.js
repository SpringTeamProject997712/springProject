	var header = "${_csrf.headerName}";
	var token = "${_csrf.token}";

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
	    	type:"post",
	    	data:{name:currentVal},
	    	url:"/album/albumSearcher",
	    	dataType:"json",
	    	beforeSend: function(xhr){
            	xhr.setRequestHeader(header, token)
        	},
	    	error:function(xhr,p,rd){
	    		alert(xhr.p+"\n"+xhr.responseText+"\n"+rd+"라서 실패");
	    	},success:function(data){
	    		console.log(data);
	    		let printData = "<div class='ms_weekly_wrapper'><div class='ms_weekly_inner'><div class='row'><div class='col-lg-4 col-md-12 padding_right40'>";
	    		for(let i=0; i < data.length; i++ ){
	    			printData += "<div class='ms_weekly_box'>";
                    printData += "<div class='weekly_left'>";
                    printData += "<span class='w_top_no'>"+i+"</span>";
                    printData += "<div class='w_top_song'>";
	    			printData += "<div class='w_tp_song_img'><img src='/images/weekly/song1.jpg' alt='' class='img-fluid'>";
	    			printData += "<div class='ms_song_overlay'></div><div class='ms_play_icon'><img src='/images/svg/play.svg' alt=''></div>";
	    			printData += "</div><div class='w_tp_song_name'><h3><a href='#'>"+data[i].tname+"</a></h3><p>"+data[i].singer+"</p></div></div></div>";
	    			printData += "<div class='weekly_right'><span class='w_song_time'>11:11</span><span class='ms_more_icon' data-other='1'>";
					printData += "<img src='/images/svg/more.svg' alt=''></span></div>";
	    			printData += "<ul class='more_option'><li><a href='#'><span class='opt_icon'><span class='icon icon_fav'></span></span>Add To Favourites</a></li>";
                    printData += "<li><a href='#'><span class='opt_icon'><span class='icon icon_queue'></span></span>Add To Queue</a></li>";
                    printData += "<li><a href='#'><span class='opt_icon'><span class='icon icon_dwn'></span></span>Download Now</a></li>";
                    printData += "<li><a href='#'><span class='opt_icon'><span class='icon icon_playlst'></span></span>Add To Playlist</a></li>";
                    printData += "<li><a href='#'><span class='opt_icon'><span class='icon icon_share'></span></span>Share</a></li>";
                    printData += "</ul></div><div class='ms_divider'></div>";
	    			//테이블값 넣기
	    		}
	    		printData += "</div></div></div></div>"
	    		$("#instant_table_wrapper").html(printData); //테이블 생성
	    	}
	    });
	}); 

	$("#bookname").blur(function closeTable(){
		setTimeout(function(){
		$("#searchbook").html("");
		}, 1000);
	});