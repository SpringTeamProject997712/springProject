package com.music.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

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
import com.music.domain.MemberVO;
import com.music.security.domain.CustomUser;
import com.music.service.AlbumService;
import com.music.service.CartService;
import com.music.service.ReviewService;

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
	public String updateAlbum(@RequestParam("uploadImage") MultipartFile uploadImage,HttpServletRequest req,AlbumVO avo) {
		String uploadFolder = "C:\\upload";
		String uploadImageName = "cover_"+uploadImage.getOriginalFilename();
		File uploadPath = new File(uploadFolder, getFolder());
		
		// 새로운 파일이 등록되었는지 확인
		 if(uploadImage.getOriginalFilename() != null && uploadImage.getOriginalFilename() != "") {
		  // 기존 파일을 삭제
		  new File(uploadPath + req.getParameter("image")).delete();
		  new File(uploadPath + req.getParameter("image_240")).delete();
		  new File(uploadPath + req.getParameter("image_50")).delete();
		  
		  // 새로 첨부한 파일을 등록
			File saveimage = new File(uploadPath, uploadImageName);
				
			String saveImageUrl = uploadImageName.toString();
//			uploadImage.transferTo(saveimage);
			uploadImageName = (saveimage.toString().substring(10));
		  
		  avo.setImage(uploadImageName);
		  
		 } else {  // 새로운 파일이 등록되지 않았다면
		  // 기존 이미지를 그대로 사용
		  avo.setImage(req.getParameter("gdsImg"));
		  avo.setImage_240(req.getParameter("gdsImg"));
		  avo.setImage_50(req.getParameter("gdsImg"));
		  
		 }
		 
		service.updateAlbum(avo);
		
		return "redirect:/admin/album/view_album?abno="+avo.getAbno();
	}
	
	
	
	//구 폴더 생성기
	private String getFolder() {
		//폴더 생성(폴더는 현제 날짜별로)
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		return str.replace("-",  File.separator);
	}

	@ResponseBody
	@PostMapping("/insertCart")
	public void insertCart(CartVO cart, HttpSession session) {
		String myName="";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(!(auth.getPrincipal().equals("anonymousUser"))) {
			CustomUser user = (CustomUser)auth.getPrincipal();
			myName =user.getUsername();
			cart.setId(myName);
		}
//		
//		MemberVO member = (MemberVO)session.getAttribute("member");
//		cart.setId(member.getId());
//		cart.setId("ryu00209@gmail.com");
//		System.out.println("아이디 주입 체크"+cart.getId());
		
		cservice.insertCart(cart);
	}

	
}
