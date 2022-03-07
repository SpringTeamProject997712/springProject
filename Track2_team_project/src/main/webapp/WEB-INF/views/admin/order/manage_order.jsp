<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../admin_header.jsp"%>
	<div class="body flex-grow-1 px-3">
        <div class="container-lg">
          <div class="car"></div>
          <div class="card mb-4">
            <div class="card-header"><strong>注文管理</strong><span class="small ms-1">注文目録</span></div>
            <div class="card-body">
              <div class="text-medium-emphasis small">
              	<!-- 검색 창 -->
              	<form id="pagingForm" action="/admin/order/manage_order" method="get">
	              <div class="input-group" style="width:200px;">
				 		<input class="form-control" name="keyword" type="text" placeholder="search Album" value="${pageMaker.cri.keyword}" aria-label="주문자 검색">
				  	<button class="btn btn-outline-secondary" type="submit" style="color:white; background:grey">検索</button>
						<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
						<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
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
						<col width="5%">
						<col width="45%">
						<col width="20%">
						<col width="10%">
						<col width="10%">
						<col width="10%">
					</colgroup>
                      <thead>
                        <tr>                        
                          <th scope="col">#</th>
                          <th scope="col">注文番号</th>
                          <th scope="col">注文者</th>
                          <th scope="col">総売り上げ</th>
                          <th scope="col">登録日</th>
                          <th scope="col">機能</th>
                        </tr>
                      </thead>
                      <tbody>
                      	<c:forEach items="${odlist}" var="odlist">
                        	<tr>
	                          <td scope="row" >${odlist.rn}</td>
	                          <td scope="row" >${odlist.orderid }</td>
	                          <td>${odlist.name }</td>
	                          <td>
	                        	  <fmt:setLocale value="ja_jp"/><fmt:formatNumber type="currency" value="${odlist.total}" currencySymbol="￥" maxFractionDigits="0" />
	                          </td>
	                          <td><fmt:formatDate value="${odlist.orderdate}" pattern="yyyy-MM-dd"/></td>
	                          <td>
	                          	<div class="dropdown">
								  <button class="btn btn-secondary dropdown-toggle" id="dropdownMenuButton2" type="button" data-coreui-toggle="dropdown" aria-expanded="false">確認</button>
								  <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="dropdownMenuButton2">
								    <li><a class="dropdown-item" href="#">Another action</a></li>
								    <li><a class="dropdown-item" href="#">Something else here</a></li>
								    <li>
								      <hr class="dropdown-divider">
								    </li>
								    <li>
 									<form role="form" name="deleteAlbum" method="post" id="deleteAlbum" action="/album/deleteAlbum">
								    	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
										<input type="hidden" name="orderid" value="${odlist.orderid }">
										
									    <input type="submit" class="dropdown-item" value="주문 삭제">
									</form>
									</li>
								  </ul>
								</div>
	                          </td>
                        	</tr>
                        </c:forEach>
                        </tbody>
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
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      
    <form id="actionForm" action="manage_order" method="get">
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
		<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
	</form>
	
<%@ include file="../admin_footer.jsp" %>