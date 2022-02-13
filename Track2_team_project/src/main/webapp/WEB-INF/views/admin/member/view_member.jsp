<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../admin_header.jsp"%>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<div class="body flex-grow-1 px-3">
        <div class="container-lg">
          <div class="car"></div>
          <div class="card mb-4">
            <div class="card-header"><strong>유저 관리</strong><span class="small ms-1">유저 세부 정보 확인 / 수정</span></div>
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
                	<form name="privacyForm" method="post" action="/member/updateMember" class="row g-3">
									  <div class="col-md-6">
									    <label class="form-label" for="member_id">ID</label>
									    <input class="form-control" name="id" id="member_id" type="text" value="${member.id}" readonly="readonly">
									  </div>
									  <div class="col-md-6">
									    <label class="form-label" for="member_name">Name</label>
									    <input class="form-control" name="name" id="member_name" type="text" value="${member.name}">
									  </div>
									  <div class="col-md-4">
									  	<label class="form-label" for="zip">Zip</label>
									  	<div class="input-group">
										    <input class="form-control" name="zip" id="zip" type="text">
										    <button class="btn btn-outline-secondary" type="button" onclick="findAddr()">우편번호 찾기</button> 
									  	</div>
									  </div>
									  <div class="col-8">
										</div>
									  <div class="col-12">
									    <label class="form-label" for="member_address1">Address</label>
									    <input class="form-control" name="address1" id="member_address1" type="text" placeholder="1234 Main St">
									  </div>
									  <div class="col-12">
									    <label class="form-label" for="inputAddress2">Address 2</label>
									    <input class="form-control" name="address2" id="inputAddress2" type="text" placeholder="Apartment, studio, or floor">
									  </div>
									  <div class="col-md-6">
									    <label class="form-label" for="AuthList">AuthList</label>
								    	<input class="form-control" id="AuthList" type="text" value="이거 어케할까">
									  </div>
									  <div class="col-md-4">
									    <label class="form-label" for="inputZip">Zip</label>
									    <input class="form-control" id="inputZip" type="text">
									  </div>
									  <div class="col-md-2">
									    <label class="form-label" for="inputState">계정 활성화</label>
									    <select class="form-select" name="active" id="inputState">
									      <option value="0" selected>활성화</option>
									      <option value="1">비활성화</option>
									    </select>
									  </div>
									  <div class="col-12">
									   <!--  <div class="form-check">
									      <input class="form-check-input" id="gridCheck" type="checkbox">
									      <label class="form-check-label" for="gridCheck">Check me out</label>
									    </div> -->
									  </div>
									  <div class="col-12">
									    <button class="btn btn-primary" type="submit">수정하기</button>
									  </div>
									</form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
<%@ include file="../admin_footer.jsp" %>