package com.music.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/freeMusic/*")
public class FreeMusicController {

	@GetMapping("/freeMusic")
	public void freeMusicView() {
		
	}
	
}
