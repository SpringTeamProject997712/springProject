<!DOCTYPE html>
<!-- 
Template Name: Miraculous - Online Music Store Html Template
Version: 1.0.0
Author: Kamleshyadav
Website: 
Purchase: 
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- Begin Head -->

<%@ include file="../header.jsp" %>

<body>
	<!----Loader---->
	<div class="ms_inner_loader">
		<div class="ms_loader">
			<div class="ms_bars">
				<div class="bar"></div>				
				<div class="bar"></div>
				<div class="bar"></div>
				<div class="bar"></div>
				<div class="bar"></div>
				<div class="bar"></div>
				<div class="bar"></div>
				<div class="bar"></div>
				<div class="bar"></div>
				<div class="bar"></div>
			</div>
		</div>
	</div>
    <!----Main Wrapper Start---->
    <div class="ms_main_wrapper">
        <!---Header--->
        <div class="ms_header">
            <div class="ms_top_left">
                <div class="ms_top_search">
                    <input type="text" class="form-control" placeholder="Search Music Here..">
                    <span class="search_icon">
							<img src="images/svg/search.svg" alt="">
						</span>
                </div>
                <div class="ms_top_trend">
                    <span><a href="#"  class="ms_color">Trending Songs :</a></span> <span class="top_marquee"><a href="#">Dream your moments, Until I Met You, Gimme Some Courage, Dark Alley (+8 More)</a></span>
                </div>
            </div>
            <div class="ms_top_right">
                <div class="ms_top_lang">
                    <span data-toggle="modal" data-target="#lang_modal">languages <img src="images/svg/lang.svg" alt=""></span>
                </div>
                <div class="ms_top_btn">
					<a href="javascript:;" class="ms_btn reg_btn" data-toggle="modal" data-target="#myModal"><span>register</span></a>
					<a href="javascript:;" class="ms_btn login_btn" data-toggle="modal" data-target="#myModal1"><span>login</span></a>
				</div>
            </div>
        </div>
        <!---Side Menu Start--->
        <!---Side Menu Start--->
        <div class="ms_sidemenu_wrapper">
            <div class="ms_nav_close">
                <i class="fa fa-angle-right" aria-hidden="true"></i>
            </div>
            <div class="ms_sidemenu_inner">
                <div class="ms_logo_inner">
                    <div class="ms_logo">
                        <a href="index.jsp"><img src="images/logo.png" alt="" class="img-fluid"/></a>
                    </div>
                    <div class="ms_logo_open">
                        <a href="index.jsp"><img src="images/open_logo.png" alt="" class="img-fluid"/></a>
                    </div>
                </div>
                <div class="ms_nav_wrapper">
                    <ul>
                        <li><a href="index.jsp"  title="Discover">
						<span class="nav_icon">
							<span class="icon icon_discover"></span>
						</span>
						<span class="nav_text">
							discover
						</span>
						</a>
                        </li>
                        <li><a href="album.jsp" title="Albums">
						<span class="nav_icon">
							<span class="icon icon_albums"></span>
						</span>
						<span class="nav_text">
							albums
						</span>
						</a>
                        </li>
                        <li><a href="artist.jsp" title="Artists">
						<span class="nav_icon">
							<span class="icon icon_artists"></span>
						</span>
						<span class="nav_text">
							artists
						</span>
						</a>
                        </li>
                        <li><a href="genres.jsp" title="Genres">
						<span class="nav_icon">
							<span class="icon icon_genres"></span>
						</span>
						<span class="nav_text">
							genres
						</span>
						</a>
                        </li>
                        <li><a href="top_track.jsp" title="Top Tracks">
						<span class="nav_icon">
							<span class="icon icon_tracks"></span>
						</span>
						<span class="nav_text">
							top tracks
						</span>
						</a>
                        </li>
                        <li><a href="free_music.jsp" title="Free Music">
						<span class="nav_icon">
							<span class="icon icon_music"></span>
						</span>
						<span class="nav_text">
							free music
						</span>
						</a>
                        </li>
                        <li><a href="stations.jsp" title="Stations">
						<span class="nav_icon">
							<span class="icon icon_station"></span>
						</span>
						<span class="nav_text">
							stations
						</span>
						</a>
                        </li>
                    </ul>
                    <ul class="nav_downloads">
                        <li><a href="download.jsp" title="Downloads">
						<span class="nav_icon">
							<span class="icon icon_download"></span>
						</span>
						<span class="nav_text">
							downloads
						</span>
						</a>
                        </li>
                        <li><a href="purchase.jsp" title="Purchased">
						<span class="nav_icon">
							<span class="icon icon_purchased"></span>
						</span>
						<span class="nav_text">
							purchased
						</span>
						</a>
                        </li>
                        <li><a href="favourite.jsp" class="active" title="Favourites">
						<span class="nav_icon">
							<span class="icon icon_favourite"></span>
						</span>
						<span class="nav_text">
							favourites
						</span>
						</a>
                        </li>
                        <li><a href="history.jsp" title="History">
						<span class="nav_icon">
							<span class="icon icon_history"></span>
						</span>
						<span class="nav_text">
							history
						</span>
						</a>
                        </li>
                    </ul>
                    <ul class="nav_playlist">
                        <li><a href="feature_playlist.jsp" title="Featured Playlist">
						<span class="nav_icon">
							<span class="icon icon_fe_playlist"></span>
						</span>
						<span class="nav_text">
							featured playlist
						</span>
						</a>
                        </li>
                        <li><a href="add_playlist.jsp" title="Create Playlist">
						<span class="nav_icon">
							<span class="icon icon_c_playlist"></span>
						</span>
						<span class="nav_text">
							create playlist
						</span>
						</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!----Album Single Section Start---->
        <!---Main Content Start--->
        <div class="ms_content_wrapper padder_top80">
            <!----Free Download Css Start---->
            <div class="ms_free_download ms_purchase_wrapper">
                <div class="ms_heading">
                    <h1>Your Favourites</h1>
                </div>
				<div class="album_inner_list">
					<div class="album_list_wrapper">
						<ul class="album_list_name">
							<li>#</li>
							<li>Song Title</li>
							<li>Album</li>
							<li class="text-center">price</li>
							<li class="text-center">Duration</li>
							<li class="text-center">Add To Favourites</li>
							<li class="text-center">More</li>
							<li class="text-center">remove</li>
						</ul>
						<ul>
							<li><a href="#"><span class="play_no">01</span><span class="play_hover"></span></a></li>
							<li><a href="#">Bloodlust</a></li>
							<li><a href="#">Dream Your Moments</a></li>
							<li class="text-center"><a href="#">$5</a></li>
							<li class="text-center"><a href="#">5:26</a></li>
							<li class="text-center"><a href="#"><span class="ms_icon1 ms_fav_icon"></span></a></li>
							<li class="text-center ms_more_icon"><a href="javascript:;"><span class="ms_icon1 ms_active_icon"></span></a>
								<ul class="more_option">
									<li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
								</ul>
							</li>
							<li class="text-center"><a href="#"><span class="ms_close">
									<img src="images/svg/close.svg" alt=""></span></a></li>
						</ul>
						<ul>
							<li><a href="#"><span class="play_no">02</span><span class="play_hover"></span></a></li>
							<li><a href="#">Desired Games</a></li>
							<li><a href="#">Dream Your Moments</a></li>
							<li class="text-center"><a href="#">$5</a></li>
							<li class="text-center"><a href="#">5:26</a></li>
							<li class="text-center"><a href="#"><span class="ms_icon1 ms_fav_icon"></span></a></li>
							<li class="text-center ms_more_icon"><a href="javascript:;"><span class="ms_icon1 ms_active_icon"></span></a>
								<ul class="more_option">
									<li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
								</ul>
							</li>
							<li class="text-center"><a href="#"><span class="ms_close">
									<img src="images/svg/close.svg" alt=""></span></a></li>
						</ul>
						<ul>
							<li><a href="#"><span class="play_no">03</span><span class="play_hover"></span></a></li>
							<li><a href="#">Until I Met You</a></li>
							<li><a href="#">Dream Your Moments</a></li>
							<li class="text-center"><a href="#">$5</a></li>
							<li class="text-center"><a href="#">5:26</a></li>
							<li class="text-center"><a href="#"><span class="ms_icon1 ms_fav_icon"></span></a></li>
							<li class="text-center ms_more_icon"><a href="javascript:;"><span class="ms_icon1 ms_active_icon"></span></a>
								<ul class="more_option">
									<li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
								</ul>
							</li>
							<li class="text-center"><a href="#"><span class="ms_close">
									<img src="images/svg/close.svg" alt=""></span></a></li>
						</ul>
						<ul class="play_active_song">
							<li><a href="#"><span class="play_no">04</span><span class="play_hover"></span></a></li>
							<li><a href="#">Dark Alley Acoustic</a></li>
							<li><a href="#">Dream Your Moments</a></li>
							<li class="text-center"><a href="#">free</a></li>
							<li class="text-center"><a href="#">5:26</a></li>
							<li class="text-center"><a href="#"><span class="ms_icon1 ms_fav_icon"></span></a></li>
							<li class="text-center ms_more_icon"><a href="javascript:;"><span class="ms_icon1 ms_active_icon"></span></a>
								<ul class="more_option">
									<li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
								</ul>
							</li>
							<li class="text-center"><a href="#"><span class="ms_close">
									<img src="images/svg/close.svg" alt=""></span></a></li>
						</ul>
						<ul>
							<li><a href="#"><span class="play_no">05</span><span class="play_hover"></span></a></li>
							<li><a href="#">Cloud nine</a></li>
							<li><a href="#">Dream Your Moments</a></li>
							<li class="text-center"><a href="#">$5</a></li>
							<li class="text-center"><a href="#">5:26</a></li>
							<li class="text-center"><a href="#"><span class="ms_icon1 ms_fav_icon"></span></a></li>
							<li class="text-center ms_more_icon"><a href="javascript:;"><span class="ms_icon1 ms_active_icon"></span></a>
								<ul class="more_option">
									<li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
								</ul>
							</li>
							<li class="text-center"><a href="#"><span class="ms_close">
									<img src="images/svg/close.svg" alt=""></span></a></li>
						</ul>
						<ul>
							<li><a href="#"><span class="play_no">06</span><span class="play_hover"></span></a></li>
							<li><a href="#">Walking Promises</a></li>
							<li><a href="#">Dream Your Moments</a></li>
							<li class="text-center"><a href="#">free</a></li>
							<li class="text-center"><a href="#">5:26</a></li>
							<li class="text-center"><a href="#"><span class="ms_icon1 ms_fav_icon"></span></a></li>
							<li class="text-center ms_more_icon"><a href="javascript:;"><span class="ms_icon1 ms_active_icon"></span></a>
								<ul class="more_option">
									<li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
								</ul>
							</li>
							<li class="text-center"><a href="#"><span class="ms_close">
									<img src="images/svg/close.svg" alt=""></span></a></li>
						</ul>
						<ul>
							<li><a href="#"><span class="play_no">07</span><span class="play_hover"></span></a></li>
							<li><a href="#">Endless Things</a></li>
							<li><a href="#">Dream Your Moments</a></li>
							<li class="text-center"><a href="#">$5</a></li>
							<li class="text-center"><a href="#">5:26</a></li>
							<li class="text-center"><a href="#"><span class="ms_icon1 ms_fav_icon"></span></a></li>
							<li class="text-center ms_more_icon"><a href="javascript:;"><span class="ms_icon1 ms_active_icon"></span></a>
								<ul class="more_option">
									<li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
								</ul>
							</li>
							<li class="text-center"><a href="#"><span class="ms_close">
									<img src="images/svg/close.svg" alt=""></span></a></li>
						</ul>
						<ul>
							<li><a href="#"><span class="play_no">08</span><span class="play_hover"></span></a></li>
							<li><a href="#">Gimme Some Courage</a></li>
							<li><a href="#">Dream Your Moments</a></li>
							<li class="text-center"><a href="#">$5</a></li>
							<li class="text-center"><a href="#">5:26</a></li>
							<li class="text-center"><a href="#"><span class="ms_icon1 ms_fav_icon"></span></a></li>
							<li class="text-center ms_more_icon"><a href="javascript:;"><span class="ms_icon1 ms_active_icon"></span></a>
								<ul class="more_option">
									<li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
								</ul>
							</li>
							<li class="text-center"><a href="#"><span class="ms_close">
									<img src="images/svg/close.svg" alt=""></span></a></li>
						</ul>
						<ul>
							<li><a href="#"><span class="play_no">09</span><span class="play_hover"></span></a></li>
							<li><a href="#">One More Stranger</a></li>
							<li><a href="#">Dream Your Moments</a></li>
							<li class="text-center"><a href="#">$5</a></li>
							<li class="text-center"><a href="#">5:26</a></li>
							<li class="text-center"><a href="#"><span class="ms_icon1 ms_fav_icon"></span></a></li>
							<li class="text-center ms_more_icon"><a href="javascript:;"><span class="ms_icon1 ms_active_icon"></span></a>
								<ul class="more_option">
									<li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
								</ul>
							</li>
							<li class="text-center"><a href="#"><span class="ms_close">
									<img src="images/svg/close.svg" alt=""></span></a></li>
						</ul>
						<ul>
							<li><a href="#"><span class="play_no">10</span><span class="play_hover"></span></a></li>
							<li><a href="#">Cloud nine</a></li>
							<li><a href="#">Dream Your Moments</a></li>
							<li class="text-center"><a href="#">$5</a></li>
							<li class="text-center"><a href="#">5:26</a></li>
							<li class="text-center"><a href="#"><span class="ms_icon1 ms_fav_icon"></span></a></li>
							<li class="text-center ms_more_icon"><a href="javascript:;"><span class="ms_icon1 ms_active_icon"></span></a>
								<ul class="more_option">
									<li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
									<li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
								</ul>
							</li>
							<li class="text-center"><a href="#"><span class="ms_close">
									<img src="images/svg/close.svg" alt=""></span></a></li>
						</ul>
						<div class="ms_view_more">
							<a href="#" class="ms_btn">view more</a>
						</div>
					</div>
				</div>
            </div>
            <!----Live Radio Section Start---->
            <div class="ms_radio_wrapper padder_top30">
                <div class="ms_heading">
                    <h1>Recently Played</h1>
                    <span class="veiw_all"><a href="#">view more</a></span>
                </div>
                <div class="ms_radio_slider swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="ms_rcnt_box">
                                <div class="ms_rcnt_box_img">
                                    <img src="images/music/r_music1.jpg" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="#">Top Trendings</a></h3>
                                    <p>Ava Cornish &amp; Brian Hill</p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="ms_rcnt_box">
                                <div class="ms_rcnt_box_img">
                                    <img src="images/featured/song4.jpg" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="#">New Romantic Charts</a></h3>
                                    <p>Ava Cornish &amp; Brian Hill</p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="ms_rcnt_box">
                                <div class="ms_rcnt_box_img">
                                    <img src="images/artist/artist2.jpg" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="#">Dance Beats - Hip Hops</a></h3>
                                    <p>Ava Cornish &amp; Brian Hill</p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="ms_rcnt_box">
                                <div class="ms_rcnt_box_img">
                                    <img src="images/music/r_music4.jpg" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="#">Workout Time</a></h3>
                                    <p>Ava Cornish &amp; Brian Hill</p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="ms_rcnt_box">
                                <div class="ms_rcnt_box_img">
                                    <img src="images/music/r_music5.jpg" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="#">Best Classics Of All Time</a></h3>
                                    <p>Ava Cornish &amp; Brian Hill</p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="ms_rcnt_box">
                                <div class="ms_rcnt_box_img">
                                    <img src="images/music/r_music6.jpg" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="#">Heart Broken - Soul Music</a></h3>
                                    <p>Ava Cornish &amp; Brian Hill</p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="ms_rcnt_box">
                                <div class="ms_rcnt_box_img">
                                    <img src="images/radio/img1.jpg" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="#">Dream Your Moments (Duet)</a></h3>
                                    <p>Ava Cornish &amp; Brian Hill</p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="ms_rcnt_box">
                                <div class="ms_rcnt_box_img">
                                    <img src="images/radio/img2.jpg" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="#">Until I Met You</a></h3>
                                    <p>Ava Cornish &amp; Brian Hill</p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="ms_rcnt_box">
                                <div class="ms_rcnt_box_img">
                                    <img src="images/radio/img3.jpg" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="#">Gimme Some Courage</a></h3>
                                    <p>Ava Cornish &amp; Brian Hill</p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="ms_rcnt_box">
                                <div class="ms_rcnt_box_img">
                                    <img src="images/radio/img4.jpg" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="#">Dark Alley Acoustic</a></h3>
                                    <p>Ava Cornish &amp; Brian Hill</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Add Arrows -->
                <div class="swiper-button-next4 slider_nav_next"></div>
                <div class="swiper-button-prev4 slider_nav_prev"></div>
            </div>
            <!----Main div close---->
        </div>
        <!----Footer Start---->
        
        <%@ include file="../footer.jsp" %>