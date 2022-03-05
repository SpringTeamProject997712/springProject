package com.music.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.music.domain.NoticeVO;
import com.music.service.NoticeService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/notice/*")
@Log4j
public class NoticeController {
	
	@Setter(onMethod_= @Autowired)
	private NoticeService service;
	
	@GetMapping("/notice")
	public void listNotice(Model model) {
		model.addAttribute("nlist",service.listNotice());
	}

	
	@GetMapping("/notice_single")
	public void notice_single(Model model, @RequestParam("wbno")int wbno) {
		model.addAttribute("view",service.readNotice(wbno));
	}
	
	@GetMapping("/notice_upload")
	public void noticeUpload() {
		
	}
	
	
}