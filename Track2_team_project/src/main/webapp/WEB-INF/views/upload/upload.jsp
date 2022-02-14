<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- main css files links -->
<%@ include file="../header.jsp" %>
            <!----Upload and Share Wrapper Start---->
           <form name="upload" method="post" enctype="multipart/form-data">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
            	<div class="ms_upload_wrapper marger_top60">
	                <div class="ms_upload_box">
	                    <h2>Upload & Share Your Music With The World</h2>
	                    <img src="../images/svg/upload.svg" alt="songname">
 	                    <div class="ms_upload_btn">
 	                    <a href="javascript:void(0);" class="ms_btn">
							  <label for="songname" className="ms_btn">upload files</label>
							  <input type="file" name="uploadMusic" id="songname" style="display:none"/>
						</a>
	                    </div>
	                    <span> or </span>
	                    <p>Drag And Drop Music Files</p>
	                </div>
                <div class=" marger_top60">
                    <div class="ms_upload_box">
                        <div class="ms_heading">
                            <h1>トラック情報</h1>
                        </div>
                        <div class="ms_pro_form">
                      		<div class="form-group">
                                <label>카테고리 선택</label>
                                <select class="form-control" id="category" name="category">
						      	<c:forEach items="${category}" var="category" varStatus="status">
						      		<option value="${status.count}">${category}</option>
						      	</c:forEach>
						      </select>
                            </div>
                            <div class="form-group">
                                <label>トラック名 *</label>
                                <input type="text" name="name" placeholder="Dream Your Moments" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>アーティスト名 *</label>
                                <input type="text" name="singer" placeholder="Ava Cornish, Brian Hill" class="form-control">
                            </div>	
                            <div class="form-group">
                                <label>detail</label>
                                <input type="text" name="detail" placeholder="" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>price</label>
                                <input type="text" name="price" placeholder="" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>regdate *</label>
                                <input type="date" name="regdate" id="regdate" placeholder="" accept="image/*" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Image *</label>
                                <input type="file" name="uploadImage" id="image" placeholder="" accept="image/*" class="form-control">
                            </div>
                            
                         	<input type="hidden" name="pbno" value="${pbno}" class="form-control">
                            
                            
                            <div class="pro-form-btn text-center marger_top15">
                                <div class="ms_upload_btn">
                                    <a href="javascript:void(0);" class="ms_btn" onclick="go_upload()">Upload Now</a>
                                    <a href="javascript:void(0);" class="ms_btn" onclick="go_cancle()">cancle</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </form>
            </div>
            <!----Main div close---->
        </div>
<!-- main js files links -->
<%@ include file="../footer.jsp" %>