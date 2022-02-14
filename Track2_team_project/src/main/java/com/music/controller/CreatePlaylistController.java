package com.music.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.music.domain.PlaylistVO;
import com.music.service.CreatePlaylistService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/createPlaylist/*")
@Log4j
public class CreatePlaylistController {

	@Setter(onMethod_ = @Autowired)
	CreatePlaylistService service;
	
	@GetMapping("/createPlaylist")
	public void createPlaylistView() {
		
	}
	
	@ResponseBody
	@GetMapping("/addRandomPlayList")
	public String addRandomPlayList() {
		List<PlaylistVO> plist = service.addRandomPlaylist();
		log.info(plist);
		Gson gson = new Gson();
		String json = gson.toJson(plist);
		log.info(json);
		return json;
	}
	
	
}
