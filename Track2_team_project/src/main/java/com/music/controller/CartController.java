package com.music.controller;

import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.music.domain.CartVO;
import com.music.domain.CouponVO;
import com.music.security.domain.CustomUser;
import com.music.service.CartService;

import lombok.Setter;

@Controller
@RequestMapping("/cart/*")
public class CartController {

	@Setter(onMethod_ = @Autowired)
	CartService service;
	
	@GetMapping("/deleteOneCart")
	@ResponseBody
	public String deleteOneCart(int cbno) {
		String myName="";
		String result="0";
		CartVO cvo = new CartVO();
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(!(auth.getPrincipal().equals("anonymousUser"))) {
			CustomUser user = (CustomUser)auth.getPrincipal();
			myName =user.getUsername();
			cvo.setCbno(cbno);
			cvo.setId(myName);
			service.deleteOneCart(cvo);
			result="1";
		}
		return result;
	}
	
	@GetMapping("/deleteCart")
	@ResponseBody
	public String deleteAllCart() {
		String myName="";
		String result="0";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(!(auth.getPrincipal().equals("anonymousUser"))) {
			CustomUser user = (CustomUser)auth.getPrincipal();
			myName =user.getUsername();
			service.deleteCart(myName);
			result="1";
		}
		
		return result;
	}
	
	@RequestMapping(value="/select_my_cart_for_purchase", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String SelectAllCart() {
		String myName="";
		CartVO returnCart = new CartVO();
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(!(auth.getPrincipal().equals("anonymousUser"))) {
			CustomUser user = (CustomUser)auth.getPrincipal();
			myName =user.getUsername();
			List<CartVO> clist = service.viewCartlist(myName);
			
			if(clist.get(0).getCategory().equals("1")) {
				returnCart.setDuration(1);
				returnCart.setAname(clist.get(0).getAname());
			}else {
				returnCart.setDuration(2);
				returnCart.setAname(clist.get(0).getTname());
			}
			returnCart.setPbno(clist.size());
		}
		
		Gson gson = new Gson(); 
		String json =gson.toJson(returnCart); //duration ==> 앨범인지 트랙인지, aname ==> 상품명 , pbno ==> 길이
		return json;		
	}
	
	@RequestMapping(value="/select_my_coupon_for_purchase", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String select_my_coupon_for_purchase() {
		String myName="";
		List<CouponVO> coupons = new ArrayList<CouponVO>();
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(!(auth.getPrincipal().equals("anonymousUser"))) {
			CustomUser user = (CustomUser)auth.getPrincipal();
			myName =user.getUsername();
			coupons = service.getCoupons(myName);
		}
		Gson gson = new Gson(); 
		String json =gson.toJson(coupons);
		return json;
	}
	
	@GetMapping("/used_coupon_delete")
	@ResponseBody
	public String used_coupon_delete(int couponnumber) {
		String result="1";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(!(auth.getPrincipal().equals("anonymousUser"))) {
			CustomUser user = (CustomUser)auth.getPrincipal();
			String myName =user.getUsername();
			CouponVO cvo = new CouponVO();
			cvo.setId(myName);
			cvo.setCouponnumber(couponnumber);
			service.deleteUsedCoupon(cvo);
			result="2";
		}
		return result;
	}
	
}
