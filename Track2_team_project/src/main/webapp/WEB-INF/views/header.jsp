<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<% SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 a hh:mm:ss"); %>
<!DOCTYPE html>
<html lang="jp">
<head>
    <title>MOTUS - 音楽制作者の踏み台サイト</title>
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
    <link rel="shortcut icon" type="image/png" href="/images/favicon/favicon.png">
    <link rel="apple-touch-icon" sizes="180x180" href="/images/favicon/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="/images/favicon/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="/images/favicon/favicon-16x16.png">
	<link rel="manifest" href="/images/favicon/site.webmanifest">
	<link rel="mask-icon" href="/images/favicon/safari-pinned-tab.svg" color="#5bbad5">
	<meta name="msapplication-TileColor" content="#da532c">
	<meta name="theme-color" content="#ffffff">
    
    <script src="/resources/js/jquery.js"></script>
		<script src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js" type="text/javascript"></script>
    <script src="/resources/js/tj.js"></script>
</head>

<body>
	<!----Loader Start---->
	<div class="ms_loader">
		<div class="wrap">
		  <img src="/images/loader.gif" alt="">
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
                        <a href="/?pageName=menu_main"><img src="/images/logo/motus_logo_only.svg" style="" alt="" class="img-fluid" /></a>
                    </div>
                    <div class="ms_logo_open">
                        <a href="/?pageName=menu_main"><img src="/images/logo/motus_logo_name.svg" style="width:110px; height:100%; padding-top:10px;" alt="" class="img-fluid"/></a>
                    </div>
                </div>
                <div class="ms_nav_wrapper">
                    <ul>
                        <li>
                        <a href="#" class="menu" title="Discover" id="menu_main">
						<span class="nav_icon">
							<span class="icon icon_discover"></span>
						</span>
						<span class="nav_text">
							メイン
						</span>
						</a>
                        </li>
                        
                        <li>
                        <a href="#" class="menu" title="Albums" id="menu_album">
						<span class="nav_icon">
							<span class="icon icon_albums"></span>
						</span>
						<span class="nav_text">
							アルバム
						</span>
						</a>
                        </li>
                        <li><a href="#" class="menu" title="Genres" id="menu_genres">
						<span class="nav_icon">
							<span class="icon icon_genres"></span>
						</span>
						<span class="nav_text">
							ジャンル
						</span>
						</a>
                        </li>
                        <li><a href="#" class="menu" title="Top Tracks" id="menu_top_track">
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
                        <li><a href="#" class="menu" title="Purchased" id="menu_purchased">
						<span class="nav_icon">
							<span class="icon icon_download"></span>
						</span>
						<span class="nav_text">
							購買リスト
						</span>
						</a>
                        </li>
                        <li><a href="#" class="menu" class="nav_menu" title="Cart" id="menu_cart">
						<span class="nav_icon">
							<span class="icon icon_purchased"></span>
						</span>
						<span class="nav_text">
							カート
						</span>
						</a>
                        </li>
                        <li><a href="#" class="menu" title="Favourites" id="menu_favourite">
						<span class="nav_icon">
							<span class="icon icon_favourite"></span>
						</span>
						<span class="nav_text">
							お気に入り
						</span>
						</a>
                        </li>
                    </ul>
					<ul class="nav_playlist">
						<li><a href="#" class="menu" title="Featured Playlist" id="menu_playlist">
						<span class="nav_icon">
						<span class="icon icon_fe_playlist"></span>
							</span> <span class="nav_text"> プレイリスト </span>
						</a></li>
						<li><a href="#" class="menu" title="Create Playlist" id="menu_addlist">
						<span class="nav_icon">
						<span class="icon icon_c_playlist"></span>
							</span> <span class="nav_text"> リスト作成 </span>
						</a></li>
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
                    	<form method="get" name="entire_music_search_form" action="/search/search">
	                      <input type="text" name="search_keyword" id="track_tracker" class="form-control" placeholder="ミュージック検索">
	                      <span id="entire_music_searcher" class="search_icon">
													<img src="/images/svg/search.svg" alt="">
												</span>
											</form>
											<div class="instant_table_wrapper" id="instant_table_wrapper">
											</div>
                    </div>
                    <div class="ms_top_trend">
                        <span><a href="/notice/notice?pageName=menu_notice"  class="ms_color">お知らせ :</a>
                        </span> <span class="top_marquee"><a href="#">Dream your moments, Until I Met You, Gimme Some Courage, Dark Alley (+8 More)</a></span>
                    </div>
                </div>
                <div class="ms_top_right">
                    <sec:authorize access="isAnonymous()">
	                    <div class="ms_top_btn">
	                        <a href="javascript:;" class="ms_btn reg_btn" data-toggle="modal" data-target="#myModal"><span>新規登録</span></a>
	                        <a href="javascript:;" class="ms_btn login_btn" data-toggle="modal" data-target="#myModal1"><span>ログイン</span></a>
	                    </div>
                    </sec:authorize>
                    <sec:authorize access="isAuthenticated()">
                    	<sec:authentication property="principal" var="principal"/>
							<div class="ms_top_btn">
								<sec:authorize access="hasRole('ROLE_UPLOADER')">
	                   		   <a href="/upload/upload?pageName=menu_main" class="ms_btn">アップロード</a>
	                   		  </sec:authorize>
	                      <a href="javascript:;" class="ms_admin_name">ユザー： ${principal.member.name} 
	                      	<span class="ms_pro_name">${principal.member.name.substring(0,1)}</span>
					</a>
					<ul class="pro_dropdown_menu">
						<li><a href="/member/profile?id=${principal.username}">プロファイル</a></li>
						<li><a href="/member/my_playlist/my_playlist">マイリスト</a></li>
						<li><a href="/member/orderlist">注文履歴</a></li>
						<sec:authorize access="hasRole('ROLE_ADMIN')">
							<li><a href="/admin/admin">管理者ページ</a></li>
						</sec:authorize>
						<li><a href="/admin/adminLogout">ログアウト</a></li>
					</ul>
                   </div>
                    </sec:authorize>
                </div>
            </div>
<script>
        var pageSubmitFn = function(menu) {
	    		if(menu === "menu_main") {
	    			$("#activefrm").attr("action", "/");
	    			$("#pageName").val(menu);
	    		}else if(menu === "menu_album") {
	    			$("#activefrm").attr("action", "/album/album");
	    			$("#pageName").val(menu);
	    		}else if(menu === "menu_artists"){
	    			$("#activefrm").attr("action", "/artist/artist");
	    			$("#pageName").val(menu);
	    		}else if(menu === "menu_genres"){
	    			$("#activefrm").attr("action", "/genres/genres");
	    			$("#pageName").val(menu);
	    		}else if(menu === "menu_top_track"){
	    			$("#activefrm").attr("action", "/toptrack/toptrack");
	    			$("#pageName").val(menu);
	    		}else if(menu === "menu_cart"){
	    			$("#activefrm").attr("action", "/member/my_cart");
	    			$("#pageName").val(menu);
	    		}else if(menu === "menu_purchased"){
	    			$("#activefrm").attr("action", "/member/downloads");
	    			$("#pageName").val(menu);
	    		}else if(menu === "menu_favourite"){
	    			$("#activefrm").attr("action", "/member/favourite");
	    			$("#pageName").val(menu);
	    		}else if(menu === "menu_playlist"){
	    			$("#activefrm").attr("action", "/feature_playlist/feature_playlist");
	    			$("#pageName").val(menu);
	    		}else if(menu === "menu_addlist"){
	    			$("#activefrm").attr("action", "/member/my_playlist/my_playlist");
	    			$("#pageName").val(menu);
	    		}else if(menu === "menu_notice"){
	    			$("#activefrm").attr("action", "/notice/notice");
	    			$("#pageName").val(menu);
	    			}
	    		
    		$("#activefrm").submit();
		    }
		
		    $(function(){
		    	$(".menu").removeClass("active");
		    	var pageName = '<c:out value="${param.pageName}"/>';
		    	if(pageName){
		    		$("#"+pageName).addClass("active");
		    	}else{
		    		$("#menu_main").addClass("active");
		    	}
		    	
		    	
		    	$(".menu").click(function(){
		    		var menu = $(this).attr("id");
		    		pageSubmitFn(menu);
		    	})
		    })
		</script> 