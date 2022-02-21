package com.music.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.music.service.GenresService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/genres/*")
@Log4j
public class GenresController {

	
	@Setter(onMethod_ = @Autowired)
	private GenresService service;
	
	@GetMapping("/genres")
	public void genresView() {
		
	}
	
	@GetMapping("/genres_single")
	public void genres_single(Model model, @RequestParam("genre") String genre) {
		model.addAttribute("genres",service.genresView(genre));
		log.info(service.genresView(genre));
	}
	
}
