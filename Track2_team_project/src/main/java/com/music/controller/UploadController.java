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
import com.music.domain.GoodsVO;
import com.music.domain.ProductVO;
import com.music.domain.TrackVO;
import com.music.mapper.ProductMapper;
import com.music.service.ProductService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/upload/*")
@Log4j
public class UploadController {
	
	@Setter(onMethod_= @Autowired)
	private ProductService pservice;
	
	@Setter(onMethod_= @Autowired)
	private ProductMapper pmapper;
	
	
	private String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		return str.replace("-",  File.separator);
	}
	
	@GetMapping("/upload")
	public void productUpload(Model model) {
		String[] category = {"アルバム","トラック","グッズ"};
		model.addAttribute("category", category);
		model.addAttribute("pbno", pservice.searchPbno()+1);
	}
	
	@PostMapping("/uploadpro")
	public String insertProduct(AlbumVO album, ProductVO product, TrackVO track, GoodsVO goods, 
			@RequestParam("uploadImage") MultipartFile uploadImage, @RequestParam("uploadMusic") MultipartFile uploadMusic, 
			@RequestParam("pbno") int pbno, Model model) {
		
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
			
//			uploadMusic.transferTo(savemusic);
//			uploadMusicName = (savemusic.toString().substring(10));
//			album.setName(uploadMusicName);
//			log.info(uploadMusicName);
			
//			FileOutputStream thumbnail
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		pservice.insertProduct(product);
		
		pservice.insertAlbum(album);
		album.setPbno(pbno);
		
		return "redirect:/";
	}
	
}
