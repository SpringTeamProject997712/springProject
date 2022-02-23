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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.music.domain.AlbumVO;
import com.music.domain.MemberVO;
import com.music.domain.Member_authVO;
import com.music.domain.TrackVO;
import com.music.service.AlbumService;
import com.music.service.MemberService;
import com.music.service.ProductService;
import com.music.service.TrackService;
import com.music.utility.Criteria;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/admin/*")
@Log4j
public class AdminController {
	
	@Setter(onMethod_ = @Autowired)
	MemberService mService;
	
	@Setter(onMethod_= @Autowired)
	ProductService pService;
	
	@Setter(onMethod_= @Autowired)
	AlbumService aService;
	
	@Setter(onMethod_= @Autowired)
	TrackService tService;
	
	
	
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
	
//========================================유저관리 =========================================	
	
	@GetMapping("/member/manage_member")//유저관리 - 유저 리스트 보기
	public void viewMemberList(Model model, Criteria cri) {
		
//		List<MemberVO> mlist = mService.viewMemberList();
		List<MemberVO> mlist = mService.viewMemberListWithPaging(cri);
		log.info(mlist);
		model.addAttribute("memberList", mlist);
		model.addAttribute("pageMaker", mService.pagingList(cri));
	}
	
	@GetMapping("/member/view_member")//유저관리 - 유저 세부사항 보기
	public void viewMemberDetail(Model model, String id ) {
		MemberVO member = mService.viewMember(id);
		model.addAttribute("member",member);
	}
	
	@GetMapping("/member/role_update")
	public void updateRole(String id, Model model) {
		
		String[] roles = {"ROLE_ADMIN","ROLE_USER","ROLE_MOLU"};
		
		MemberVO member = mService.viewMember(id);
		model.addAttribute("member",member);
		model.addAttribute("roles",roles);
	}
	
//=========================================상품관리용========================================
	
	//앨범
	
	@GetMapping("/album/manage_album") //상품관리 - 상품 리스트 보기
	public void viewProductList(Model model, Criteria cri) {
		List<AlbumVO> alist = aService.viewAlbumListWithPaging(cri);
		model.addAttribute("albumList", alist);
		model.addAttribute("pageMaker", aService.pagingList(cri));
	}
	
	@GetMapping("/album/view_album") //상품관리 - 상품 세부사항 보기
	public void viewProductDetail(Model model, int abno) {
		AlbumVO album = aService.viewAlbumList(abno);
		model.addAttribute("album", album);
	}

	
	
	//트랙
	
	@GetMapping("/track/manage_track") //상품관리 - 상품 리스트 보기
	public void viewTrackList(int abno, Model model) {
		List<TrackVO> tlist = tService.viewTrackListWithPaging(abno);
		model.addAttribute("trackList", tlist);
	}
	
	@GetMapping("/track/view_track") //상품관리 - 상품 세부사항 보기
	public void viewTrackDetail(int tbno, Model model) {
		String[] genre = {"장르1","장르2","장르3","장르4"};
		TrackVO track = tService.viewTrackList(tbno);
		AlbumVO album = aService.viewAlbumList(track.getAbno());
		
		model.addAttribute("album", album);
		model.addAttribute("track", track);
		model.addAttribute("genre", genre);
		
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
