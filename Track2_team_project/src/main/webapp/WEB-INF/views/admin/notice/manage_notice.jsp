<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../admin_header.jsp"%>
	<div class="body flex-grow-1 px-3">
        <div class="container-lg">
          <div class="car"></div>
          <div class="card mb-4">
            <div class="card-header"><strong>공지 관리</strong><span class="small ms-1">공지 목록</span></div>
            <div class="card-body">
              <div class="text-medium-emphasis small">
              	<!-- 검색 창 -->
              	<form id="pagingForm" action="/admin/notice/manage_notice" method="get">
	              <div class="input-group" style="width:200px;">
								 		<input class="form-control" name="keyword" type="text" placeholder="search notice" value="${pageMaker.cri.keyword}" aria-label="공지 검색">
								  	<button class="btn btn-outline-secondary" type="submit" style="color:white; background:grey">검색</button>
										<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
										<input type="hidden" name="amount" value="10">
										<input type="hidden" name="type" value="${pageMaker.cri.type}">
								</div>
								</form>
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
                    <colgroup>
						<col width="20%">
						<col width="50%">
						<col width="10%">
						<col width="10%">
						<col width="10%">
					</colgroup>
                      <thead>
                        <tr>
                          <th scope="col">카테고리</th>
                          <th scope="col">제목</th>
                          <th scope="col">조회수</th>
                          <th scope="col">등록일</th>
                          <th scope="col">수정/삭제</th>
                        </tr>
                      </thead>
                      <tbody>
                      	<c:forEach items="${noticeList}" var="list">
                        	<tr>
	                          <td scope="row" ><a class="namelink" href="/admin/notice/manage_notice?wbno=${list.wbno}">
	                          		<c:choose>
										<c:when test="${list.header eq 1 }">공지</c:when>
										<c:when test="${list.header eq 2 }">점검</c:when>
										<c:when test="${list.header eq 3 }">이벤트</c:when>
										<c:otherwise>기타</c:otherwise>
									</c:choose></a></td>
	                          <td>${list.title}</td>
	                          <td>
	                        	  ${list.viewcount}
	                          </td>
	                          <td><fmt:setLocale value="en_US" scope="session"/>
									<fmt:parseDate var="nodate" value="${list.indate }" pattern="yyyy-MM-dd"/>
									<fmt:formatDate value="${nodate }" pattern="yyyy-MM-dd"/></td>
	                          <td>
	                          	<div class="dropdown">
									  <button class="btn btn-secondary dropdown-toggle" id="dropdownMenuButton2" type="button" data-coreui-toggle="dropdown" aria-expanded="false">보기</button>
									  <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="dropdownMenuButton2">
									    <li><a class="dropdown-item" href="/admin/notice/view_notice?wbno=${list.wbno}">수정</a></li>
									    <li><a class="dropdown-item" href="/admin/notice/deletenotice?wbno=${list.wbno }">삭제</a></li>
									  </ul>
								</div>
	                          </td>
                        	</tr>
                        </c:forEach>
                       </table>
                  </div>
                  <nav aria-label="Page navigation example">
					  <ul class="pagination justify-content-center">
					    <li class="page-item ${pageMaker.prev?'':'disabled'}"><a class="page-link" href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
					    <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">	
					    	<li class="page-item ${pageMaker.cri.pageNum == num?'active':''}"><a class="page-link" href="${num }">${num}</a></li>
					    </c:forEach>
					    <li class="page-item ${pageMaker.next?'':'disabled'}"><a class="page-link" href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
					  </ul>					  
					</nav>
					<a class="btn" href="/admin/notice/notice_write" role="button" style="float:right;border:1px solid #000;">글쓰기</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      
    <form id="actionForm" action="manage_notice" method="get">
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
		<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
	</form>
      
<%@ include file="../admin_footer.jsp" %>