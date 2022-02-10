package com.music.domain;

import java.util.Date;

import lombok.Data;

@Data
public class QaVO {

	private int qbno;
	private String id;
	private String title;
	private String content;
	private Date indate;
	private String pass;
}
