package com.music.mapper;

import com.music.domain.MemberVO;

public interface MemberMapper {

	public int registerMember(MemberVO vo);
	public int registerMemberAuth(MemberVO vo);
}
