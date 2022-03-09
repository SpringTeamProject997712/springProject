<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<link href="/resources/css/mycart.css" rel="stylesheet">
<div class="ms_account_wrapper" style="padding-left: 0">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2>注文詳細</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="ms_acc_overview">
					<div class="container padding-bottom-3x mb-1">
						<!-- Shopping Cart-->
						<div class="table-responsive shopping-cart">
							<table class="table cart-table">
								<thead>
									<tr>
										<th>商品名</th>
										<th class="text-center">カテゴリ</th>
										<th class="text-center">値段</th>
										<th class="text-center">ディスカウント</th>
									
									</tr>
								</thead>
								</tbody>
								<c:set var="sum" value="0" />
								<c:forEach var="orderView" items="${orderView}">
									<c:if test="${orderView.category eq '1'}">
										<tr class="slideDown-details" id="${orderView.odbno}">
											<td>
												<div class="product-item">
													<a class="product-thumb" href="javascript:void(0)"><img src="${pageContext.request.contextPath}/upload/${orderView.aimage}" alt="Product"></a>
													<div class="product-info">
														<h4 class="product-title">
															${orderView.aname}
														</h4>
													</div>
												</div>
											</td>
											<td class="text-center text-lg text-medium">Album</td>
											<td class="text-center text-lg text-medium">
												<fmt:setLocale value="ja_jp" />
												<fmt:formatNumber type="currency" value="${orderView.aprice}" currencySymbol="￥" maxFractionDigits="0" />
											</td>
											<td class="text-center text-lg text-medium">
												<fmt:setLocale value="ja_jp" />
												<fmt:formatNumber type="currency" value="${orderView.aprice}" currencySymbol="￥" maxFractionDigits="0" />
											</td>
										</tr>
										<tr class="cart-details" style="display: none" id="cart-details_${orderView.odbno}">
											<td colspan="5">
												<ul style="list-style: none;">
													<li class="album_list_wrapper">
														<ul class="album_list_name">
															<li>#</li>
															<li>タイトル</li>

															<li class="text-center">値段</li>
															<li class="text-center">時間</li>
														</ul> <c:set value="${1}" var="d_num" />
														<c:forEach items="${orderdetailView}" var="orderDetail">
															<c:if test="${orderView.pbno == orderDetail.pbno}">
																<ul>
																	<li>${d_num}</li>
																	<li class="text-center">${orderDetail.name}</li>
																	<li class="text-center track_name">
																	<fmt:setLocale value="ja_jp" />
																	<fmt:formatNumber type="currency" value="${orderDetail.price}" currencySymbol="￥" maxFractionDigits="0" />
																	</li>
																	<li class="text-center">${orderDetail.length}</li>
																</ul>
																<c:set value="${d_num+1}" var="d_num" />
															</c:if>

														</c:forEach>
													</li>
												</ul>
											</td>
										</tr>
									</c:if>
									<c:if test="${orderView.category eq '2'}">
										<tr>
											<td>
												<div class="product-item">
													<img class="product-thumb"  src="${pageContext.request.contextPath}/upload/${orderView.timage}" alt="Product" style="margin-right: -80px;">
													<div class="product-info">
														<h4 class="product-title">
															${orderView.tname}
														</h4>
													</div>
												</div>
											</td>
											<td class="text-center text-lg text-medium">トラック</td>
											<td class="text-center text-lg text-medium">
												<fmt:setLocale value="ja_jp" />
												<fmt:formatNumber type="currency" value="${orderView.tprice}" currencySymbol="￥" maxFractionDigits="0" />
											</td>
											<td class="text-center text-lg text-medium">
												<fmt:setLocale value="ja_jp" />
												<fmt:formatNumber type="currency" value="${orderView.tprice}" currencySymbol="￥" maxFractionDigits="0" />
											</td>
									</c:if>
									<c:if test="${orderView.category eq '1'}">
										<c:set var="sum" value="${sum + orderView.aprice}" />
									</c:if>
									<c:if test="${orderView.category eq '2'}">
										<c:set var="sum" value="${sum + orderView.tprice}" />
									</c:if>
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
</div>


<%@include file="../footer.jsp"%>