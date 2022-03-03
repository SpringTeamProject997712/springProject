package com.music.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import com.music.domain.CartVO;
import com.music.domain.ProductVO;
import com.music.security.domain.CustomUser;
import com.music.service.AlbumService;
import com.music.service.CartService;
import com.music.service.ProductService;
import com.music.service.ReviewService;
import com.music.service.TrackService;
import com.music.utility.UploadFileUtil;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/album/*")
@Log4j
public class AlbumController {
	
	@Setter(onMethod_= @Autowired)
	private ReviewService rservice;
	
	@Setter(onMethod_= @Autowired)
	private AlbumService service;
	
	@Setter(onMethod_= @Autowired)
	private CartService cservice;
	
	@Setter(onMethod_= @Autowired)
	private ProductService pservice;
	
	@Setter(onMethod_= @Autowired)
	private TrackService tservice;
	
	@GetMapping("/album")
	public void albumView(Model model) {
		model.addAttribute("list",service.listAlbum());
		model.addAttribute("likes",service.getCountLikes());
		model.addAttribute("topalbum",service.topAlbums());
		model.addAttribute("newly",service.newly());

	}
	
	@GetMapping("/album_single")
	public void album_single(Model model, @RequestParam("abno")int abno) {
		AlbumVO avo = service.readAlbum(abno);
		model.addAttribute("pbno", avo);
		model.addAttribute("view",service.readAlbum_single(abno));
		model.addAttribute("newly",service.newly());
		model.addAttribute("album_comments",rservice.selectReview(avo.getPbno()));
		model.addAttribute("this_album", service.readAlbum(abno));
		model.addAttribute("reviewCount",rservice.countReview(avo.getPbno()));
		model.addAttribute("song", tservice.countSong(abno));
		model.addAttribute("total", service.calTotalLength(abno));
	}
	
	@ResponseBody
	@RequestMapping(value="/albumSearcher", produces = "application/text; charset=utf8", method=RequestMethod.GET)
	public String searchAlbumList(String name){
		
		Gson gson = new Gson();
		String json = gson.toJson(service.searchAlbumWithTrackName(name));
		log.info(json);
		return json;
	}
	

	@PostMapping("/updateAlbum")
	public String updateAlbum(AlbumVO album,
			@RequestParam("uploadImage") MultipartFile uploadImage,
			Model model,
			HttpServletRequest req) throws IOException {
		
		String uploadFolder = "C:\\upload";
		File uploadPath = new File(uploadFolder, UploadFileUtil.getFolder());
		
		if(uploadImage.getOriginalFilename() != null && !uploadImage.getOriginalFilename().equals("")) {
			new File(uploadFolder+"\\"+req.getParameter("image")).delete();
			new File(uploadFolder+"\\"+req.getParameter("image_240")).delete();
			new File(uploadFolder+"\\"+req.getParameter("image_50")).delete();
			log.info("1번:"+uploadFolder+"\\"+req.getParameter("image"));
			log.info("2번:"+uploadFolder+"\\"+req.getParameter("image_240"));
			log.info("3번:"+uploadFolder+"\\"+req.getParameter("image_50"));
			
			
			String uploadImageName = uploadImage.getOriginalFilename();
			
			//파일에 변수명 주기
			UUID uuid = UUID.randomUUID();
			uploadImageName = uuid.toString()+"_"+uploadImageName;
			
			if(uploadPath.exists() == false) {
				uploadPath.mkdirs();
			}
			
			File saveimage = new File(uploadPath, uploadImageName);
			
			try {
				uploadImage.transferTo(saveimage);
				uploadImageName = (saveimage.toString().substring(10));
				album.setImage(uploadImageName);
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			File saveimage_240 = new File(uploadFolder, uploadImageName);
			File saveimage_50 = new File(uploadFolder, uploadImageName);
			
			InputStream inputStream_240 = new FileInputStream(saveimage_240);
			InputStream inputStream_50 = new FileInputStream(saveimage_50);
			
			String strImageName = uploadImageName.substring(0,uploadImageName.lastIndexOf('.'));
			
	        int width_240 = 300; // 리사이즈할 가로 길이
	        int height_240 = 300; // 리사이즈할 세로 길이
	        
	        int width_50 = 50; // 리사이즈할 가로 길이
	        int height_50 = 50; // 리사이즈할 세로 길이
			
	        BufferedImage resizedImage_240 = UploadFileUtil.resize(inputStream_240 ,width_240, height_240);

	        ImageIO.write(resizedImage_240, "png", new File(uploadFolder, strImageName+"_240.png"));
	        
	        BufferedImage resizedImage_50 = UploadFileUtil.resize(inputStream_50 ,width_50, height_50);
	        
	        ImageIO.write(resizedImage_50, "png", new File(uploadFolder, strImageName+"_50.png"));

			album.setImage_240(strImageName+"_240.png");
			album.setImage_50(strImageName+"_50.png");
			
			
		}else {
			album.setImage(req.getParameter("image"));
			album.setImage_240(req.getParameter("image_240"));
			album.setImage_50(req.getParameter("image_50"));
		}
		
		
		service.updateAlbum(album);
		
		return "redirect:/admin/album/view_album?abno="+album.getAbno();
	}
	
	@PostMapping("/deleteAlbum")
	public String deleteAlbum(@RequestParam("pbno") int pbno) {
		
		service.deleteAlbum(pbno);
		
		return "redirect:/admin/album/manage_album";
	}


	@ResponseBody
	@PostMapping("/insertCart")
	public String insertCart(CartVO cart, HttpSession session) {
		String result ="3";
		String myName="";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(!(auth.getPrincipal().equals("anonymousUser"))) {
			CustomUser user = (CustomUser)auth.getPrincipal();
			myName =user.getUsername();
			cart.setId(myName);
			
			ProductVO pvo = new ProductVO();
			
			pvo.setId(myName);
			pvo.setPbno(cart.getPbno());
			if(pservice.checkPbnoForCart(pvo)==1) {
				cservice.insertCart(cart);
				result="1";
			}else {
				result="1"; //2로 해놓으면 이거 될떄마다 중복임이라고 뜸
				//pbno 중복임 하지만 비밀임
			}	
		}
	return result;
	}
	
	

	
}
