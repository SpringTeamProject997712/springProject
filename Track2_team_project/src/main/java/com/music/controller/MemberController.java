package com.music.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.music.domain.MemberVO;
import com.music.security.domain.CustomUser;
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
	private PasswordEncoder pencoder; //패스워드 인코더
	
	//회원가입
	@PostMapping("/join")
	public String joinMember(MemberVO vo) {
		String inputPw = pencoder.encode(vo.getPw());
		vo.setPw(inputPw);
		log.info(vo);
		int result = service.joinMember(vo);
		if(result > 0 ) {
			log.info("가입 성공");
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

		log.info(auth.getPrincipal());
		CustomUser user = (CustomUser)auth.getPrincipal();
		String myName =user.getUsername();
		return myName;
	}
	
//=============================마이페이지 컨트롤러 ===================================
	
	@GetMapping("/member/profile")
	public void viewProfile(String id,Model model) {
		MemberVO mvo = service.viewMember(id);
		
		model.addAttribute("memberList",mvo);
	}
}
