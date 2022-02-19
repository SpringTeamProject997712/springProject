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
			log.info("체커로 넘어온  result : "+result);
			if(result!=null && !(result.equals("0"))) {
				result="1";
			}else {
				result="0";
			}
			log.info("다시 돌아가는  result : "+result);
		}
		return result;
	}
	
	@ResponseBody
	@GetMapping("/updateLike")
	public String likesUpdate(int likes, int pbno) {
		log.info("넘어온 likes :"+likes+"\n넘어온 pbno :"+pbno );
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String id = "";
		String result = "0";
		if(!auth.getPrincipal().equals("anonymousUser")) {
			CustomUser user = (CustomUser)auth.getPrincipal();
			id = user.getUsername();
			LikeVO vo = new LikeVO();
			vo.setId(id);
			vo.setPbno(pbno);
			if(likes==1) {
				result="0";
				service.updateYesToNo(vo);
			}else {
				result="1";
				String flag = service.checkFavouriteThis(vo);
				if(flag == null) {
					service.createLike(vo);
				}else if(flag.equals("0")) {
					service.updateNoToYes(vo);
				}
			}
		}
		//하트가 사라진 경우 "0", 하트가 생긴경우 "1";
		return result;
	}
	
	
}
