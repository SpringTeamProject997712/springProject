package com.music.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/admin/**")
@Log4j
public class AdminController {

	
	@GetMapping("admin/admin") //어드민 페이지로 가기 (admin 로그인 첫화면)
	public void adminIndex() {
		
	}
	
	@GetMapping("admin/adminLogout")//
	public String logOut(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		log.info(auth);
		if(auth!=null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
			log.info("로그아웃 성공");
		}		
		return "redirect:/";
	}
	
	
	
	//템플릿 파악용 컨트롤러
	@GetMapping("admin/base/list-group")
	public void viewList_group() {
		
	}
	@GetMapping("admin/base/tables")
	public void viewTables() {
		
	}
}
