//그냥 즉시!! 하나 재생하기
/*		$(document).on("click", ".ms_play_icon, .play_track_in_album", function(z){ //add함
			z.preventDefault();
			let track_number = $(this).attr('id');
			let add_resource;
			console.log("이 노래의 트랙 넘버는... "+track_number+"번!");
			if(track_number	){
				$.ajax({
					type:"get",
					url:"/track/selectTrackInJplayer",
					data:{tbno:track_number},
					async:false,
					error:function(xhr,r,err){
						console.log(xhr.r +"\n 내용 : " +xhr.reponseText+"\n 에러 : " +err);
					},success:function(data){
						add_resource = JSON.parse(data),
						add_resource.option = '<ul class="more_option"><li><a href="#"><span class="opt_icon" title="Add To Favourites"><span class="icon icon_fav"></span></span></a></li><li><a href="#"><span class="opt_icon" title="Add To Queue"><span class="icon icon_queue"></span></span></a></li><li><a href="#"><span class="opt_icon" title="Download Now"><span class="icon icon_dwn"></span></span></a></li><li><a href="#"><span class="opt_icon" title="Add To Playlist"><span class="icon icon_playlst"></span></span></a></li><li><a href="#"><span class="opt_icon" title="Share"><span class="icon icon_share"></span></span></a></li></ul>';
						console.log(add_resource);
					}
				});
				if($(".play_track_in_album")){
					
				}else{
					if($(".ms_active_play")){
						$(".ms_active_play .ms_play_icon").empty();
						$(".ms_active_play .ms_play_icon").append("<img src='/images/svg/play.svg'>");
						$(".ms_active_play").removeClass("ms_active_play");
					}
				}
				
				if($(".play_track_in_album")){
					
				}else{
					$(this).empty(),
					$(this).append("<div class='ms_bars'><div class='bar'></div><div class='bar'></div><div class='bar'></div><div class='bar'></div><div class='bar'></div><div class='bar'></div></div>");
					$(this).parent().parent().parent().parent().addClass("ms_active_play");
				}
				
			}else{
				console.log("트랙 번호가 지정되어 있지 않습니다.")
			}
			$("#jquery_jplayer_1").jPlayer("setMedia", add_resource);
			$(".jp-now-playing").html("<div class='jp-track-name'><span class='que_img'><img src='/upload/"+add_resource.image+"'></span><div class='que_data'>" + add_resource.title + " <div class='jp-artist-name'>" + add_resource.artist + "</div></div></div>");
			$("#jquery_jplayer_1").jPlayer("play");
		})
*/