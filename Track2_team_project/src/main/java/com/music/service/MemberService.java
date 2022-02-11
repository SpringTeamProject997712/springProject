package com.music.service;

import com.music.domain.MemberVO;

public interface MemberService {

	//회원가입
	public int joinMember(MemberVO vo);
	
	//권한조회
	public MemberVO viewMember(String id);
}
