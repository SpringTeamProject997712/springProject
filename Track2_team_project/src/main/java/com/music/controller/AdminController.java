package com.music.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.music.domain.MemberVO;
import com.music.service.MemberService;
import com.music.utility.Criteria;
import com.music.utility.PageMaker;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/admin/*")
@Log4j
public class AdminController {
	
	@Setter(onMethod_ = @Autowired)
	MemberService mService;
	
	@GetMapping("/admin") //어드민 페이지로 가기 (admin 로그인 첫화면)
	public void adminIndex() {
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
//========================================멤버관리 =========================================	
	
	@GetMapping("/member/manage_member")//맴버관리 - 멤버 리스트 보기
	public void viewMemberList(Model model, Criteria cri) {
		
//		List<MemberVO> mlist = mService.viewMemberList();
		List<MemberVO> mlist = mService.viewMemberListWithPaging(cri);
		log.info(mlist);
		model.addAttribute("memberList", mlist);
		model.addAttribute("pageMaker", mService.pagingList(cri));
	}
	
	@GetMapping("/member/view_member")//맴버관리 - 멤버 리스트 보기
	public void viewMemberDetail(Model model, String id ) {
		MemberVO member = mService.viewMember(id);
		model.addAttribute("member",member);
	}
	
//=========================================상품관리용========================================

	@GetMapping("product/manage_product") //상품관리 - 상품 리스트 보기
	public void viewProductList() {
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
	@GetMapping("/forms/input-group")
	public void viewInput_group() {
	}
	@GetMapping("/forms/layout")
	public void viewLayout() {
	}
	@GetMapping("/forms/select")
	public void viewSelect() {
	}
	@GetMapping("/buttons/dropdowns")
	public void viewDrodowns() {
	}
	@GetMapping("/buttons/buttons")
	public void viewButtons() {
	}
}
