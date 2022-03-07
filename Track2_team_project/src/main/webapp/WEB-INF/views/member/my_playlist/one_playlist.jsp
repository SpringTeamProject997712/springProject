<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- main css files links -->
<%@ include file="../../header.jsp" %>

        <!----Album Single Section Start---->
        <div class="ms_album_single_wrapper">
            <div class="album_single_data abno_${view[0].abno}">
                <div class="album_single_img">
                	<c:if test="${not empty view[0].image}">
                    <img src="${pageContext.request.contextPath}/upload/${view[0].image}" alt="" class="img-fluid">
                  </c:if>
                  <c:if test="${empty view[0].image}">
                    <img src="/images/album/album1.jpg" alt="" class="img-fluid">
                  </c:if>
                </div>
                <input type="hidden" id="this_plbno" value="${this_plbno}">
                <div class="album_single_text">
                    <h2><input type="text" class="playlist-name" id="playlist-name" value="${justPlaylist.name}" >
                    	<c:if test="${justPlaylist.name != 'basic_playlist'}" >
                    		<a href="javascript:void(0)" class="ms_btn rename_button" onclick="modify_playlist_name()"><span class="play_all">名付け</span></a>
                    		<a href="javascript:void(0)" class="ms_btn rename_button" onclick="delete_playlist()"><span class="play_all">削除</span></a>
                    	</c:if>
                    	</h2>
                    <p class="singer_name">By - ${justPlaylist.id}</p>
                    <div class="album_feature">
                        <a href="#" class="album_date">${countTrack} songs | ${myPlaylist.length}</a>
                        <a href="#" class="album_date"></a>
                    </div>
                    <div class="album_btn">
                        <a href="javascript:void(0)" class="ms_btn play_btn playlist_play_button" id="go_plbno_${this_plbno}"><span class="play_all"><img src="/images/svg/play_all.svg" alt="">すべてを再生</span></a>
                        <a href="#" class="ms_btn playlist_add_queue" id="addPlbno_${this_plbno}"><span class="play_all"><img src="/images/svg/add_q.svg" alt="">再生列に追加</span></a>
                    </div>
                </div>
                <div class="album_more_optn ms_more_icon">
                    <span><img src="/images/svg/more.svg" alt=""></span>
                </div>
                <ul class="more_option">
                    <li><a href="javascript:void(0)" class="share_this_page"><span class="opt_icon"><span class="icon icon_share"></span></span>公有</a></li>
                </ul>
            </div>
            <!----Song List---->
			<div class="album_inner_list">
				<div class="album_list_wrapper">
					<ul class="album_list_name">
						<li>#</li>
						<li>タイトル</li>
						<li>アーティスト</li>
						<li class="text-center">時間</li>
						<li class="text-center">いいね</li>
						<li class="text-center">その他</li>
					</ul>
					
					<!-- track list start -->
				<c:if test="${not empty view}">
					<c:set value="${1}" var="num"/>
					<c:forEach var="viewOne" items="${view}">
					<ul class="single_track_tr" id="tbno_for_remove_${viewOne.tbno}">
						<li><a class="play_track_in_album" id="${viewOne.tbno}" href="javascript:void(0)"><span class="play_no">${num}</span><span class="play_hover"></span></a></li>
						<li><a href="#">${viewOne.tname}</a></li>
						<li><a href="#">${viewOne.singer}</a></li>
						<li class="text-center"><a href="#">${viewOne.length}</a></li>
						<li class="text-center"><a href="javascript:void(0);" class="fav_box" id="pbno_${viewOne.pbno}"><span class="ms_icon1 ms_fav_icon"></span></a></li>
						<li class="text-center ms_more_icon"><a href="javascript:void(0)" class="remove_single_track_in_playlist"><img alt="" src="/images/svg/close.svg"></a></li>
						<c:set value="${num+1}" var="num"/>
					</ul>
					
					</c:forEach>
				</c:if>
				<c:if test="${empty view}">
						<h2 style="font-size: 20px; text-align: center; padding:20px">新しい歌を追加して 自分だけのプレイリストを作りましょう</h2>
						
				</c:if>
					<!-- track list end -->
					<span class="btn text-center add_playlist_btn"><a href="javascript:void(0)" class="ms_btn musicSearch_on"><span class="play_all">+追加する</span></a></span>
					
					<div id="musicSearchMan" class="myMusicForPlaylist">
            <div class="myMusicForPlaylist-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <button type="button" class="close">
											<i class="fa_icon form_close"></i>
										</button>
                    <div class="modal-body">
                        <div class="ms_register_img">
                            <img src="/images/register_img.png" alt="" class="img-fluid" />
                        </div>
                        <div class="musicSearch_form ms_register_form">
                          <h2>ミュージック検索"</h2>
                          <form action="/member/join" method="post" name="joinForm">
                          	<input id="csrfToken" type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	                          <div class="form-group">
	                            <input type="text" name="musicName" id="musicSearcherForPlaylist" placeholder="" class="form-control">
	                            <span class="form_icon">
																<i class="fa_icon form-user" aria-hidden="true"></i>
															</span>
	                          </div>
	                          <a href="javascript:go_searchForPlaylist()" class="ms_btn">検索</a>
                       		</form>
                       		<div class="instantTableMaker black_some_box" id="instantTable">
	                        </div>
                        </div>
                    </div>
                    <!-- modalbody -->
                </div>
            </div>
        </div>
        <!-- 모달끝 -->
				</div>
			</div>
        </div>
        <!---Main Content Start--->
        <div class="ms_content_wrapper ms_album_content">
            <!----Featured Albumn Section Start---->
            
            <!----New Releases Section Start---->
            <div class="ms_releases_wrapper">
                <div class="ms_heading">
                    <h1>新しいアルバム</h1>
                    <span class="veiw_all"><a href="#">もっと見る</a></span>
                </div>
                <div class="ms_release_slider swiper-container">
                    <div class="ms_divider"></div>
                    <div class="swiper-wrapper">
                    
                       <!-- newly start -->
                       <c:forEach var="newly" items="${newly}">
                        <div class="swiper-slide">
                            <div class="ms_release_box">
                                <div class="w_top_song">
                                    <span class="slider_dot"></span>
                                    <div class="w_tp_song_img">

                                        <img src="/upload/${newly.image_50}" alt="">

                                        <div class="ms_song_overlay">
                                        </div>
                                        <div class="ms_play_icon instantly_play_track" id="${newly.tbno}">
                                        
                                            <img src="/images/svg/play.svg" alt="">
                                        
                                        </div>
                                    </div>
                                    <div class="w_tp_song_name">
                                        <h3><a href="/album/album_single?abno=${newly.abno}">${newly.tname}</a></h3>
                                        <p>${newly.name}</p>
                                    </div>
                                </div>
                                <div class="weekly_right">
                                    <span class="w_song_time">${newly.length}</span>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                        <!-- newly end -->
                       
                    </div>
                </div>
                <!-- Add Arrows -->
                <div class="swiper-button-next2 slider_nav_next"></div>
                <div class="swiper-button-prev2 slider_nav_prev"></div>
            </div>
            <!----Main div close---->
        </div>
        </div>
        <%@include file="../../footer.jsp" %>
        