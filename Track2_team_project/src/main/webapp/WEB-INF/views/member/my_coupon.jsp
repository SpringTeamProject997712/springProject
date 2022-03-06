<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- main css files links -->
<%@ include file="../header.jsp" %>
            <!---Weekly Top 15--->
            <div class="ms_weekly_wrapper">
                <div class="ms_weekly_inner">
                    <div class="row">
                        <div class="col-lg-12"  style="margin-bottom:40px; margin-top:30px;">
                            <div class="ms_heading">
                                <h1>My Coupons</h1>
                            </div>
                            <div>
                            	<form action="/member/get_mycoupon" method="get">
                            		<div class="form-group">
                            			<input class="form-control" type="text" name="couponid" placeholder="クーポンの登録はこちら" style="width:30%; display:inline-block;">
                            			<input class="form-control" type="submit" style="display:inline-block;" >
                            		</div>
                            	</form>
                            </div>
                        </div>
                        
                           
                             <!-- TOP 15 start -->
                             <c:set value="${1}" var="num" />
                             <c:forEach var="coupon" items="${coupons}" >
                             <div class="col-lg-6 col-md-12 padding_right40">
                            	<div class="ms_weekly_box" id="this_${coupon.couponnumber}">
                                <div class="weekly_left">
                                    <span class="w_top_no">
																			${num}
																		</span>
                                    <div class="w_top_song">
                                        <div class="w_tp_song_name">
                                            <h3>NAME : ${coupon.couponname}</h3>
                                            <p>CODE : ${coupon.couponid}</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="weekly_right">
                                    <span class="w_song_time">${coupon.saleper}
                                    <c:if test="${coupon.type=='1'}">¥ discount</c:if>
                                    <c:if test="${coupon.type=='2'}">% discount</c:if>
                                    </span>
                                 </div>
                            </div>
                            <div class="ms_divider"></div>
                            </div>
                            <c:set value="${num+1}" var="num" />
                            </c:forEach>
                            
                            <!-- TOP 15 end -->

                            
                        
                       </div>
                      </div> 
                     </div>
            <!----New Releases Section Start---->
            <!----Main div close---->
        </div>
        
<!-- main js files links -->
<%@ include file="../footer.jsp" %>