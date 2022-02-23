<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- main css files links -->
<%@ include file="../header.jsp"%>

<<<<<<< HEAD
<!----Album Single Section Start---->
<div class="ms_album_single_wrapper">
	<div class="album_single_data abno_${view[0].abno}">
		<div class="album_single_img">
			<img src="${pageContext.request.contextPath}/upload/${view[0].image}" alt="" class="img-fluid">
		</div>
		<div class="album_single_text">
			<h2>${view[0].name}</h2>
			<p class="singer_name">By - ${view[0].singer}</p>
			<div class="album_feature">
				<a href="#" class="album_date">5 song | 25:10</a> <a href="#" class="album_date">Released ${view[0].regdate} | Abc Music Company</a>
			</div>
			
			<div class="album_btn">
				<a href="#" class="ms_btn play_btn"><span class="play_all"><img src="/images/svg/play_all.svg" alt="">Play All</span>
				<span class="pause_all"><img src="/images/svg/pause_all.svg" alt="">Pause</span></a>
				<a href="#" class="ms_btn">
				<span class="play_all"><img src="/images/svg/add_q.svg" alt="">Add To Queue</span></a>
				<a href="#" class="ms_btn">
				<span class="insert_cart_btn"><img src="/images/svg/right_arrow.svg" alt="">Add to Cart</span></a>
				
				<form role="form" method="post">
					<input type="text" name="pbno" id="pbno" value="${pbno.pbno}" />
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
				</form>
				
				<script>
					$(".insert_cart_btn").click(function(){
						var csrfHeaderName = "${_csrf.headerName}";
					    var csrfTokenValue = "${_csrf.token}";
					      $(document).ajaxSend(function(e, xhr, options) {
					    	  xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
					         });
						var pbno = 3;
						var id = "ryu00209@gmail.com";
						
				    $.ajax({
						url : "/album/insertCart",
						type : "POST",
						data : {
							pbno : '3',
							id : 'ryu00209@gmail.com',
						},
						success : function(){
							alert("담기 성공");
						},
						error : function(){
							alert("실패");
						}
					})		
				    
				         });
				</script>
				
				<script>
// 					$(".insert_cart_btn").click(function(){
// 						var csrfHeaderName = "${_csrf.headerName}";
// 					    var csrfTokenValue = "${_csrf.token}";
// 					      $(document).ajaxSend(function(e, xhr, options) {
// 					    	  xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
// 					         });
// 						console.log(csrfHeaderName);
// 						console.log(csrfTokenValue);
						
// 						$.ajax({
// 							url : "/album/insertCart",
// 							type : "POST",
// 							data : {
// 								pbno : '3',
// 								id : 'ryu00209@gmail.com',
// 							},
// 							beforeSend : 
// 							success : function(){
// 								alert("담기 성공");
// 								console.log("pbno출력"+pbno);
// 								console.log("id출력"+id);
// 							},
// 							error : function(){
// 								alert("실패");
// 								console.log("pbno출력"+pbno);
// 								console.log("id출력"+id);
// 							}
// 						})		
// 					})
				</script>
				
			</div>
		</div>
		<div class="album_more_optn ms_more_icon">
			<span><img src="/images/svg/more.svg" alt=""></span>
		</div>
		<ul class="more_option">
			<li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
			<li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
			<li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Add Cart</a></li>
			<li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
			<li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
		</ul>
	</div>
	<!----Song List---->
	<div class="album_inner_list">
		<div class="album_list_wrapper">
			<ul class="album_list_name">
				<li>#</li>
				<li>Song Title</li>
				<li>Artist</li>
				<li class="text-center">Duration</li>
				<li class="text-center">Add To Favourites</li>
				<li class="text-center">More</li>
			</ul>

			<!-- track list start -->
			<c:forEach var="view" items="${view}">
				<ul>
					<li><a href="#"><span class="play_no">${view.tbno}</span><span class="play_hover"></span></a></li>
					<li><a href="#">${view.tname}</a></li>
					<li><a href="#">${view.name}</a></li>
					<li class="text-center"><a href="#">5:26</a></li>
					<li class="text-center"><a href="javascript:void(0)" class="fav_box" id="pbno_${view.pbno}"> <span class="ms_icon1 ms_fav_icon"> </span>
					</a></li>
					<li class="text-center ms_more_icon"><a href="javascript:;"><span class="ms_icon1 ms_active_icon"></span></a>
						<ul class="more_option">
							<li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
							<li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
							<li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Add Cart</a></li>
							<li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
							<li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
						</ul></li>
				</ul>
			</c:forEach>
			<!-- track list end -->

		</div>
	</div>
</div>
<!---Main Content Start--->
<div class="ms_content_wrapper ms_album_content">
	<!----Testimonial section Start---->
	<div class="ms_test_wrapper">
		<div class="ms_heading">
			<h1>comments (5)</h1>
		</div>
		<div class="ms_test_slider swiper-container">
			<div class="swiper-wrapper">

				<!-- comments end -->
				<div class="swiper-slide">
					<div class="ms_test_box">
						<div class="ms_test_top">
							<div class="ms_test_img">
								<img src="/images/user1.jpg" alt="">
							</div>
							<div class="ms_test_name">
								<h3>Frank Adler</h3>
								<span class="cmnt_time">10 Minutes Ago</span>
							</div>
						</div>
						<div class="ms_test_para">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor.</p>
						</div>
					</div>
				</div>
				<!-- comments end -->

				<div class="swiper-slide">
					<div class="ms_test_box">
						<div class="ms_test_top">
							<div class="ms_test_img">
								<img src="/images/user2.jpg" alt="">
							</div>
							<div class="ms_test_name">
								<h3>Frank Adler</h3>
								<span class="cmnt_time">10 Days Ago</span>
							</div>
						</div>
						<div class="ms_test_para">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor.</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="ms_test_box">
						<div class="ms_test_top">
							<div class="ms_test_img">
								<img src="/images/user3.jpg" alt="">
							</div>
							<div class="ms_test_name">
								<h3>Frank Adler</h3>
								<span class="cmnt_time">10 Hours Ago</span>
							</div>
						</div>
						<div class="ms_test_para">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor.</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="ms_test_box">
						<div class="ms_test_top">
							<div class="ms_test_img">
								<img src="/images/user4.jpg" alt="">
							</div>
							<div class="ms_test_name">
								<h3>Frank Adler</h3>
								<span class="cmnt_time">10 Minutes Ago</span>
							</div>
						</div>
						<div class="ms_test_para">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor.</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="ms_test_box">
						<div class="ms_test_top">
							<div class="ms_test_img">
								<img src="/images/user1.jpg" alt="">
							</div>
							<div class="ms_test_name">
								<h3>Frank Adler</h3>
								<span class="cmnt_time">10 Minutes Ago</span>
							</div>
						</div>
						<div class="ms_test_para">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor.</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="ms_test_box">
						<div class="ms_test_top">
							<div class="ms_test_img">
								<img src="/images/user2.jpg" alt="">
							</div>
							<div class="ms_test_name">
								<h3>Frank Adler</h3>
								<span class="cmnt_time">10 Minutes Ago</span>
							</div>
						</div>
						<div class="ms_test_para">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor.</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="ms_test_box">
						<div class="ms_test_top">
							<div class="ms_test_img">
								<img src="/images/user3.jpg" alt="">
							</div>
							<div class="ms_test_name">
								<h3>Frank Adler</h3>
								<span class="cmnt_time">10 Minutes Ago</span>
							</div>
						</div>
						<div class="ms_test_para">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor.</p>
						</div>
					</div>
=======
        <!----Album Single Section Start---->
        <div class="ms_album_single_wrapper">
            <div class="album_single_data abno_${view[0].abno}">
                <div class="album_single_img">
                    <img src="${pageContext.request.contextPath}/upload/${view[0].image}" alt="" class="img-fluid">
                </div>
                <div class="album_single_text">
                    <h2>${view[0].name}</h2>
                    <a href="javascript:void(0)" class="fav_box album_favou_box" id="pbno_${this_album.pbno}">
											<span class="ms_icon1 ms_fav_icon">
											</span>
										</a>
                    <p class="singer_name">By - ${view[0].singer}</p>
                    <div class="album_feature">
                        <a href="#" class="album_date">5 song | 25:10</a>
                        
                        <a href="#" class="album_date">Released ${view[0].regdate} | Abc Music Company</a>
                    </div>
                    <div class="album_btn">
                        <a href="javascript:void(0)" class="ms_btn play_btn album_play_button" id="run_abno_${view[0].abno}"><span class="play_all"><img src="/images/svg/play_all.svg" alt="">Play All</span><span class="pause_all"><img src="/images/svg/pause_all.svg" alt="">Pause</span></a>
                        <a href="javascript:void(0)" class="ms_btn album_add_queue" id="run_abno_${view[0].abno}"><span class="play_all"><img src="/images/svg/add_q.svg" alt="">Add To Queue</span></a>
                    </div>
                </div>
                <div class="album_more_optn ms_more_icon">
                    <span><img src="/images/svg/more.svg" alt=""></span>
                </div>
                <ul class="more_option">
                    <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                    <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                    <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Add Cart</a></li>
                    <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                    <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                </ul>
            </div>
            <!----Song List---->
			<div class="album_inner_list">
				<div class="album_list_wrapper">
					<ul class="album_list_name">
						<li>#</li>
						<li>Song Title</li>
						<li>Artist</li>
						<li class="text-center">Duration</li>
						<li class="text-center">Add To Favourites</li>
						<li class="text-center">More</li>
					</ul>
					
					<!-- track list start -->
					<c:set value="${1}" var="num"/>
					<c:forEach var="view" items="${view}">
					<ul>
						<li><a class="play_track_in_album" id="${view.tbno}" href="javascript:void(0)" ><span class="play_no">${num}</span><span class="play_hover"></span></a></li>
						<li><a href="#">${view.tname}</a></li>
						<li><a href="#">${view.singer}</a></li>
						<li class="text-center"><a href="#">5:26</a></li>
						<li class="text-center"><a href="javascript:void(0)" class="fav_box" id="pbno_${view.pbno}">
							<span class="ms_icon1 ms_fav_icon">
							</span>
						</a></li>
						<li class="text-center ms_more_icon"><a href="javascript:;"><span class="ms_icon1 ms_active_icon"></span></a>
							<ul class="more_option">
								<li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
								<li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
								<li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Add Cart</a></li>
								<li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
								<li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
							</ul>
						</li>
					</ul>
					<c:set value="${num+1}" var="num"/>
					</c:forEach>
					<!-- track list end -->
>>>>>>> branch 'master' of https://github.com/SpringTeamProject997712/springProject.git
				</div>
			</div>
        </div>
        <!---Main Content Start--->
        <div class="ms_content_wrapper ms_album_content">
            <!----Testimonial section Start---->
            <div class="ms_test_wrapper">
                <div class="ms_heading">
                    <h1>コメント (숫자)</h1>
                </div>
                <div class="ms_test_slider swiper-container">
                	<div class="swiper-wrapper">
                       
	                <!-- comments start -->
                  <c:forEach items="${album_comments}" var="comments">
                        <div class="swiper-slide">
                            <div class="ms_test_box">
                                <div class="ms_test_top">
                                    <div class="ms_test_img">
                                        <img src="/images/user1.jpg" alt="">
                                    </div>
                                    <div class="ms_test_name">
                                        <h3>${comments.id}</h3>
                                        <span class="cmnt_time">${comments.title}</span>
                                    </div>
                                </div>
                                <div class="ms_test_para">
                                	<p>${comments.content}</p>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
               			<!-- comments end -->
                    </div>
                </div>
                <!-- Add Arrows -->
                <div class="swiper-button-next1 slider_nav_next"></div>
                <div class="swiper-button-prev1 slider_nav_prev"></div>
            </div>
            <!----Comment Form section Start---->
            <div class="ms_cmnt_wrapper">
                <div class="ms_heading">
                    <h1>コメントを投稿</h1>
                </div>
                <div class="ms_cmnt_form">
                  <form name="album_comment_form" method="post" action="/review/writeReview">
                  	<input id="csrfToken" type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                  	<input type="hidden" name="abno" value="${view[0].abno}">
                  	<div class="ms_input_group1">
                      <select class="ms_input album_review_selector" name="stargage">
                      	<c:forEach begin="0" end="4" varStatus="status">
                      		<option value="${status.index}"><c:forEach begin="0" end="${status.index}"> ★ </c:forEach></option>
                      	</c:forEach>
                      </select>
                    </div>
                    <div class="ms_input_group">
                      <div class="ms_input marger_top20">
                        <input type="text" name="title" class="form-control" placeholder="Enter Title Here..">
                      </div>
                    </div>
                    <div class="ms_input_group1">
                      <div class="ms_input marger_top20">
                        <textarea name="content" class="form-control" placeholder="Enter Your Comment Here.."></textarea>
                      </div>
                    </div>
                    <div class="ms_input_group2">
                      <div class="ms_input">
                        <button type="submit" class="ms_btn">post your comment</button>
                      </div>
                    </div>
                  </form>
                </div>
            </div>
            <!----Featured Albumn Section Start---->
            <div class="ms_fea_album_slider padder_top5">
                <div class="ms_heading">
                    <h1>You May Also Like</h1>
                    <span class="veiw_all"><a href="#">view more</a></span>
                </div>
                <div class="ms_album_slider swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="ms_rcnt_box">
                                <div class="ms_rcnt_box_img">
                                    <img src="/images/album/album1.jpg" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Add Cart</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="#">Bloodlust</a></h3>
                                    <p>Ava Cornish & Brian Hill</p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="ms_rcnt_box">
                                <div class="ms_rcnt_box_img">
                                    <img src="/images/album/album2.jpg" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Add Cart</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="#">Time flies</a></h3>
                                    <p>Ava Cornish & Brian Hill</p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="ms_rcnt_box">
                                <div class="ms_rcnt_box_img">
                                    <img src="/images/album/album3.jpg" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Add Cart</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="#">Dark matters</a></h3>
                                    <p>Ava Cornish & Brian Hill</p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="ms_rcnt_box">
                                <div class="ms_rcnt_box_img">
                                    <img src="/images/album/album4.jpg" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Add Cart</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="#">Eye to eye</a></h3>
                                    <p>Ava Cornish & Brian Hill</p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="ms_rcnt_box">
                                <div class="ms_rcnt_box_img">
                                    <img src="/images/album/album5.jpg" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Add Cart</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="#">Cloud nine</a></h3>
                                    <p>Ava Cornish & Brian Hill</p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="ms_rcnt_box">
                                <div class="ms_rcnt_box_img">
                                    <img src="/images/album/album6.jpg" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Add Cart</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="#">Cobweb of lies</a></h3>
                                    <p>Ava Cornish & Brian Hill</p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="ms_rcnt_box">
                                <div class="ms_rcnt_box_img">
                                    <img src="/images/album/album1.jpg" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Add Cart</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="#">Bloodlust</a></h3>
                                    <p>Ava Cornish & Brian Hill</p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="ms_rcnt_box">
                                <div class="ms_rcnt_box_img">
                                    <img src="/images/album/album2.jpg" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Add Cart</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="#">Time flies</a></h3>
                                    <p>Ava Cornish & Brian Hill</p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="ms_rcnt_box">
                                <div class="ms_rcnt_box_img">
                                    <img src="/images/album/album3.jpg" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Add Cart</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="#">Dark matters</a></h3>
                                    <p>Ava Cornish & Brian Hill</p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="ms_rcnt_box">
                                <div class="ms_rcnt_box_img">
                                    <img src="/images/album/album4.jpg" alt="">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Add Cart</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="#">Eye to eye</a></h3>
                                    <p>Ava Cornish & Brian Hill</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Add Arrows -->
                <div class="swiper-button-next3 slider_nav_next"></div>
                <div class="swiper-button-prev3 slider_nav_prev"></div>
            </div>
            <!----New Releases Section Start---->
            <div class="ms_releases_wrapper">
                <div class="ms_heading">
                    <h1>Newly Released Albums</h1>
                    <span class="veiw_all"><a href="#">view more</a></span>
                </div>
                <div class="ms_release_slider swiper-container">
                    <div class="ms_divider"></div>
                    <div class="swiper-wrapper">
                    
                       <!-- newly start -->
                       <c:forEach var="newly" items="${newly}">
                        <div class="swiper-slide">
                            <div class="ms_release_box">
                                <div class="w_top_song">
                                    <span class="slider_dot"></span>
                                    <div class="w_tp_song_img">
                                        <img src="/upload/${newly.image_50}" alt="">
                                        <div class="ms_song_overlay">
                                        </div>
                                        <div class="ms_play_icon" id="${newly.tbno}">
                                        
                                            <img src="/images/svg/play.svg" alt="">
                                        
                                        </div>
                                    </div>
                                    <div class="w_tp_song_name">
                                        <h3><a href="/album/album_single?abno=${newly.abno}">${newly.tname}</a></h3>
                                        <p>${newly.name}</p>
                                    </div>
                                </div>
                                <div class="weekly_right">
                                    <span class="w_song_time">5:10</span>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                        <!-- newly end -->
                       
                    </div>
                </div>
                <!-- Add Arrows -->
                <div class="swiper-button-next2 slider_nav_next"></div>
                <div class="swiper-button-prev2 slider_nav_prev"></div>
            </div>
            <!----Main div close---->
        </div>
        </div>
        <%@include file="../footer.jsp" %>
