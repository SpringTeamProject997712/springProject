package com.music.mapper;

import com.music.domain.MemberVO;

public interface MemberMapper {

	public int registMember(MemberVO vo);
	public int registMemberAuth(MemberVO vo);
}
