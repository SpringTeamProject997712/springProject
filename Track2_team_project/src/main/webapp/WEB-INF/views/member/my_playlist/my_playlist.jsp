<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../header.jsp" %>

<!----Live Radio Section Start---->
            <div class="ms_top_artist">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="ms_heading">
                                <h1>マイプレイリスト</h1>
                            </div>
                        </div>
                        <c:forEach items="${myPlaylist}" var="myList">
                        <div class="col-lg-2 col-md-6">
                            <div class="ms_rcnt_box marger_bottom25">
                                <div class="ms_rcnt_box_img">
                                	<c:choose>
                                	<c:when test="${myList.image_240 eq '/images/album/album1.jpg'}">
                                    <img src="${myList.image_240}" alt="" class="img-fluid">
                                   </c:when>
                                   <c:otherwise>
                                    <img src="/upload/${myList.image_240}" alt="" class="img-fluid">
                                   </c:otherwise>
                                  </c:choose>
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_play_icon playlist_play_button" id="runPlbno_${myList.plbno}">
                                            <img src="/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="/member/my_playlist/one_playlist?plbno=${myList.plbno}">${myList.name}</a></h3>
                                    <p>${myList.pdbno} 曲</p>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                        <div class="col-lg-2">
                            <div class="ms_rcnt_box marger_bottom25">
                                <div class="create_playlist">
                                    <i class="ms_icon icon_playlist"></i>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="javascript:void(0)">新しいプレイリストを作成</a></h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!----Main div close---->
        </div>


<%@include file="../../footer.jsp" %>