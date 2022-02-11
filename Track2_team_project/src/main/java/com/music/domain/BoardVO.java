package com.music.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {

	private int wbno;
	private String id;
	private int bbno;
	private String header;
	private String title;
	private String content;
	private Date indate;
	private int viewcount;
	private String filename;
}
