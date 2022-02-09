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
			<!--- blog single section start --->
			<div class="ms_blog_single_wrapper">
				<div class="row">
					<div class="col-lg-9 col-md-9">
						<div class="ms_blog_single">
							<div class="blog_single_img">
								<img src="images/blog/blog_single.jpg" alt="" class="img-fluid">
							</div>
							<div class="blog_single_content">
								<h3 class="ms_blog_title">Dream Your Moments</h3>
								<div class="ms_post_meta">
									<ul>
										<li>May 05,2018 / </li>
										<li>12 likes /    </li>
										<li>8 comments    </li>
									</ul>
								</div>
								<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</p>
								<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</p>
								<blockquote>
									Music is composed and performed for many purposes, ranging from aesthetic pleasure, religious or ceremonial purposes, or as an entertainment product for the marketplace.
								</blockquote>
								<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>
								<div class="ms_blog_tag foo_sharing">
									<ul>
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
										<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="blog_comments">
								<h1>comments</h1>
								<ol>
									<li>
										<div class="ms_comment_section">
											<div class="comment_img">
												<img src="images/blog/author.jpg" alt="">
											</div>
											<div class="comment_info">
												<div class="comment_head">
													<h3>Krystal C. Rahn</h3>
													<p>april 28,2018 at 20:45</p>
												</div>
												<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p>
												<a href="#" class="comment_reply">reply</a>
											</div>
										</div>
									</li>
								</ol>
							</div>
							<!----Blog Comment Form---->
							<div class="blog_comments_forms">
								<h1>Leave A Comment</h1>
								<form>
									<div class="row">
										<div class="col-lg-6 col-md-6">
											<div class="comment_input_wrapper">
												<input name="name" value="" type="text" class="cmnt_field" placeholder="Your Name">
											</div>
										</div>
										<div class="col-lg-6 col-md-6">
											<div class="comment_input_wrapper">
												<input name="email" value="" type="email" class="cmnt_field" placeholder="Your Email">
											</div>
										</div>
										<div class="col-lg-12 col-md-12">
											<div class="comment_input_wrapper">
												<textarea id="comment" name="comment" class="cmnt_field" placeholder="Your Comments"></textarea>
											</div>
										</div>
										<div class="col-lg-12 col-md-12">
											<div class="comment-form-submit">
												<input name="submit" type="submit" id="comment-submit" class="submit ms_btn" value="Post Comment">
											</div>
										</div>
									</div>
                               </form>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-3">
						<!----Sidebar Start---->
						<div class="ms_sidebar">
							<div class="widget widget_search">
								<input type="text" class="form-control" placeholder="Search...">
                                <button class="search_btn search_icon"><i class="fa fa-search" aria-hidden="true"></i></button>
							</div>
							<!--Categories-->
							<div class="widget widget_categories">
								<h2 class="widget-title">Categories</h2>
								<ul>
									<li><a href="#"> Artist & Band Profile</a></li>
									<li><a href="#"> Best Sale Album</a></li>
									<li><a href="#"> Concert Ticket</a></li>
									<li><a href="#"> Most View Videos</a></li>
									<li><a href="#"> Musical Instrument</a></li>
									<li><a href="#"> Top Songs</a></li>
								</ul>
                           </div>
						   <!--Feature Post-->
						   <div class="widget widget_recent_entries">
								<h2 class="widget-title">Feature Posts</h2>
								<ul>
									<li>
										<div class="recent_cmnt_img">
											<img src="images/weekly/song2.jpg" alt="">
										</div>
										<div class="recent_cmnt_data">
											<h4><a href="#">Dream Your Moments (Duet)</a></h4>
											<span>07 October 2018</span>
										</div>
									</li>
									<li>
										<div class="recent_cmnt_img">
											<img src="images/blog/fp_img1.jpg" alt="">
										</div>
										<div class="recent_cmnt_data">
											<h4><a href="#">Gimme Some Courage</a></h4>
											<span>11 Apr, 2018</span>
										</div>
									</li>
									<li>
										<div class="recent_cmnt_img">
											<img src="images/blog/fp_img2.jpg" alt="">
										</div>
										<div class="recent_cmnt_data">
											<h4><a href="#">Until I Met You</a></h4>
											<span>24 Apr, 2018</span>
										</div>
									</li>
								</ul>
                            </div>
							<!---Tags--->
							<div class="widget widget_tag_cloud">
								<h2 class="widget-title">Tags</h2>
								<ul>
									<li><a href="#">Musical</a></li>
									<li><a href="#">Blue Jazz</a></li>
									<li><a href="#">Event</a></li>
									<li><a href="#">Road Show</a></li>
									<li><a href="#">New Concert</a></li>
									<li><a href="#">Dancing</a></li>
									<li><a href="#">Top Artist & Band</a></li>
								</ul>
                           </div>
						</div>
					</div>
				</div>
			</div>
		</div>	
		<!----Footer Start---->
	
<%@ include file="../footer.jsp" %>