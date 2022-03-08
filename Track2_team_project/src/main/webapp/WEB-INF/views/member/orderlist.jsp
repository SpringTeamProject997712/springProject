<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

        <!---Side Menu Start--->
      	<!----Album Single Section Start---->
        <!---Main Content Start--->
        <div class="ms_content_wrapper">
            <!----Free Download Css Start---->
            <div class="ms_free_download ms_purchase_wrapper">
               <div class="orderlist_main">
                <div class="ms_heading">
                    <h1>お客様のご注文</h1>
                </div>
				<div class="album_inner_list">
					<div class="album_list_wrapper">
						<ul class="album_list_name">
							<li>#</li>
							<li>オーダーナンバー</li>
							<li>品物</li>
							<li class="text-center">量</li>
							<li class="text-center">注文日</li>
<!-- 							<li class="text-center">Order Date</li> -->
						</ul>
						<!--  favourite song start -->
						<c:set value="${1}" var="rownum" />
						<c:forEach var="olist" items="${olist}">
						<ul class="favouritelist">
							<li><a href="javascript:void(0)">${rownum}</a></li>
							<li><a href="/member/orderview?n=${olist.orderid}">${olist.orderid}</a></li>
							<li><a href="javascript:void(0)">
								<c:if test="${olist.category == '1'}">
									${olist.aname}
								</c:if>
								<c:if test="${olist.category == '2'}">
									${olist.tname}
								</c:if>
								<c:if test="${olist.count > 1}">
								 他 ${olist.count-1}
								 </c:if>
							</a></li>
							<li class="text-center"><a href="javascript:void(0)">
								<fmt:setLocale value="ja_jp"/>
								<fmt:formatNumber type="currency" value="${olist.amount}" currencySymbol="&yen;" maxFractionDigits="0" />
							</a></li>
							<li class="text-center"><a href="javascript:void(0)">
								<fmt:formatDate value="${olist.orderdate }" type="both" pattern="yyyy-MM-dd HH:MM"/></a>
							</li>
						</ul>
						<c:set value="${rownum +1}" var="rownum"/>
						</c:forEach>
						<!-- favourite song end -->
						
						<div class="ms_view_more">
							<a href="#" class="ms_btn">もっと見る</a>
						</div>
					</div>
				</div>
            </div>
            </div>
        </div>
      </div>
        <!----Footer Start---->
        
        <%@ include file="../footer.jsp" %>