package com.music.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/album/*")
public class AlbumController {
	
	@GetMapping("/album")
	public void albumView() {
		
	}
	
	@GetMapping("/album_upload")
	public void albumUpload() {
		
	}
	
}
