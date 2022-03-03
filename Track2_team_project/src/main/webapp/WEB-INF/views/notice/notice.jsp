<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>

			<!--- Notice section start --->
			
			<div class="noticemain">
                <div class="ms_heading">
                    <h1>공지사항</h1>
                    <form>
	                    <div class="ms_top_search" style="float:right;">
	                        <input type="text" class="form-control" placeholder="공지사항 검색">
	                        <span class="search_icon">
								<img src="../images/svg/search.svg" alt="">
							</span>
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
								<a class="prev page-numbers" href="#"><span><i class="fa fa-long-arrow-left" aria-hidden="true"></i></span></a>
								<span aria-current="page" class="page-numbers current">1</span>
								<a class="page-numbers" href="#">2</a>
								<a class="next page-numbers" href="#"><span><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span></a>
							</div>
					</nav>
				</div>
						<!--- Notice section end --->
					</div>
		
        <!----Footer Start---->
<%@ include file="../footer.jsp" %>