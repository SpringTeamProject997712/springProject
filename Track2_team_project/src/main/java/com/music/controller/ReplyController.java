package com.music.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.music.domain.ReplyVO;
import com.music.security.domain.CustomUser;
import com.music.service.AlbumService;
import com.music.service.NoticeService;
import com.music.service.ReplyService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/reply/*")
@Log4j
public class ReplyController {

	@Setter(onMethod_ = @Autowired)
	ReplyService service;
	
	@Setter(onMethod_ = @Autowired)
	NoticeService nservice;
	
	@PostMapping("/writereply")
	public String writeReply(ReplyVO vo, int wbno) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(!(auth.getPrincipal().equals("anonymousUser"))) {
			CustomUser user = (CustomUser)auth.getPrincipal();
			vo.setId(user.getUsername());
			vo.setWbno(nservice.readNotice(wbno).getWbno());
			service.insertReply(vo);
		}
		
		return "redirect:/notice/notice_single?wbno="+wbno;
	}
}
