package com.music.domain;

import lombok.Data;

@Data
public class NoticeVO {

	private int wbno;
	private String id;
	private int bbno;
	private String header;
	private String title;
	private String content;
	private String indate;
	private int viewcount;
	private String filename;
    
}