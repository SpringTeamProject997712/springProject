package com.music.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.music.domain.AlbumVO;
import com.music.service.AlbumService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/album/*")
@Log4j
public class AlbumController {
	
	@Setter(onMethod_= @Autowired)
	private AlbumService service;
	
	@GetMapping("/album")
	public void albumView() {
		
	}
	
	@GetMapping("/album_upload")
	public void albumUpload() {
		
	}
	
	@PostMapping("/album_uploadpro")
	public String insertAlbum(AlbumVO album) {
		log.info("짜잔짜잔");
		service.insertAlbum(album);
		
		
		return "/album";
	}
	
}
