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
              	<%-- <form id="pagingForm" action="/admin/order/manage_order" method="get">
	              <div class="input-group" style="width:200px;">
				 		<input class="form-control" name="keyword" type="text" placeholder="search Album" value="${pageMaker.cri.keyword}" aria-label="주문자 검색">
				  	<button class="btn btn-outline-secondary" type="submit" style="color:white; background:grey">検索</button>
						<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
						<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
						<input type="hidden" name="type" value="${pageMaker.cri.type}">
				</div>
				</form> --%>
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
                    <table class="table dropdown" style="text-align: center;">
                    <colgroup>
						<col width="5%">
						<col width="25%">
						<col width="25%">
						<col width="10%">
						<col width="15%">
						<col width="20%">
					</colgroup>
                      <thead>
                        <tr>                        
                          <th scope="col">#</th>
                          <th scope="col">注文番号</th>
                          <th scope="col">商品名</th>
                          <th scope="col">価格</th>
                          <th scope="col">アルバムカバー</th>
                          <th scope="col">カテゴリー</th>
                        </tr>
                      </thead>
                      <tbody>
                      <c:set var="bno" value="1" />
								<c:forEach var="orderView" items="${orderView}">
									<c:if test="${orderView.category eq '1'}">
										<tr class="slideDown-details" id="${orderView.odbno}">
											<td>
												${bno}
											</td>
											<td>
												${orderView.odbno}
											</td>
											<td>
												<div class="product-item">
													<div class="product-info">
														<h4 class="product-title">
															${orderView.aname}
														</h4>
													</div>
												</div>
											</td>
											<td class="text-center text-lg text-medium">
												<fmt:setLocale value="ja_jp" />
												<fmt:formatNumber type="currency" value="${orderView.aprice}" currencySymbol="￥" maxFractionDigits="0" />
											</td>
											<td class="text-center text-lg text-medium">
												<a class="product-thumb" href="javascript:void(0)"><img src="${pageContext.request.contextPath}/upload/${orderView.image_50}" alt="Product"></a>											</td>
											<td class="text-center text-lg text-medium">
												Album												
											</td>
										</tr>
										<tr class="cart-details" style="display: none" id="cart-details_${orderView.odbno}">
											<td colspan="5">
												<ul style="list-style: none;">
													<li class="album_list_wrapper">
														<table class="table" style="width:100%;">
															<tr class="album_list_name">
																<th>#</th>
																<th>タイトル</th>
																<th class="text-center">値段</th>
																<th class="text-center">時間</th>
														</tr> 
														<c:set value="${1}" var="d_num" />
														<c:forEach items="${orderdetailView}" var="orderDetail">
															<c:if test="${orderView.pbno == orderDetail.pbno}">
															<tr>
																<td>${d_num}</td>
																<td class="text-center">${orderDetail.name}</td>
																<td class="text-center track_name">
																	<fmt:setLocale value="ja_jp" />
																	<fmt:formatNumber type="currency" value="${orderDetail.price}" currencySymbol="￥" maxFractionDigits="0" />
																</td>
																<td class="text-center">${orderDetail.length}</td>														
															</tr>
																<c:set value="${d_num+1}" var="d_num" />
															</c:if>
														</c:forEach>
														</table>
														
													</li>
												</ul>
											</td>
										</tr>
									</c:if>
									<c:if test="${orderView.category eq '2'}">
										<tr>
											<td>
												${bno}
											</td>
											<td>
												${orderView.odbno}
											</td>
											<td>
												<div class="product-info">
														<h4 class="product-title">
															${orderView.tname}
														</h4>
													</div>
												
											</td>
											<td class="text-center text-lg text-medium">
												<fmt:setLocale value="ja_jp" />
												<fmt:formatNumber type="currency" value="${orderView.tprice}" currencySymbol="￥" maxFractionDigits="0" />
											</td>
											<td class="text-center text-lg text-medium">
												<div class="product-item">
													<a class="product-thumb" href="/album/album_single?abno=${orderView.abno }"><img src="${pageContext.request.contextPath}/upload/${orderView.timage_50}" alt="Product"></a>
													
												</div>
											</td>
											<td class="text-center text-lg text-medium">
												Track
											</td>
										</tr>
									</c:if>
									<c:if test="${orderView.category eq '1'}">
										<c:set var="sum" value="${sum+1}" />
									</c:if>
									<c:if test="${orderView.category eq '2'}">
										<c:set var="sum" value="${sum+1}" />
									</c:if>
									<c:set value="${bno+1}" var="bno"  />
								</c:forEach>
                      	<%-- <c:forEach items="${odlist}" var="odlist">
                        	<tr>
	                          <td scope="row" >${odlist.rn}</td>
	                          <td scope="row" >${odlist.odbno}</td>
	                          <td>${odlist.name}</td>
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
                        </c:forEach> --%>
                        </tbody>
                       </table>
                  </div>
                  <%-- <nav aria-label="Page navigation example">
					  <ul class="pagination justify-content-center">
					    <li class="page-item ${pageMaker.prev?'':'disabled'}"><a class="page-link" href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
					    <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">	
					    	<li class="page-item ${pageMaker.cri.pageNum == num?'active':''}"><a class="page-link" href="${num }">${num}</a></li>
					    </c:forEach>
					    <li class="page-item ${pageMaker.next?'':'disabled'}"><a class="page-link" href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
					  </ul>
					  
					</nav> --%>
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