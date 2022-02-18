package com.music.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.music.security.domain.CustomUser;
import com.music.service.FavouriteService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/favourite/*")
@Log4j
public class FavouriteController {

	@Setter(onMethod_ = @Autowired)
	FavouriteService service;
	
	@GetMapping("/favourite")
	public void favouritesView() {
		
	}
	
	@ResponseBody
	@RequestMapping(value="/favourite_checker", method =RequestMethod.GET)
	public String[] favoritChecker(int[] pbno) {
		String[] result_arr =new String[pbno.length];
		String id ="";
		log.info(pbno);
		//테이블이 있는지 likes가 0인지
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(!auth.getPrincipal().equals("anonymousUser")) {
			CustomUser user = (CustomUser)auth.getPrincipal();
			id = user.getUsername();
			for(int i=0; i<pbno.length; i++) {
				String result = service.checkFavouriteThis(pbno[i], id);
				
				if(result!=null && result !="0") {
					result="1";
				}else {
					result="0";
				}
				result_arr[i] = result;
			}
			log.info("좋아하는 지 결과적으로 : "+result_arr);
		}
		return result_arr;
	}
}
