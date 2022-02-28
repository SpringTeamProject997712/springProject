package com.music.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.music.domain.AlbumVO;
import com.music.domain.PlaylistVO;
import com.music.domain.TrackVO;
import com.music.domain.jPlayerVO;
import com.music.security.domain.CustomUser;
import com.music.service.AlbumService;
import com.music.service.CreatePlaylistService;
import com.music.service.ProductService;
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
	
	@Setter(onMethod_= @Autowired)
	private ProductService pservice;
	
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
		}
		
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
	
	@PostMapping("/updateTrack")
	public String updateTrack(TrackVO tvo, @RequestParam("uploadMusic") MultipartFile uploadMusic, HttpServletRequest req) {
		String uploadFolder = "C:\\upload";
		String uploadMusicName = uploadMusic.getOriginalFilename();
		String uploadMusicRealName = "track_"+uploadMusic.getOriginalFilename();
		File uploadPath = new File(uploadFolder, getFolder());
		
		
		if(uploadMusic.getOriginalFilename() != null && uploadMusic.getOriginalFilename() != "") {
			new File(uploadPath + req.getParameter("uploadMusic")).delete();
			
		}
		
		service.updateTrack(tvo);
		
		return "redirect:/admin/track/view_track?tbno="+tvo.getTbno();
	}
	
	@PostMapping("/deleteTrack")
	public String deleteTrack(@RequestParam("pbno") int pbno, @RequestParam("abno") int abno) {
		
		service.deleteTrack(pbno);
		
		return "redirect:/admin/track/manage_track?abno="+abno;
	}
	
	
	//구 폴더 생성기
	private String getFolder() {
		//폴더 생성(폴더는 현제 날짜별로)
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		return str.replace("-",  File.separator);
	}
}
