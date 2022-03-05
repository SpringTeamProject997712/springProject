<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>

			<!--- Notice section start --->
			
		<div class="noticemain">
    	<div class="ms_heading">
      	<h1>Tracks</h1>
    	</div>
			<div class="album_inner_list">
			<c:if test="${not empty trackList}">
			<div class="album_list_wrapper">
				<ul class="album_list_name">
					<li>#</li>
					<li>Song Title</li>
					<li>Artist</li>
					<li class="text-center">Duration</li>
					<li class="text-center">Add To Favourites</li>
					<li class="text-center">More</li>
				</ul>

			<!-- track list start -->
			
			<c:set value="${1}" var="num" />
			<c:forEach var="view" items="${trackList}">
				<ul>
					<li><a class="play_track_in_album" id="${view.tbno}" href="javascript:void(0)"><span class="play_no">${num}</span><span class="play_hover"></span></a></li>
					<li><a href="#">${view.name}</a></li>
					<li><a href="#">${view.singer}</a></li>
					<li class="text-center"><a href="#">${view.length }</a></li>
					<li class="text-center"><a href="javascript:void(0)" class="fav_box" id="pbno_${view.pbno}"> <span class="ms_icon1 ms_fav_icon"> </span>
					</a></li>
					<li class="text-center ms_more_icon" id="this_track_pbno_${view.pbno}"><a href="javascript:;"><span class="ms_icon1 ms_active_icon"></span></a>
						<div class="ms_play_icon" id="${view.tbno}" style="display: none;"></div>
						<ul class="more_option">
							<li><a href="javascript:void(0)" class="add_queue_one_track"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
							<li><a href="javascript:void(0)" class="add_track_to_cart"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Add Cart</a></li>
							<li><a href="javascript:void(0)" class="add_track_to_playlist"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
							<li><a href="javascript:void(0)" class="share_this_page"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
						</ul>
					</li>
				</ul>
				<c:set value="${num+1}" var="num" />
			</c:forEach>
			
			
			<!-- track list end -->
		</div>
		</c:if>
		<c:if test="${empty trackList}">
				<p>검색 가능한 정보가 없습니다</p>
			</c:if>
	</div>
</div>
	<div class="noticemain">			
	<div class="ms_fea_album_slider padder_top10 ">
                <div class="ms_heading">
                    <h1>Albums</h1>
                </div>
                <c:if test="${not empty albumList}">
                <div class="ms_album_slider swiper-container">
                    <div class="swiper-wrapper">
                    
                    <!-- featured albums start -->
                    <c:forEach var="list" items="${albumList}">
                        <div class="swiper-slide">
                            <div class="ms_rcnt_box">
                                <div class="ms_rcnt_box_img">
                                    <img src="${pageContext.request.contextPath}/upload/${list.image_240}" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_play_icon album_play_button" id="playAbno_${list.abno}">
                                        <a href="javascript:void(0)">
                                            <img src="../images/svg/play.svg" alt="">
                                        </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="album_single?abno=${list.abno}&pageName=menu_album">${list.name} </a></h3>

                                    <p>${list.singer}</p>
                                </div>
                            </div>
                        </div>
                     </c:forEach>
                     <!-- featured albums end -->    
                    </div>
                </div>
                <!-- Add Arrows -->
                <div class="swiper-button-next3 slider_nav_next"></div>
                <div class="swiper-button-prev3 slider_nav_prev"></div>
                </c:if>
                <c:if test="${empty albumList}">
                	<p>검색 가능한 정보가 없습니다</p>
                </c:if>
            </div>
            </div>
						<!--- Search section end --->
					</div>
		
        <!----Footer Start---->
<%@ include file="../footer.jsp" %>