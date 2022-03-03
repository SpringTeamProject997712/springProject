<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../admin_header.jsp"%>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<div class="body flex-grow-1 px-3">
        <div class="container-lg">
          <div class="car"></div>
          <div class="card mb-4">
            <div class="card-header"><strong>공지 관리</strong><span class="small ms-1">/ 공지 확인 / 수정</span></div>
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
                	<form name="NoticeForm" method="post" class="row g-3">
                		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
									  <div class="col-md-8">
									    <label class="form-label" for="member_id">제목</label>
									    <input class="form-control" name="title" id="notice_title" type="text" value="${notice.title}">
									  </div>
									  <div class="col-md-12">
									  	<label class="form-label" for="zip">내용</label>
									  	<div class="input-group">
									  		<div id="summernote">${notice.content}</div>
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
									  <div class="col-12">
									    <button class="btn btn-primary" type="button" onclick="go_update_notice()">수정하기</button>
									    <button class="btn btn-primary" type="button" onclick="location.href='/admin/notice/manage_notice'">목록보기</button>
									  </div>
									</form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
<%@ include file="../admin_footer.jsp" %>