package com.music.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.music.domain.NoticeVO;
import com.music.service.NoticeService;
import com.music.utility.Criteria;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/notice/*")
@Log4j
public class NoticeController {
	
	@Setter(onMethod_= @Autowired)
	private NoticeService service;
	
	@GetMapping("/notice")
	public void listNotice(Model model,Criteria cri) {
		List<NoticeVO> nlist = service.viewNoticeListWithPaging(cri);
		model.addAttribute("nlist", nlist);
		model.addAttribute("pageMaker", service.pagingList(cri));
	}

	
	@GetMapping("/notice_single")
	public void notice_single(Model model, @RequestParam("wbno")int wbno) {
		model.addAttribute("view",service.readNotice(wbno));
		service.viewcountNotice(wbno);
	}
	
	@GetMapping("/notice_upload")
	public void noticeUpload() {
		
	}
	
	@RequestMapping(value="/recentnotice", produces = "application/text; charset=utf8", method = RequestMethod.GET)
	@ResponseBody
	public String noticeUpload(Model model) {
		
		Gson gson = new Gson();
		String json = gson.toJson(service.recentlynotice());
		
		return json;
	}
	
	@PostMapping("/updateNotice")
	public void noticeUpdate(NoticeVO nvo) {
		service.updateNotice(nvo);
		
		
	}

	
}