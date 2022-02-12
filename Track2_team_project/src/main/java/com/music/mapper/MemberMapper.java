package com.music.mapper;

import java.util.List;

import com.music.domain.MemberVO;

public interface MemberMapper {

	public int registMember(MemberVO vo); //회원가입
	public int registMemberAuth(MemberVO vo); //권한 추가 (ROLE_MEMBER)
	public MemberVO viewMember(String id); //id를 통해 유저 정보 가져오기
	public List<MemberVO> viewMemberList(); //멤버 리스트 가져오기
	public int checkMemberWithId(String id); //같은 아이디를 가진 멤버가 있는지 체크하기 있으면 1 없으면 0이 나옴
}