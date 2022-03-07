<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
            <!----Edit Profile Wrapper Start---->
            <div class="ms_profile_wrapper">
                <h1>プロファイル設定</h1>
                <div class="ms_profile_box">
                    <div class="ms_pro_img">
                        <img src="/upload/${memberList.image}" alt="" class="img-fluid">
                        <div class="pro_img_overlay">
                            <i class="fa_icon edit_icon"></i>
                        </div>
                    </div>
                    <form action="/member/id_pw_checker" name="form_checking_id" method="post">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                    <div class="ms_pro_form">
                        <div class="form-group">
                            <label>メールアドレス *</label>
                            <input name="your_email" type="text" placeholder="bella.scott@dummymail.com" class="form-control" value="${memberList.id}" readonly="readonly">
                        </div>
                        <div class="form-group">
                            <label>パスワード *</label>
                            <input name="your_pw" type="password" placeholder="******" class="form-control" value="">
                        </div>
                        <div class="pro-form-btn text-center marger_top15">
                            <a href="javascript:go_id_pw_cheker()" class="ms_btn">プロファイルへ</a>
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