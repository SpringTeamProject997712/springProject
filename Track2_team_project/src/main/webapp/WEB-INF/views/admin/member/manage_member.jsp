<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../admin_header.jsp"%>
	<div class="body flex-grow-1 px-3">
        <div class="container-lg">
          <div class="car"></div>
          <div class="card mb-4">
            <div class="card-header"><strong>ユーザー管理</strong><span class="small ms-1">ユーザーリスト</span></div>
            <div class="card-body">
              <div class="text-medium-emphasis small">
              	<!-- 검색 창 -->
              	<form id="pagingForm" action="/admin/member/manage_member" method="get">
	              <div class="input-group" style="width:200px;">
					 		<input class="form-control" name="keyword" type="text" placeholder="search ID" value="${pageMaker.cri.keyword}" aria-label="아이디 검색">
					  	<button class="btn btn-outline-secondary" type="submit" style="color:white; background:grey">検索</button>
							<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
							<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
							<input type="hidden" name="type" value="${pageMaker.cri.type}">
					</div>
					</form>
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
                    <table class="table dropdown">
                      <thead>
                        <tr>
                          <th scope="col">ID(メール)</th>
                          <th scope="col">名前</th>
                          <th scope="col">住所</th>
                          <th scope="col">権限</th>
                          <th scope="col">加入日</th>
                          <th scope="col">機能</th>
                        </tr>
                      </thead>
                      <tbody>
                      	<c:forEach items="${memberList}" var="mlist">
                        	<tr>
	                          <td scope="row">${mlist.id}</td>
	                          <td>${mlist.name}</td>
	                          <td>${mlist.zipnum} || ${mlist.address1}</td>
	                          <td>
	                          <c:forEach items="${mlist.authList}" var="authList">
	                          	${authList.auth}
	                          </c:forEach>
	                          </td>
	                          <td><fmt:formatDate value="${mlist.regdate}" pattern="yyyy-MM-dd"/></td>
	                          <td>
												<div class="dropdown">
													<button class="btn btn-secondary dropdown-toggle" id="dropdownMenuButton2" type="button" data-coreui-toggle="dropdown" aria-expanded="false">確認</button>
													<ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="dropdownMenuButton2">
														<li><a class="dropdown-item" href="/admin/member/view_member?id=${mlist.id}">詳細情報照会 / 修正</a></li>
														<li><a class="dropdown-item" id="${mlist.id}" onclick="go_member_delete(this.id)" href="javascript:void(0)">ID無効化</a></li>
														<li><a class="dropdown-item" href="/admin/member/role_update?id=${mlist.id}">権限追加 / 削除</a></li>
													</ul>
												</div>
											</td>
                        	</tr>
                        </c:forEach>
                      </tbody>
                    </table>
                  </div>
                  <nav aria-label="Page navigation example">
					  <ul class="pagination justify-content-center">
					    <li class="page-item ${pageMaker.prev?'':'disabled'}"><a class="page-link" href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
					    <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">	
					    	<li class="page-item ${pageMaker.cri.pageNum == num?'active':''}"><a class="page-link" href="${num }">${num}</a></li>
					    </c:forEach>
					    <li class="page-item ${pageMaker.next?'':'disabled'}"><a class="page-link" href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
					  </ul>
					</nav>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      
    <form id="actionForm" action="manage_member" method="get">
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
		<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
	</form>
<%@ include file="../admin_footer.jsp" %>