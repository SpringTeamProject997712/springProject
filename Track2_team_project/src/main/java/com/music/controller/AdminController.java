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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartRequest;

import com.music.domain.AlbumVO;
import com.music.domain.MemberVO;
import com.music.domain.NoticeVO;
import com.music.domain.TrackVO;
import com.music.service.AlbumService;
import com.music.service.MemberService;
import com.music.service.NoticeService;
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
	
	@Setter(onMethod_= @Autowired)
	NoticeService nService;
	
	
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
		return "redirect:/?pageName=menu_main";
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
//	@RequestMapping(value="album/manage_album", method = {RequestMethod.GET,RequestMethod.POST})
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
		String[] genre = {
				"ロマンチック",
				"ヒップホップ",
				"ダンシング",
				"ロック",
				"ジャズ",
				"メタル",
				"ポップ",
				"インディーズ",
				"ソウル"	
		};	
		TrackVO track = tService.viewTrackList(tbno);
		AlbumVO album = aService.viewAlbumList(track.getAbno());
		
		model.addAttribute("album", album);
		model.addAttribute("track", track);
		model.addAttribute("genre", genre);
		
	}
	

	//=========================================공지관리용========================================
		
			
			@GetMapping("/notice/manage_notice") //공지관리 - 공지 리스트 보기
			public void viewNoticeList(Model model, Criteria cri) {
				List<NoticeVO> nlist = nService.viewNoticeListWithPaging(cri);
				model.addAttribute("noticeList", nlist);
				model.addAttribute("pageMaker", nService.pagingList(cri));
			}
			
			@GetMapping("/notice/view_notice") //공지관리 - 공지 세부사항 보기
			public void viewNoticeDetail(Model model, int wbno) {
				NoticeVO notice = nService.viewNoticeList(wbno);
				model.addAttribute("notice", notice);
			}
			
			@GetMapping("/notice/notice_write") //공지작성 - 신규공지 작성페이지 이동
			public void newNoticeWrite() {
				
			}
			
			@PostMapping("/notice/notice_write")
			public String insertNotice(NoticeVO notice) {
				nService.insertNotice(notice);
						
				return "redirect:/admin/notice/manage_notice";
			}
			
			@PostMapping("/deleteNotice")
			public String deleteNotice(@RequestParam("wbno") int wbno) {
				
				nService.deleteNotice(wbno);
				
				return "redirect:/admin/notice/manage_notice";
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
