<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

        <!---Side Menu Start--->
      	<!----Album Single Section Start---->
        <!---Main Content Start--->
        <div class="ms_content_wrapper">
            <!----Free Download Css Start---->
            <div class="ms_free_download ms_purchase_wrapper">
               <div class="orderlist_main">
                <div class="ms_heading">
                    <h1>お客様のご注文</h1>
                </div>
				<div class="album_inner_list">
					<div class="album_list_wrapper">
						<ul class="album_list_name">
							<li>#</li>
							<li>オーダーナンバー</li>
							<li>品物</li>
							<li class="text-center">量</li>
							<li class="text-center">注文日</li>
<!-- 							<li class="text-center">Order Date</li> -->
						</ul>
						<!--  favourite song start -->
						<c:set value="${1}" var="rownum" />
						<c:forEach var="olist" items="${olist}">
						<ul class="favouritelist">
							<li><a href="javascript:void(0)">${rownum}</a></li>
							<li><a href="/member/orderview?n=${olist.orderid}">${olist.orderid}</a></li>
							<li><a href="javascript:void(0)">
								<c:if test="${olist.category == '1'}">
									${olist.aname}
								</c:if>
								<c:if test="${olist.category == '2'}">
									${olist.tname}
								</c:if>
								<c:if test="${olist.count > 1}">
								 他 ${olist.count-1}
								 </c:if>
							</a></li>
							<li class="text-center"><a href="javascript:void(0)">
								<fmt:setLocale value="ja_jp"/>
								<fmt:formatNumber type="currency" value="${olist.amount}" currencySymbol="&yen;" maxFractionDigits="0" />
							</a></li>
							<li class="text-center"><a href="javascript:void(0)">
								<fmt:formatDate value="${olist.orderdate }" type="both" pattern="yyyy-MM-dd HH:MM"/></a>
							</li>
						</ul>
						<c:set value="${rownum +1}" var="rownum"/>
						</c:forEach>
						<!-- favourite song end -->
						
						<div class="ms_view_more">
							<a href="#" class="ms_btn">もっと見る</a>
						</div>
					</div>
				</div>
            </div>
            </div>
            <!----Live Radio Section Start---->
            <div class="ms_radio_wrapper padder_top30">
                <div class="ms_heading">
                    <h1>最近聞いた曲</h1>
                    <span class="veiw_all"><a href="#">もっと見る</a></span>
                </div>
                <div class="ms_radio_slider swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="ms_rcnt_box">
                                <div class="ms_rcnt_box_img">
                                    <img src="/images/music/r_music1.jpg" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                             <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>お気に入りに追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>再生列に追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>カートに追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>プレイリストに追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>シェア</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="#">みんなが今聞いている曲</a></h3>
                                    <p>Ava Cornish &amp; Brian Hill</p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="ms_rcnt_box">
                                <div class="ms_rcnt_box_img">
                                    <img src="/images/featured/song4.jpg" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                             <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>お気に入りに追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>再生列に追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>カートに追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>プレイリストに追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>シェア</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="/images/svg/play.svg" alt="">
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
                                    <img src="/images/artist/artist2.jpg" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>お気に入りに追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>再生列に追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>カートに追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>プレイリストに追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>シェア</a></li>
                                         </ul>
                                        <div class="ms_play_icon">
                                            <img src="/images/svg/play.svg" alt="">
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
                                    <img src="/images/music/r_music4.jpg" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                             <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>お気に入りに追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>再生列に追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>カートに追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>プレイリストに追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>シェア</a></li>
                                         </ul>
                                        <div class="ms_play_icon">
                                            <img src="/images/svg/play.svg" alt="">
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
                                    <img src="/images/music/r_music5.jpg" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                             <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>お気に入りに追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>再生列に追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>カートに追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>プレイリストに追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>シェア</a></li>
                                         </ul>
                                        <div class="ms_play_icon">
                                            <img src="/images/svg/play.svg" alt="">
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
                                    <img src="/images/music/r_music6.jpg" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>お気に入りに追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>再生列に追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>カートに追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>プレイリストに追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>シェア</a></li>
                                          </ul>
                                        <div class="ms_play_icon">
                                            <img src="/images/svg/play.svg" alt="">
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
                                    <img src="/images/radio/img1.jpg" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>お気に入りに追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>再生列に追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>カートに追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>プレイリストに追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>シェア</a></li>
                                         </ul>
                                        <div class="ms_play_icon">
                                            <img src="/images/svg/play.svg" alt="">
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
                                    <img src="/images/radio/img2.jpg" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>お気に入りに追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>再生列に追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>カートに追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>プレイリストに追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>シェア</a></li>
                                         </ul>
                                        <div class="ms_play_icon">
                                            <img src="/images/svg/play.svg" alt="">
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
                                    <img src="/images/radio/img3.jpg" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                             <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>お気に入りに追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>再生列に追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>カートに追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>プレイリストに追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>シェア</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="/images/svg/play.svg" alt="">
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
                                    <img src="/images/radio/img4.jpg" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                             <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>お気に入りに追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>再生列に追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>カートに追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>プレイリストに追加</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>シェア</a></li>
                                         </ul>
                                        <div class="ms_play_icon">
                                            <img src="/images/svg/play.svg" alt="">
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
      </div>
        <!----Footer Start---->
        
        <%@ include file="../footer.jsp" %>