<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../admin_header.jsp"%>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<div class="body flex-grow-1 px-3">
        <div class="container-lg">
          <div class="car"></div>
          <div class="card mb-4">
            <div class="card-header"><strong>お知らせ管理</strong><span class="small ms-1">/お知らせ確認 / 書き込み</span></div>
            <div class="card-body">
              
              <div class="example">
               <!--  <ul class="nav nav-tabs" role="tablist">
                  <li class="nav-item"><a class="nav-link active" data-coreui-toggle="tab" href="#preview-687" role="tab">
                    <svg class="icon me-2">
                      <use href="/images/svg/free.svg#cil-media-play"></use>
                    </svg>Preview</a>
                  </li>
                </ul> -->
                <div class="tab-content rounded-bottom">
                	<form name="upload_notice" method="post" class="row g-3">
                		<input type="hidden" name="id" value="admin">
                		<input type="hidden" name="bbno" value="1">
                		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
									  <div class="col-md-8">
									    <label class="form-label" for="notice_title">タイトル</label>
							     	    <input class="form-control" name="title" id="notice_title" type="text">
									  </div>
									  <div class="col-md-4">
									  	<label class="form-label" for="category">カテゴリー</label>
									  	<select name="header" class="form-control" id="notice_header" >
										    <option value="">カテゴリー選択</option>
										    <option value="1">お知らせ</option>
										    <option value="2">メンテナンス</option>
										    <option value="3">イベント</option>
										</select>
									  </div>
									  <div class="col-md-12">
									  	<label class="form-label" for="content">内容</label>
									  	<div class="input-group">
									  		<textarea id="summernote" name="content" class="summernote"></textarea>
									  	</div>
									  </div>
									  <div class="col-8">
										</div>
									  
									  
									  <div class="col-12">
									   <!--  <div class="form-check">
									      <input class="form-check-input" id="gridCheck" type="checkbox">
									      <label class="form-check-label" for="gridCheck">Check me out</label>
									    </div> -->
									  </div>
									  <div class="col-4">
									  	<label class="form-label" for="file">添付ファイル</label>
									  	<input class="form-control" name="filename" id="notice_file" type="file" value="">
									  </div>
									  <div class="col-12">
									    <button class="btn btn-primary" type="button" onclick="go_upload_notice()">書き込む</button>
									    <button class="btn btn-primary" type="button" onclick="location.href='/admin/notice/manage_notice'">戻る</button>
									  </div>
									</form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      
     
	
<%@ include file="../admin_footer.jsp" %>