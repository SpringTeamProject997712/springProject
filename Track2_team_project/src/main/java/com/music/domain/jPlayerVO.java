package com.music.domain;

import lombok.Data;

@Data
public class jPlayerVO { //jplayer 음악 재생 리스트

	private int tbno;
	private String title;
	private String artist;
	private String mp3;
	private String option;
	private String image;
	
	private String length;
	
}

