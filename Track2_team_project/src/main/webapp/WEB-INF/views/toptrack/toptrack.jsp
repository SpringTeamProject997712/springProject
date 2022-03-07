<%@ include file="../header.jsp" %>
            <!---Weekly Top 15--->
            <div class="ms_weekly_wrapper">
                <div class="ms_weekly_inner">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="ms_heading">
                                <h1>Top 15 Albums</h1>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12">
                           
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
                        <div class="col-lg-4 col-md-12">
                           
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
                        <div class="col-lg-4 col-md-12">
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
            <div class="ms_featured_slider">
                <div class="ms_heading">
                    <h1>Top Tracks Of All Time</h1>
                    <span class="veiw_all"><a href="#">view more</a></span>
                </div>
                <div class="ms_feature_slider swiper-container">
                    <div class="swiper-wrapper">
                        <!-- start -->
                        <c:forEach var="top" items="${topalbum}">
                        
                        <div class="swiper-slide">
                            <div class="ms_rcnt_box">
                                <div class="ms_rcnt_box_img">
                                    <img src="${pageContext.request.contextPath}/upload/${top.image_240}" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="/album/album_single?abno=${top.abno}">${top.name}</a></h3>
                                    <p>${top.singer }</p>
                                </div>
                            </div>
                        </div>
                        <!-- end -->
                        </c:forEach>
                    </div>
                </div>
                <!-- Add Arrows -->
                <div class="swiper-button-next1 slider_nav_next"></div>
                <div class="swiper-button-prev1 slider_nav_prev"></div>
            </div>
            <!----New Releases Section Start---->
            <div class="ms_releases_wrapper">
                <div class="ms_heading">
                    <h1>Newly Released Albums</h1>
                    <span class="veiw_all"><a href="#">view more</a></span>
                </div>
                <div class="ms_release_slider swiper-container">
                    <div class="ms_divider"></div>
                    <div class="swiper-wrapper">
                    
                    <!--  newly release album start -->
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
                                        <div class="ms_play_icon" id="${newly.tbno}">

                                        
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
                        <!--  newly release album end -->
            <!----Live Radio Section Start---->
            
            <!----Main div close---->
        </div>
        </div>
      </div>


<%@ include file="../footer.jsp" %>