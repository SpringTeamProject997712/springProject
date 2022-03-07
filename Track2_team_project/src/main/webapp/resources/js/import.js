function got_info(my_pg){

	let my_purchase_info = {
		pg : my_pg, //버튼으로
		pay_method : 'card',
		merchant_uid : 'merchant_' + new Date().getTime(),
		name : document.getElementById('this_order_name').innerHTML, //~외 몇개
		amount : document.getElementById('real_final_totalPrice').value, //금액
		buyer_email : document.purchaseForm.real_id.value, //유저 아이디
		buyer_name : document.purchaseForm.id.value, //유저네임
		buyer_tel : document.purchaseForm.phone.value, //유저폰 
		buyer_addr : document.purchaseForm.address1.value+" "+document.purchaseForm.address2.value, //유저
		buyer_postcode : document.purchaseForm.zipnum.value //임시
	}
	
	return my_purchase_info;
}

function go_this_purchase(my_pg){
	let msg = "읭";
	const { IMP } = window;
	IMP.init('imp50825691');
	
	let this_info = got_info(my_pg);
	console.log("결제수단")
	console.log(this_info);
	
	IMP.request_pay(
	    this_info
		, function(rsp) {
		let this__result=0;
	    if ( rsp.success ) {
	        msg = '결제가 완료되었습니다.';
	        msg += '고유ID : ' + rsp.imp_uid;
	        msg += '상점 거래ID : ' + rsp.merchant_uid;
	        msg += '결제 금액 : ' + rsp.paid_amount;
	        msg += '카드 승인번호 : ' + rsp.apply_num;
	        this__result=1;
	    } else {
	        msg = '결제에 실패하였습니다.';
	        msg += '에러내용 : ' + rsp.error_msg;
	    }
	    alert(msg);
	    if(this__result ==1){
	    	let couponnumber = $("#coupon_selector option:selected").val();
	    	if(couponnumber) {
	    	$.ajax({
	    		type:"get",
	    		data:{couponnumber:couponnumber},
	    		url:"/cart/used_coupon_delete",
	    		error:function(xhr,status,err){
	    			alert(xhr.status + xhr.responseText + err);
	    		},success:function(data){
	    			if(data=='1'){
		    			$("#myModal1").modal();
						alert("ログインをしてください");
		    			return false;
		    		}
	    			console.log("햣하,삭제한 쿠폰은 소각이다");
	    		}
	    	})
	    	
	    	}//if
	    }//this if
	    document.purchaseForm.submit();
	});	
}

