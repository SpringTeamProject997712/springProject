package com.music.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.music.domain.MemberVO;
import com.music.security.domain.CustomUser;
import com.music.service.MemberService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailService implements UserDetailsService {
	
	@Setter(onMethod_ = @Autowired)
	private MemberService service;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		log.warn("유저 네임 보기 : " + username);
		//날릴친구들
		
		
		
		
		
		//진짜 친구
		MemberVO mvo = service.viewMember(username);
		
		log.warn("회원 정보 : "+mvo);
		
		return mvo == null?null:new CustomUser(mvo);
		
	}
	
	
//	
//	
//	@Override
//	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//		MemberVO tvo = mapper.read(username);
//		return (tvo == null)?null:new CustomUser(tvo);
//	}
}
