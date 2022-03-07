package com.music.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class OrderVO {

	private int rownum;
	private int rn;
	private String orderid;
	private String id;
	private Date orderdate;
	private int amount;
	private String name;

	private String pw;
	private String nickname;
	private String active;
	private String phone;
	private String email;
	private String zipnum;
	private String address1;
	private String address2;
	private Date regdate;
	private String image;
	private int total;
	
	private List<Member_authVO> authList;
	private String aname;
	private String tname;
	private String category;
	private int count;
}
