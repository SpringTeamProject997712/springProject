<!DOCTYPE html>
<!-- 
Template Name: Miraculous - Online Music Store Html Template
Version: 1.0.0
Author: Kamleshyadav
Website: 
Purchase: 
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- Begin Head -->

<%@ include file="../header.jsp" %>
        <!----Edit Profile Wrapper Start---->
            <div class="ms_profile_wrapper">
                <h1>Edit Profile</h1>
                <div class="ms_profile_box">
                    <div class="ms_pro_img">
                        <img src="images/pro_img.jpg" alt="" class="img-fluid">
                        <div class="pro_img_overlay">
                            <i class="fa_icon edit_icon"></i>
                        </div>
                    </div>
                    <div class="ms_pro_form">
                        <div class="form-group">
                            <label>Your Name *</label>
                            <input type="text" placeholder="Bella Scott" class="form-control" value="${memberList.name}">
                        </div>
                        <div class="form-group">
                            <label>Your Email *</label>
                            <input type="text" placeholder="bella.scott@dummymail.com" class="form-control" value="${memberList.id}">
                        </div>
                        <div class="form-group">
                            <label>Your Password *</label>
                            <input type="password" placeholder="******" class="form-control" value="${memberList.pw}">
                        </div>
                        <div class="form-group">
                            <label>Confirm Password *</label>
                            <input type="password" placeholder="******" class="form-control" value="${memberList.pw}">
                        </div>
                        <div class="pro-form-btn text-center marger_top15">
                            <a href="#" class="ms_btn">save</a>
                            <a href="#" class="ms_btn">cancel</a>
                        </div>
                    </div>
                </div>
            </div>
            <!----Main div close---->
        </div>
       </div>
        <!----Footer Start---->
		<%@ include file="../footer.jsp" %>