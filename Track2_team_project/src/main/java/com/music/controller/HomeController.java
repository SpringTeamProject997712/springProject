package com.music.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.music.service.AlbumService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Controller
@AllArgsConstructor
@Log4j
public class HomeController {	
	
	@Setter(onMethod_= @Autowired)
	private AlbumService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, HttpServletRequest req) {
		model.addAttribute("music", service.listAlbum());
		model.addAttribute("newly",service.newly());
		model.addAttribute("topalbum",service.topAlbums());
		model.addAttribute("list",service.listAlbum());
		model.addAttribute("bestAlbum", service.selectBestAlbum());
		
		log.info("쿼리값: "+req.getParameter("pageName"));
		if(req.getParameter("pageName")==null) {
			model.addAttribute("param", "menu_main");
		}
		return "index";
	}
}
