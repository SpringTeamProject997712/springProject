<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="../admin_header.jsp"%>
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
                	<form name="upload_coupon" method="post" action="/admin/coupon/upload_coupon" class="row g-3">
                		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
									  <div class="col-md-8">
									    <label class="form-label" for="notice_title">クーポン名</label>
									    <input class="form-control" name="couponname" id="couponname" type="text">
									  </div>
									  <div class="col-md-4">
									  	<label class="form-label" for="category">割引の仕方</label>
									  	<select name="type" class="form-control" id="notice_header" >
										    <option value="">カテゴリー</option>
										    <option value="1">定価割引</option>
										    <option value="2">割合割引</option>
										</select>
									  </div>
									  <div class="col-md-12">
									  	<label class="form-label" for="content">クーポンコード</label>
									    <input class="form-control" name="couponid" id="couponid" type="text">
									  </div>
									  <div class="col-md-12">
									  	<label class="form-label" for="content">割引額</label>
									    <input class="form-control" name="saleper" id="saleper" type="text">
									  </div>
									  <div class="col-8">
										</div>
									  
									  
									  <div class="col-12">
									  
									  </div>
									  <div class="col-12">
									    <button class="btn btn-primary" type="button" onclick="go_upload_coupon()">전송</button>
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