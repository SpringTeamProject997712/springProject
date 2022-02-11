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
	private int serial_no;
	
	
//	private int pbno;
//	private String name;
//	private String kind;
//	private String image;
//	private String singer;
//	private String songname;
//	private String regdate;
//	private String onlines;
	
}
