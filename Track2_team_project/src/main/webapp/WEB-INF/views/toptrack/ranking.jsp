<%@ include file="../header.jsp" %>
            <!---Weekly Top 15--->
            <div class="ms_weekly_wrapper">
                <div class="ms_weekly_inner">
                    <div class="row">
                    	<div class="col-lg-1"></div>
                        <div class="col-lg-11">
                            <div class="ms_heading">
                                <h1>ALL RANKING</h1>
                            </div>
                        </div>
                        <div class="col-lg-12">
                        <div class="row">
                        <div class="col-lg-3"></div>
                           <!-- start -->
                      
                         <c:forEach var="top" items="${allrank}" begin="0" end="2">
                        <div class="col-lg-2 col-md-6">
                            <div class="ms_rcnt_box marger_bottom30">
                                <div class="ms_rcnt_box_img">
                                    <img src="${pageContext.request.contextPath}/upload/${top.image_240}" alt="" class="img-fluid">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                          <li><a href="javascript:void(0)" class="add_queue_one_track_top"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                    <li><a href="javascript:void(0)" class="add_track_to_cart"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Add Cart</a></li>
                                    <li><a href="javascript:void(0)" class="add_track_to_playlist"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                    <li><a href="javascript:void(0)" class="share_this_page"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon instantly_play_track" id="${top.tbno}">
                                            <img src="/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                <div class="ms_weekly_box">
                                <div class="weekly_left">
                                <span class="w_top_no">${top.rownum}</span>
                                </div>
                                <h3><a href="/album/album_single?abno=${top.abno}">${top.name}</a></h3>
                                    <p>${top.singer}</p>
                                </div>
                                </div>
                            </div>
                        </div>
                         </c:forEach>
                        <!-- end -->
                   
                        </div>
                        </div>
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10 col-md-12 padding_right40">
                           
                             <!-- TOP 15 start -->
                             <c:forEach var="top" items="${allrank}" begin="3">
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
                                            <h3 style="font-size:24px"><a href="/album/album_single?abno=${top.abno}">${top.name}</a></h3>
                                            <p  style="font-size:16px">${top.singer}</p>
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
                        <div class="col-lg-1"></div>
                    </div>
                </div>
            </div>
		</div>
<%@ include file="../footer.jsp" %>