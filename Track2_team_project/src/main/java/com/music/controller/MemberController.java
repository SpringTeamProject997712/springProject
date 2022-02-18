package com.music.controller;

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


import com.music.domain.MemberVO;
import com.music.security.domain.CustomUser;
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
	private PasswordEncoder pencoder; //패스워드 인코더
	
	//회원가입
	@PostMapping("/join")
	public String joinMember(MemberVO vo) {
		String inputPw = pencoder.encode(vo.getPw());
		vo.setPw(inputPw);
		log.info(vo);
		int result = service.joinMember(vo);
		int result2= pservice.insertBasicPlaylist(vo.getId());
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
	}
}
