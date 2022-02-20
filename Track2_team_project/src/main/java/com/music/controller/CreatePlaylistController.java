package com.music.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.music.domain.PlaylistVO;
import com.music.domain.jPlayerVO;
import com.music.security.domain.CustomUser;
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
	@GetMapping("/insertPlaylist")
	public String insertPlaylist(PlaylistVO pvo) {
		String myName="";
		String result = "1";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(!(auth.getPrincipal().equals("anonymousUser"))) {
			CustomUser user = (CustomUser)auth.getPrincipal();
			myName =user.getUsername();
			pvo.setId(myName);
			pvo.setName("New Playlist"+(service.countPlaylist(myName)+1));
			service.insertPlaylist(pvo);
			result = "/member/my_playlist/one_plylist?plbno="+service.maxPlbno(myName);
		}
		return result;
	}
	
	@ResponseBody //ajax로 플레이리스트를 받는 친구
	@RequestMapping(value="/addPlayList", produces = "application/text; charset=utf8", method = RequestMethod.GET)
	public String addRandomPlayList(int menu) {
		
		List<jPlayerVO> plist = new ArrayList<jPlayerVO>(); //여기에 담아서 리턴함
		
		//숫자에 따라 처리함
		//1: track에서 다섯개 뽑아서 반환
		//2: basic_playlist 반환
		//3: 
		
		plist = service.selectMethod(menu);
		
		Gson gson = new Gson();
		String json = gson.toJson(plist);
		log.info("확ㅡ인 : "+json);
//		받은 plist를 json형식의 string으로 변환해 ajax로 반환한다.
		
		return json;
	}
	
	/*
	 * private List<PlaylistVO> addRandomPlaylist(){ List<PlaylistVO> plist =
	 * service.addRandomPlaylist();
	 * log.info("===================5개 리스트=========================");
	 * log.info(plist); return plist; }
	 */
	
}
