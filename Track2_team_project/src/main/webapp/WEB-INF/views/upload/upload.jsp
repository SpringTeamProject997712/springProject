<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- main css files links -->
<%@ include file="../header.jsp" %>
<!----Upload and Share Wrapper Start---->
<div class="ms_upload_wrapper marger_top60">

	<div class="ms_upload_box">
		<ul class="nav nav-pills nav-fill">
			<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#album">アルバム</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#track">トラック</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#goods">グッズ</a></li>
		</ul>
	</div>

	<div class="tab-content marger_top60">
		<div class="tab-pane fade show active" id="album">
			<form name="upload_album" method="post" enctype="multipart/form-data">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
				<div class="tab-content">
					<div class="ms_upload_box tab-pane fade show active" id="album">
						<h2>Upload Album Label</h2>
						<label for="image">
						<img src="../images/svg/upload.svg" alt="image">
						</label>
						<div class="ms_upload_btn">
							<a href="javascript:void(0);" class="ms_btn"> <label for="image" className="ms_btn">upload Cover</label>
							<input type="file" name="uploadImage" id="image" accept="image/*" class="form-control" style="display: none">
							</a>
						</div>
						<span> or </span>
						<p>Drag And Drop Album Image File</p>
					</div>
				
					<div class=" marger_top60">
						<div class="ms_upload_box">
							<div class="ms_heading">
								<h1>アルバム情報</h1>
							</div>
							<div class="ms_pro_form">
								<input type="hidden" value="1" id="category" name="category">
								<div class="form-group">
									<label>アルバム名 *</label> <input type="text" name="name" placeholder="" class="form-control">
								</div>
								<div class="form-group">
									<label>アーティスト名 *</label> <input type="text" name="singer" placeholder="Ava Cornish, Brian Hill" class="form-control">
								</div>
								<div class="form-group">
									<label>詳細</label> <input type="text" name="detail" placeholder="" class="form-control">
								</div>
								<div class="form-group">
									<label>値段</label> <input type="text" name="price" placeholder="" class="form-control">
								</div>
								<div class="form-group">
									<label>登録日</label> <input type="date" name="regdate" id="regdate" placeholder="" class="form-control">
								</div>
								

								<input type="hidden" name="pbno" value="${pbno}" class="form-control">


								<div class="pro-form-btn text-center marger_top15">
									<div class="ms_upload_btn">
										<a href="javascript:void(0);" class="ms_btn" onclick="go_upload_album()">アップロード</a>
										<a href="javascript:void(0);" class="ms_btn" onclick="go_reset()">リセット</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>

		<div class="tab-pane fade" id="track">
			<form name="upload_track" method="post" enctype="multipart/form-data">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
				<div class="tab-content">
					<div class="ms_upload_box tab-pane fade show active" id="track">
						<h2>Upload & Share Your Music With The World</h2>
						<label for="songname">
						<img src="../images/svg/upload.svg" alt="songname">
						</label>
						<div class="ms_upload_btn">
							<a href="javascript:void(0);" class="ms_btn"> <label for="songname" className="ms_btn">upload files</label>
							<input type="file" name="uploadMusic" id="songname" accept="audio/*" style="display: none" />
							</a>
						</div>
						<span> or </span>
						<p>Drag And Drop Music Files</p>
					</div>
					<div class=" marger_top60">
						<div class="ms_upload_box">
							<div class="ms_heading">
								<h1>トラック情報</h1>
							</div>
							<div class="ms_pro_form">
								<input type="hidden" value="2" id="category" name="category">
								<div class="form-group">
									<label>トラック名 *</label> <input type="text" name="name" placeholder="Dream Your Moments" class="form-control">
								</div>
								<div class="form-group">
									<label>アルバム</label>
									<select class="form-control" id="abno" name="abno">
										<c:forEach items="${abno}" var="abno" varStatus="status">
											<option value="${abno.abno}">${abno.name}</option>
										</c:forEach>
									</select>
								</div>
								<div class="form-group">
									<label>ジャンル</label>
									<select class="form-control" id="genre" name="genre">
										<c:forEach items="${genre}" var="genre" varStatus="status">
											<option value="${status.count}">${genre}</option>
										</c:forEach>
									</select>
								</div>
								<div class="form-group">
									<label>詳細</label> <input type="text" name="detail" placeholder="" class="form-control">
								</div>
								<div class="form-group">
									<label>値段</label> <input type="text" name="price" placeholder="" class="form-control">
								</div>

								<input type="hidden" name="pbno" value="${pbno}" class="form-control">


								<div class="pro-form-btn text-center marger_top15">
									<div class="ms_upload_btn">
										<a href="javascript:void(0);" class="ms_btn" onclick="go_upload_track()">Upload Now</a>
										<a href="javascript:void(0);" class="ms_btn" onclick="go_cancle()">cancle</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
		
		<div class="tab-pane fade" id="goods">
			<form name="upload_goods" method="post" enctype="multipart/form-data">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
				<div class="tab-content">
					<div class="marger_top60">
						<div class="ms_upload_box">
							<div class="ms_heading">
								<h1>グッズ情報</h1>
							</div>
							<div class="ms_pro_form">
								<input type="hidden" value="3" id="category" name="category">
								<div class="form-group">
									<label>詳細</label> <input type="text" name="detail" placeholder="" class="form-control">
								</div>
								<div class="form-group">
									<label>値段</label> <input type="text" name="price" placeholder="" class="form-control">
								</div>
								<input type="hidden" name="pbno" value="${pbno}" class="form-control">


								<div class="pro-form-btn text-center marger_top15">
									<div class="ms_upload_btn">
										<a href="javascript:void(0);" class="ms_btn" onclick="go_upload_goods()">Upload Now</a>
										<a href="javascript:void(0);" class="ms_btn" onclick="go_reset()">cancle</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
</div>
<!----Main div close---->
</div>
<!-- main js files links -->
<%@ include file="../footer.jsp" %>