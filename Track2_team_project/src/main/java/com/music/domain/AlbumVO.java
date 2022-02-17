package com.music.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class AlbumVO {
	
	private int abno;
	private String name;
	private String singer;
	private String detail;
	private int price;
	private String image;
	private Date regdate;
	private int pbno;
//	album_singleVO 추가함 
	private int tbno;
	private String tdetail;
	private String genre;
	private String tname;
	private int tprice;
	private String songname;
	private String songrealname;
// getcountlikes
	private int likes;
	
//	private int pbno;
//	private String name;
//	private String kind;
//	private String image;
//	private String detail;
//	private int price1;
//	private int price2;
//	private String releasedate;
//	private int labelnum;
//	private String singer;
//	private String songname;
//	private String songrealname;
//	private String regdate;
//	private int donate;
//	private int viewcount;
//	private int recommend;
//	private int staravg;
//	private String onlines;
//	private int stock;

}
