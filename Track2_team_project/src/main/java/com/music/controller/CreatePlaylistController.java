package com.music.controller;

import java.util.ArrayList;
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
	
	@ResponseBody //ajax로 플레이리스트를 받는 친구
	@RequestMapping(value="/addPlayList", produces = "application/text; charset=utf8")
	public String addRandomPlayList(int menu) {
		
		List<PlaylistVO> plist = new ArrayList<PlaylistVO>(); //여기에 담아서 리턴함
		
		switch(menu){ //받은 숫자로 스위치문 가동
			
			case 1: // 랜덤 플레이 리스트
				plist = addRandomPlaylist();
			break;
		}
		
		Gson gson = new Gson();
		String json = gson.toJson(plist);
		log.info("확ㅡ인 : "+json);
		return json;
	}
	
	private List<PlaylistVO> addRandomPlaylist(){
		List<PlaylistVO> plist = service.addRandomPlaylist();
		log.info("===================5개 리스트=========================");
		log.info(plist);
		return plist;
	}
	
}
