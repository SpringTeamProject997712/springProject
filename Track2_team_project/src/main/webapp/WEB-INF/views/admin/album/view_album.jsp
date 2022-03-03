<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../admin_header.jsp"%>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<div class="body flex-grow-1 px-3">
	<div class="container-lg">
		<div class="car"></div>
		<div class="card mb-4">
			<div class="card-header">
				<strong>앨범 관리</strong><span class="small ms-1">앨범 세부 정보 확인 / 수정</span>
			</div>
			<div class="card-body">
				<div class="text-medium-emphasis small">
					<h3>${album.name}: ${album.singer}의 정보</h3>
				</div>
				<div class="example">
					<div class="tab-content rounded-bottom">
						<form name="formAlbum" method="post" action="/album/updateAlbum" class="row g-3" enctype="multipart/form-data">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
							<div class="col-md-6">
								<label class="form-label" for="abno">앨범 고유번호</label>
								<input class="form-control" name="abno" id="abno" type="text" value="${album.abno}" readonly="readonly">
							</div>
							<div class="col-md-6">
								<label class="form-label" for="album_name">앨범 타이틀</label>
								<input class="form-control" name="name" id="album_name" type="text" value="${album.name}">
							</div>
							<div class="col-md-4">
								<label class="form-label" for="album_singer">가수</label>
								<input class="form-control" name="singer" id="album_singer" type="text" value="${album.singer}">
							</div>
							<div class="col-md-4">
								<label class="form-label" for="album_price">가격</label>
								<input class="form-control" name="price" id="album_price" type="text" value="${album.price}">
							</div>
							<div class="col-md-4">
								<label class="form-label" for="album_date">등록일</label>
								<input class="form-control" name="regdate" id="album_price" type="date" value="${album.regdate}">
							</div>
							<div class="col-4 thumImg">
								<label class="form-label" for="album_date">커버 이미지</label>
								<div class="input-group">
									<label for="image">
										<img src="${pageContext.request.contextPath}/upload/${album.image}" alt="image" style="width:240px;"/>
									</label>
								</div>
							</div>
							<div class="col-8">
								<label class="form-label" for="album_image">커버 파일명</label>
								<div class="input-group">
									<input class="form-control" name="image_name" value="${album.image}">
									<a class="btn btn-outline-secondary ms_btn" type="button"><label for="image">  커버 변경 </label></a>
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
								<label class="form-label" for="album_detail">상세</label>
								<input class="form-control" name="detail" id="album_detail" type="text" value="${album.detail}" style="height: 150px;">
							</div>
							</div>
							<input name="image" type="hidden" value="${album.image}">
							<input name="image_240" type="hidden" value="${album.image_240}">
							<input name="image_50" type="hidden" value="${album.image_50}">
							<div class="col-12">
								<button class="btn btn-primary" type="submit">수정하기</button>
								<button class="btn btn-primary" type="button" onclick="location.href='/admin/album/manage_album'">목록보기</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../admin_footer.jsp"%>