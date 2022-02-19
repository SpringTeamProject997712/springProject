package com.music.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.music.domain.LikeVO;
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
	public String favoritChecker(int pbno) {
		String result="0";
		String id ="";
		//테이블이 있는지 likes가 0인지
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(!auth.getPrincipal().equals("anonymousUser")) {
			CustomUser user = (CustomUser)auth.getPrincipal();
			id = user.getUsername();
			LikeVO vo = new LikeVO();
			vo.setId(id);
			vo.setPbno(pbno);
			result = service.checkFavouriteThis(vo);
			if(result!=null && result !="0") {
				result="1";
			}else {
				result="0";
			}
		}
		return result;
	}
	
	@GetMapping("/updateLike")
	public String likesUpdate(int likes, int pbno) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String id = "";
		if(!auth.getPrincipal().equals("anonymousUser")) {
			CustomUser user = (CustomUser)auth.getPrincipal();
			id = user.getUsername();
			LikeVO vo = new LikeVO();
			vo.setId(id);
			vo.setPbno(pbno);
			if(likes==1) {
				service.updateYesToNo(vo);
			}else {
				String flag = service.checkFavouriteThis(vo);
				if(flag == null) {
					
				}else if(flag.equals("0")) {
					service.updateNoToYes(vo);
				}
			}
		}
		
		return "0";
	}
	
	
}
