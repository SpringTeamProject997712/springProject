<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../admin_header.jsp"%>
	<div class="body flex-grow-1 px-3">
        <div class="container-lg">
          <div class="car"></div>
          <div class="card mb-4">
            <div class="card-header"><strong>クーポン管理</strong><span class="small ms-1">クーポン目録</span></div>
            <div class="card-body">
              <div class="text-medium-emphasis small">
              	<!-- 검색 창 -->
              	<%-- <form id="pagingForm" action="/admin/notice/manage_notice" method="get">
	              <div class="input-group" style="width:200px;">
								 		<input class="form-control" name="keyword" type="text" placeholder="search notice" value="${pageMaker.cri.keyword}" aria-label="공지 검색">
								  	<button class="btn btn-outline-secondary" type="submit" style="color:white; background:grey">검색</button>
										<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
										<input type="hidden" name="amount" value="10">
										<input type="hidden" name="type" value="${pageMaker.cri.type}">
								</div>
								</form> --%>
							</div>
              <div class="example">
                <div class="tab-content rounded-bottom">
                  <div class="tab-pane p-3 active preview" role="tabpanel" id="preview-687">
                    <table class="table dropdown">
                    <colgroup>
						<col width="20%">
						<col width="35%">
						<col width="10%">
						<col width="25%">
						<col width="10%">
					</colgroup>
                      <thead>
                        <tr>
                          <th scope="col">カテゴリ</th>
                          <th scope="col">名前</th>
                          <th scope="col">クーポンID</th>
                          <th scope="col">割引額 / 割引率</th>
                          <th scope="col">修正 / 削除</th>
                        </tr>
                      </thead>
                      <tbody>
                      	<c:forEach items="${couponList}" var="list">
                        	<tr>
	                          <td scope="row" >
	                          		<c:choose>
																	<c:when test="${list.type eq 1 }">定価</c:when>
																	<c:when test="${list.type eq 2 }">割合</c:when>
																	<c:otherwise>その他</c:otherwise>
																</c:choose></td>
	                          <td>${list.couponname}</td>
	                          <td>
	                        	  ${list.couponid}
	                          </td>
	                          <td>
	                          	${list.saleper}
	                          <td>
	                          	<div class="dropdown">
									  <button class="btn btn-secondary dropdown-toggle" id="dropdownMenuButton2" type="button" data-coreui-toggle="dropdown" aria-expanded="false">確認</button>
									  <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="dropdownMenuButton2">
									    <li><a class="dropdown-item" href="/admin/coupon/view_coupon?couponnumber=${list.couponnumber}">修正</a></li>
									    <li><a class="dropdown-item" href="/admin/coupon/deletecoupon?couponnumber=${list.couponnumber}">削除</a></li>
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
					<a class="btn" href="/admin/coupon/make_coupon" role="button" style="float:right;border:1px solid #000;">書き物</a>
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