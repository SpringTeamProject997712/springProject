<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../admin_header.jsp"%>
	<div class="body flex-grow-1 px-3">
        <div class="container-lg">
          <div class="car"></div>
          <div class="card mb-4">
            <div class="card-header"><strong>유저 관리</strong><span class="small ms-1">유저 목록</span></div>
            <div class="card-body">
              <div class="text-medium-emphasis small">
	              <div class="input-group" style="width:200px;">
								  <input class="form-control" type="text" placeholder="search ID" aria-label="아이디 검색">
								  <button class="btn btn-outline-secondary" type="button" style="color:white; background:grey">검색</button>
								</div>
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
                  <div class="tab-pane p-3 active preview" role="tabpanel" id="preview-687">
                    <table class="table dropdown">
                      <thead>
                        <tr>
                          <th scope="col">아이디(이메일)</th>
                          <th scope="col">이름</th>
                          <th scope="col">주소</th>
                          <th scope="col">권한</th>
                          <th scope="col">가입일</th>
                          <th scope="col">상태</th>
                          <th scope="col">기능</th>
                        </tr>
                      </thead>
                      <tbody>
                      	<c:forEach items="${memberList}" var="mlist">
                        	<tr>
	                          <td scope="row">${mlist.id}</td>
	                          <td>${mlist.name}</td>
	                          <td>${mlist.address1} || ${mlist.address2}</td>
	                          <td>
	                          <c:forEach items="${mlist.authList}" var="authList">
	                          	${authList.auth}
	                          </c:forEach>
	                          </td>
	                          <td><fmt:formatDate value="${mlist.regdate}" pattern="yyyy-MM-dd"/></td>
	                          <td>${mlist.active}</td>
	                          <td>
	                          	<div class="dropdown">
															  <button class="btn btn-secondary dropdown-toggle" id="dropdownMenuButton2" type="button" data-coreui-toggle="dropdown" aria-expanded="false">보기</button>
															  <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="dropdownMenuButton2">
															    <li><a class="dropdown-item" href="/admin/member/view_member?id=${mlist.id}">세부정보 조회 /수정</a></li>
															    <li><a class="dropdown-item" href="#">Another action</a></li>
															    <li><a class="dropdown-item" href="#">Something else here</a></li>
															    <li>
															      <hr class="dropdown-divider">
															    </li>
															    <li><a class="dropdown-item" href="#">Separated link</a></li>
															  </ul>
															</div>
	                          </td>
                        	</tr>
                        </c:forEach>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
<%@ include file="../admin_footer.jsp" %>