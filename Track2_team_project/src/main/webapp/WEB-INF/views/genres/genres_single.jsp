<%@ include file="../header.jsp" %>
<<<<<<< HEAD
=======

       
>>>>>>> branch 'master' of https://github.com/SpringTeamProject997712/springProject.git
            <!---Recently Played Music--->
            <div class="ms_rcnt_slider marger_top60">
                <div class="ms_heading">
                    <h1>
			 		 ${genrelist.genrenames}
					</h1>
                    <span class="veiw_all"><a href="#">view more</a></span>
                </div>
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                        
                        
                           <!-- genre single start -->
                           <c:forEach var="genre" items="${genres}">
                            <div class="swiper-slide">
                                <div class="ms_rcnt_box">
                                    <div class="ms_rcnt_box_img">
                                        <img src="${pageContext.request.contextPath}/upload/${genre.image}" alt="">
                                        <div class="ms_main_overlay">
                                            <div class="ms_box_overlay"></div>
                                            <div class="ms_more_icon">
                                                <img src="/images/svg/more.svg" alt="">
                                            </div>
                                            <ul class="more_option">
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Add Cart</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                            </ul>
                                            <div class="ms_play_icon">
                                                <img src="/images/svg/play.svg" alt="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="ms_rcnt_box_text">
                                        <h3><a href="/album/album_single?abno=${genre.abno}">${genre.tname }</a></h3>
                                        <p>${genre.singer}</p>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                             <!-- genre single end-->
                            
                        </div>
                    </div>
                    <!-- Add Arrows -->
                    <div class="swiper-button-next5 slider_nav_next"></div>
                    <div class="swiper-button-prev5 slider_nav_prev"></div>
            </div>
            
             <div class="ms_releases_wrapper">
                <div class="ms_heading">
                    <h1>Newly Released Albums</h1>
                    <span class="veiw_all"><a href="#">view more</a></span>
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
                                        <div class="ms_play_icon">
                                        
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
                        <!--  newly release album end -->
                        
                    </div>
                </div>
                <!-- Add Arrows -->
                <div class="swiper-button-next2 slider_nav_next"></div>
                <div class="swiper-button-prev2 slider_nav_prev"></div>
            </div>
           
        </div>
</div>
       <%@ include file="../footer.jsp" %>
