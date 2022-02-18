package com.music.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/favourite/*")
public class FavouriteController {

	@GetMapping("/favourite")
	public void favouritesView() {
		
	}
	
	@ResponseBody
	@RequestMapping(value="/favourite_checker", method =RequestMethod.GET)
	public String favoritChecker(int pbno) {
		String result = "1";
		 //테이블이 있는지 likes가 0인지
			/*
			 * if(service) {
			 * 
			 * }
			 */
		
		return result;
	}
}
