package com.music.service;

import com.music.domain.MemberVO;

public interface MemberService {

	//회원가입
	public int joinMember(MemberVO vo);
	
	//권한+멤버 정보 조회
	public MemberVO viewMember(String id);
	
	//아이디가 같은 멤버가 있는지 조회
	public int checkMemberWithId(String id);
}
