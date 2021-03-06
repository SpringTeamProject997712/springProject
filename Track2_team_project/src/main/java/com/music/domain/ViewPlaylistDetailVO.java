package com.music.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ViewPlaylistDetailVO {

	private int plbno;
	private String name;
	private String id;
	private int abno;
	private int pdbno;
	private int tbno;
	private String tname;
	private String genre;
	private String detail;
	private String image_240;
	private int price;
	private int count;
	private String songname;
	private String songrealname;
	private int pbno;
	private String aname;
	private String singer;
	private int aprice;
	private String image;
	private Date regdate; 
	private int duration;
	private String length;
}
