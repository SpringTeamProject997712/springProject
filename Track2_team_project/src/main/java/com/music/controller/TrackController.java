package com.music.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.music.domain.jPlayerVO;
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
	
	//tbno를 이용해 trackVO를 select한 뒤 JPlayerVO 객체에 넣어서 리턴함 
	@ResponseBody
	@RequestMapping(value="/selectTrackInJplayer", produces = "application/text; charset=utf8", method = RequestMethod.GET)
	public String selectTrackInJPlayer(int tbno) {
		jPlayerVO jvo = service.convertTrackToJPlayer(service.selectTrack(tbno));
		
		Gson gson = new Gson();
		String json = gson.toJson(jvo);
		return json;
	}
}
