package com.music.service;

import java.util.List;

import com.music.domain.MemberVO;
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
	
	//페이징
	public PageMaker pagingList(Criteria cri);

	//멤버 삭제
	public int deleteMember(String id);
}
