package com.music.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.music.service.AlbumService;

import lombok.AllArgsConstructor;
import lombok.Setter;


@Controller
@AllArgsConstructor
public class HomeController {
	
	@Setter(onMethod_= @Autowired)
	private AlbumService service;
	
//	@RequestMapping(value = "/", method = RequestMethod.GET)
	@RequestMapping(value = "/")
	public ModelAndView home(ModelAndView mv, Model model, HttpServletRequest request) {
		
				model.addAttribute("music", service.listAlbum());
		
		System.out.println("쿼리스트링 값:" +request.getParameter("pageName"));	
		mv.setViewName("/index");
		
		return mv;
	}
}
