package com.music.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.music.domain.MemberVO;
import com.music.mapper.MemberMapper;
import com.music.security.domain.CustomUser;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailService implements UserDetailsService {
	
	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		MemberVO mvo = mapper.viewMember(username);
		
		log.warn("회원 정보 : "+mvo);
		
		return mvo == null ? null:new CustomUser(mvo);
		
	}
	
	
//	
//	
//	@Override
//	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//		MemberVO tvo = mapper.read(username);
//		return (tvo == null)?null:new CustomUser(tvo);
//	}
}
