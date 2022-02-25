package com.music.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.music.domain.CartVO;
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
			service.deleteOneCart(m);
			result="1";
		}
		
		return result;
	}
}
