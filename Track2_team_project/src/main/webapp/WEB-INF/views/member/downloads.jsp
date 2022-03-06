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
							<li><a href="#"><span class="play_no">${olist.rownum}</span><span class="play_hover"></span></a></li>
							<li><a href="#">${olist.tname}</a></li>
							<li><a href="#">${olist.aname}</a></li>
							<li class="text-center"><a href="#">${olist.singer}</a></li>
							<li class="text-center"><a href="#">${olist.length}</a></li>
							<li class="text-center"><a href="javascript:void(0)" class="fav_box" id="pbno_${olist.pbno}"> <span class="ms_icon1 ms_fav_icon"> </span>
					</a></li>
							<li class="text-center ms_more_icon"><a href="javascript:;"><span class="ms_icon1 ms_active_icon"></span></a>
								<ul class="more_option">
									<li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
								</ul>
							</li>
							<li class="text-center">
							<a href="javascript:void(0)" id="${olist.rownum }">
							<span class="ms_close" style="background-color:transparent;">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
									  <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293V4.5z" />
									</svg>
							</span>
							</a>
							</li>
						</ul>
						<script>
						$("#${olist.rownum}").click(function(){
							
						    var filePath = "${olist.songrealname}";
						    var fileName = "${olist.songname}";
						    
						    location.href = "/download?filePath="+filePath+"&fileName="+fileName;
						});
						</script>
						</c:forEach>
						<!-- favourite song end -->
						
					</div>
				</div>
            </div>
            <!----Main div close---->
        </div>
      </div>
        <!----Footer Start---->


<%@ include file="../footer.jsp" %>