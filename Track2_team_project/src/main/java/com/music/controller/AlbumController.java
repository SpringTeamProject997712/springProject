package com.music.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.music.domain.AlbumVO;
import com.music.mapper.AlbumMapper;
import com.music.service.AlbumService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/album/*")
@Log4j
public class AlbumController {
	
	@Setter(onMethod_= @Autowired)
	private AlbumService service;
	
	@Setter(onMethod_= @Autowired)
	private AlbumMapper mapper;
	
	private String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		return str.replace("-",  File.separator);
	}
	
	@GetMapping("/album")
	public void albumView(Model model) {
		model.addAttribute("list",service.listAlbum());
		log.info("리스트 내용 : "+service.listAlbum());

	}
	
	@GetMapping("/album_upload")
	public void albumUpload(Model model) {
		String[] kind = {"장르1","장르2","장르3","장르4"};
		model.addAttribute("kindList", kind);
	}
	
	@PostMapping("/album_uploadpro")
	public String insertAlbum(AlbumVO album, @RequestParam("uploadImage") MultipartFile uploadImage, @RequestParam("uploadMusic") MultipartFile uploadMusic) {
		
//		MultipartFile multipartFile = portfolio.getUploadFile();
		String uploadFolder = "C:\\upload";
		log.info("file name : "+uploadImage.getOriginalFilename());
				
		String uploadImageName = uploadImage.getOriginalFilename();
		String uploadMusicName = uploadMusic.getOriginalFilename();
		
		//IE
		uploadImageName = uploadImageName.substring(uploadImageName.lastIndexOf("//")+1);
		uploadMusicName = uploadMusicName.substring(uploadMusicName.lastIndexOf("//")+1);
		log.info("only file name :"+uploadImageName);
		
		UUID uuid = UUID.randomUUID();
		
		uploadImageName = uuid.toString()+"_"+uploadImageName;
		uploadMusicName = uuid.toString()+"_"+uploadMusicName;
		
		File uploadPath = new File(uploadFolder, getFolder());
		
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		
		
		File saveimage = new File(uploadPath, uploadImageName);
		File savemusic = new File(uploadPath, uploadMusicName);
		
		String saveImageUrl = uploadImageName.toString();
		String saveMusicUrl = uploadMusicName.toString();
		log.info(saveImageUrl);
		log.info(saveMusicUrl);
		
		try {
			uploadImage.transferTo(saveimage);
			uploadImageName = (saveimage.toString().substring(10));
			album.setImage(uploadImageName);
			
			uploadMusic.transferTo(savemusic);
			uploadMusicName = (savemusic.toString().substring(10));
			album.setSongname(uploadMusicName);
			log.info(uploadMusicName);
//			FileOutputStream thumbnail
		}catch(Exception e) {
			e.printStackTrace();
		}
		
//		portfolio.setImgurl(uploadFileName);
		service.insertAlbum(album);
		
		return "redirect:/album/album";
	}
	
}
