<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<!--
* CoreUI - Free Bootstrap Admin Template
* @version v4.1.0
* @link https://coreui.io
* Copyright (c) 2021 creativeLabs Łukasz Holeczek
* Licensed under MIT (https://coreui.io/license)
-->

<!-- Breadcrumb-->
<html lang="en">
  <head>
<!--    	<base href="./"> -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <meta name="description" content="CoreUI - Open Source Bootstrap Admin Template">
    <meta name="author" content="Łukasz Holeczek">
    <meta name="keyword" content="Bootstrap,Admin,Template,Open,Source,jQuery,CSS,HTML,RWD,Dashboard">
    <title>관리자 페이지에 오신걸 환영합니다</title>
    <link rel="apple-touch-icon" sizes="57x57" href="/images/favicon/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="/images/favicon/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/images/favicon/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="/images/favicon/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/images/favicon/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="/images/favicon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/images/favicon/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="/images/favicon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="/images/favicon/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="/images/favicon/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/images/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="/images/favicon/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/images/favicon/favicon-16x16.png">
    <link rel="manifest" href="/images/favicon/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="/images/favicon/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <!-- Vendors styles-->
    <link rel="stylesheet" href="/resources/css/admin/simplebar.css">
    <link rel="stylesheet" href="/resources/css/admin/vendors/simplebar.min.css">
    <!-- Main styles for this application-->
    <link href="/resources/css/admin/style.min.css" rel="stylesheet">
    <!-- We use those styles to show code examples, you should remove them in your application.-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/prismjs@1.23.0/themes/prism.css">
    <link href="/resources/css/admin/examples.min.css" rel="stylesheet">
    <!-- Global site tag (gtag.js) - Google Analytics-->
    <script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-118965717-3"></script>
    <script src="/resources/js/jquery.js"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
      // Shared ID
      gtag('config', 'UA-118965717-3');
      // Bootstrap ID
      gtag('config', 'UA-118965717-5');
    </script>
    <link href="/resources/css/admin/coreui-chartjs.css" rel="stylesheet">
  </head>
  <body>
    <div class="sidebar sidebar-dark sidebar-fixed" id="sidebar">
      <div class="sidebar-brand d-none d-md-flex">
        <img src="/images/logo/motus_logo_side.svg" class="sidebar-brand-full" style="height:46px" alt="CoreUI Logo">
        <img src="/images/logo/motus_logo_only.svg" class="sidebar-brand-narrow" style="height:46px" alt="CoreUI Logo">
      </div>
      <ul class="sidebar-nav" data-coreui="navigation" data-simplebar>
        <li class="nav-item"><a class="nav-link" href="/admin/admin">
            <svg class="nav-icon">
              <use href="/images/svg/free.svg#cil-speedometer"></use>
            </svg> 管理者ホームへ</a></li>
        <li class="nav-item"><a class="nav-link" href="/">
            <svg class="nav-icon">
              <use href="/images/svg/free.svg#cil-pencil"></use>
            </svg> メインページへ</a></li>
        <!-- 어드민 만들기 좌측 메뉴 -->
        <li class="nav-title">管理ページ</li>
        
        <!-- 멤버관리 -->
        <li class="nav-group"><a class="nav-link nav-group-toggle" href="#">
            <svg class="nav-icon">
              <use href="/images/svg/free.svg#cil-puzzle"></use>
            </svg> ユザー</a>
          <ul class="nav-group-items">
            <li class="nav-item"><a class="nav-link" href="/admin/member/manage_member"><span class="nav-icon"></span> ユザー管理</a></li>
          </ul>
        </li>
        
        <li class="nav-group"><a class="nav-link nav-group-toggle" href="#">
            <svg class="nav-icon">
              <use href="/images/svg/free.svg#cil-puzzle"></use>
            </svg> 注文</a>
          <ul class="nav-group-items">
            <li class="nav-item"><a class="nav-link" href="/admin/order/manage_order"><span class="nav-icon"></span>注文管理</a></li>
          </ul>
        </li>
        
        <!-- 상품관리 -->
        <li class="nav-group"><a class="nav-link nav-group-toggle" href="#">
            <svg class="nav-icon">
              <use href="/images/svg/free.svg#cil-puzzle"></use>
            </svg>アルバム</a>
          <ul class="nav-group-items">
            <li class="nav-item"><a class="nav-link" href="/admin/album/manage_album"><span class="nav-icon"></span>アルバム管理</a></li>
          </ul>
        </li>
        
        <!-- 공지관리 -->
        <li class="nav-group"><a class="nav-link nav-group-toggle" href="#">
            <svg class="nav-icon">
              <use href="/images/svg/free.svg#cil-puzzle"></use>
            </svg>お知らせ</a>
          <ul class="nav-group-items">
            <li class="nav-item"><a class="nav-link" href="/admin/notice/manage_notice"><span class="nav-icon"></span>お知らせ管理</a></li>
          </ul>
        </li>
        
        <!-- 쿠폰관리 -->
        <li class="nav-group"><a class="nav-link nav-group-toggle" href="#">
            <svg class="nav-icon">
              <use href="/images/svg/free.svg#cil-puzzle"></use>
            </svg>クーポン</a>
          <ul class="nav-group-items">
            <li class="nav-item"><a class="nav-link" href="/admin/coupon/manage_coupon"><span class="nav-icon"></span>クーポン管理</a></li>
          </ul>
        </li>
      </ul>
      <button class="sidebar-toggler" type="button" data-coreui-toggle="unfoldable"></button>
    </div>
    <!-- 여기부터 상단 바임 -->
    <div class="wrapper d-flex flex-column min-vh-100 bg-light">
      <header class="header header-sticky mb-4">
        <div class="container-fluid">
          <button class="header-toggler px-md-0 me-md-3" type="button" onclick="coreui.Sidebar.getInstance(document.querySelector('#sidebar')).toggle()">
            <svg class="icon icon-lg">
              <use href="/images/svg/free.svg#cil-menu"></use>
            </svg>
          </button><a class="header-brand d-md-none" href="#">
            <svg width="118" height="46" alt="CoreUI Logo">
              <use href="/images/svg/coreui.svg#full"></use>
            </svg></a>
          <ul class="header-nav ms-3">
            <li class="nav-item dropdown"><a class="nav-link py-0" data-coreui-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                <div class="avatar avatar-md"><img src="/images/logo/motus_logo_only.svg" class="sidebar-brand-narrow" style="height:46px" alt="CoreUI Logo"></div></a>
              <div class="dropdown-menu dropdown-menu-end pt-0">
                <div class="dropdown-header bg-light py-2">
                  <div class="fw-semibold">アクセス管理</div>
                </div><a class="dropdown-item" href="#">
                  <svg class="icon me-2">
                    <use href="/images/svg/free.svg#cil-lock-locked"></use>
                  </svg> 設定</a><a class="dropdown-item" href="#">
                  <svg class="icon me-2">
                    <use href="/images/svg/free.svg#cil-account-logout"></use>
                  </svg> ログアウト</a>
              </div>
            </li>
          </ul>
        </div>
     
      </header>
      