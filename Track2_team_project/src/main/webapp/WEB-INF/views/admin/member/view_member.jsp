<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../admin_header.jsp"%>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<div class="body flex-grow-1 px-3">
        <div class="container-lg">
          <div class="car"></div>
          <div class="card mb-4">
            <div class="card-header"><strong>ユーザー管理</strong><span class="small ms-1">ユーザー詳細情報確認 / 修整</span></div>
            <div class="card-body">
              <div class="text-medium-emphasis small">
	            	<h3>${member.id} : ${member.name}の情報</h3> 
							</div>
              <div class="example">
               <div class="ms_pro_img">
               	
                <div class="tab-content rounded-bottom">
                	<form name="privacyForm" method="post" class="row g-3" enctype="multipart/form-data">
                		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
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
										<div class="col-md-10">
											<label class="form-label" style="width:100%;">プロフィール</label>
			                <img src="/upload/${member.image}" id="my_profile_img" alt="" class="img-fluid target_img" style="cursor: pointer;">
			                  <div class="pro_img_overlay" id="target_img">
			                    <i class="fa_icon edit_icon"></i>
			                  </div>
			              </div>
									  <div class="col-md-6">
									    <label class="form-label" for="member_id">ID</label>
									    <input class="form-control" name="id" id="member_id" type="text" value="${member.id}" readonly="readonly">
									  </div>
									  <div class="col-md-6">
									    <label class="form-label" for="member_name">名前</label>
									    <input class="form-control" name="name" id="member_name" type="text" value="${member.name}">
									  </div>
									  <div class="col-md-4">
									  	<label class="form-label" for="zip">郵便番号</label>
									  	<div class="input-group">
										    <input class="form-control" name="zipnum" id="member_post" type="text" value="${member.zipnum}">
										    <button class="btn btn-outline-secondary" type="button" onclick="findAddr()">郵便番号検索</button> 
									  	</div>
									  </div>
									  <div class="col-8">
										</div>
									  <div class="col-12">
									    <label class="form-label" for="member_address1">住所</label>
									    <input class="form-control" name="address1" id="member_addr" type="text" value="${member.address1}">
									  </div>
									  <div class="col-12">
									    <label class="form-label" for="inputAddress2">住所 2</label>
									    <input class="form-control" name="address2" id="inputAddress2" type="text" value="${member.address2}">
									  </div>
									  <div class="col-12">
									    <label class="form-label" for="inputPhone">電話番号</label>
									    <input class="form-control" name="phone" id="inputPhone" type="text" value="${member.phone}">
									  </div>
									  <div class="col-md-2">
									    <!-- <label class="form-label" for="inputState">アカウント有効化</label> -->
									    <input type="hidden" value="1" name="active" id="inputState">
									    <input name="your_home" type="hidden" value="0">
									    <input name="pw" type="hidden" value="">
									  </div>
									  <div class="col-12">
									   <!--  <div class="form-check">
									      <input class="form-check-input" id="gridCheck" type="checkbox">
									      <label class="form-check-label" for="gridCheck">Check me out</label>
									    </div> -->
									  </div>
									  <div class="col-12">
									    <button class="btn btn-primary" type="button" onclick="go_update()">修正する</button>
									    <button class="btn btn-primary" type="button" onclick="location.href='/admin/member/manage_member'">一覧を見る</button>
									  </div>
									</form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
<%@ include file="../admin_footer.jsp" %>
<script>
		$('.target_img').click(function (e) {
		    document.privacyForm.target_url.value = document.getElementById( 'my_profile_img' ).src;
		    e.preventDefault();
		    $('#this_file').click();
		}); 
		</script>