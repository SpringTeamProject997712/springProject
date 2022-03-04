<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!----Footer Start---->
<form id="activefrm" method="get" action="">
<%-- 	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"> --%>
	<input type="hidden" id="pageName" name="pageName">
</form>
<div class="ms_footer_wrapper">
	<div class="ms_footer_logo">
		<a href="#" class="move_top"><img src="/images/open_logo.png" alt=""></a>
	</div>
	<div class="ms_footer_inner">
		<div class="row">
			<div class="col-lg-3 col-md-6">
				<div class="footer_box">
					<h1 class="footer_title">miraculous music station</h1>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor.</p>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="footer_box footer_app">
					<h1 class="footer_title">Download our App</h1>
					<p>
						Go Mobile with our app.<br> Listen to your favourite songs at just one click. Download Now !
					</p>
					<a href="#" class="foo_app_btn"><img src="/images/google_play.jpg" alt="" class="img-fluid"></a> <a href="#" class="foo_app_btn"><img src="/images/app_store.jpg" alt="" class="img-fluid"></a> <a href="#" class="foo_app_btn"><img src="/images/windows.jpg" alt="" class="img-fluid"></a>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="footer_box footer_subscribe">
					<h1 class="footer_title">subscribe</h1>
					<p>Subscribe to our newsletter and get latest updates and offers.</p>
					<form>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Enter Your Name">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Enter Your Email">
						</div>
						<div class="form-group">
							<a href="#" class="ms_btn">sign me up</a>
						</div>
					</form>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="footer_box footer_contacts">
					<h1 class="footer_title">contact us</h1>
					<ul class="foo_con_info">
						<li>
							<div class="foo_con_icon">
								<img src="/images/svg/phone.svg" alt="">
							</div>
							<div class="foo_con_data">
								<span class="con-title">連絡先 :</span> <span>(+1) 202-555-0176, (+1) 2025-5501</span>
							</div>
						</li>
						<li>
							<div class="foo_con_icon">
								<img src="/images/svg/message.svg" alt="">
							</div>
							<div class="foo_con_data">
								<span class="con-title">メール :</span> <span><a href="#">demo@mail.com </a>, <a href="#">dummy@mail.com</a></span>
							</div>
						</li>
						<li>
							<div class="foo_con_icon">
								<img src="/images/svg/add.svg" alt="">
							</div>
							<div class="foo_con_data">
								<span class="con-title">住所 :</span> <span>598 Old House Drive, London</span>
							</div>
						</li>
					</ul>
					<div class="foo_sharing">
						<div class="share_title">フォロー :</div>
						<ul>
							<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!----Copyright---->
	<div class="col-lg-12">
		<div class="ms_copyright">
			<div class="footer_border"></div>
			<p>
				Copyright &copy; 2018 <a href="#">The Miraculous Music Template</a>. All Rights Reserved.
			</p>
		</div>
	</div>
</div>

<!----Audio Player Section---->
<div class="ms_player_wrapper">
	<div class="ms_player_close">
		<i class="fa fa-angle-up" aria-hidden="true"></i>
	</div>
	<div class="player_mid">
		<div class="audio-player">
			<!--여기 안에 audio객체를 동적으로 생성함===========================================-->
			<div id="jquery_jplayer_1" class="jp-jplayer"></div>
			<!-- ====================================================================-->
			<div id="jp_container_1" class="jp-audio" role="application" aria-label="media player">
				<div class="player_left">
					<div class="ms_play_song">
						<div class="play_song_name">
							<a href="javascript:void(0);" id="playlist-text">
								<div class="jp-now-playing flex-item">
									<div class="jp-track-name"></div>
									<div class="jp-artist-name"></div>
								</div>
							</a>
						</div>
					</div>
					<div class="play_song_options">
						<ul>
							<li><a href="#"><span class="song_optn_icon"><i class="ms_icon icon_download"></i></span>ダウンロード</a></li>
							<li><a href="#"><span class="song_optn_icon"><i class="ms_icon icon_fav"></i></span>お気に入りに追加</a></li>
							<li><a href="#"><span class="song_optn_icon"><i class="ms_icon icon_playlist"></i></span>リストに追加</a></li>
							<li><a href="#"><span class="song_optn_icon"><i class="ms_icon icon_share"></i></span>共有</a></li>
						</ul>
					</div>
					<span class="play-left-arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span>
				</div>
				<!----Right Queue---->
				<div class="jp_queue_wrapper">
					<span class="que_text" id="myPlaylistQueue"><i class="fa fa-angle-up" aria-hidden="true"></i> 再生リスト</span>
					<div id="playlist-wrap" class="jp-playlist">
						<div class="jp_queue_cls">
							<i class="fa fa-times" aria-hidden="true"></i>
						</div>
						<h2>再生リスト</h2>
						<div class="jp_queue_list_inner">
							<ul>
								<li>&nbsp;</li>
							</ul>
						</div>
						<div class="jp_queue_btn">
							<a href="javascript:;" class="ms_clear" data-toggle="modal" data-target="#clear_modal">クリア</a> <a href="clear_modal" class="ms_save" data-toggle="modal" data-target="#save_modal">セーブ</a>
						</div>
					</div>
				</div>
				<div class="jp-type-playlist">
					<div class="jp-gui jp-interface flex-wrap">
						<div class="jp-controls flex-item">
							<button class="jp-previous" tabindex="0">
								<i class="ms_play_control"></i>
							</button>
							<button class="jp-play" tabindex="0">
								<i class="ms_play_control"></i>
							</button>
							<button class="jp-next" tabindex="0">
								<i class="ms_play_control"></i>
							</button>
						</div>
						<div class="jp-progress-container flex-item">
							<div class="jp-time-holder">
								<span class="jp-current-time" role="timer" aria-label="time">&nbsp;</span> <span class="jp-duration" role="timer" aria-label="duration">&nbsp;</span>
							</div>
							<div class="jp-progress">
								<div class="jp-seek-bar">
									<div class="jp-play-bar">
										<div class="bullet"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="jp-volume-controls flex-item">
							<div class="widget knob-container">
								<div class="knob-wrapper-outer">
									<div class="knob-wrapper">
										<div class="knob-mask">
											<div class="knob d3">
												<span></span>
											</div>
											<div class="handle"></div>
											<div class="round">
												<img src="/images/svg/volume.svg" alt="">
											</div>
										</div>
									</div>
									<!-- <input></input> -->
								</div>
							</div>
						</div>
						<div class="jp-toggles flex-item">
							<button class="jp-shuffle" tabindex="0" title="Shuffle">
								<i class="ms_play_control"></i>
							</button>
							<button class="jp-repeat" tabindex="0" title="Repeat">
								<i class="ms_play_control"></i>
							</button>
						</div>
						<div class="jp_quality_optn custom_select">
							<select>
								<option>quality</option>
								<option value="1">HD</option>
								<option value="2">高音質</option>
								<option value="3">中音質</option>
								<option value="4">低音質</option>
							</select>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--main div-->
</div>
</div>
<!----Register Modal Start---->
<!-- 회원가입 Modal -->
<div class="ms_register_popup">
	<div id="myModal" class="modal  centered-modal" role="dialog">
		<div class="modal-dialog register_dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<button type="button" class="close" data-dismiss="modal">
					<i class="fa_icon form_close"></i>
				</button>
				<div class="modal-body">
					<div class="ms_register_img">
						<img src="/images/register_img.png" alt="" class="img-fluid" />
					</div>
					<div class="ms_register_form">
						<h2>会員登録</h2>
						<form action="/member/join" method="post" name="joinForm">
							<input id="csrfToken" type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
							<div class="form-group">
								<input type="text" name="name" placeholder="名前入力" class="form-control"> <span class="form_icon"> <i class="fa_icon form-user" aria-hidden="true"></i>
								</span>
							</div>
							<div class="form-group">
								<input type="text" name="id" id="joinForm_id" placeholder="メールアドレス入力" class="form-control"> <span class="form_icon"> <i class="fa_icon form-envelope" aria-hidden="true"></i>
								</span>
							</div>
							<div class="form-group">
								<span class="form_icon" id="msg_checked_id"> </span>
							</div>
							<div class="form-group">
								<input type="password" name="pw" placeholder="パスワード入力" class="form-control"> <span class="form_icon"> <i class="fa_icon form-lock" aria-hidden="true"></i>
								</span>
							</div>
							<div class="form-group">
								<input type="password" name="pw2" placeholder="パスワード再入力" class="form-control"> <span class="form_icon"> <i class=" fa_icon form-lock" aria-hidden="true"></i>
								</span>
							</div>
							<a href="javascript:go_join()" class="ms_btn">会員登録</a>
							<p>
								すでにお持ちのアカウントがありますか？<a href="#myModal1" data-toggle="modal" class="ms_modal hideCurrentModel">ログイン</a>
							</p>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!----로그인 Modal---->
	<div id="myModal1" class="modal  centered-modal" role="dialog">
		<div class="modal-dialog login_dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<button type="button" class="close" data-dismiss="modal">
					<i class="fa_icon form_close"></i>
				</button>
				<div class="modal-body">
					<div class="ms_register_img">
						<img src="/images/register_img.png" alt="" class="img-fluid" />
					</div>
					<div class="ms_register_form">
						<h2>ログイン</h2>
						<form action="/login" method="post" name="loginForm">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
							<div class="form-group">
								<input type="text" name="username" placeholder="メールアドレス入力" class="form-control"> <span class="form_icon"> <i class="fa_icon form-envelope" aria-hidden="true"></i>
								</span>
							</div>
							<div class="form-group">
								<input type="password" name="password" placeholder="パスワード入力" class="form-control"> <span class="form_icon"> <i class="fa_icon form-lock" aria-hidden="true"></i>
								</span>
							</div>
							<div class="remember_checkbox">
								<label>ログイン情報キープ <input type="checkbox" id="saveBtn"> <span class="checkmark"></span>
								</label>
							</div>
							<a href="javascript:go_login()" class="ms_btn">ログイン</a>
							<div class="popup_forgot">
								<a href="#">パスワードを忘れましたか？</a>
							</div>
						</form>
						<p>
							まだアカウントがないですか？<a href="#myModal" data-toggle="modal" class="ms_modal1 hideCurrentModel">会員登録</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="myModal2" class="modal  centered-modal" role="dialog">
		<div class="modal-dialog login_dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<button type="button" class="close" id="my_modal_close_btn" data-dismiss="modal">
					<i class="fa_icon form_close"></i>
				</button>
				<div class="modal-body">
					<div class="ms_register_img">
						<img src="/images/register_img.png" alt="" class="img-fluid" />
					</div>
					<div class="ms_register_form">
						<h2>Select Playlist</h2>
						<form method="post" name="go_to_playlist">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
							<input type="hidden" name="this_tbno_will_go_to_playlist" value="">
							<div class="black_some_box" id="the_track_choiced_by_you" style="height: 130px;">
	            </div>
							<div class="form-group padding_top_30">
								<label>My Playlist</label>
								<select name="select_playlist_selector" id="select_playlist" class="form-control" style="height:50px;">
								</select>
							</div>
							<a href="javascript:go_add_track()" class="ms_btn">Add Track</a>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!----Language Selection Modal---->
<div class="ms_lang_popup">
	<div id="lang_modal" class="modal  centered-modal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<button type="button" class="close" data-dismiss="modal">
					<i class="fa_icon form_close"></i>
				</button>
				<div class="modal-body">
					<h1>language selection</h1>
					<p>Please select the language(s) of the music you listen to.</p>
					<ul class="lang_list">
						<li><label class="lang_check_label"> English <input type="checkbox" name="check"> <span class="label-text"></span>
						</label></li>
						<li><label class="lang_check_label"> hindi <input type="checkbox" name="check"> <span class="label-text"></span>
						</label></li>
						<li><label class="lang_check_label"> punjabi <input type="checkbox" name="check"> <span class="label-text"></span>
						</label></li>
						<li><label class="lang_check_label"> French <input type="checkbox" name="check"> <span class="label-text"></span>
						</label></li>
						<li><label class="lang_check_label"> German <input type="checkbox" name="check"> <span class="label-text"></span>
						</label></li>
						<li><label class="lang_check_label"> Spanish <input type="checkbox" name="check"> <span class="label-text"></span>
						</label></li>
						<li><label class="lang_check_label"> Chinese <input type="checkbox" name="check"> <span class="label-text"></span>
						</label></li>
						<li><label class="lang_check_label"> Japanese <input type="checkbox" name="check"> <span class="label-text"></span>
						</label></li>
						<li><label class="lang_check_label"> Arabic <input type="checkbox" name="check"> <span class="label-text"></span>
						</label></li>
						<li><label class="lang_check_label"> Italian <input type="checkbox" name="check"> <span class="label-text"></span>
						</label></li>
					</ul>
					<div class="ms_lang_btn">
						<a href="#" class="ms_btn">apply</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!----Queue Clear Model ---->
<div class="ms_clear_modal">
	<div id="clear_modal" class="modal  centered-modal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<button type="button" class="close" data-dismiss="modal">
					<i class="fa_icon form_close"></i>
				</button>
				<div class="modal-body">
					<h1>本当に再生リストをクリアしますか？</h1>
					<div class="clr_modal_btn">
						<a class="entire-playlist-clear" href="#">クリア</a> <a href="#">キャンセル</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!----Queue Save Modal---->
<div class="ms_save_modal">
	<div id="save_modal" class="modal  centered-modal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<button type="button" class="close" data-dismiss="modal">
					<i class="fa_icon form_close"></i>
				</button>
				<div class="modal-body">
					<h1>Log in to start sharing your music!</h1>
					<div class="save_modal_btn">
						<a href="#"><i class="fa fa-google-plus-square" aria-hidden="true"></i> continue with google </a> <a href="#"><i class="fa fa-facebook-square" aria-hidden="true"></i> continue with facebook</a>
					</div>
					<div class="ms_save_email">
						<h3>or use your email</h3>
						<div class="save_input_group">
							<input type="text" placeholder="Enter Your Name" class="form-control">
						</div>
						<div class="save_input_group">
							<input type="password" placeholder="Enter Password" class="form-control">
						</div>
						<button class="save_btn">Log in</button>
					</div>
					<div class="ms_dnt_have">
						<span>Dont't have an account ?</span> <a href="javascript:;" class="hideCurrentModel" data-toggle="modal" data-target="#myModal">Register Now</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<script type="text/javascript" src="/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/resources/js/moment.min.js"></script>
<script type="text/javascript" src="/resources/js/plugins/swiper/js/swiper.min.js"></script>
<script type="text/javascript" src="/resources/js/plugins/player/jplayer.playlist.min.js"></script>
<script type="text/javascript" src="/resources/js/plugins/player/jquery.jplayer.min.js"></script>
<script type="text/javascript" src="/resources/js/plugins/player/audio-player.js"></script>
<script type="text/javascript" src="/resources/js/plugins/player/volume.js"></script>
<script type="text/javascript" src="/resources/js/plugins/nice_select/jquery.nice-select.min.js"></script>
<script type="text/javascript" src="/resources/js/plugins/scroll/jquery.mCustomScrollbar.js"></script>
<script type="text/javascript" src="/resources/js/custom.js"></script>
<script type="text/javascript" src="/resources/js/music-selector.js"></script>
<script type="text/javascript" src="/resources/js/my.js"></script>
<form role="form" method="post">
	<input type="hidden" name="pbno" id="pbno" value="${pbno.pbno}" />
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
</form>
<script>
$(".insert_cart_btn").click(function() {
	var csrfHeaderName = "${_csrf.headerName}";
	var csrfTokenValue = "${_csrf.token}";
	$(document).ajaxSend(function(e, xhr, options) {
		xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
	});
	let pbno = $("#pbno").val();
	let data = {
		pbno : pbno
	};
	$.ajax({
		url : "/album/insertCart",
		type : "POST",
		data : data,
		success : function(success_return) {
			if(success_return=='1'){
				alert("담기 성공");
			}else if(success_return=='2'){
				alert("중복임");
			}else{
				$("#myModal1").modal();
				alert("로그인이 필요합니다");s
			}
		},
		error : function(xhr,status,err) {
			alert("카드를 담기 위해서는 로그인이 필요합니다.");
			alert(xhr.status + xhr.responseText + err)
		}
	});
});

$(".add_track_to_cart").click(function() {
	var csrfHeaderName = "${_csrf.headerName}";
	var csrfTokenValue = "${_csrf.token}";
	$(document).ajaxSend(function(e, xhr, options) {
		xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
	});
	let pbno = $(this).parent().parent().parent().attr('id').substring(16);
	let data = {
		pbno : pbno
	};
	$.ajax({
		url : "/album/insertCart",
		type : "POST",
		data : data,
		success : function(success_return) {
			if(success_return=='1'){
				alert("담기 성공");
			}else if(success_return=='2'){
				alert("중복임");
			}else{
				$("#myModal1").modal();
				alert("로그인이 필요합니다");s
			}
		},
		error : function(xhr,status,err) {
			alert("카드를 담기 위해서는 로그인이 필요합니다.");
			alert(xhr.status + xhr.responseText + err)
		}
	});
});
</script>
</body>

</html>