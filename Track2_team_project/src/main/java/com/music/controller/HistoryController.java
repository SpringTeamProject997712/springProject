package com.music.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/history/*")
public class HistoryController {

	@GetMapping("/history")
	public void historyView() {
		
	}
}