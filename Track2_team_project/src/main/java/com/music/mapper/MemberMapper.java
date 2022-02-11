package com.music.mapper;

import com.music.domain.MemberVO;

public interface MemberMapper {

	public int registMember(MemberVO vo); //회원가입
	public int registMemberAuth(MemberVO vo); //권한 추가 (ROLE_MEMBER)
	public MemberVO viewMember(String id); //id를 통해 유저 정보 가져오기
}