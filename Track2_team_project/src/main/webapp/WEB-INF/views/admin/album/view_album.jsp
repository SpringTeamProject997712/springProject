<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../admin_header.jsp"%>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<div class="body flex-grow-1 px-3">
	<div class="container-lg">
		<div class="car"></div>
		<div class="card mb-4">
			<div class="card-header">
				<strong>アルバム管理</strong><span class="small ms-1">アルバムの詳細情報照会 / 修正</span>
			</div>
			<div class="card-body">
				<div class="text-medium-emphasis small">
					<h3>${album.name}: ${album.singer}の情報</h3>
				</div>
				<div class="example">
					<div class="tab-content rounded-bottom">
						<form name="formAlbum" method="post" action="/album/updateAlbum" class="row g-3" enctype="multipart/form-data">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
							<div class="col-md-6">
								<label class="form-label" for="abno">アルバム固有番号</label>
								<input class="form-control" name="abno" id="abno" type="text" value="${album.abno}" readonly="readonly">
							</div>
							<div class="col-md-6">
								<label class="form-label" for="album_name">アルバムタイトル</label>
								<input class="form-control" name="name" id="album_name" type="text" value="${album.name}">
							</div>
							<div class="col-md-4">
								<label class="form-label" for="album_singer">アーティスト</label>
								<input class="form-control" name="singer" id="album_singer" type="text" value="${album.singer}">
							</div>
							<div class="col-md-4">
								<label class="form-label" for="album_price">値段</label>
								<input class="form-control" name="price" id="album_price" type="text" value="${album.price}">
							</div>
							<div class="col-md-4">
								<label class="form-label" for="album_date">登録日</label>
								<input class="form-control" name="regdate" id="album_price" type="date" value="${album.regdate}">
							</div>
							<div class="col-4 thumImg">
								<label class="form-label" for="album_date">カバーイメージ</label>
								<div class="input-group">
									<label for="image">
										<img src="${pageContext.request.contextPath}/upload/${album.image}" alt="image" style="width:240px;"/>
									</label>
								</div>
							</div>
							<div class="col-8">
								<label class="form-label" for="album_image">カバーファイル名</label>
								<div class="input-group">
									<input class="form-control" name="image_name" value="${album.image}">
									<a class="btn btn-outline-secondary ms_btn" type="button"><label for="image">カバー変更</label></a>
									<input type="file" name="uploadImage" id="image" accept="image/*" class="upload-hidden" style="display: none">
									<%-- <input type="hidden" name="image" value="${album.image}"> --%>
								</div>
									
								<script>
								  $("#image").change(function(){
								   if(this.files && this.files[0]) {
								    var reader = new FileReader;
								    reader.onload = function(data) {
								     $(".thumImg img").attr("src", data.target.result).width(240);        
								    }
								    reader.readAsDataURL(this.files[0]);
								   }
								  });
								 </script>
							<div class="col-12" style="margin-top: var(--cui-gutter-y);">
								<label class="form-label" for="album_detail">詳細</label>
								<input class="form-control" name="detail" id="album_detail" type="text" value="${album.detail}" style="height: 150px;">
							</div>
							</div>
							<input name="image" type="hidden" value="${album.image}">
							<input name="image_240" type="hidden" value="${album.image_240}">
							<input name="image_50" type="hidden" value="${album.image_50}">
							<div class="col-12">
								<button class="btn btn-primary" type="submit">修正する</button>
								<button class="btn btn-primary" type="button" onclick="location.href='/admin/album/manage_album'">一覧を見る</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../admin_footer.jsp"%>