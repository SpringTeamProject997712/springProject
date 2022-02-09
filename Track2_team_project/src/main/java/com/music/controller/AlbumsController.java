package com.music.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/albums/*")
public class AlbumsController {
	
	@GetMapping("/albums")
	public void albumsView() {
		
	}

}
