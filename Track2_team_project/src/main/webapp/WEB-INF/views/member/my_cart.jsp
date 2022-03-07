<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<link href="/resources/css/mycart.css" rel="stylesheet">
<div class="ms_account_wrapper" style="padding-left: 0">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2>カート</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="ms_acc_overview">
					<c:choose>
						<c:when test="${cartList.size() == 0}">
							<td>カート内の情報がないです。</td>
						</c:when>
						<c:otherwise>
							<div class="ms_heading">
								<h1>Account Overview</h1>
							</div>
							<div class="container padding-bottom-3x mb-1">
								<!-- Shopping Cart-->
								<div class="table-responsive shopping-cart">
									<table class="table cart-table">
										<thead>
											<tr>
												<th>商品</th>
												<th class="text-center">カテゴリ</th>
												<th class="text-center">総額</th>
												<th class="text-center">ディスカウント</th>
												<th class="text-center"><a class="btn btn-sm btn-outline-danger remove-all-cart" href="javascript:void(0)">クリア</a></th>
											</tr>
										</thead>
										</tbody>
										<c:set var="sum" value="0"/>
										<c:forEach var="cartList" items="${cartList}">
											<c:if test="${cartList.category eq '1'}">
											<tr class="slideDown-details" id="${cartList.cbno}">
												<td>
													<div class="product-item">
														<a class="product-thumb" href="javascript:void(0)"><img src="${pageContext.request.contextPath}/upload/${cartList.image}" alt="Product"></a>
														<div class="product-info">
															<h4 class="product-title">
																<a href="/album/album_single?abno=${cartList.abno}">${cartList.aname}</a>
															</h4>
														</div>
													</div>
												</td>
												<td class="text-center text-lg text-medium">アルバム</td>
												<td class="text-center text-lg text-medium">
													<fmt:setLocale value="ja_jp" />
													<fmt:formatNumber type="currency" value="${cartList.aprice * cartList.quantity}" currencySymbol="￥" maxFractionDigits="0" />
												</td>
												<td class="text-center text-lg text-medium">
													<fmt:setLocale value="ja_jp" />
													<fmt:formatNumber type="currency" value="${cartList.aprice}" currencySymbol="￥" maxFractionDigits="0" />
												</td>
												<td class="text-center">
													<a class="remove-from-cart" href="javascript:void(0)" data-toggle="tooltip" title="" data-original-title="Remove item" data-cbno="${cartList.cbno}"><i class="fa fa-trash"></i></a>
												</td>
											</tr>
											<tr class="cart-details" style="display: none" id="cart-details_${cartList.cbno}">
												<td colspan="5">
													<ul style="list-style: none;">
														<li class="album_list_wrapper">
															<ul class="album_list_name">
																<li>#</li>
																<li>Song Title</li>
																
																<li class="text-center">Price</li>
																<li class="text-center">Duration</li>
															</ul>
															<c:set value="${1}" var="d_num"/>
															<c:forEach items="${cartListDetail}" var="cartDetail">
																<c:if test="${cartList.pbno == cartDetail.pbno}">
																	<ul>
																		<li>${d_num}</li>
																		<li class="text-center">${cartDetail.tname}</li>
																		<li class="text-center track_name">${cartDetail.tprice}</li>
																		<li class="text-center">${cartDetail.length}</li>
																	</ul>
																	<c:set value="${d_num+1}" var="d_num"/>
																</c:if>
																
															</c:forEach>
														</li>
													</ul>
												</td>
											</tr>	
											</c:if>
											<c:if test="${cartList.category eq '2'}">
											<tr>
												<td>
													<div class="product-item">
														<a class="product-thumb" href="/album/album_single?abno=${cartList.abno }"><img src="${pageContext.request.contextPath}/upload/${cartList.timage}" alt="Product"></a>
														<div class="product-info">
															<h4 class="product-title">
																<a href="/album/album_single?abno=${cartList.abno}">${cartList.tname}</a>
															</h4>
														</div>
													</div>
												</td>
												<td class="text-center text-lg text-medium">トラック</td>
												<td class="text-center text-lg text-medium">
													<fmt:setLocale value="ja_jp" />
													<fmt:formatNumber type="currency" value="${cartList.tprice * cartList.quantity}" currencySymbol="￥" maxFractionDigits="0" />
												</td>
												<td class="text-center text-lg text-medium">
													<fmt:setLocale value="ja_jp" />
													<fmt:formatNumber type="currency" value="${cartList.tprice}" currencySymbol="￥" maxFractionDigits="0" />
												</td>
												<td class="text-center">
													<a class="remove-from-cart" href="javascript:void(0)" data-toggle="tooltip" title="" data-original-title="Remove item" onclick="delete_cart_btn();" data-cbno="${cartList.cbno }"><i class="fa fa-trash"></i></a>
												</td>
											</tr>
											</c:if>
										<c:if test="${cartList.category eq '1'}">
											<c:set var="sum" value="${sum + cartList.aprice}"/>
										</c:if>
										<c:if test="${cartList.category eq '2'}">
											<c:set var="sum" value="${sum + cartList.tprice}"/>
										</c:if>
										</c:forEach>


										</tbody>
									</table>
								</div>
								<div class="shopping-cart-footer">
									<div class="column" style="text-align: left;">
										<form class="coupon-form" method="post">
										</form>
									</div>
									
									<div class="column text-lg" style="color:white;">
										Subtotal: <span class="text-medium">
										<fmt:setLocale value="ja_jp" />
										<fmt:formatNumber type="currency" value="${sum}" currencySymbol="￥" maxFractionDigits="0" />
										</span>
									</div>
								</div>
								<div class="shopping-cart-footer">
									<div class="column">
									</div>
									<div class="column">
<!-- 										<a class="ms_btn btn-primary" href="javascript:go_pay()" data-toast="" data-toast-type="success" data-toast-position="topRight" data-toast-icon="icon-circle-check" data-toast-title="Your cart" data-toast-message="is updated successfully!">Update Cart</a> -->
										<form action="/member/go_pay" method="post" name="purchaseForm">
											<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
											<input type="hidden" name="real_id" value="${principal.member.id}">
											<input type="hidden" name="amount" id="my_order_amount" value="${sum}">
											<input type="hidden" name="id" value="${principal.member.name}">
											<input type="hidden" name="zipnum" value="${principal.member.zipnum}">
											<input type="hidden" name="phone" value="${principal.member.phone}">
											<input type="hidden" name="address1" value="${principal.member.address1}">
											<input type="hidden" name="address2" value="${principal.member.address2}">
										</form>
										<a class="ms_btn btn-success" href="javascript:void(0)" onclick="go_purchase()">Purchase</a>
										
									</div>
								</div>
							</div>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</div>
</div>
</div>


<%@include file="../footer.jsp"%>
