package com.music.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewVO {

	private int rbno;
	private String id;
	private int pbno;
	private String title;
	private String image;
	private String content;
	private int stargage;
	private Date indate;
	private String active;
}
