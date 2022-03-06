<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<link href="/resources/css/mycart.css" rel="stylesheet">
<div class="ms_account_wrapper" style="padding-left: 0">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2>Order Detail :</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="ms_acc_overview">
					<div class="ms_heading">
						<h1>Account Overview</h1>
					</div>
					<div class="container padding-bottom-3x mb-1">
						<!-- Shopping Cart-->
						<div class="table-responsive shopping-cart">
							<table class="table cart-table">
								<thead>
									<tr>
										<th>
											<div class="allCheck">
												<input type="checkbox" name="allCheck" id="allCheck"> <label for="allCheck"></label>
											</div>
										</th>
										<th>Product Name</th>
										<th class="text-center">Category</th>
										<th class="text-center">Subtotal</th>
										<th class="text-center">Discount</th>
										<th class="text-center"><a class="btn btn-sm btn-outline-danger remove-all-cart" href="javascript:void(0)">Clear Cart</a></th>
									</tr>
								</thead>
								</tbody>
								<c:set var="sum" value="0" />
								<c:forEach var="orderView" items="${orderView}">
									<c:if test="${orderView.category eq '1'}">
										<tr class="slideDown-details" id="${orderView.odbno}">
											<td>
												<div class="checkBox">
													<input type="checkBox" name="chBox" class="chBox" data-odbno="${orderView.odbno}">
												</div>
											</td>
											<td>
												<div class="product-item">
													<a class="product-thumb" href="javascript:void(0)"><img src="${pageContext.request.contextPath}/upload/${orderView.aimage}" alt="Product"></a>
													<div class="product-info">
														<h4 class="product-title">
															<a href="/album/album_single?abno=${orderView.abno}">${orderView.aname}</a>
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
											<td class="text-center">
												<a class="remove-from-cart" href="javascript:void(0)" data-toggle="tooltip" title="" data-original-title="Remove item" data-cbno="${orderView.odbno}"><i class="fa fa-trash"></i></a>
											</td>
										</tr>
										<tr class="cart-details" style="display: none" id="cart-details_${orderView.odbno}">
											<td colspan="5">
												<ul style="list-style: none;">
													<li class="album_list_wrapper">
														<ul class="album_list_name">
															<li>#</li>
															<li>Song Title</li>

															<li class="text-center">Price</li>
															<li class="text-center">Duration</li>
														</ul> <c:set value="${1}" var="d_num" />
														<c:forEach items="${orderdetailView}" var="orderDetail">
															<c:if test="${orderView.pbno == orderDetail.pbno}">
																<ul>
																	<li>${d_num}</li>
																	<li class="text-center">${orderDetail.name}</li>
																	<li class="text-center track_name">${orderDetail.price}</li>
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
												<div class="checkBox">
													<input type="checkBox" name="chBox" class="chBox" data-cbno="${orderView.cbno}">
												</div>
											</td>
											<td>
												<div class="product-item">
													<a class="product-thumb" href="/album/album_single?abno=${orderView.abno }"><img src="${pageContext.request.contextPath}/upload/${orderView.timage}" alt="Product"></a>
													<div class="product-info">
														<h4 class="product-title">
															<a href="/album/album_single?abno=${orderView.abno}">${orderView.tname}</a>
														</h4>
													</div>
												</div>
											</td>
											<td class="text-center text-lg text-medium">Track</td>
											<td class="text-center text-lg text-medium">
												<fmt:setLocale value="ja_jp" />
												<fmt:formatNumber type="currency" value="${orderView.tprice}" currencySymbol="￥" maxFractionDigits="0" />
											</td>
											<td class="text-center text-lg text-medium">
												<fmt:setLocale value="ja_jp" />
												<fmt:formatNumber type="currency" value="${orderView.tprice}" currencySymbol="￥" maxFractionDigits="0" />
											</td>
											<td class="text-center">
												<a class="remove-from-cart" href="javascript:void(0)" data-toggle="tooltip" title="" data-original-title="Remove item" onclick="delete_cart_btn();" data-cbno="${orderView.cbno }"><i class="fa fa-trash"></i></a>
											</td>
										</tr>
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
						<div class="shopping-cart-footer">
							<div class="column">
								</div>

							<div class="column text-lg" style="color: white;">
							</div>
						</div>
						<div class="shopping-cart-footer">
							<div class="column">
								<a class="ms_btn btn-outline-secondary" href="#"><i class="icon-arrow-left"></i>&nbsp;Back</a>
							</div>
							<div class="column">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>


<%@include file="../footer.jsp"%>