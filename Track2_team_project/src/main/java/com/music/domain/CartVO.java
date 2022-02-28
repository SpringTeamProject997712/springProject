package com.music.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CartVO {

	private int cbno;
	private String id;
	private int pbno;
	private int quantity;
	private String result;
	private Date putdate;
	
	private int apbno;
	private int tpbno;
	
	private int aprice;
	private int tprice;
	private String image;
	private String timage;
	private String image_50;
	private String image_240;
	private String singer;
	private String aname;
	private String tname;
	
	private int duration;
	private String length;
	
	private int abno;
	private int tbno;
	
	private String category;
	
}
