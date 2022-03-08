<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

        <!---Side Menu Start--->
      	<!----Album Single Section Start---->
        <!---Main Content Start--->
        <div class="ms_content_wrapper padder_top80">
            <!----Free Download Css Start---->
            <div class="ms_free_download ms_purchase_wrapper">
                <div class="ms_heading">
                    <h1>お気に入りリスト</h1>
                </div>
				<div class="album_inner_list">
					<div class="album_list_wrapper">
						<ul class="album_list_name">
							<li>#</li>
							<li>アルバム</li>
							<li>タイトル </li>
							<li class="text-center">値段</li>
							<li class="text-center">時間</li>
							<li class="text-center">いいね</li>
							<li class="text-center">その他</li>
							<li class="text-center">削除</li>
						</ul>
						<!--  favourite song start -->
						<c:forEach var="flist" items="${favouritelist}">
						<ul class="favouritelist">
							<li><a class="play_track_in_album" id="${flist.tbno}" href="javascript:void(0)"><span class="play_no">${flist.rownum}</span><span class="play_hover"></span></a></li>
							<li><a href="#">${flist.name}</a></li>
							<li><a href="#">${flist.tname}</a></li>
							<li class="text-center">
							<a href="#">
							<fmt:setLocale value="ja_jp" />
							<fmt:formatNumber type="currency" value="${flist.price}" currencySymbol="￥" maxFractionDigits="0" /></a>
							</li>
							<li class="text-center"><a href="#">${flist.length }</a></li>
							<li class="text-center"><a href="javascript:void(0)" class="fav_box" id="pbno_${flist.pbno}"> <span class="ms_icon1 ms_fav_icon"> </span>
					</a></li>
							<li class="text-center ms_more_icon" id="this_track_pbno_${flist.pbno}"><a href="javascript:;"><span class="ms_icon1 ms_active_icon"></span></a>
								<div class="ms_play_icon" id="${flist.tbno}" style="display: none;"></div>
								<ul class="more_option">
									<li><a href="javascript:void(0)" class="add_queue_one_track"><span class="opt_icon"><span class="icon icon_queue"></span></span>再生リストに追加</a></li>
									<li><a href="javascript:void(0)" class="add_track_to_cart"><span class="opt_icon"><span class="icon icon_dwn"></span></span>カートに追加</a></li>
									<li><a href="javascript:void(0)" class="add_track_to_playlist"><span class="opt_icon"><span class="icon icon_playlst"></span></span>プレイリスト追加</a></li>
									<li><a href="javascript:void(0)" class="share_this_page"><span class="opt_icon"><span class="icon icon_share"></span></span>シェア</a></li>
								</ul>
							</li>
							<li class="text-center"><a href="#"><span class="ms_close list_remove">
									<img src="/images/svg/close.svg" alt=""></span></a></li>
						</ul>
						</c:forEach>
						<!-- favourite song end -->
						<div class="ms_view_more">
						</div>
					</div>
				</div>
            </div>
            <!----Live Radio Section Start---->
            <!----Main div close---->
        </div>
      </div>
        <!----Footer Start---->
        
        <%@ include file="../footer.jsp" %>