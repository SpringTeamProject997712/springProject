package com.music.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class AlbumVO {
	
	private int pbno;
	private String name;
	private String kind;
	private String image;
	private String detail;
	private int price1;
	private int price2;
	private String releasedate;
	private int labelnum;
	private String singer;
	private String songname;
	private String sonrealname;
	private Date regdate;
	private int donate;
	private int viewcount;
	private int recommend;
	private int staravg;
	private String onlines;
	private int stock;
	
}
