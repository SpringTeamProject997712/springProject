<%@ include file="../header.jsp" %>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
                    <div class="ms_pro_form">
                    	<form name="privacyForm" method="post" class="row g-3" style="padding:30px">
		                		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
											  <div class="col-md-6 form-group">
											    <label for="member_id">ID</label>
											    <input class="form-control" name="id" id="member_id" type="text" value="${memberList.id}" readonly="readonly">
											  </div>
											  <div class="col-md-6 form-group">
											    <label for="member_name">Name</label>
											    <input class="form-control" name="name" id="member_name" type="text" value="${memberList.name}">
											  </div>
											  <div class="col-md-4 form-group">
											  	<label for="zip">Zip</label>
											  	<div class="input-group">
												    <input class="form-control" name="zipnum" id="member_post" type="text" value="${memberList.zipnum}" readonly="readonly">
												    <button class="btn ms_btn" type="button" onclick="findAddr()">find zip</button> 
											  	</div>
											  </div>
											  <div class="col-8 form-group">
												</div>
											  <div class="col-7 form-group">
											    <label for="member_address1">Address</label>
											    <input class="form-control" name="address1" id="member_addr" type="text" value="${memberList.address1}" readonly="readonly">
											  </div>
											  <div class="col-9 form-group">
											    <label for="inputAddress2">Address 2</label>
											    <input class="form-control" name="address2" id="inputAddress2" type="text" value="${memberList.address2}">
											  </div>
											  <div class="col-7 form-group">
											    <label for="inputPhone">Phone</label>
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
											    <button class="btn btn-primary ms_btn" type="button" onclick="go_update()">Modify</button>
											    <button class="btn btn-primary ms_btn" type="reset">reset</button>
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