package com.music.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.domain.MemberVO;
import com.music.mapper.MemberMapper;

import lombok.Setter;

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
}
