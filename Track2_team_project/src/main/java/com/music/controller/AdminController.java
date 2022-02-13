package com.music.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.music.service.MemberService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/admin/*")
@Log4j
public class AdminController {
	
	@Setter(onMethod_ = @Autowired)
	MemberService mService;
	
	@GetMapping("/admin") //어드민 페이지로 가기 (admin 로그인 첫화면)
	public void adminIndex(Model model) {
		model.addAttribute("memberList", mService.viewMemberList());
	}
	
	@GetMapping("/adminLogout")// 로그아웃
	public String logOut(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		log.info(auth);
		if(auth!=null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
			log.info("로그아웃 성공");
		}		
		return "redirect:/";
	}
	
	@GetMapping("/member/manageMember")//맴버관리
	public void viewManageMember() {
		
	}
	
	
//=====================================템플릿 파악용 컨트롤러====================================
	@GetMapping("/base/list-group")
	public void viewList_group() {
	}
	@GetMapping("/base/tables")
	public void viewTables() {
	}
	@GetMapping("/base/pagination")
	public void viewPaging() {
	}
	@GetMapping("/base/spinners")
	public void viewSpinners() {
	}
	@GetMapping("/base/tabs")
	public void viewTabs() {
	}
	@GetMapping("/base/carousel")
	public void viewCarousels() {
	}
	@GetMapping("/base/cards")
	public void viewCards() {
	}
}
