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
    <!----Main Wrapper Start---->
    <div class="ms_main_wrapper">
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
                        <li><a href="index.jsp" class="active" title="Discover">
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
                        <li><a href="favourite.jsp" title="Favourites">
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
        <!---Main Content Start--->
        <div class="ms_content_wrapper padder_top80">
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
			<!--- blog section start --->
			<div class="ms_blog_wrapper">
				<div class="row">
					<div class="col-lg-6">
						<div class="ms_blog_section blog_active marger_bottom30">
							<div class="ms_blog_img">
								<img src="images/blog/blog1.jpg" alt="" class="img-fluid">
							</div>
							<div class="ms_main_overlay">
								<div class="ms_box_overlay"></div>
								<div class="ovrly_text_div">
									<span class="ovrly_text1"><a href="blog_single.jsp">Fenne Lily - Three Oh Nine</a></span>
									<div class="bottom">
										<span class="ovrly_text1">May 12,2018</span>
										<span class="ovrly_text2"><a href="blog_single.jsp"><i class="fa fa-long-arrow-right"></i></a></span>
									</div>
								</div>
							</div>
							<div class="ms_box_overlay_on">
								<div class="ovrly_text_div">
									<span class="ovrly_text1"><a href="#">Fenne Lily - Three Oh Nine</a></span>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="row">
							<div class="col-lg-6">
								<div class="ms_blog_section marger_bottom30">
									<div class="ms_blog_img">
										<img src="images/blog/blog2.jpg" alt="" class="img-fluid">
									</div>
									<div class="ms_main_overlay">
										<div class="ms_box_overlay"></div>
										<div class="ovrly_text_div">
											<span class="ovrly_text1"><a href="blog_single.jsp">Fenne Lily - Three Oh Nine</a></span>
											<div class="bottom">
												<span class="ovrly_text1">May 12,2018</span>
												<span class="ovrly_text2"><a href="blog_single.jsp"><i class="fa fa-long-arrow-right"></i></a></span>
											</div>
										</div>
									</div>
									<div class="ms_box_overlay_on">
										<div class="ovrly_text_div">
											<span class="ovrly_text1"><a href="#">Fenne Lily - Three Oh Nine</a></span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="ms_blog_section marger_bottom30">
									<div class="ms_blog_img">
										<img src="images/blog/blog3.jpg" alt="" class="img-fluid">
									</div>
									<div class="ms_main_overlay">
										<div class="ms_box_overlay"></div>
										<div class="ovrly_text_div">
											<span class="ovrly_text1"><a href="blog_single.jsp">Fenne Lily - Three Oh Nine</a></span>
											<div class="bottom">
												<span class="ovrly_text1">May 12,2018</span>
												<span class="ovrly_text2"><a href="blog_single.jsp"><i class="fa fa-long-arrow-right"></i></a></span>
											</div>
										</div>
									</div>
									<div class="ms_box_overlay_on">
										<div class="ovrly_text_div">
											<span class="ovrly_text1"><a href="#">Fenne Lily - Three Oh Nine</a></span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="ms_blog_section marger_bottom30">
									<div class="ms_blog_img">
										<img src="images/blog/blog4.jpg" alt="" class="img-fluid">
									</div>
									<div class="ms_main_overlay">
										<div class="ms_box_overlay"></div>
										<div class="ovrly_text_div">
											<span class="ovrly_text1"><a href="blog_single.jsp">Fenne Lily - Three Oh Nine</a></span>
											<div class="bottom">
												<span class="ovrly_text1">May 12,2018</span>
												<span class="ovrly_text2"><a href="blog_single.jsp"><i class="fa fa-long-arrow-right"></i></a></span>
											</div>
										</div>
									</div>
									<div class="ms_box_overlay_on">
										<div class="ovrly_text_div">
											<span class="ovrly_text1"><a href="#">Fenne Lily - Three Oh Nine</a></span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="ms_blog_section marger_bottom30">
									<div class="ms_blog_img">
										<img src="images/blog/blog5.jpg" alt="" class="img-fluid">
									</div>
									<div class="ms_main_overlay">
										<div class="ms_box_overlay"></div>
										<div class="ovrly_text_div">
											<span class="ovrly_text1"><a href="blog_single.jsp">Fenne Lily - Three Oh Nine</a></span>
											<div class="bottom">
												<span class="ovrly_text1">May 12,2018</span>
												<span class="ovrly_text2"><a href="blog_single.jsp"><i class="fa fa-long-arrow-right"></i></a></span>
											</div>
										</div>
									</div>
									<div class="ms_box_overlay_on">
										<div class="ovrly_text_div">
											<span class="ovrly_text1"><a href="#">Fenne Lily - Three Oh Nine</a></span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6">	
					<div class="row">
						<div class="col-lg-5">
							<div class="ms_blog_section marger_bottom30">
								<div class="ms_blog_img">
									<img src="images/blog/blog6.jpg" alt="" class="img-fluid">
								</div>
								<div class="ms_main_overlay">
									<div class="ms_box_overlay"></div>
									<div class="ovrly_text_div">
										<span class="ovrly_text1"><a href="blog_single.jsp">Fenne Lily - Three Oh Nine</a></span>
										<div class="bottom">
											<span class="ovrly_text1">May 12,2018</span>
											<span class="ovrly_text2"><a href="blog_single.jsp"><i class="fa fa-long-arrow-right"></i></a></span>
										</div>
									</div>
								</div>
								<div class="ms_box_overlay_on">
									<div class="ovrly_text_div">
										<span class="ovrly_text1"><a href="#">Fenne Lily - Three Oh Nine</a></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-7">
							<div class="ms_blog_section marger_bottom30">
								<div class="ms_blog_img">
									<img src="images/blog/blog8.jpg" alt="" class="img-fluid">
								</div>
								<div class="ms_main_overlay">
									<div class="ms_box_overlay"></div>
									<div class="ovrly_text_div">
										<span class="ovrly_text1"><a href="blog_single.jsp">Fenne Lily - Three Oh Nine</a></span>
										<div class="bottom">
											<span class="ovrly_text1">May 12,2018</span>
											<span class="ovrly_text2"><a href="blog_single.jsp"><i class="fa fa-long-arrow-right"></i></a></span>
										</div>
									</div>
								</div>
								<div class="ms_box_overlay_on">
									<div class="ovrly_text_div">
										<span class="ovrly_text1"><a href="#">Fenne Lily - Three Oh Nine</a></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-7">
							<div class="ms_blog_section">
								<div class="ms_blog_img">
									<img src="images/blog/blog10.jpg" alt="" class="img-fluid">
								</div>
								<div class="ms_main_overlay">
									<div class="ms_box_overlay"></div>
									<div class="ovrly_text_div">
										<span class="ovrly_text1"><a href="blog_single.jsp">Fenne Lily - Three Oh Nine</a></span>
										<div class="bottom">
											<span class="ovrly_text1">May 12,2018</span>
											<span class="ovrly_text2"><a href="blog_single.jsp"><i class="fa fa-long-arrow-right"></i></a></span>
										</div>
									</div>
								</div>
								<div class="ms_box_overlay_on">
									<div class="ovrly_text_div">
										<span class="ovrly_text1"><a href="#">Fenne Lily - Three Oh Nine</a></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-5">
							<div class="ms_blog_section">
								<div class="ms_blog_img">
									<img src="images/blog/blog9.jpg" alt="" class="img-fluid">
								</div>
								<div class="ms_main_overlay">
									<div class="ms_box_overlay"></div>
									<div class="ovrly_text_div">
										<span class="ovrly_text1"><a href="blog_single.jsp">Fenne Lily - Three Oh Nine</a></span>
										<div class="bottom">
											<span class="ovrly_text1">May 12,2018</span>
											<span class="ovrly_text2"><a href="blog_single.jsp"><i class="fa fa-long-arrow-right"></i></a></span>
										</div>
									</div>
								</div>
								<div class="ms_box_overlay_on">
									<div class="ovrly_text_div">
										<span class="ovrly_text1"><a href="#">Fenne Lily - Three Oh Nine</a></span>
									</div>
								</div>
							</div>
						</div>
					</div>
					</div>	
					<div class="col-lg-6">	
					<div class="row">
						<div class="col-lg-5">
							<div class="ms_blog_section marger_bottom30">
								<div class="ms_blog_img">
									<img src="images/blog/blog7.jpg" alt="" class="img-fluid">
								</div>
								<div class="ms_main_overlay">
									<div class="ms_box_overlay"></div>
									<div class="ovrly_text_div">
										<span class="ovrly_text1"><a href="blog_single.jsp">Fenne Lily - Three Oh Nine</a></span>
										<div class="bottom">
											<span class="ovrly_text1">May 12,2018</span>
											<span class="ovrly_text2"><a href="blog_single.jsp"><i class="fa fa-long-arrow-right"></i></a></span>
										</div>
									</div>
								</div>
								<div class="ms_box_overlay_on">
									<div class="ovrly_text_div">
										<span class="ovrly_text1"><a href="#">Fenne Lily - Three Oh Nine</a></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-7">
							<div class="ms_blog_section marger_bottom30">
								<div class="ms_blog_img">
									<img src="images/blog/blog11.jpg" alt="" class="img-fluid">
								</div>
								<div class="ms_main_overlay">
									<div class="ms_box_overlay"></div>
									<div class="ovrly_text_div">
										<span class="ovrly_text1"><a href="blog_single.jsp">Fenne Lily - Three Oh Nine</a></span>
										<div class="bottom">
											<span class="ovrly_text1">May 12,2018</span>
											<span class="ovrly_text2"><a href="blog_single.jsp"><i class="fa fa-long-arrow-right"></i></a></span>
										</div>
									</div>
								</div>
								<div class="ms_box_overlay_on">
									<div class="ovrly_text_div">
										<span class="ovrly_text1"><a href="#">Fenne Lily - Three Oh Nine</a></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-7">
							<div class="ms_blog_section">
								<div class="ms_blog_img">
									<img src="images/blog/blog12.jpg" alt="" class="img-fluid">
								</div>
								<div class="ms_main_overlay">
									<div class="ms_box_overlay"></div>
									<div class="ovrly_text_div">
										<span class="ovrly_text1"><a href="blog_single.jsp">Fenne Lily - Three Oh Nine</a></span>
										<div class="bottom">
											<span class="ovrly_text1">May 12,2018</span>
											<span class="ovrly_text2"><a href="blog_single.jsp"><i class="fa fa-long-arrow-right"></i></a></span>
										</div>
									</div>
								</div>
								<div class="ms_box_overlay_on">
									<div class="ovrly_text_div">
										<span class="ovrly_text1"><a href="#">Fenne Lily - Three Oh Nine</a></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-5">						
							<div class="ms_blog_section">
								<div class="ms_blog_img">
									<img src="images/blog/blog13.jpg" alt="" class="img-fluid">
								</div>
								<div class="ms_main_overlay">
									<div class="ms_box_overlay"></div>
									<div class="ovrly_text_div">
										<span class="ovrly_text1"><a href="blog_single.jsp">Fenne Lily - Three Oh Nine</a></span>
										<div class="bottom">
											<span class="ovrly_text1">May 12,2018</span>
											<span class="ovrly_text2"><a href="blog_single.jsp"><i class="fa fa-long-arrow-right"></i></a></span>
										</div>
									</div>
								</div>
								<div class="ms_box_overlay_on">
									<div class="ovrly_text_div">
										<span class="ovrly_text1"><a href="#">Fenne Lily - Three Oh Nine</a></span>
									</div>
								</div>
							</div>
						</div>
					</div>
					</div>	
				</div>
			</div>
			<!--- blog section end --->
		</div>
		
        <!----Footer Start---->
        
<%@ include file="../footer.jsp" %>