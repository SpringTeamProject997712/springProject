package com.music.controller;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.annotation.*;
import javax.imageio.ImageIO;

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
import com.music.utility.UploadFileUtil;

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
	
	@GetMapping("/upload")
	public void productUpload(Model model) {
		String[] genre = {
				"ロマンチック",
				"ヒップホップ",
				"ダンシング",
				"ロック",
				"ジャズ",
				"メタル",
				"ポップ",
				"インディーズ",
				"ソウル"	
		};
		model.addAttribute("genre", genre);
		model.addAttribute("nextPbno", pservice.searchPbno()+1);
		model.addAttribute("abno",pservice.searchAbno());
	}
	
	@PostMapping("/uploadpro_album")
	public String insertAlbum(AlbumVO album, ProductVO product, 
			@RequestParam("uploadImage") MultipartFile uploadImage, 
			@RequestParam("name") String name,
			@RequestParam("pbno") int pbno,
			Model model) throws IOException {

//		MultipartFile multipartFile = portfolio.getUploadFile();
		String uploadFolder = "C:\\upload";
		log.info("file name : "+uploadImage.getOriginalFilename());
				
		String uploadImageName = uploadImage.getOriginalFilename();
		
		//IE
		uploadImageName = uploadImageName.substring(uploadImageName.lastIndexOf("//")+1);
		log.info("only file name :"+uploadImageName);
		
		
		//파일에 변수명 주기
		UUID uuid = UUID.randomUUID();
		uploadImageName = uuid.toString()+"_"+uploadImageName;
		
		
		File uploadPath = new File(uploadFolder, UploadFileUtil.getFolder());
		
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		
		
		File saveimage = new File(uploadPath, uploadImageName);

		String saveImageUrl = uploadImageName.toString();
		log.info(saveImageUrl);
		
		
		
		try {
			uploadImage.transferTo(saveimage);
			uploadImageName = (saveimage.toString().substring(10));
			album.setImage(uploadImageName);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		// 리사이징
		File saveimage_240 = new File(uploadFolder, uploadImageName);
		File saveimage_50 = new File(uploadFolder, uploadImageName);
		
		InputStream inputStream_240 = new FileInputStream(saveimage_240);
		InputStream inputStream_50 = new FileInputStream(saveimage_50);
		
		String strImageName = uploadImageName.substring(0,uploadImageName.lastIndexOf('.'));

//		Image img_240 = new ImageIcon(saveimage_240.toString()).getImage(); // 파일 정보 추출
//		Image img_50 = new ImageIcon(saveimage_50.toString()).getImage(); // 파일 정보 추출

        int width_240 = 300; // 리사이즈할 가로 길이
        int height_240 = 300; // 리사이즈할 세로 길이
        
        int width_50 = 50; // 리사이즈할 가로 길이
        int height_50 = 50; // 리사이즈할 세로 길이
		
        BufferedImage resizedImage_240 = UploadFileUtil.resize(inputStream_240 ,width_240, height_240);
        
//        ImageIO.write(resizedImage_240, "jpg", new File(uploadFolder, uploadImageName+"_240.jpg"));

        ImageIO.write(resizedImage_240, "png", new File(uploadFolder, strImageName+"_240.png"));

        log.info("folder::"+uploadFolder);
        log.info("imagename::"+uploadImageName);
        log.info("imagename::"+strImageName);
        
        BufferedImage resizedImage_50 = UploadFileUtil.resize(inputStream_50 ,width_50, height_50);
        
        ImageIO.write(resizedImage_50, "png", new File(uploadFolder, strImageName+"_50.png"));

        try {
			album.setImage_240(strImageName+"_240.png");
			album.setImage_50(strImageName+"_50.png");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
        
        pservice.insertProduct(product);
    	
		pservice.insertAlbum(album);
		album.setPbno(pbno);
        
		return "redirect:/upload/upload";
	}	
	
	@PostMapping("/uploadpro_track")
	public String insertTrack(AlbumVO album, ProductVO product, TrackVO track, GoodsVO goods, 
			@RequestParam("uploadMusic") MultipartFile uploadMusic, 
			@RequestParam("pbno") int pbno, 
			Model model) {
		
		String uploadFolder = "C:\\upload";
		
		String uploadMusicName = uploadMusic.getOriginalFilename();
		String uploadMusicRealName = uploadMusic.getOriginalFilename();
		
		//IE
		uploadMusicName = uploadMusicName.substring(uploadMusicName.lastIndexOf("//")+1);
		
		UUID uuid = UUID.randomUUID();
		
		uploadMusicName = uuid.toString()+"_"+uploadMusicName;
		
		File uploadPath = new File(uploadFolder, UploadFileUtil.getFolder());
		log.info("업로드 패스 주소"+uploadPath);
		
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		
		
		File savemusic = new File(uploadPath, uploadMusicName);
		
		String saveMusicUrl = uploadMusicName.toString();
		log.info(saveMusicUrl);
		
		try {
			
			uploadMusic.transferTo(savemusic);
			uploadMusicName = (savemusic.toString().substring(10));
			track.setSongrealname(uploadMusicName);
			track.setSongname(uploadMusicRealName);
			log.info(uploadMusicName);
			
//			FileOutputStream thumbnail
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		pservice.insertProduct(product);
		
		pservice.insertTrack(track);
		track.setPbno(pbno);
		
		return "redirect:/upload/upload";
	}
	
	@PostMapping("/uploadpro_goods")
	public String insertGoods(AlbumVO album, ProductVO product, TrackVO track, GoodsVO goods, 
			@RequestParam("uploadMusic") MultipartFile uploadMusic, 
			@RequestParam("pbno") int pbno, Model model) {
		
//		MultipartFile multipartFile = portfolio.getUploadFile();
//		String uploadFolder = "C:\\upload";
//		
//		String uploadMusicName = uploadMusic.getOriginalFilename();
//		
//		//IE
//		uploadMusicName = uploadMusicName.substring(uploadMusicName.lastIndexOf("//")+1);
//		
//		UUID uuid = UUID.randomUUID();
//		
//		uploadMusicName = uuid.toString()+"_"+uploadMusicName;
//		
//		File uploadPath = new File(uploadFolder, getFolder());
//		
//		if(uploadPath.exists() == false) {
//			uploadPath.mkdirs();
//		}
//		
//		
//		File savemusic = new File(uploadPath, uploadMusicName);
//		
//		String saveMusicUrl = uploadMusicName.toString();
//		log.info(saveMusicUrl);
//		
//		try {
//			
//			uploadMusic.transferTo(savemusic);
//			uploadMusicName = (savemusic.toString().substring(10));
//			album.setName(uploadMusicName);
//			log.info(uploadMusicName);
//			
////			FileOutputStream thumbnail
//		}catch(Exception e) {
//			e.printStackTrace();
//		}
		
		pservice.insertProduct(product);
		
		pservice.insertGoods(goods);
		album.setPbno(pbno);
		
		return "redirect:/";
	}
	

	
}
