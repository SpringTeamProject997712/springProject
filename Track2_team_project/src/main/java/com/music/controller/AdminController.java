package com.music.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.music.domain.AlbumVO;
import com.music.domain.CouponVO;
import com.music.domain.MemberVO;
import com.music.domain.NoticeVO;
import com.music.domain.OrderListVO;
import com.music.domain.OrderVO;
import com.music.domain.OrderdetailVO;
import com.music.domain.TrackVO;
import com.music.service.AlbumService;
import com.music.service.CartService;
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
	CartService cService;
	
	@Setter(onMethod_= @Autowired)
	NoticeService nService;
	
	
	@GetMapping("/admin") //????????? ???????????? ?????? (admin ????????? ?????????)
	public void adminIndex(Model model) {
		model.addAttribute("countUser", mService.countAllMember());
		model.addAttribute("countMoney", mService.countAllMoney());
	}
	
	@ResponseBody
	@GetMapping("/user_chart")
	public String userChart(){
		Gson gson = new Gson();
		String json = gson.toJson(mService.countMemberByRegdate());
		log.info(json);
		return json;
	}
	
	@ResponseBody
	@GetMapping("/money_chart")
	public String moneyChart(){
		Gson gson = new Gson();
		String json = gson.toJson(mService.countMoneyByRegdate());
		log.info(json);
		return json;
	}
	
	@ResponseBody
	@GetMapping("/ratio_order_chart")
	public String retioOrderChart(){
		Gson gson = new Gson();
		String json = gson.toJson(mService.ratioOrder());
		log.info(json);
		return json;
	}
	
	@ResponseBody
	@RequestMapping(value="/ratio_genre_chart", produces = "application/text; charset=utf8", method = RequestMethod.GET)
	public String retioGenreChart(){
		Gson gson = new Gson();
		String json = gson.toJson(mService.ratioOrderByGenre());
		log.info(json);
		return json;
	}
	
	@GetMapping("/adminLogout")// ????????????
	public String logOut(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		log.info(auth);
		if(auth!=null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
			log.info("???????????? ??????");
		}		
		return "redirect:/?pageName=menu_main";
	}
	
//=========================================?????????========================================	
	
	@GetMapping("/coupon/make_coupon")
	public void couponMaker() {
	}
	@PostMapping("/coupon/upload_coupon")
	public String insert_coupon(CouponVO cvo) {
		log.info(cvo);
		pService.insertCoupon(cvo);
		return "redirect:/admin/coupon/manage_coupon";
	}
	
	@GetMapping("/coupon/deletecoupon")
	public String delete_coupon(int couponnumber) {
		pService.deleteOneCoupon(couponnumber);
		return "redirect:/admin/coupon/manage_coupon";
	}
	@GetMapping("/coupon/view_coupon")
	public void view_coupon(int couponnumber,Model model) {
		model.addAttribute("view", pService.selectOneCoupon(couponnumber));
	}
	@PostMapping("/coupon/update_coupon")
	public String update_coupon(CouponVO cvo) {
		pService.updateOneCoupon(cvo);
		return "redirect:/admin/coupon/manage_coupon";
	}
	
	@GetMapping("/coupon/manage_coupon")
	public void view_coupon_list(Model model, Criteria cri) {
		log.info(cri);
		List<CouponVO> clist = pService.selectCouponWithPage(cri);
		log.info(clist);
		model.addAttribute("couponList", clist);
		model.addAttribute("pageMaker", pService.pagingCoupon(cri));
	}
//========================================???????????? =========================================	
	
	@GetMapping("/member/manage_member")//???????????? - ?????? ????????? ??????
	public void viewMemberList(Model model, Criteria cri) {
		
//		List<MemberVO> mlist = mService.viewMemberList();
		List<MemberVO> mlist = mService.viewMemberListWithPaging(cri);
		log.info(mlist);
		model.addAttribute("memberList", mlist);
		model.addAttribute("pageMaker", mService.pagingList(cri));
	}
	
	@GetMapping("/member/view_member")//???????????? - ?????? ???????????? ??????
	public void viewMemberDetail(Model model, String id ) {
		MemberVO member = mService.viewMember(id);
		model.addAttribute("member",member);
	}
	
	@GetMapping("/member/role_update")
	public void updateRole(String id, Model model) {
		
		String[] roles = {"ROLE_ADMIN","ROLE_USER","ROLE_UPLOADER"};
		
		MemberVO member = mService.viewMember(id);
		model.addAttribute("member",member);
		model.addAttribute("roles",roles);
	}
	
	@GetMapping("/order/manage_order")
	public void viewOrder(Model model, Criteria cri) {
		List<OrderVO> odlist = mService.viewOrderListWithPaging(cri);
		model.addAttribute("odlist", odlist);
		model.addAttribute("pageMaker", mService.pagingOrderList(cri));
	}
	
	@GetMapping("/order/manage_orderdetail")
	public void viewOrderdetail(Model model, OrderVO ovo) {
		
		List<OrderListVO> orderView = mService.orderDetailList(ovo);
		model.addAttribute("orderView", orderView);
		model.addAttribute("orderdetailView", mService.orderdetailTracksInAlbum(ovo));
	}
	
	
//=========================================???????????????========================================
	
	//??????
	
	@GetMapping("/album/manage_album") //???????????? - ?????? ????????? ??????
//	@RequestMapping(value="album/manage_album", method = {RequestMethod.GET,RequestMethod.POST})
	public void viewProductList(Model model, Criteria cri) {
		List<AlbumVO> alist = aService.viewAlbumListWithPaging(cri);
		model.addAttribute("albumList", alist);
		model.addAttribute("pageMaker", aService.pagingList(cri));
	}
	
	@GetMapping("/album/view_album") //???????????? - ?????? ???????????? ??????
	public void viewProductDetail(Model model, int abno) {
		AlbumVO album = aService.viewAlbumList(abno);
		model.addAttribute("album", album);
	}

	
	
	//??????
	
	@GetMapping("/track/manage_track") //???????????? - ?????? ????????? ??????
	public void viewTrackList(int abno, Model model) {
		String[] genre = {
				"??????????????????",
				"??????????????????",
				"???????????????",
				"?????????",
				"?????????",
				"?????????",
				"?????????",
				"??????????????????",
				"?????????"	
		};	
		List<TrackVO> tlist = tService.viewTrackListWithPaging(abno);
		model.addAttribute("trackList", tlist);
		model.addAttribute("genre", genre);
	}
	
	@GetMapping("/track/view_track") //???????????? - ?????? ???????????? ??????
	public void viewTrackDetail(int tbno, Model model) {
		String[] genre = {
				"??????????????????",
				"??????????????????",
				"???????????????",
				"?????????",
				"?????????",
				"?????????",
				"?????????",
				"??????????????????",
				"?????????"	
		};	
		TrackVO track = tService.viewTrackList(tbno);
		AlbumVO album = aService.viewAlbumList(track.getAbno());
		
		model.addAttribute("album", album);
		model.addAttribute("track", track);
		model.addAttribute("genre", genre);
		
	}
	

	//=========================================???????????????========================================
		
			
			@GetMapping("/notice/manage_notice") //???????????? - ?????? ????????? ??????
			public void viewNoticeList(Model model, Criteria cri) {
				List<NoticeVO> nlist = nService.viewNoticeListWithPaging(cri);
				model.addAttribute("noticeList", nlist);
				model.addAttribute("pageMaker", nService.pagingList(cri));
			}
			
			@GetMapping("/notice/view_notice") //???????????? - ?????? ???????????? ??????
			public void viewNoticeDetail(Model model, int wbno) {
				NoticeVO notice = nService.viewNoticeList(wbno);
				model.addAttribute("notice", notice);
			}
			
			@GetMapping("/notice/notice_write") //???????????? - ???????????? ??????????????? ??????
			public void newNoticeWrite() {
				
			}
			
			@PostMapping("/notice/notice_write")
			public String insertNotice(NoticeVO notice) {
				nService.insertNotice(notice);
				
				return "redirect:/admin/notice/manage_notice";

			}
			
			@PostMapping("/notice/deleteNotice")
			public String deleteNotice(@RequestParam("wbno") int wbno) {
				nService.deleteNotice(wbno);
				
				return "redirect:/admin/notice/manage_notice";
			}
			
			@PostMapping(value="/uploadSummernoteImageFile", produces = "application/json")
			@ResponseBody
			public JsonObject uploadSummernoteImageFile(@RequestParam("file") MultipartFile multipartFile) {
				
				JsonObject jsonObject = new JsonObject();
				
				String fileRoot = "C:\\summernote_image\\";	//????????? ?????? ?????? ??????
				String originalFileName = multipartFile.getOriginalFilename();	//???????????? ?????????
				String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//?????? ?????????
						
				String savedFileName = UUID.randomUUID() + extension;	//????????? ?????? ???
				
				File targetFile = new File(fileRoot + savedFileName);	
				
				try {
					InputStream fileStream = multipartFile.getInputStream();
					FileUtils.copyInputStreamToFile(fileStream, targetFile);	//?????? ??????
					jsonObject.addProperty("url", "/summernoteImage/"+savedFileName);
					jsonObject.addProperty("responseCode", "success");
						
				} catch (IOException e) {
					FileUtils.deleteQuietly(targetFile);	//????????? ?????? ??????
					jsonObject.addProperty("responseCode", "error");
					e.printStackTrace();
				}
				
				return jsonObject;
			}
			
			@Configuration
			public class WebMvcConfig implements WebMvcConfigurer {

				//web root??? ?????? ?????? ????????? ?????? ???????????? url??? ????????? ??? ????????? ??????
			    //?????? localhost:8090/summernoteImage/1234.jpg
			    //??? ???????????? C:/summernote_image/1234.jpg ????????? ????????????.
			    @Override
			    public void addResourceHandlers(ResourceHandlerRegistry registry) {
			        registry.addResourceHandler("/summernoteImage/**")
			                .addResourceLocations("file:///C:/summernote_image/");
			    }
			}

	
//=====================================????????? ????????? ????????????====================================
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
	@GetMapping("/chart/chart")
	public void viewCharts() {
	}
}
