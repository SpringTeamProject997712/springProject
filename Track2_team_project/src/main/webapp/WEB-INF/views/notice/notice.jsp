<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>

			<!--- Notice section start --->
			
			<div class="noticemain">
                <div class="ms_heading">
                    <h1>공지사항</h1>
                    <form name="searchform">
	                    <div class="ms_top_search" style="float:right;">
	                        <input type="text" class="form-control" name="keyword" placeholder="공지사항 검색" value="${pageMaker.cri.keyword}">
	                        <span class="search_icon" onclick="go_notice_search()">
								<img src="../images/svg/search.svg" alt="">
							</span>
							<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
							<input type="hidden" name="amount" value="10">
	                	</div>
                	</form>
                </div>
					<div class="album_inner_list">
						<div class="album_list_wrapper">
							<ul class="album_list_name ">
								<li>#</li>
								<li class="text-center">カテゴリー</li>
								<li>タイトル</li>
								<li>名前</li>
								<li class="text-center">ヒット数</li>
								<li class="text-center">作成日</li>
							</ul>
							
							<c:forEach var="list" items="${nlist }" >
								<ul>
									<li><a href="#"><span>${list.wbno }</span></a></li>
									<li class="text-center"><a href="#"><span>
										<c:choose>
											<c:when test="${list.header eq 1 }">공지</c:when>
											<c:when test="${list.header eq 2 }">점검</c:when>
											<c:when test="${list.header eq 3 }">이벤트</c:when>
											<c:otherwise>기타</c:otherwise>
										</c:choose>
									</span></a></li>
									<li><a href="/notice/notice_single?wbno=${list.wbno}">${list.title }</a></li>
									<li><a href="#">${list.id }</a></li>
									<li class="text-center"><a href="#">${list.viewcount }</a></li>
									<li class="text-center"><a href="#">
									<fmt:setLocale value="en_US" scope="session"/>
									<fmt:parseDate var="nodate" value="${list.indate }" pattern="yyyy-MM-dd"/>
									<fmt:formatDate value="${nodate }" pattern="yyyy-MM-dd"/> </a></li>
								</ul>
							</c:forEach>				
						</div>
					</div>
				</div>
				<div class="pagination_wrapper">
					<nav class="navigation pagination" role="navigation" aria-label="Posts">
							<div class="nav-links">
								<a class="prev page-numbers ${pageMaker.prev?'':'disabled'}" href="#"><span><i class="fa fa-long-arrow-left" aria-hidden="true"></i></span></a>
								<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">	
					    			<span aria-current="page"><a class="page-numbers ${pageMaker.cri.pageNum == num?'active':''}" href="${num }">${num}</a></span>
					   			 </c:forEach>
								<a class="next page-numbers ${pageMaker.next?'':'disabled'}" href="#"><span><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span></a>
							</div>
					</nav>
				</div>
						<!--- Notice section end --->
					</div>
		
        <!----Footer Start---->
<%@ include file="../footer.jsp" %>