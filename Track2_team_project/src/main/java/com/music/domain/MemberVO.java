package com.music.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class MemberVO {

	private String id;
	private String pw;
	private String nickname;
	private String name;
	private String active;
	private String phone;
	private String email;
	private String zipnum;
	private String address1;
	private String address2;
	private Date regdate;
	private String image;
	
	private List<Member_authVO> authList;
}
