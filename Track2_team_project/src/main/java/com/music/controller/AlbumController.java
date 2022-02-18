package com.music.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import com.google.gson.Gson;
import com.music.service.AlbumService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/album/*")
@Log4j
public class AlbumController {
	
	
	
	@Setter(onMethod_= @Autowired)
	private AlbumService service;
	
	
	@GetMapping("/album")
	public void albumView(Model model) {
		model.addAttribute("list",service.listAlbum());
		model.addAttribute("likes",service.getCountLikes());
		
	}
	
	@GetMapping("/album_single")
	public void album_single(Model model, @RequestParam("abno")int abno) {
		model.addAttribute("view",service.readAlbum_single(abno));
		model.addAttribute("newly",service.newly());
	}
	
	@ResponseBody
	@RequestMapping(value="/albumSearcher", produces = "application/text; charset=utf8", method=RequestMethod.GET)
	public String searchAlbumList(String name){
		
		Gson gson = new Gson();
		String json = gson.toJson(service.searchAlbumWithTrackName(name));
		log.info(json);
		return json;
	}
	
	

}
