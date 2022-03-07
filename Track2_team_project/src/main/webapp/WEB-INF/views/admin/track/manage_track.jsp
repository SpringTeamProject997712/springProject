<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../admin_header.jsp"%>
	<div class="body flex-grow-1 px-3">
        <div class="container-lg">
          <div class="car"></div>
          <div class="card mb-4">
            <div class="card-header"><strong>トラック管理</strong><span class="small ms-1">トラック目録</span></div>
            <div class="card-body">
              <div class="example">
                <div class="tab-content rounded-bottom">
                  <div class="tab-pane p-3 active preview" role="tabpanel" id="preview-687">
                    <table class="table dropdown">
                    <colgroup>
						<col width="30%">
						<col width="30%">
						<col width="10%">
						<col width="10%">
						<col width="10%">
						<col width="10%">
					</colgroup>
							<c:choose>
								<c:when test="${trackList.size() == 0}">
									<td>アルバム内の情報がありません。</td>
								</c:when>
							
							<c:otherwise>
                      <thead>
                        <tr>
                          <th scope="col">タイトル</th>
                          <th scope="col">前もって聞く</th>
                          <th scope="col">ジャンル</th>
                          <th scope="col">値段</th>
                          <th scope="col">ファイル名</th>
                          <th scope="col">機能</th>
                        </tr>
                      </thead>
                      <tbody>

								<c:forEach items="${trackList}" var="tlist">
								
                        	<tr>
	                          <td scope="row" ><a class="namelink" href="manage_track?abno=${tlist.tbno}">${tlist.name}</a></td>
	                          <td><audio controls src="/upload/${tlist.songrealname }"></audio></td>
	                          <td>${tlist.genre}</td>
	                          <td>${tlist.price}</td>
	                          <td>${tlist.songname}</td>
	                          <td>
	                          	<div class="dropdown">
								  <button class="btn btn-secondary dropdown-toggle" id="dropdownMenuButton2" type="button" data-coreui-toggle="dropdown" aria-expanded="false">確認</button>
								  <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="dropdownMenuButton2">
								    <li><a class="dropdown-item" href="/admin/track/view_track?tbno=${tlist.tbno}">詳細情報照会 / 修正</a></li>
								    <li><a class="dropdown-item" href="#">Another action</a></li>
								    <li><a class="dropdown-item" href="#">Something else here</a></li>
								    <li>
								      <hr class="dropdown-divider">
								    </li>
								    <li>
								    <form role="form" name="deleteForm" method="post" action="/track/deleteTrack">
								    	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
										<input type="hidden" name="pbno" value="${tlist.pbno }">
										<input type="hidden" name="abno" value="${tlist.abno }">
									    <input type="submit" class="dropdown-item" value="トラック削除">	
									</form>
								    </li>
								  </ul>
								</div>
	                          </td>
                        	</tr>
                        	
                        </c:forEach>
                        </tbody>
                        </c:otherwise>
                        </c:choose>
                       </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
<%@ include file="../admin_footer.jsp" %>