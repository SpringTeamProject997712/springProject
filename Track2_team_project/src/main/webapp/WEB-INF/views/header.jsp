<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="jp">
<head>
    <title>Miraculous - Online Music Store Html Template</title>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta name="description" content="Music">
    <meta name="keywords" content="">
    <meta name="author" content="kamleshyadav">
    <meta name="MobileOptimized" content="320">
    <!--Start Style -->
    <link rel="stylesheet" type="text/css" href="/resources/css/fonts.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="/resources/js/plugins/swiper/css/swiper.min.css">
    <link rel="stylesheet" type="text/css" href="/resources/js/plugins/nice_select/nice-select.css">
    <link rel="stylesheet" type="text/css" href="/resources/js/plugins/player/volume.css">
	<link rel="stylesheet" type="text/css" href="/resources/js/plugins/scroll/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/style.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/my.css">
    <!-- Favicon Link -->
    <link rel="shortcut icon" type="image/png" href="../images/favicon.png">
</head>

<body>
	<!----Loader Start---->
	<div class="ms_loader">
		<div class="wrap">
		  <img src="../images/loader.gif" alt="">
		</div>
	</div>
	
	
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
                        <a href="/"><img src="../images/logo.png" alt="" class="img-fluid"/></a>
                    </div>
                    <div class="ms_logo_open">
                        <a href="/"><img src="../images/open_logo.png" alt="" class="img-fluid"/></a>
                    </div>
                </div>
                <div class="ms_nav_wrapper">
                    <ul>
                        <li><a href="/" class="active" title="Discover">

						<span class="nav_icon">
							<span class="icon icon_discover"></span>
						</span>
						<span class="nav_text">
							メイン

						</span>
						</a>
                        </li>
                        <li><a href="/album/album" title="Albums">
						<span class="nav_icon">
							<span class="icon icon_albums"></span>
						</span>
						<span class="nav_text">
							アルバム
						</span>
						</a>
                        </li>
                        <li><a href="/artist/artist.jsp" title="Artists">
						<span class="nav_icon">
							<span class="icon icon_artists"></span>
						</span>
						<span class="nav_text">
							アーティスト
						</span>
						</a>
                        </li>
                        <li><a href="genres.html" title="Genres">
						<span class="nav_icon">
							<span class="icon icon_genres"></span>
						</span>
						<span class="nav_text">
							ジャンル
						</span>
						</a>
                        </li>
                        <li><a href="top_track.html" title="Top Tracks">
						<span class="nav_icon">
							<span class="icon icon_tracks"></span>
						</span>
						<span class="nav_text">
							トップトラック
						</span>
						</a>
                        </li>
                       
                       
                    </ul>
                    <ul class="nav_downloads">
                        <li><a href="download.html" title="Downloads">
						<span class="nav_icon">
							<span class="icon icon_download"></span>
						</span>
						<span class="nav_text">
							ダウンロード
						</span>
						</a>
                        </li>
                        <li><a href="purchase.html" title="Purchased">
						<span class="nav_icon">
							<span class="icon icon_purchased"></span>
						</span>
						<span class="nav_text">
							購買リスト
						</span>
						</a>
                        </li>
                        <li><a href="favourite.html" title="Favourites">
						<span class="nav_icon">
							<span class="icon icon_favourite"></span>
						</span>
						<span class="nav_text">
							お気に入り
						</span>
						</a>
                        </li>
                        <li><a href="history.html" title="History">
						<span class="nav_icon">
							<span class="icon icon_history"></span>
						</span>
						<span class="nav_text">
							ヒストリー
						</span>
						</a>
                        </li>
                    </ul>
                    <ul class="nav_playlist">
                        <li><a href="feature_playlist.html" title="Featured Playlist">
						<span class="nav_icon">
							<span class="icon icon_fe_playlist"></span>
						</span>
						<span class="nav_text">
							プレイリスト
						</span>
						</a>
                        </li>
                        <li><a href="add_playlist.html" title="Create Playlist">
						<span class="nav_icon">
							<span class="icon icon_c_playlist"></span>
						</span>
						<span class="nav_text">
							リスト作成
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
                        <input type="text" class="form-control" placeholder="ミュージック検索">
                        <span class="search_icon">
							<img src="../images/svg/search.svg" alt="">
						</span>
                    </div>
                    <div class="ms_top_trend">
                        <span><a href="#"  class="ms_color">今日のおすすめ :</a></span> <span class="top_marquee"><a href="#">Dream your moments, Until I Met You, Gimme Some Courage, Dark Alley (+8 More)</a></span>
                    </div>
                </div>
                <div class="ms_top_right">
                    <div class="ms_top_lang">
                        <span data-toggle="modal" data-target="#lang_modal">言語 <img src="../images/svg/lang.svg" alt=""></span>
                    </div>
                    <sec:authorize access="isAnonymous()">
	                    <div class="ms_top_btn">
	                        <a href="javascript:;" class="ms_btn reg_btn" data-toggle="modal" data-target="#myModal"><span>新規登録</span></a>
	                        <a href="javascript:;" class="ms_btn login_btn" data-toggle="modal" data-target="#myModal1"><span>ログイン</span></a>
	                    </div>
                    </sec:authorize>
                    <sec:authorize access="isAuthenticated()">
                    	<sec:authentication property="principal" var="principal"/>
											<div class="ms_top_btn">
	                      <a href="upload.html" class="ms_btn">upload</a>
	                      <a href="javascript:;" class="ms_admin_name">Hello Bella 
	                      	<span class="ms_pro_name">ns</span>
												</a>
												<ul class="pro_dropdown_menu">
													<li><a href="/member/profile?id=${principal.username}">Profile</a></li>
													<li><a href="manage_acc.html" target="_blank">Pricing Plan</a></li>
													<li><a href="blog.html" target="_blank">Blog</a></li>
													<sec:authorize access="hasRole('ROLE_ADMIN')">
														<li><a href="/admin/admin">GO Admin</a></li>
													</sec:authorize>
													<li><a href="">Setting</a></li>
													<li><a href="/admin/adminLogout">Logout</a></li>
												</ul>
                    </div>
                    </sec:authorize>
                </div>
            </div>