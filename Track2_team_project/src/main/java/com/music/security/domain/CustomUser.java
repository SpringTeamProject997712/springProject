package com.music.security.domain;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import com.music.domain.MemberVO;

import lombok.Getter;
import lombok.extern.log4j.Log4j;

@Log4j
@Getter
public class CustomUser extends User {
	
	private static final long serialVersionUID = 1L;
	
	private MemberVO member;
	
	public CustomUser(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
		//user 클래스를 상속하기 때문에 부모클래스 생성자를 호출
	}
	
	public CustomUser(MemberVO mvo) {
		super(mvo.getId(), mvo.getPw(), mvo.getAuthList().stream().map(auth ->
		new SimpleGrantedAuthority(auth.getAuth())).collect(Collectors.toList()));
		log.info(mvo);
		this.member=mvo;
	}
	
}
