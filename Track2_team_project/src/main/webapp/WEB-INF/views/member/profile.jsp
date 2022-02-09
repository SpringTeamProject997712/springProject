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
    <div class="ms_main_wrapper ms_profile">
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
        <div class="padder_top80">
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
                        <a href="upload.jsp" class="ms_btn">upload</a>
                        <a href="javascript:;" class="ms_admin_name">Hello Bella <span class="ms_pro_name">ns</span>													
						</a>
						<ul class="pro_dropdown_menu">
							<li><a href="profile.jsp">Profile</a></li>
							<li><a href="manage_acc.jsp" target="_blank">Pricing Plan</a></li>
							<li><a href="blog.jsp" target="_blank">Blog</a></li>
							<li><a href="">Setting</a></li>
							<li><a href="">Logout</a></li>
						</ul>
                    </div>
                </div>
            </div>
            <!----Edit Profile Wrapper Start---->
            <div class="ms_profile_wrapper">
                <h1>Edit Profile</h1>
                <div class="ms_profile_box">
                    <div class="ms_pro_img">
                        <img src="images/pro_img.jpg" alt="" class="img-fluid">
                        <div class="pro_img_overlay">
                            <i class="fa_icon edit_icon"></i>
                        </div>
                    </div>
                    <div class="ms_pro_form">
                        <div class="form-group">
                            <label>Your Name *</label>
                            <input type="text" placeholder="Bella Scott" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Your Email *</label>
                            <input type="text" placeholder="bella.scott@dummymail.com" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Your Password *</label>
                            <input type="password" placeholder="******" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Confirm Password *</label>
                            <input type="password" placeholder="******" class="form-control">
                        </div>
                        <div class="pro-form-btn text-center marger_top15">
                            <a href="#" class="ms_btn">save</a>
                            <a href="#" class="ms_btn">cancel</a>
                        </div>
                    </div>
                </div>
            </div>
            <!----Main div close---->
        </div>
        <!----Footer Start---->
		<%@ include file="../footer.jsp" %>