<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<link href="/resources/css/mycart.css" rel="stylesheet">
<div class="ms_account_wrapper" style="padding-left: 0">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2>Manage Account</h2>
				<div class="ms_heading">
					<h1>Subscription Plans</h1>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="ms_acc_overview">
					<c:choose>
						<c:when test="${cartList.size() == 0}">
							<td>카트 내 정보가 없습니다.</td>
						</c:when>
						<c:otherwise>
							<div class="ms_heading">
								<h1>Account Overview</h1>
							</div>
							<div class="container padding-bottom-3x mb-1">
								<!-- Shopping Cart-->
								<div class="table-responsive shopping-cart">
									<table class="table">
										<thead>
											<tr>
												<th>
													<div class="allCheck">
														<input type="checkbox" name="allCheck" id="allCheck"> <label for="allCheck"></label>
													</div>
												</th>
												<th>Product Name</th>
												<th class="text-center">Quantity</th>
												<th class="text-center">Subtotal</th>
												<th class="text-center">Discount</th>
												<th class="text-center"><a class="btn btn-sm btn-outline-danger" href="#">Clear Cart</a></th>
											</tr>
										</thead>
										</tbody>
										<c:forEach var="cartList" items="${cartList }">
											<tr>
												<td>
													<div class="checkBox">
														<input type="checkBox" name="chBox" data-cbno="${cartList.cbno }">
													</div>
												</td>
												<td>
													<div class="product-item">
														<a class="product-thumb" href="/album/album_single?abno=${cartList.abno }"><img src="${pageContext.request.contextPath}/upload/${cartList.image}" alt="Product"></a>
														<div class="product-info">
															<h4 class="product-title">
																<a href="/album/album_single?abno=${cartList.abno }">${cartList.name}</a>
															</h4>
														</div>
													</div>
												</td>
												<td class="text-center">
													<div class="count-input">
														<select class="form-control">
															<option>1</option>
															<option>2</option>
															<option>3</option>
															<option>4</option>
															<option>5</option>
														</select>
													</div>
												</td>
												<td class="text-center text-lg text-medium">
													<fmt:setLocale value="ja_jp" />
													<fmt:formatNumber type="currency" value="${cartList.price * cartList.quantity}" currencySymbol="￥" maxFractionDigits="0" />
												</td>
												<td class="text-center text-lg text-medium">
													<fmt:setLocale value="ja_jp" />
													<fmt:formatNumber type="currency" value="${cartList.price}" currencySymbol="￥" maxFractionDigits="0" />
												</td>
												<td class="text-center">
													<a class="remove-from-cart" href="javascript:void(0)" data-toggle="tooltip" title="" data-original-title="Remove item" onclick="delete_cart_btn();" data-cbno="${cartList.cbno }"><i class="fa fa-trash"></i></a>
												</td>
											</tr>
										</c:forEach>


										</tbody>
									</table>
								</div>
								<div class="shopping-cart-footer">
									<div class="column" >
										<form class="coupon-form" method="post">
											<input class="form-control form-control-sm" type="text" placeholder="Coupon code" required="">
											<button class="ms_btn btn-outline-primary" type="submit">Apply</button>
										</form>
									</div>
									<div class="column text-lg">
										Subtotal: <span class="text-medium">$289.68</span>
									</div>
								</div>
								<div class="shopping-cart-footer">
									<div class="column">
										<a class="ms_btn btn-outline-secondary" href="#"><i class="icon-arrow-left"></i>&nbsp;Back</a>
									</div>
									<div class="column">
										<a class="ms_btn btn-primary" href="#" data-toast="" data-toast-type="success" data-toast-position="topRight" data-toast-icon="icon-circle-check" data-toast-title="Your cart" data-toast-message="is updated successfully!">Update Cart</a>
										<a class="ms_btn btn-success" href="#">Checkout</a>
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