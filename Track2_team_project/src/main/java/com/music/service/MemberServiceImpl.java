package com.music.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.domain.MemberVO;
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
	public int updateMember(MemberVO mvo) {
		int result=mapper.updateMember(mvo);
		return result;
	}
	
	@Override
	public int deleteMember(String id) {
		return mapper.deleteMember(id);
	}
}
