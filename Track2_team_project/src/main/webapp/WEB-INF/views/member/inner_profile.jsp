<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
            <!----Edit Profile Wrapper Start---->
            <div class="ms_profile_wrapper">
                <h1>Edit Profile</h1>
                <div class="ms_profile_box">
                    <div class="ms_pro_img">
                        <img src="/upload/${memberList.image}" id="my_profile_img" alt="" class="img-fluid">
                        <div class="pro_img_overlay" id="target_img">
                            <i class="fa_icon edit_icon"></i>
                        </div>
                    </div>
                    <div class="ms_pro_form">
                    	<form name="privacyForm" method="post" class="row g-3" style="padding:30px" enctype="multipart/form-data">
                    		<input type="hidden" name="target_url">
		                		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
		                		<input type="file" accept=".png, .jpg" name="uploadImage" id="this_file" style="display: none;">
		                		<script>
												  $("#this_file").change(function(){
												   if(this.files && this.files[0]) {
												    var reader = new FileReader;
												    reader.onload = function(data) {
												     $("#my_profile_img").attr("src", data.target.result).width(155);        
												    }
												    reader.readAsDataURL(this.files[0]);
												   }
												  });
												</script>
											  <div class="col-md-6 form-group">
											    <label for="member_id">ID</label>
											    <input class="form-control" name="id" id="member_id" type="text" value="${memberList.id}" readonly="readonly">
											  </div>
											  <div class="col-md-6 form-group">
											    <label for="member_name">名前</label>
											    <input class="form-control" name="name" id="member_name" type="text" value="${memberList.name}">
											  </div>
											  <div class="col-md-9 form-group">
											    <label for="member_name">パスワード</label>
											    <input class="form-control" name="pw" id="member_password" type="password" value="" placeholder="修正したい場合はパスワードを入力してください">
											  </div>
											  <div class="col-md-4 form-group">
											  	<label for="zip">郵便番号</label>
											  	<div class="input-group">
												    <input class="form-control" name="zipnum" id="member_post" type="text" value="${memberList.zipnum}" readonly="readonly">
												    <button class="btn ms_btn" type="button" onclick="findAddr()" style="font-size:20px;">zip検索</button> 
											  	</div>
											  </div>
											  <div class="col-8 form-group">
												</div>
											  <div class="col-7 form-group">
											    <label for="member_address1">住所 - 1</label>
											    <input class="form-control" name="address1" id="member_addr" type="text" value="${memberList.address1}" readonly="readonly">
											  </div>
											  <div class="col-9 form-group">
											    <label for="inputAddress2">住所 - 2</label>
											    <input class="form-control" name="address2" id="inputAddress2" type="text" value="${memberList.address2}">
											  </div>
											  <div class="col-7 form-group">
											    <label for="inputPhone">電話番号</label>
											    <input class="form-control " name="phone" id="inputPhone" type="text" value="${memberList.phone}">
											  </div>
											  <div class="col-12 form-group">
											   <!--  <div class="form-check">
											      <input class="form-check-input" id="gridCheck" type="checkbox">
											      <label class="form-check-label" for="gridCheck">Check me out</label>
											    </div> -->
											    <input name="active" type="hidden" value="1">
											    <input name="your_home" type="hidden" value="1">
											  </div>
											  <div class="col-12 marger_top15">
											    <button class="btn btn-primary ms_btn" type="button" onclick="go_update()" style="font-size: 20px;">修正</button>
											    <button class="btn btn-primary ms_btn" type="reset" style="font-size: 20px;">リセット</button>
											  </div>
											</form>
                    </div>
                </div>
            </div>
            <!----Main div close---->
        </div>
       </div>
        <!----Footer Start---->
		<%@ include file="../footer.jsp" %>
		<script>
		$('#target_img').click(function (e) {
		    document.privacyForm.target_url.value = document.getElementById( 'my_profile_img' ).src;
		    e.preventDefault();
		    $('#this_file').click();
		}); 
		</script>