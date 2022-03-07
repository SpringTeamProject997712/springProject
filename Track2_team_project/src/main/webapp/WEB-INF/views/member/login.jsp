<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<link href="/resources/css/mycart.css" rel="stylesheet">
<div class="ms_account_wrapper" style="padding-left: 0">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<c:if test="${not empty error}">
					<h2>ログイン失敗</h2>
				</c:if>
				<c:if test="${empty error}">
					<h2>ログインが必要なページです</h2>
				</c:if>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="ms_acc_overview">
						<img src="/images/login_fail.png" style="max-width:300px;">
						<div class="ms_top_btn">
	                    </div>
				</div>
			</div>
		</div>
	
			
		</div>
	</div>
</div>


<%@include file="../footer.jsp"%>
