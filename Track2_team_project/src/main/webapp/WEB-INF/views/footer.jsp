<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!----Footer Start---->
<form id="activefrm" method="get" action="">
<%-- 	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"> --%>
	<input type="hidden" id="pageName" name="pageName">
</form>
<div class="ms_footer_wrapper">
	<div class="ms_footer_logo">
		<a href="#" class="move_top"><img src="/images/logo/motus_logo_slogan.svg" style="height:150px;" alt=""></a>
	</div>
	<div class="ms_footer_inner">
		<div class="row">
			<div class="col-lg-6 col-md-6">
				<div class="footer_box">
					<h1 class="footer_title">The MOTUS Tonal Station</h1>
					<p>サイトMOTUSは誰もが音楽をアップロードでき、誰もが気軽く音楽を聴けるように支援するサイトです。制作者が自分だけの音楽を上げて、それを聞いたお客が気に入ったら支援とファイルを手短に支援し上げます。サイトはたっだ1％だけの手数料を受け、それ以外は全部制作者側に送られます。ぜひ、このサイトを踏み台にして皆様の制作活動を応援します。</p>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="footer_box footer_subscribe">
					<h1 class="footer_title">リンク先</h1>
					<ul class="list-unstyled text-muted">
                        <li><a href="/notice/notice">お知らせ</a></li>
                        <li><a href="/member/profile?id=${principal.username}">プロファイル</a></li>
                        <li><a href="/album/album?pageName=menu_album">注文履歴</a></li>
                        <li><a href="/member/my_cart?pageName=menu_cart">カート</a></li>
                        <li><a href="/member/downloads?pageName=menu_purchased">ダウンロード</a></li>
                    </ul>
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
								<span class="con-title">連絡先 :</span> <span>(+81) 03-3527-9888‬</span>
							</div>
						</li>
						<li>
							<div class="foo_con_icon">
								<img src="/images/svg/message.svg" alt="">
							</div>
							<div class="foo_con_data">
								<span class="con-title">メール :</span> <span><a href="#">ryu00209@gmail.com </a></span>
							</div>
						</li>
						<li>
							<div class="foo_con_icon">
								<img src="/images/svg/add.svg" alt="">
							</div>
							<div class="foo_con_data">
								<span class="con-title">住所 :</span> <span>124-0025 東京都, 葛飾区西新小岩３－４４－７ 鶴岡ビル１Ｆ</span>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!----Copyright---->
	<div class="col-lg-12">
		<div class="ms_copyright">
			<div class="footer_border"></div>
			<p>
				Copyright &copy; 2022 <a href="#">The MOTUS Tonal Station</a>. All Rights Reserved.
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
								<a href="javascript:open_pw()">パスワードを忘れましたか？</a>
								<div class="black_some_box" id="reset_password" style="height:120px; display: none;">
									<div class="form-group" style="margin-top:20px;">
										<label style="color:white;">IDを入力してください</label>
										<input id="how_your_id" name="find_id" type="text">
										<a class="ms_btn" style="cursor: pointer;" href="javascript:go_reset_pw()">入力</a>
									</div>
								</div>
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
<!-- 	결제 모달 -->
	<div id="pay_modal" class="modal  centered-modal" role="dialog">
		<div class="modal-dialog login_dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<button type="button" class="close" data-dismiss="modal">
					<i class="fa_icon form_close"></i>
				</button>
				<div class="modal-body">
					<div class="ms_register_form">
						<h2>お買い上げ</h2>
						<form method="post" name="payForm">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
							<div class="form-group">
								<input type="text" name="id" value="" class="form-control">
								<span class="form_icon"> <i class="fa_icon form-envelope" aria-hidden="true"></i>
								</span>
							</div>
							<div class="form-group">
								<input type="text" name="amount" placeholder="${sum }" class="form-control">
								<span class="form_icon"> <i class="fa_icon form-lock" aria-hidden="true"></i>
								</span>
							</div>
							<div id="smart-button-container">
						      <div style="text-align: center;">
						        <div id="paypal-button-container"></div>
						      </div>
						    </div>
							<a href="javascript:go_pay()" class="ms_btn">ログイン</a>
						</form>
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
	<div id="myModal3" class="modal centered-modal" role="dialog">
		<div class="modal-dialog login_dialog" style="max-width: 400px">
			<!-- Modal content-->
			<div class="modal-content share-modal">
				<button type="button" class="close" id="my_modal_close_btn" data-dismiss="modal">
					<i class="fa_icon form_close"></i>
				</button>
				<div class="form-group">
					<input class="form-control" id="share_this_page" type="text">
					<a href="javascript:void(0)" class="ms_btn btn-copyToClipboard" onclick="copyToClipBoard()">Copy</a>
				</div>
				<ul class="sns">
				    <li class="facebook">
				    <a href="#n" onclick="fn_sendFB('facebook');return false;" class="facebook" target="_self" title="페이스북 새창열림">
				    <img src="/images/svg/facebook.svg" style="margin-right: 10px"><span class="skip"> フェイスブック</span></a>
				    </li>
				    <li class="twitter">
				    <a href="#n" onclick="fn_sendFB('twitter');return false;" class="twitter" target="_self" title="트위터 새창열림">
				    <img src="/images/svg/twitter.svg" style="margin-right: 10px"><span class="skip"> ツイッター</span></a>
				    </li>
				    <li class="band">
				    <a href="#n" onclick="fn_sendFB('band');return false;" class="band" target="_self" title="네이버밴드 새창열림">
				    <img src="/images/svg/bootstrap-fill.svg" style="margin-right: 10px"><span class="skip"> ネイバーバンド</span></a>
				    </li>
				</ul>
			</div>
		</div>
	</div>
	
	<div id="myPurchase" class="modal centered-modal" role="dialog">
		<div class="modal-dialog login_dialog" style="max-width: 400px; ">
			<!-- Modal content-->
			<div class="modal-content kkk-modal">
				<button type="button" class="close" id="my_modal_close_btn" data-dismiss="modal">
					<i class="fa_icon form_close"></i>
				</button>
				<p>お買い上げ</p>
				<div class="cartlistForPurchase black_some_box_mini">
				</div>
				<div class="couponForPurchase form-group">
					<label>クーポン</label>
					<select name="coupon_selector" class="form-control" id="coupon_selector" style="width:70%; display: inline-block; margin-top: 10px; float:right;">
					</select>
				</div>
				<div class="form-group padding_top_10">
					<label>総額</label>
					<input type="text" class="final_totalPrice form-control" id="final_totalPrice" style="width:40%" readonly="readonly">
				</div>
				<div class="form-group padding_top_10">
					<label>割引になる総額</label>
					<input type="text" class="real_final_totalPrice form-control" id="real_final_totalPrice" style="width:40%;" readonly="readonly">
				</div>
				<div class="purchase_buttons">
					<a onclick="go_this_purchase(this.id)" href="javascript:void(0)" id="html5_inicis">
						<img alt="카드결제" src="/images/card_rufwp.jpg" width="250px" height="100px">
					</a>
					
					<a onclick="go_this_purchase(this.id)" href="javascript:void(0)" id="paypal">
						<img alt="페이팔결제" src="/images/paypal.png" width="250px" height="100px">
					</a>
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
					<h1>ログインして素敵なプレイリストを公有してみませんか？</h1>
					<div class="save_modal_btn">
						<a href="#"><i class="fa fa-google-plus-square" aria-hidden="true"></i> グーグルアカウントでログイン</a> <a href="#"><i class="fa fa-facebook-square" aria-hidden="true"></i> フェイスブックIDでログイン</a>
					</div>
					<div class="ms_save_email">
						<h3>Eメールでログイン</h3>
						<div class="save_input_group">
							<input type="text" placeholder="Enter Your Name" class="form-control">
						</div>
						<div class="save_input_group">
							<input type="password" placeholder="Enter Password" class="form-control">
						</div>
						<button class="save_btn">ログイン</button>
					</div>
					<div class="ms_dnt_have">
						<span>まだ会員ではないですか?</span> <a href="javascript:;" class="hideCurrentModel" data-toggle="modal" data-target="#myModal">会員登録</a>
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
<script type="text/javascript" src="/resources/js/import.js"></script> 
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
				if(confirm("カートに移動しますか？")){
					location.href = "/member/my_cart?pageName=menu_cart"
				}else{
					
				}
			}else if(success_return=='2'){
				alert("すでに存在します");
			}else{
				$("#myModal1").modal();
				alert("ログインをしてください");
			}
		},
		error : function(xhr,status,err) {
			alert("ログインをしてください");
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
				if(confirm("カートに移動しますか？")){
					location.href = "/member/my_cart?pageName=menu_cart"
				}else{
					
				}
			}else if(success_return=='2'){
				alert("すでに存在します");
			}else{
				$("#myModal1").modal();
				alert("ログインをしてください");
			}
		},
		error : function(xhr,status,err) {
			alert("ログインをしてください");
			alert(xhr.status + xhr.responseText + err)
		}
	});
});
</script>

</body>

</html>