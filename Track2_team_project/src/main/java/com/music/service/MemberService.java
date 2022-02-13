package com.music.service;

import java.util.List;

import com.music.domain.MemberVO;

public interface MemberService {

	//회원가입
	public int joinMember(MemberVO vo);
	
	//권한+멤버 정보 조회
	public MemberVO viewMember(String id);
	
	//아이디가 같은 멤버가 있는지 조회
	public int checkMemberWithId(String id);
	
	//멤버 리스트 조회
	public List<MemberVO> viewMemberList();
	
	//멤버 정보 업데이트
	public int updateMember(MemberVO mvo);
}
