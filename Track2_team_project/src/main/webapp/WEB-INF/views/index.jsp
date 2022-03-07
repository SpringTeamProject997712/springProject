<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- main css files links -->
<%@ include file="header.jsp" %>

            
            
            <!---Banner--->
            <div class="ms-banner">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12">
                            <div class="ms_banner_img">
                                <img src="/upload/${bestAlbum.image}" alt="" class="img-fluid" style="width:511px; height:539px;">
                            </div>
                            <div class="ms_banner_text">
                                <h1>
                                	３月２週目
                                <br>今のベストアルバムは？</h1>
                                <h1 class="ms_color"><a href="/album/album_single?abno=${bestAlbum.abno}&pageName=menu_album">${bestAlbum.name}</a></h1>
                                <p>${bestAlbum.detail }</p>
                                <div class="ms_banner_btn">
                                    <a href="/album/album_single?abno=${bestAlbum.abno}&pageName=menu_album" class="ms_btn">Go Now</a>
                                    <a href="javascript:void(0)" class="ms_btn album_add_queue" id="run_abno_${bestAlbum.abno}">Add To Queue</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!---Recently Played Music--->
            
            <!---Weekly Top 15--->
            <div class="ms_weekly_wrapper">
                <div class="ms_weekly_inner">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="ms_heading">
                                <h1>Top 15 Tracks</h1>
                                <span class="veiw_all"><a href="/toptrack/ranking?pageName=menu_top_track">view more</a></span>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12 padding_right40">
                           
                             <!-- TOP 15 start -->
                             <c:forEach var="top" items="${topalbum}" begin="0" end="4">
                             
                            <div class="ms_weekly_box" id="this_track_pbno_${top.pbno}">
                                <div class="weekly_left">
                                    <span class="w_top_no">
																			${top.rownum }
																		</span>
                                    <div class="w_top_song">
                                        <div class="w_tp_song_img">
                                            <img src="${pageContext.request.contextPath}/upload/${top.image_50}" alt="">
                                            <div class="ms_song_overlay">
                                            </div>
                                            <div class="ms_play_icon instantly_play_track" id="${top.tbno}">
                                                <img src="../images/svg/play.svg" alt="">
                                            </div>
                                        </div>
                                        <div class="w_tp_song_name">
                                            <h3><a href="#">${top.name}</a></h3>
                                            <p>${top.singer}</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="weekly_right">
                                    <span class="w_song_time">${top.length}</span>
                                    <span class="ms_more_icon" data-other="1">
																	<img src="../images/svg/more.svg" alt="">									
																</span>
                                </div>
                                <ul class="more_option">
                                    <li><a href="javascript:void(0)" class="add_queue_one_track_top"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                    <li><a href="javascript:void(0)" class="add_track_to_cart"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Add Cart</a></li>
                                    <li><a href="javascript:void(0)" class="add_track_to_playlist"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                    <li><a href="javascript:void(0)" class="share_this_page"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                </ul>
                            </div>
							
                            <div class="ms_divider"></div>
                            </c:forEach>
                            <!-- TOP 15 end -->

                            
                        </div>
                        <div class="col-lg-4 col-md-12 padding_right40">
                           
                             <!-- TOP 15 start -->
                             <c:forEach var="top" items="${topalbum}" begin="5" end="9">
                             
                            <div class="ms_weekly_box" id="this_track_pbno_${top.pbno}">
                                <div class="weekly_left">
                                    <span class="w_top_no">
																			${top.rownum }
																		</span>
                                    <div class="w_top_song">
                                        <div class="w_tp_song_img">
                                            <img src="${pageContext.request.contextPath}/upload/${top.image_50}" alt="">
                                            <div class="ms_song_overlay">
                                            </div>
                                            <div class="ms_play_icon instantly_play_track" id="${top.tbno}">
                                                <img src="../images/svg/play.svg" alt="">
                                            </div>
                                        </div>
                                        <div class="w_tp_song_name">
                                            <h3><a href="#">${top.name}</a></h3>
                                            <p>${top.singer}</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="weekly_right">

                                    <span class="w_song_time">${top.length}</span>
                                    <span class="ms_more_icon" data-other="1">
																	<img src="../images/svg/more.svg" alt="">									
																</span>
                                </div>
                                <ul class="more_option">
                                    <li><a href="javascript:void(0)" class="add_queue_one_track_top"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                    <li><a href="javascript:void(0)" class="add_track_to_cart"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Add Cart</a></li>
                                    <li><a href="javascript:void(0)" class="add_track_to_playlist"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                    <li><a href="javascript:void(0)" class="share_this_page"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                </ul>
                            </div>

                            <div class="ms_divider"></div>

                            </c:forEach>
                            <!-- TOP 15 end -->

    					  </div>
                        <div class="col-lg-4 col-md-12 padding_right40">
                             <!-- TOP 15 start -->
                             <c:forEach var="top" items="${topalbum}" begin="10" end="14">
                             
                            <div class="ms_weekly_box" id="this_track_pbno_${top.pbno}">
                                <div class="weekly_left">
                                    <span class="w_top_no">
																			${top.rownum }
																		</span>
                                    <div class="w_top_song">
                                        <div class="w_tp_song_img">
                                            <img src="${pageContext.request.contextPath}/upload/${top.image_50}" alt="">
                                            <div class="ms_song_overlay">
                                            </div>
                                            <div class="ms_play_icon instantly_play_track" id="${top.tbno}">
                                                <img src="../images/svg/play.svg" alt="">
                                            </div>
                                        </div>
                                        <div class="w_tp_song_name">
                                            <h3><a href="#">${top.name}</a></h3>
                                            <p>${top.singer}</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="weekly_right">
                                    <span class="w_song_time">${top.length}</span>
                                    <span class="ms_more_icon" data-other="1">
																	<img src="../images/svg/more.svg" alt="">									
																</span>
                                </div>
                                <ul class="more_option">
                                  <li><a href="javascript:void(0)" class="add_queue_one_track_top"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                  <li><a href="javascript:void(0)" class="add_track_to_cart"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Add Cart</a></li>
                                  <li><a href="javascript:void(0)" class="add_track_to_playlist"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                  <li><a href="javascript:void(0)" class="share_this_page"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                </ul>
                            </div>

                            <div class="ms_divider"></div>
                            </c:forEach>
                            <!-- TOP 15 end -->


                        </div>
                        
                    </div>
                </div>
            </div>
            <!---Featured Artists Music--->
            
			<!----Add Section Start---->
			<div class="ms_advr_wrapper">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<a href="#"><img src="/images/adv.jpg" alt="" class="img-fluid"/></a>
						</div>
					</div>
				</div>
			</div>
            <!----New Releases Section Start---->
            <div class="ms_releases_wrapper">
                <div class="ms_heading">
                    <h1>New Releases</h1>
                    <span class="veiw_all"><a href="/album/album">view more</a></span>
                </div>
                <div class="ms_release_slider swiper-container">
                    <div class="ms_divider"></div>
                    <div class="swiper-wrapper">
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
                    </div>
                </div>
                <!-- Add Arrows -->
                <div class="swiper-button-next2 slider_nav_next"></div>
                <div class="swiper-button-prev2 slider_nav_prev"></div>
            </div>
            <!----Featured Albumn Section Start---->
        
            <div class="ms_fea_album_slider padder_top10 ">
                <div class="ms_heading">
                    <h1>Featured Albums</h1>
                    <span class="veiw_all"><a href="#">view more</a></span>
                </div>
                <div class="ms_album_slider swiper-container">
                    <div class="swiper-wrapper">
                    
                    <!-- featured albums start -->
                    <c:forEach var="list" items="${list}">
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
                                    <h3><a href="/album/album_single?abno=${list.abno}">${list.name}</a></h3>

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
            </div>
            <!----Top Genres Section Start---->
            <div class="ms_genres_wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="ms_heading">
                            <h1>Top Genres</h1>
                            <span class="veiw_all"><a href="/genres/genres">view more</a></span>
                        </div>
                    </div>
                    <div class="col-lg-4">
                    	<div class="row">
                    		<div class="col-lg-6">
	                        <div class="ms_genres_box">
	                            <img src="/images/genrs/romantic.svg" alt="" class="img-fluid"/>
	                            <div class="ms_main_overlay">
	                                <div class="ms_box_overlay"></div>
	                                <div class="ovrly_text_div">
	                                    <span class="ovrly_text1"><a href="/genres/genres_single?genre=1">ロマンチック</a></span>
	                                    <span class="ovrly_text2"><a href="/genres/genres_single?genre=1">リストへ</a></span>
	                                </div>
	                            </div>
	                            <div class="ms_box_overlay_on">
	                                <div class="ovrly_text_div">
	                                    <span class="ovrly_text1"><a href="/genres/genres_single?genre=1">ロマンチック</a></span>
	                                </div>
	                            </div>
	                        </div>
	                        </div>
	                        <div class="col-lg-6">
	                        <div class="ms_genres_box">
	                            <img src="/images/genrs/hiphop.svg" alt="" class="img-fluid" />
	                            <div class="ms_main_overlay">
	                                <div class="ms_box_overlay"></div>
	                                <div class="ovrly_text_div">
	                                    <span class="ovrly_text1"><a href="/genres/genres_single?genre=2">ヒップホップ</a></span>
	                                    <span class="ovrly_text2"><a href="/genres/genres_single?genre=2">リストへ</a></span>
	                                </div>
	                            </div>
	                            <div class="ms_box_overlay_on">
	                                <div class="ovrly_text_div">
	                                    <span class="ovrly_text1"><a href="/genres/genres_single?genre=2">ヒップホップ</a></span>
	                                </div>
	                            </div>
	                        </div>
	                        </div>
	                        <div class="col-lg-12" style="height:255px">
	                        <div class="ms_genres_box">
	                            <img src="/images/genrs/dancing.svg" alt="" class="img-fluid" />
	                            <div class="ms_main_overlay">
	                                <div class="ms_box_overlay"></div>
	                                <div class="ovrly_text_div">
	                                    <span class="ovrly_text1"><a href="/genres/genres_single?genre=3">ダンシング</a></span>
	                                	<span class="ovrly_text2"><a href="/genres/genres_single?genre=3">リストへ</a></span>
	                                </div>
	                            </div>
	                            <div class="ms_box_overlay_on">
	                                <div class="ovrly_text_div">
	                                    <span class="ovrly_text1"><a href="#">ダンシング</a></span>
	                                    
	                                </div>
	                            </div>
	                        </div>
	                        </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="ms_genres_box">
                                    <img src="/images/genrs/rock.svg" alt="" class="img-fluid" />
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ovrly_text_div">
                                            <span class="ovrly_text1"><a href="/genres/genres_single?genre=4">ロック</a></span>
                                            <span class="ovrly_text2"><a href="/genres/genres_single?genre=4">リストへ</a></span>
                                        </div>
                                    </div>
                                    <div class="ms_box_overlay_on">
                                        <div class="ovrly_text_div">
                                            <span class="ovrly_text1"><a href="#">ロック</a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="ms_genres_box">
                                    <img src="/images/genrs/jazz.svg" alt="" class="img-fluid" />
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ovrly_text_div">
                                            <span class="ovrly_text1"><a href="/genres/genres_single?genre=5">ジャズ</a></span>
                                            <span class="ovrly_text2"><a href="/genres/genres_single?genre=5">リストへ</a></span>
                                        </div>
                                    </div>
                                    <div class="ms_box_overlay_on">
                                        <div class="ovrly_text_div">
                                            <span class="ovrly_text1"><a href="#">ジャズ</a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="ms_genres_box">
                                    <img src="/images/genrs/metal.svg" alt="" class="img-fluid" />
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ovrly_text_div">
                                            <span class="ovrly_text1"><a href="/genres/genres_single?genre=6">メタル</a></span>
                                            <span class="ovrly_text2"><a href="/genres/genres_single?genre=6">リストへ</a></span>
                                        </div>
                                    </div>
                                    <div class="ms_box_overlay_on">
                                        <div class="ovrly_text_div">
                                            <span class="ovrly_text1"><a href="#">メタル</a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
                        <div class="col-lg-4">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="ms_genres_box">
                                    <img src="/images/genrs/pop.svg" alt="" class="img-fluid" />
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ovrly_text_div">
                                            <span class="ovrly_text1"><a href="/genres/genres_single?genre=7">ポップ</a></span>
                                            <span class="ovrly_text2"><a href="/genres/genres_single?genre=7">リストへ</a></span>
                                        </div>
                                    </div>
                                    <div class="ms_box_overlay_on">
                                        <div class="ovrly_text_div">
                                            <span class="ovrly_text1"><a href="#">ポップ</a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="ms_genres_box">
                                    <img src="/images/genrs/radio.svg" alt="" class="img-fluid" />
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ovrly_text_div">
                                            <span class="ovrly_text1"><a href="/genres/genres_single?genre=8">インディーズ</a></span>
                                            <span class="ovrly_text2"><a href="/genres/genres_single?genre=8">リストへ</a></span>
                                        </div>
                                    </div>
                                    <div class="ms_box_overlay_on">
                                        <div class="ovrly_text_div">
                                            <span class="ovrly_text1"><a href="#">インディーズ</a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    <div class="col-lg-12">
                        <div class="ms_genres_box">
                            <img src="/images/genrs/soul.svg" alt="" class="img-fluid" />
                            <div class="ms_main_overlay">
                                <div class="ms_box_overlay"></div>
                                <div class="ovrly_text_div">
                                    <span class="ovrly_text1"><a href="/genres/genres_single?genre=9">ソウル</a></span>
                                    <span class="ovrly_text2"><a href="/genres/genres_single?genre=9">リストへ</a></span>
                                </div>
                            </div>
                            <div class="ms_box_overlay_on">
                                <div class="ovrly_text_div">
                                    <span class="ovrly_text1"><a href="#">ソウル</a></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
          </div>        
			<!----Add Section Start---->
			<div class="ms_advr_wrapper ms_advr2">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<a href="#"><img src="/images/adv1.jpg" alt="" class="img-fluid"/></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
            <!----Main div close---->
            
<!-- main js files links -->
<%@ include file="footer.jsp" %>