package com.music.domain;

import java.util.Date;

import lombok.Data;

@Data
public class OrderListVO {
	
	private int rownum;
	private String orderid;
	private String id;
	private Date orderdate;
	private int amount;
	private String name;
	
	
	private int odbno;
	private int pbno;
	private int price;
	private int quantity;
	private String result;
	
	private String userId;
	
	private int abno;
	private String aname;
	private String singer;
	private String detail;
	private int aprice;
	private String image;
	private String image_240;
	private String image_50;
	private Date regdate;
//	album_singleVO 추가함 
	private int tbno;
	private String tdetail;
	private String genre;
	private String tname;
	private int tprice;
	private String songname;
	private String songrealname;
	private int duration;
	private String length;
	private String timage_50;
// getcountlikes
	private int likes;
	private int count;
	private int cbno;
	private Date putdate;
	
	private int apbno;
	private int tpbno;
	private String aimage;
	private String timage;
	
	private String category;
	
	private String pw;
	private String nickname;
	private String active;
	private String phone;
	private String email;
	private String zipnum;
	private String address1;
	private String address2;
}
