<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../admin_header.jsp"%>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<div class="body flex-grow-1 px-3">
        <div class="container-lg">
          <div class="car"></div>
          <div class="card mb-4">
            <div class="card-header"><strong>유저 관리</strong><span class="small ms-1">권한 추가/삭제</span></div>
            <div class="card-body">
              <div class="text-medium-emphasis small">
	            	<h3>${member.id} : ${member.name}의 정보</h3> 
							</div>
              <div class="example">
               <!--  <ul class="nav nav-tabs" role="tablist">
                  <li class="nav-item"><a class="nav-link active" data-coreui-toggle="tab" href="#preview-687" role="tab">
                    <svg class="icon me-2">
                      <use href="/images/svg/free.svg#cil-media-play"></use>
                    </svg>Preview</a>
                  </li>
                </ul> -->
                <div class="tab-content rounded-bottom">
                	<form name="privacyForm" method="post" class="row g-3">
                		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
									  <div class="col-12">
									    <input class="form-control" name="" id="member_addr" type="checkbox" value="">
									  </div>
									  <div class="col-12">
									  	<button class="btn btn-primary" type="button" onclick="go_update()">수정하기</button>
									  	<button class="btn btn-primary" type="button" onclick="location.href='/admin/member/manage_member'">목록보기</button>
									  </div>
									</form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
<%@ include file="../admin_footer.jsp" %>