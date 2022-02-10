package com.music.controller;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.music.domain.MemberVO;
import com.music.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@AllArgsConstructor
@Log4j
public class MemberController {

	MemberService service; //서비스 자리
	
	private PasswordEncoder pencoder; //패스워드 인코더
	
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
}
