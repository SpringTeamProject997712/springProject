package com.music.service;

import java.util.List;

import com.music.domain.ChartVO;
import com.music.domain.FavouriteVO;
import com.music.domain.MemberVO;
import com.music.domain.Member_authVO;
import com.music.domain.OrderListVO;
import com.music.domain.OrderVO;
import com.music.domain.PlaylistVO;
import com.music.domain.ViewPlaylistDetailVO;
import com.music.utility.Criteria;
import com.music.utility.PageMaker;

public interface MemberService {

	//회원가입
	public int joinMember(MemberVO vo);
	
	//권한+멤버 정보 조회
	public MemberVO viewMember(String id);
	
	//아이디가 같은 멤버가 있는지 조회
	public int checkMemberWithId(String id);
	
	//멤버 리스트 조회
	public List<MemberVO> viewMemberList();
	
	//멤버 리스트 조회 + 페이징
	public List<MemberVO> viewMemberListWithPaging(Criteria cri);
	
	//멤버 정보 업데이트
	public int updateMember(MemberVO mvo);
	
	//멤버 정보 비활성화
	public int updateMemberActive(String id);
	
	//플레이리스트 불러오기
	public List<PlaylistVO> viewMyPlaylist(String id);
	
	//특정 플레이리스트 불러오기
	public List<ViewPlaylistDetailVO> viewOnePlaylist(int plbno);
	
	//플레이리스트의 리스트 불러오기 (my플레이리스트 페이지)
	public List<PlaylistVO> viewMyPlaylistList(String id);
	
	//플레이리스트 트랙 수 구하기(트랙 수 )
	public int countTrack(int plbno);
	
	//페이징
	public PageMaker pagingList(Criteria cri);
	//페이징
	public PageMaker pagingOrderList(Criteria cri);

	//멤버 삭제
	public int deleteMember(String id);
	
	//멤버 권한 전부 삭제
	public int deleteAuth(String id);
	
	//멤버에 권한 넣기
	public int insertAuth(Member_authVO vo);
	//좋아요 리스트 보기
	public List<FavouriteVO> favouritesView(String id);
	//이것저것
	public ViewPlaylistDetailVO myPlaylistView(int plbno);
	//플레이리스트 이미지 가져오기
	public ViewPlaylistDetailVO selectPlaylistImage(int plbno);
	//비번수정
	public int update_pw(MemberVO mvo);
	//오더 리스트
	public List<OrderVO> orderList(OrderVO ovo);
	
	//오더 상세 리스트
	public List<OrderListVO> orderDetailList(OrderVO ovo);
	
	//다운로드 리스트
	public List<OrderListVO> orderTrackList(OrderVO ovo);
	//오더 상세리스트의 앨범 안 트랙들
	public List<OrderListVO> orderdetailTracksInAlbum(OrderVO ovo);
	//앨범 다운 리스트
	public List<OrderListVO> orderAlbumList(OrderVO ovo);
	//일별로 가입자 수 가져오기
	public List<ChartVO> countMemberByRegdate();
	//일별로 매출액 가져오기
	public List<ChartVO> countMoneyByRegdate();
	//판매 앨범 비율
	public List<ChartVO> ratioOrder();
	//장르별 판매비율
	public List<ChartVO> ratioOrderByGenre();
	//모든 가입자 수
	public int countAllMember();
	//총매출
	public int countAllMoney();
	
	//어드민 오더 리스트
	public List<OrderVO> viewOrderListWithPaging(Criteria cri);
	//비번 초기화 메일보내기
	public void send_mail(MemberVO member);
	
}
