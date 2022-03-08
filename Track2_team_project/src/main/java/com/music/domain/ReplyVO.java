package com.music.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReplyVO {

	private int rbno;
	private int wbno;
	private String id;
	private String content;
	private Date rdate;
	private String image;
}
