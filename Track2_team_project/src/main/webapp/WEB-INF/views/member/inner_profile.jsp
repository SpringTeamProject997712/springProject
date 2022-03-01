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
<!--         -Main Content Start- -->
<!--         <div class="padder_top80"> -->
<!--         	-Header- -->
<!-- 					<div class="ms_header"> -->
<!--           	<div class="ms_top_left"> -->
<!--             	<div class="ms_top_search"> -->
<!-- 	              <input type="text" class="form-control" placeholder="Search Music Here.."> -->
<!-- 	              <span class="search_icon"> -->
<!-- 									<img src="images/svg/search.svg" alt=""> -->
<!-- 								</span> -->
<!--                 </div> -->
<!--                 <div class="ms_top_trend"> -->
<!--                 	<span><a href="#"  class="ms_color">Trending Songs :</a></span> <span class="top_marquee"><a href="#">Dream your moments, Until I Met You, Gimme Some Courage, Dark Alley (+8 More)</a></span> -->
<!--                 </div> -->
<!--               </div> -->
<!--               <div class="ms_top_right"> -->
<!--               	<div class="ms_top_lang"> -->
<!--                         <span data-toggle="modal" data-target="#lang_modal">languages <img src="images/svg/lang.svg" alt=""></span> -->
<!--                     </div> -->
<!--                     <div class="ms_top_btn"> -->
<!--                       <a href="upload.jsp" class="ms_btn">upload</a> -->
<!--                       <a href="javascript:;" class="ms_admin_name">Hello Bella <span class="ms_pro_name">ns</span>													 -->
<!-- 											</a> -->
<!-- 											<ul class="pro_dropdown_menu"> -->
<!-- 												<li><a href="profile.jsp">Profile</a></li> -->
<!-- 												<li><a href="manage_acc.jsp" target="_blank">Pricing Plan</a></li> -->
<!-- 												<li><a href="blog.jsp" target="_blank">Blog</a></li> -->
<!-- 												<li><a href="">Setting</a></li> -->
<!-- 												<li><a href="">Logout</a></li> -->
<!-- 											</ul> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
            <!----Edit Profile Wrapper Start---->
            <div class="ms_profile_wrapper">
                <h1>Edit Profile</h1>
                <div class="ms_profile_box">
                    <div class="ms_pro_img">
                        <img src="/images/pro_img.jpg" alt="" class="img-fluid">
                        <div class="pro_img_overlay">
                            <i class="fa_icon edit_icon"></i>
                        </div>
                    </div>
                    <form action="/member/id_pw_checker">
                    <div class="ms_pro_form">
                        <div class="form-group">
                            <label>Your Email *</label>
                            <input type="text" placeholder="bella.scott@dummymail.com" class="form-control" value="${memberList.id}" readonly="readonly">
                        </div>
                        <div class="form-group">
                            <label>Your Password *</label>
                            <input type="password" placeholder="******" class="form-control" value="">
                        </div>
                        <div class="pro-form-btn text-center marger_top15">
                            <a href="#" class="ms_btn">save</a>
                            <a href="#" class="ms_btn">cancel</a>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
            <!----Main div close---->
        </div>
       </div>
        <!----Footer Start---->
		<%@ include file="../footer.jsp" %>