<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- main css files links -->
<%@ include file="../header.jsp" %>
            <!----Upload and Share Wrapper Start---->
            <div class="ms_upload_wrapper marger_top60">
                <div class="ms_upload_box">
                    <h2>Upload & Share Your Music With The World</h2>
                    <img src="../images/svg/upload.svg" alt="">
                    <div class="ms_upload_btn">
						<div class="ms_btn">
						  <label for="file-upload">upload files</label>
						  <input type="file" id="file-upload">
						</div>
                    </div>
                    <span> or </span>
                    <p>Drag And Drop Music Files</p>
                </div>
                <div class=" marger_top60">
                    <div class="ms_upload_box">
                        <div class="ms_heading">
                            <h1>Track Information</h1>
                        </div>
                        <div class="ms_pro_form">
                            <div class="form-group">
                                <label>Track Name *</label>
                                <input type="text" placeholder="Dream Your Moments" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Artistâs Name *</label>
                                <input type="text" placeholder="Ava Cornish, Brian Hill" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Select Album</label>
                                <select class="form-control">
								<option>Cloud Nine</option>
								<option value="1">Cyber Sonnet </option>
								<option value="2">Cloud Nine</option>
								<option value="3">Cyber Sonnet</option>
								<option value="4">Cloud Nine</option>
							</select>
                            </div>
                            <div class="form-group">
                                <label>Select Privacy</label>
                                <select class="form-control">
								<option>Public</option>
								<option value="1">Private</option>
								<option value="2">Public</option>
								<option value="3">Private</option>
								<option value="4">Public</option>
							</select>
                            </div>
                            <div class="pro-form-btn text-center marger_top15">
                                <div class="ms_upload_btn">
                                    <a href="#" class="ms_btn">Upload Now</a>
                                    <a href="#" class="ms_btn">cancle</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!----Main div close---->
        </div>
<!-- main js files links -->
<%@ include file="../footer.jsp" %>