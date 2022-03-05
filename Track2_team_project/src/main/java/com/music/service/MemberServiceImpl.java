package com.music.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.domain.FavouriteVO;
import com.music.domain.MemberVO;
import com.music.domain.Member_authVO;
import com.music.domain.OrderVO;
import com.music.domain.PlaylistVO;
import com.music.domain.ViewPlaylistDetailVO;
import com.music.mapper.CreatePlaylistMapper;
import com.music.mapper.MemberMapper;
import com.music.utility.Criteria;
import com.music.utility.PageMaker;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class MemberServiceImpl implements MemberService {

	@Setter(onMethod_ = @Autowired)
	MemberMapper mapper; 
	@Setter(onMethod_ = @Autowired)
	CreatePlaylistMapper cmapper; 
	
	//회원가입
	@Override
	public int joinMember(MemberVO vo) {
		int joinResult = mapper.registMember(vo);
		int authResult = mapper.registMemberAuth(vo); //멤버테이블 생성할때 권한 테이블도 생성함
		
		int result = 0;
		if(joinResult == authResult && joinResult > 0) {
			result=1;
		}
		return result;
	}
	
	@Override
	public MemberVO viewMember(String id) {
		return mapper.viewMember(id);
	}

	@Override
	public int checkMemberWithId(String id) {
		int result = 0;
		result=mapper.checkMemberWithId(id);
		return result;
	}
	
	@Override
	public List<MemberVO> viewMemberList() {
		List<MemberVO> mlist = mapper.viewMemberList();
		log.info("멤버 리스트 : "+mlist);
		return mlist;
	}
	
	@Override
	public List<MemberVO> viewMemberListWithPaging(Criteria cri) {
		return mapper.viewMemberListWithPaging(cri);
	}
	
	@Override
	public PageMaker pagingList(Criteria cri) {
		int amount=mapper.countMember(cri);
		PageMaker pageMaker = new PageMaker(cri,amount);
		return pageMaker;
	}
	
	@Override
	public List<PlaylistVO> viewMyPlaylist(String id) {
		return cmapper.selectPlaylistwithId(id);
	}
	
	@Override
	public List<PlaylistVO> viewMyPlaylistList(String id) {
		return cmapper.readPlaylistsWithId(id);
	}
	
	@Override
	public int updateMember(MemberVO mvo) {
		int result=mapper.updateMember(mvo);
		return result;
	}
	
	@Override
	public int deleteMember(String id) {
		return mapper.deleteMember(id);
	}
	
	@Override
	public int updateMemberActive(String id) {
		return mapper.updateMemberActive(id);
	}
	
	@Override
	public List<ViewPlaylistDetailVO> viewOnePlaylist(int plbno) {
		return cmapper.selectOnePlaylist(plbno);
	}
	@Override
	public int countTrack(int plbno) {
		return cmapper.countTrack(plbno)!=null?cmapper.countTrack(plbno):0;
	}
	
	@Override
	public int deleteAuth(String id) {
		return mapper.deleteAuth(id);
	}
	@Override
	public int insertAuth(Member_authVO vo) {
		return mapper.insertAuth(vo);
	}
	@Override
	public List<FavouriteVO> favouritesView(String id) {
		return mapper.favouritesView(id);
	}

	@Override
	public List<OrderVO> orderList(OrderVO ovo) {
		return mapper.orderList(ovo);
	}
}
