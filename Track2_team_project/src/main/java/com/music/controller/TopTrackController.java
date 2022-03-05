package com.music.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.music.service.AlbumService;

import lombok.Setter;

@Controller
@RequestMapping("/toptrack/*")
public class TopTrackController {

	@Setter(onMethod_ = @Autowired)
	private AlbumService service;
	
	@GetMapping("/toptrack")
	public void topTracksView(Model model) {
		model.addAttribute("topalbum",service.topAlbums());
		model.addAttribute("newly",service.newly());
	}
}
