package com.music.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.music.domain.CartVO;
import com.music.domain.MemberVO;
import com.music.domain.Member_authVO;
import com.music.domain.PlaylistVO;
import com.music.security.domain.CustomUser;
import com.music.service.AlbumService;
import com.music.service.CartService;
import com.music.service.CreatePlaylistService;
import com.music.service.MemberService;

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
	public String updateMember(MemberVO mvo) {
		service.updateMember(mvo);
		return "redirect:/admin/member/view_member?id="+mvo.getId();
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
		String myName = "";
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
	
//=============================마이페이지 컨트롤러 ===================================
	
	@GetMapping("/profile")
	public void viewProfile(String id,Model model) {
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
			log.info(service.viewMyPlaylistList(id));
			model.addAttribute("myPlaylist",service.viewMyPlaylistList(id));
		}
	}
	
	@GetMapping("/my_playlist/one_playlist")
	public void viewOnePlaylist(int plbno, Model model) {
		model.addAttribute("view",service.viewOnePlaylist(plbno));
		model.addAttribute("countTrack", service.countTrack(plbno));
		model.addAttribute("newly",aservice.newly());
		model.addAttribute("this_plbno",plbno);
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
		
		List<CartVO> cartList = cservice.cartList(id);
		
		model.addAttribute("cartList", cartList);
		
	}
	
	
	@GetMapping("/favourite")
	public void favouritesView() {
	}
}
