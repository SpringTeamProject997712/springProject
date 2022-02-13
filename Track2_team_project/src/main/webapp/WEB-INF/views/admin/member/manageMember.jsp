<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../admin_header.jsp"%>
	<div class="body flex-grow-1 px-3">
        <div class="container-lg">
          <div class="car"></div>
          <div class="card mb-4">
            <div class="card-header"><strong>Tables</strong><span class="small ms-1">Basic example</span></div>
            <div class="card-body">
              <p class="text-medium-emphasis small">Using the most basic table markup, here’s how <code>.table</code>-based tables look in Bootstrap.</p>
              <div class="example">
                <ul class="nav nav-tabs" role="tablist">
                  <li class="nav-item"><a class="nav-link active" data-coreui-toggle="tab" href="#preview-687" role="tab">
                      <svg class="icon me-2">
                        <use href="/images/svg/free.svg#cil-media-play"></use>
                      </svg>Preview</a></li>
                  <li class="nav-item"><a class="nav-link" data-coreui-toggle="tab" href="#code-687" role="tab">
                      <svg class="icon me-2">
                        <use href="/images/svg/free.svg#cil-code"></use>
                      </svg>Code</a></li>
                </ul>
                <div class="tab-content rounded-bottom">
                  <div class="tab-pane p-3 active preview" role="tabpanel" id="preview-687">
                    <table class="table">
                      <thead>
                        <tr>
                          <th scope="col">아이디(이메일)</th>
                          <th scope="col">이름</th>
                          <th scope="col">주소</th>
                          <th scope="col">권한</th>
                          <th scope="col">상태</th>
                        </tr>
                      </thead>
                      <tbody>
                      	<c:forEach items="memberList" var="mlist">
                        	<tr>
	                          <td scope="row">${mlist.id}</td>
	                          <td>${mlist.name}</td>
	                          <td>${mlist.address1} || ${mlist.address}</td>
	                          <td>낼봄</td>
	                          <td>${mlist.active}</td>
                        	</tr>
                        </c:forEach>	
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
<%@ include file="../admin_footer.jsp" %>