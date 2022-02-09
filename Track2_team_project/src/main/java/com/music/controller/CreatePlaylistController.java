package com.music.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/createPlaylist/*")
public class CreatePlaylistController {

	@GetMapping("/createPlaylist")
	public void createPlaylistView() {
		
	}
}
