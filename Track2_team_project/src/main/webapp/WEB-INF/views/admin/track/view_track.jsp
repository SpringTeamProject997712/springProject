<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../admin_header.jsp"%>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<div class="body flex-grow-1 px-3">
        <div class="container-lg">
          <div class="car"></div>
          <div class="card mb-4">
            <div class="card-header"><strong>트랙 관리</strong><span class="small ms-1">트랙 세부 정보 확인 / 수정</span></div>
            <div class="card-body">
              <div class="text-medium-emphasis small">
	            	<h3>${album.name} : ${track.name}의 정보</h3> 
							</div>
              <div class="example">
                <div class="tab-content rounded-bottom">
                	<form name="formTrack" method="post" action="/track/updateTrack" class="row g-3" enctype="multipart/form-data">
                		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
									  <div class="col-md-6">
									    <label class="form-label" for="tbno">트랙 고유번호</label>
									    <input class="form-control" name="tbno" id="tbno" type="text" value="${track.tbno}" readonly="readonly">
									  </div>
									  <div class="col-md-6">
									    <label class="form-label" for="track_name">트랙 타이틀</label>
									    <input class="form-control" name="name" id="track_name" type="text" value="${track.name}">
									  </div>
									  <div class="col-md-4">
									  	<label class="form-label" for="track_genre">장르</label>
										   <select class="form-control" id="genre" name="genre">
										<c:forEach items="${genre}" var="genre" varStatus="status">
											<option value="${status.count}">${genre}</option>
										</c:forEach>
									</select>
									  </div>
									  <div class="col-md-4">
									  	<label class="form-label" for="track_price">가격</label>
										   <input class="form-control" name="price" id="track_price" type="text" value="${track.price}">
									  </div>

									  <div class="col-12">
									    <label class="form-label" for="track_songname">음원 파일</label>
									    <div class="input-group">
										    <input class="form-control" name="songname" value="${track.songname}">
										    <input class="form-control" name="songrealname" value="${track.songrealname}">
										    
										    <label for="songname">
											    <a class="btn btn-outline-secondary ms_btn" type="button">
											 	 	트랙 변경
											    </a>
										    </label>
										    	<input type="file" name="uploadMusic" id="songname" accept="audio/*" class="upload-hidden" style="display: none">
<%-- 										    	<input type="hidden" name="songname" value="${track.songname}"> --%>
										 </div>
									  </div>
									  <div class="col-12">
									    <label class="form-label" for="track_detail">상세</label>
									    <input class="form-control" name="detail" id="track_detail" type="text" value="${track.detail}" style="height:150px;">
									  </div>
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
<%@ include file="../admin_footer.jsp" %>