<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

            <div class="ms_free_download ms_purchase_wrapper">
                <div class="ms_heading">
                    <h1>Your Tracks</h1>
                </div>
				<div class="album_inner_list">
					<div class="album_list_wrapper">
						<ul class="album_list_name">
							<li>#</li>
							<li>Song Title</li>
							<li>Album</li>
							<li class="text-center">Singer</li>
							<li class="text-center">Duration</li>
							<li class="text-center">Add To Favourites</li>
							<li class="text-center">More</li>
							<li class="text-center">Download</li>
						</ul>
						<!--  favourite song start -->
						<c:forEach var="olist" items="${olist}">
						<ul class="favouritelist">
							<li><a class="play_track_in_album" id="${olist.tbno}" href="javascript:void(0)"><span class="play_no">${olist.rownum}</span><span class="play_hover"></span></a></li>
							<li><a href="#">${olist.tname}</a></li>
							<li><a href="#">${olist.aname}</a></li>
							<li class="text-center"><a href="#">${olist.singer}</a></li>
							<li class="text-center"><a href="#">${olist.length}</a></li>
							<li class="text-center"><a href="javascript:void(0)" class="fav_box" id="pbno_${olist.pbno}"> <span class="ms_icon1 ms_fav_icon"> </span>
					</a></li>
							<li class="text-center ms_more_icon" id="this_track_pbno_${olist.pbno}"><a href="javascript:;"><span class="ms_icon1 ms_active_icon"></span></a>
								<div class="ms_play_icon" id="${olist.tbno}" style="display: none;"></div>
								<ul class="more_option">
									<li><a href="javascript:void(0)" class="add_queue_one_track"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
									<li><a href="javascript:void(0)" class="add_track_to_cart"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Add Cart</a></li>
									<li><a href="javascript:void(0)" class="add_track_to_playlist"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
									<li><a href="javascript:void(0)" class="share_this_page"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
								</ul>
							</li>
							<li class="text-center">
							<a href="javascript:void(0)" id="rownum_${olist.songrealname}" class="target-databox" data-songname="${olist.songname}">
							<span class="ms_close" style="background-color:transparent;">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
									  <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293V4.5z" />
									</svg>
							</span>
							</a>
							</li>
						</ul>
						</c:forEach>
						<!-- favourite song end -->
						
					</div>
				</div>
            </div>
            
            
            <div class="ms_free_download ms_purchase_wrapper">
                <div class="ms_heading">
                    <h1>Your Albums</h1>
                </div>
				<div class="album_inner_list">
					<div class="album_list_wrapper">
						<ul class="album_list_name">
							<li>#</li>
							<li>Album Title</li>
							<li>Cover</li>
							<li class="text-center">Singer</li>
							<li class="text-center">Total Duration</li>
							<li class="text-center">Add To Favourites</li>
							<li class="text-center">More</li>
							<li class="text-center">Download</li>
						</ul>
						<!--  favourite song start -->
						<c:forEach var="alist" items="${alist}">
						<ul class="favouritelist">
							<li><a class="play_track_in_album" id="${alist.abno}" href="javascript:void(0)"><span class="play_no">${alist.rownum}</span><span class="play_hover"></span></a></li>
							<li><a href="#">${alist.aname}</a></li>
							<li><a href="#"><img src="/upload/${alist.image}"></a></li>
							<li class="text-center"><a href="#">${alist.singer}</a></li>
							<li class="text-center"><a href="#">${alist.length}</a></li>
							<li class="text-center"><a href="javascript:void(0)" class="fav_box" id="pbno_${alist.pbno}"> <span class="ms_icon1 ms_fav_icon"> </span>
					</a></li>
							<li class="text-center ms_more_icon" id="this_track_pbno_${alist.pbno}"><a href="javascript:;"><span class="ms_icon1 ms_active_icon"></span></a>
								<div class="ms_play_icon" id="${alist.tbno}" style="display: none;"></div>
								<ul class="more_option">
									<li><a href="javascript:void(0)" class="add_queue_one_track"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
									<li><a href="javascript:void(0)" class="add_track_to_cart"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Add Cart</a></li>
									<li><a href="javascript:void(0)" class="add_track_to_playlist"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
									<li><a href="javascript:void(0)" class="share_this_page"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
								</ul>
							</li>
							<li class="text-center">
							<a href="javascript:void(0)" id="rownum_${alist.songrealname}" class="target-databox" data-songname="${alist.songname}">
							<span class="ms_close" style="background-color:transparent;">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
									  <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293V4.5z" />
									</svg>
							</span>
							</a>
							</li>
						</ul>
						</c:forEach>
						<!-- favourite song end -->
						
					</div>
				</div>
            </div>
            <!----Main div close---->
      </div>
        <!----Footer Start---->
        
        
        
        
<script>
	$(".target-databox").click(function(){
		var filePath = "/upload/"+$(this).attr('id').substring(7);
		var fileName = $(this).data('songname');
		location.href = "/download?filePath="+filePath+"&fileName="+fileName;
	});
</script>

<%@ include file="../footer.jsp" %>