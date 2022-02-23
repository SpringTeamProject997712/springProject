package com.music.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.music.domain.ReviewVO;
import com.music.security.domain.CustomUser;
import com.music.service.AlbumService;
import com.music.service.ReviewService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/review/*")
@Log4j
public class ReviewController {

	@Setter(onMethod_ = @Autowired)
	ReviewService service;
	
	@Setter(onMethod_ = @Autowired)
	AlbumService aservice;
	
	
	@PostMapping("/writeReview")
	public String writeReview(ReviewVO vo, int abno) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(!(auth.getPrincipal().equals("anonymousUser"))) {
			CustomUser user = (CustomUser)auth.getPrincipal();
			vo.setId(user.getUsername());
			vo.setPbno(aservice.readAlbum(abno).getPbno());
			service.insertReview(vo);
		}
		return "redirect:/album/album_single?abno="+abno;
	}
}
