package com.music.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
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
import com.music.domain.CartVO;
import com.music.domain.CouponVO;
import com.music.domain.MemberVO;
import com.music.domain.Member_authVO;
import com.music.domain.OrderListVO;
import com.music.domain.OrderVO;
import com.music.domain.OrderdetailVO;
import com.music.domain.PlaylistVO;
import com.music.security.domain.CustomUser;
import com.music.service.AlbumService;
import com.music.service.CartService;
import com.music.service.CreatePlaylistService;
import com.music.service.MemberService;
import com.music.utility.UploadFileUtil;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/member/*")
@Log4j
public class MemberController {

	@Setter(onMethod_ = @Autowired)
	MemberService service; //서비스 자리
	
	@Setter(onMethod_ = @Autowired)
	CreatePlaylistService pservice; //서비스 자리
	
	@Setter(onMethod_ = @Autowired)
	AlbumService aservice; //서비스 자리
	
	@Setter(onMethod_= @Autowired)
	CartService cservice;
	
	@Setter(onMethod_ = @Autowired)
	private PasswordEncoder pencoder; //패스워드 인코더
	
	//회원가입
	@PostMapping("/join")
	public String joinMember(MemberVO vo) {
		String inputPw = pencoder.encode(vo.getPw());
		vo.setPw(inputPw);
		log.info(vo);
		int result = service.joinMember(vo);
		PlaylistVO pvo = new PlaylistVO();
		pvo.setId(vo.getId());
		int result2= pservice.insertBasicPlaylist(pvo);
		if(result > 0 && result2 > 0 ) {
			log.info("가입 성공 그리고 베이직 플레이리스트 생성");
		}else {
			log.info("실패");
		}
		return "redirect:/";
	}
	
	@PostMapping("/id_pw_checker")
	public String use_id_pw_checker(String your_email,String your_pw) {
		String result = "redirect:/member/profile?id="+your_email;
		log.info("너 나한테 불만있어!!!!");
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		if( encoder.matches(your_pw, service.viewMember(your_email).getPw())) {
			result = "redirect:/member/inner_profile?id="+your_email;
		}
		
		return result;
	}
	
	//이 아이디가 이미 등록된 아이디인가
	@ResponseBody
	@GetMapping(value = "/checkId")
	public String checkId(String id) {
		int result = 0;
		result= service.checkMemberWithId(id);
		log.info(result);
		
		return Integer.toString(result);
	}
	
	//멤버수정
	@PostMapping("/updateMember")
	public String updateMember(MemberVO mvo, @RequestParam("uploadImage") MultipartFile uploadImage, int your_home
			,HttpServletRequest req) throws IOException{
		
		String uploadFolder = "C:\\upload";
		File uploadPath = new File(uploadFolder, UploadFileUtil.getFolder());
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		
		if(uploadImage.getOriginalFilename() != null && !uploadImage.getOriginalFilename().equals("")) {
			new File(uploadFolder+"\\"+req.getParameter("image")).delete();
			
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
				mvo.setImage(uploadImageName);
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			File saveimage_155 = new File(uploadFolder, uploadImageName);
			
			InputStream inputStream_155 = new FileInputStream(saveimage_155);
			
			String strImageName = uploadImageName.substring(0,uploadImageName.lastIndexOf('.'));
			
	        int width_155 = 155; // 리사이즈할 가로 길이
	        int height_155 = 155; // 리사이즈할 세로 길이
			
	        BufferedImage resizedImage_155 = UploadFileUtil.resize(inputStream_155 ,width_155, height_155);

	        ImageIO.write(resizedImage_155, "png", new File(uploadFolder, strImageName+"_155.png"));
	        
			mvo.setImage(strImageName+"_155.png");
			
		}else {
			mvo.setImage(service.viewMember(mvo.getId()).getImage());
		}
		
		service.updateMember(mvo);
		log.info("이게 지금의 비밀번호 입니다 : "+mvo.getPw());
		if(!(mvo.getPw().equals(""))) {
			BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
			mvo.setPw(encoder.encode(mvo.getPw()));
			service.update_pw(mvo);
		}
		
		String go_home="";
		if(your_home==1) {
			go_home="redirect:/member/inner_profile?id="+mvo.getId();
		}else if(your_home==0) {
			go_home="redirect:/admin/member/view_member?id="+mvo.getId();
		}
		
		return go_home;
	}
	
	//권한수정
	@PostMapping("/auth_update")
	public String updateAuth(String id, HttpServletRequest request) {
		log.info(id);
		String[] arrRoles = request.getParameterValues("roles");
		service.deleteAuth(id);
		for(int i =0; i<arrRoles.length; i++) {
			log.info("현재의 권한 : "+arrRoles[i]);
			Member_authVO vo = new Member_authVO();
			vo.setAuth(arrRoles[i]);
			vo.setId(id);
			service.insertAuth(vo);
		}
		return "redirect:/admin/member/role_update?id="+id;
	}
	
	//로그인 true/false
	@ResponseBody
	@GetMapping("/loginChecker")
	public String loginChecker() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		/* User user = (User)auth.getPrincipal(); */
		String myName = "1";
		log.info(auth.getPrincipal());
		if(!(auth.getPrincipal().equals("anonymousUser"))) {
			CustomUser user = (CustomUser)auth.getPrincipal();
			myName =user.getUsername();
		}
		return myName;
	}
	
	@GetMapping("/convertMemberActive")
	public String convertMemberActive(String id) {
		int result = service.updateMemberActive(id);
		String msg = "0";
		if(result>0) {
			msg="1";
		}
		return msg;
	}
	
	@GetMapping("/deleteMember")
	public String deleteMember(String id) {
		int result = service.deleteMember(id);
		String msg = "0";
		if(result>0) {
			msg="1";
		}
		return msg;
	}
	
	@GetMapping("/downloads")
	public void downloadPage(OrderVO ovo, Model model) {
		String myName = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(!(auth.getPrincipal().equals("anonymousUser"))) {
			CustomUser user = (CustomUser)auth.getPrincipal();
			myName =user.getUsername();
			
			ovo.setId(myName);
			List<OrderListVO> orderList = service.orderTrackList(ovo);
			List<OrderListVO> albumList = service.orderAlbumList(ovo);
			model.addAttribute("olist", orderList);
			model.addAttribute("alist", albumList);
			
			
			
		}
		
	}
	
	
//=============================마이페이지 컨트롤러 ===================================
	
	@GetMapping("/profile")
	public void viewProfile(String id,Model model) {
		MemberVO mvo = service.viewMember(id);
		
		model.addAttribute("memberList",mvo);
	}
	
	@GetMapping("/inner_profile")
	public void viewRealProfile(String id,Model model) {
		MemberVO mvo = service.viewMember(id);
		
		model.addAttribute("memberList",mvo);
	}
	
	@GetMapping("/my_playlist/my_playlist")
	public void viewMyplaylist(Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		
		log.info(auth.getPrincipal());
		if(!(auth.getPrincipal().equals("anonymousUser"))) {
			CustomUser user = (CustomUser)auth.getPrincipal();
			String id =user.getUsername();
			model.addAttribute("myPlaylist",service.viewMyPlaylistList(id));
		}
	}
	
	@GetMapping("/my_playlist/one_playlist")
	public void viewOnePlaylist(int plbno, Model model) {
		model.addAttribute("view",service.viewOnePlaylist(plbno));
		model.addAttribute("countTrack", service.countTrack(plbno));
		model.addAttribute("newly",aservice.newly());
		model.addAttribute("myPlaylist", service.myPlaylistView(plbno));
		model.addAttribute("this_plbno",plbno);
		model.addAttribute("justPlaylist",pservice.selectJustOnePlaylist(plbno));
	}
	
	@GetMapping("/my_cart")
	public void viewCart(HttpSession session, Model model) {
		String myName="";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(!(auth.getPrincipal().equals("anonymousUser"))) {
			CustomUser user = (CustomUser)auth.getPrincipal();
			myName =user.getUsername();
		}
		String id = myName;
		
		List<CartVO> cartList = cservice.viewCartlist(id);
		List<CartVO> cartListDetail = cservice.cartList(id);
		model.addAttribute("cartList", cartList);
		model.addAttribute("cartListDetail",cartListDetail);
		
	}
	

	@RequestMapping(value="/go_pay", method = RequestMethod.POST) 
	public String orderCart(HttpSession session, OrderVO ovo) {
		String myName="";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(!(auth.getPrincipal().equals("anonymousUser"))) {
			CustomUser user = (CustomUser)auth.getPrincipal();
			myName =user.getUsername();
			
			
			 Calendar cal = Calendar.getInstance();
			 int year = cal.get(Calendar.YEAR);
			 String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
			 String ymd = ym +  new DecimalFormat("00").format(cal.get(Calendar.DATE));
			 String subNum = "";
			 
			 for(int i = 1; i <= 6; i ++) {
			  subNum += (int)(Math.random() * 10);
			 }
			 
			String orderId = ymd + "_" + subNum;
			log.info(orderId);
			
			OrderdetailVO odvo = new OrderdetailVO();
			
			ovo.setOrderid(orderId);
			ovo.setId(myName);
			
			odvo.setOrderid(orderId);
			odvo.setUserId(myName);
			cservice.orderInfo(ovo);
			cservice.orderInfo_detail(odvo);
			cservice.cartAllDelete(myName);
		}
		
		return "redirect:/";
	}
	
	@GetMapping("/orderlist")
	public void getOrderList(OrderVO ovo, Model model) {
		String myName = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(!(auth.getPrincipal().equals("anonymousUser"))) {
			CustomUser user = (CustomUser)auth.getPrincipal();
			myName =user.getUsername();
			
			ovo.setId(myName);
			List<OrderVO> orderList = service.orderList(ovo);
			model.addAttribute("olist", orderList);
		}
	}
	
	@GetMapping("/orderview")
	public void gerOrderListDetail(Model model, OrderVO ovo,
			@RequestParam("n") String orderID
			) {
		String myName = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(!(auth.getPrincipal().equals("anonymousUser"))) {
			CustomUser user = (CustomUser)auth.getPrincipal();
			myName =user.getUsername();
			
			ovo.setId(myName);
			ovo.setOrderid(orderID);
			List<OrderListVO> orderView = service.orderDetailList(ovo);
			model.addAttribute("orderView", orderView);
			model.addAttribute("orderdetailView", service.orderdetailTracksInAlbum(ovo));
		}
	}
	
	
	@GetMapping("/favourite")
	public void favouritesView(Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String id = "";
		log.info(auth.getPrincipal());
		if(!(auth.getPrincipal().equals("anonymousUser"))) {
			CustomUser user = (CustomUser)auth.getPrincipal();
			id =user.getUsername();
		}
		model.addAttribute("favouritelist",service.favouritesView(id));
	}
	@GetMapping("/my_coupon")
	public void select_my_coupon_for_purchase(Model model) {
		String myName="";
		List<CouponVO> coupons = new ArrayList<CouponVO>();
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(!(auth.getPrincipal().equals("anonymousUser"))) {
			CustomUser user = (CustomUser)auth.getPrincipal();
			myName =user.getUsername();
			coupons = cservice.getCoupons(myName);
		}
		model.addAttribute("coupons",coupons);
	}
	
	@GetMapping("/get_mycoupon")
	public String get_couponWithCouponid(String couponid) {
		int couponnumber = cservice.searchCouponIsRealWithCouponid(couponid);
		if(couponnumber!=0) {
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			if(!(auth.getPrincipal().equals("anonymousUser"))) {
				CustomUser user = (CustomUser)auth.getPrincipal();
				String myName =user.getUsername();
				CouponVO cvo = new CouponVO();
				cvo.setCouponnumber(couponnumber);
				cvo.setId(myName);
				cservice.setCoupon(cvo);
			}
		}else {
			log.info("여기서 null나옴");
		}
		return "redirect:/member/my_coupon";
	}
	
	@GetMapping("/login")
	public void loginPage() {
		
	}
	
}
