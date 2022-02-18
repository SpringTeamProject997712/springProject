package com.music.controller;

import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;

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
	
	//구 폴더 생성기
	private String getFolder() {
		//폴더 생성(폴더는 현제 날짜별로)
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		return str.replace("-",  File.separator);
	}
	
	
	
	@GetMapping("/upload")
	public void productUpload(Model model) {
		String[] genre = {"장르1","장르2","장르3","장르4"};
		model.addAttribute("genre", genre);
		model.addAttribute("pbno", pservice.searchPbno()+1);
		model.addAttribute("abno",pservice.searchAbno());
	}
	
	@PostMapping("/uploadpro_album")
	public String insertAlbum(AlbumVO album, ProductVO product, 
			@RequestParam("uploadImage") MultipartFile uploadImage, 
			@RequestParam("name") String name,
			@RequestParam("pbno") int pbno,
			Model model) {
		
//		MultipartFile multipartFile = portfolio.getUploadFile();
		String uploadFolder = "C:\\upload";
		log.info("file name : "+uploadImage.getOriginalFilename());
				
		String uploadImageName = "cover_"+uploadImage.getOriginalFilename();
		
		
		//IE
		uploadImageName = uploadImageName.substring(uploadImageName.lastIndexOf("//")+1);
		log.info("only file name :"+uploadImageName);
		
		
		//파일에 변수명 주기
//		UUID uuid = UUID.randomUUID();
		
//		uploadImageName = uuid.toString()+"_"+uploadImageName;
		
		File uploadPath = new File(uploadFolder, name);
		
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
		
		pservice.insertProduct(product);
		
		pservice.insertAlbum(album);
		album.setPbno(pbno);
		
		String uploadImageName_240 = "cover_"+uploadImage.getOriginalFilename();
		String uploadImageName_50 = "cover_"+uploadImage.getOriginalFilename();
		
		
		return "redirect:/";
	}
	
	@PostMapping("/uploadpro_track")
	public String insertTrack(AlbumVO album, ProductVO product, TrackVO track, GoodsVO goods, 
			@RequestParam("uploadMusic") MultipartFile uploadMusic, 
			@RequestParam("abno") AlbumVO albumName,
			@RequestParam("pbno") int pbno, Model model) {
		
		String uploadFolder = "C:\\upload";
		
		String uploadMusicName = uploadMusic.getOriginalFilename();
		String uploadMusicRealName = "track_"+uploadMusic.getOriginalFilename();
		
		//IE
		uploadMusicName = uploadMusicName.substring(uploadMusicName.lastIndexOf("//")+1);
		
//		UUID uuid = UUID.randomUUID();
//		
//		uploadMusicName = uuid.toString()+"_"+uploadMusicName;
		
		File uploadPath = new File(uploadFolder, getFolder());
		
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		
		
		File savemusic = new File(uploadPath, albumName.getName());
		
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
		
		return "redirect:/";
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
	
	
	//resize 메소드
    public static void imageResize() throws IOException {
        File file = new File("C:\\test\\test.jpg");  //리사이즈할 파일 경로
        InputStream inputStream = new FileInputStream(file);
        Image img = new ImageIcon(file.toString()).getImage(); // 파일 정보 추출
         
        System.out.println("사진의 가로길이 : " + img.getWidth(null)); // 파일의 가로
        System.out.println("사진의 세로길이 : " + img.getHeight(null)); // 파일의 세로
        /* 파일의 길이 혹은 세로길이에 따라 if(분기)를 통해서 응용할 수 있습니다.
         * '예를 들어 파일의 가로 해상도가 1000이 넘을 경우 1000으로 리사이즈 한다. 같은 분기' */
        int width = 240; // 리사이즈할 가로 길이
        int height = 240; // 리사이즈할 세로 길이
        
        BufferedImage resizedImage = resize(inputStream ,width , height );
        // 리사이즈 실행 메소드에 값을 넘겨준다.
        ImageIO.write(resizedImage, "jpg", new File("C:\\test\\1234.jpg"));
        // 리사이즈된 파일, 포맷, 저장할 파일경로
    }
    
    //resize 실행 메소드
    public static BufferedImage resize(InputStream inputStream, int width, int height) 
    		throws IOException {
    	
        BufferedImage inputImage = ImageIO.read(inputStream);  // 받은 이미지 읽기

        BufferedImage outputImage = new BufferedImage(width, height, inputImage.getType());
        // 입력받은 리사이즈 길이와 높이 

        Graphics2D graphics2D = outputImage.createGraphics(); 
        graphics2D.drawImage(inputImage, 0, 0, width, height, null); // 그리기
        graphics2D.dispose(); // 자원해제

        return outputImage;
    }
	
}
