package com.music.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.music.service.TrackService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/track/*")
@Log4j
public class TrackController {
	@Setter(onMethod_= @Autowired)
	private TrackService service;
	
	@GetMapping("/newly_release_album")
	public void listNewly(Model model) {
		model.addAttribute("newly",service.listNewly());
	}
}
