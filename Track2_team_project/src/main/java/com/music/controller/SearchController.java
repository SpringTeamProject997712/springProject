package com.music.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.music.domain.MemberVO;
import com.music.service.AlbumService;
import com.music.service.MemberService;
import com.music.service.TrackService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/search/*")
@Log4j
public class SearchController {

	@Setter(onMethod_ = @Autowired)
	TrackService tservice;
	
	@Setter(onMethod_ = @Autowired)
	AlbumService aservice;
	
	@Setter(onMethod_ = @Autowired)
	MemberService mservice;
	
	@GetMapping("/search")
	public void goSearchPage(String search_keyword, Model model) {
		model.addAttribute("albumList", aservice.selectAlbumWithKeyword(search_keyword));
		model.addAttribute("trackList", tservice.searchTrackList(search_keyword));
	}
	
	@GetMapping("/send_email")
	public String send_pw_mail(String id) {
		MemberVO mvo = new MemberVO();
		mvo.setId(id);
		mservice.send_mail(mvo);
		log.info("잘 해결됨");
		
		return "redirect:/";
	}
}
