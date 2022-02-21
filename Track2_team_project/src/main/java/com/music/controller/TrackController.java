package com.music.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.music.domain.AlbumVO;
import com.music.domain.PlaylistVO;
import com.music.domain.TrackVO;
import com.music.domain.jPlayerVO;
import com.music.security.domain.CustomUser;
import com.music.service.AlbumService;
import com.music.service.CreatePlaylistService;
import com.music.service.TrackService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/track/*")
@Log4j
public class TrackController {
	@Setter(onMethod_= @Autowired)
	private TrackService service;
	
	@Setter(onMethod_= @Autowired)
	private AlbumService aservice;
	
	@Setter(onMethod_= @Autowired)
	private CreatePlaylistService cservice;
	
	@GetMapping("/newly_release_album")
	public void listNewly(Model model) {
		model.addAttribute("newly",service.listNewly());
	}
	
	//tbno를 이용해 trackVO를 select한 뒤 JPlayerVO 객체에 넣어서 리턴함 
	@ResponseBody
	@RequestMapping(value="/selectTrackInJplayer", produces = "application/text; charset=utf8", method = RequestMethod.GET)
	public String selectTrackInJPlayer(int tbno) {
		TrackVO tvo = service.selectTrack(tbno);
		jPlayerVO jvo = service.convertTrackToJPlayer(tvo);
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String myName = "";
		log.info(auth.getPrincipal());
		if(!(auth.getPrincipal().equals("anonymousUser"))) {
			CustomUser user = (CustomUser)auth.getPrincipal();
			myName =user.getUsername();
			
			PlaylistVO pvo = new PlaylistVO();
			pvo.setTbno(tvo.getTbno());
			pvo.setAbno(tvo.getAbno());
			pvo.setPlbno(cservice.minPlbno(myName));
			cservice.insertPlaylistDetail(pvo);
		}//basic_playlist에 추가
		
		Gson gson = new Gson();
		String json = gson.toJson(jvo);
		return json;
	}
	
	@ResponseBody
	@RequestMapping(value="/trackSearcher", produces = "application/text; charset=utf8", method = RequestMethod.GET)
	public String findTrackList(String name) {
		List<AlbumVO> tlist = aservice.searchAlbumWithTrackName(name);
		
		Gson gson = new Gson();
		String json = gson.toJson(tlist);
		return json;
	}
}
