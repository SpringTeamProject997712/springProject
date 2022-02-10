package com.music.controller;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.music.domain.MemberVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@AllArgsConstructor
@Log4j
public class MemberController {

	//서비스 자리
	
	private PasswordEncoder pencoder; //패스워드 인코더
	
	@PostMapping("/join")
	public String joinMember(MemberVO vo) {
		
		String inputPw = pencoder.encode(vo.getPw());
		vo.setPw(inputPw);
		
		return "redirect:/";
	}
}
