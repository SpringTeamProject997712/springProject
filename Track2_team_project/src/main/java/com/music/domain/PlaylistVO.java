package com.music.domain;

import lombok.Data;

@Data
public class PlaylistVO {

	private int plbno;
	private String id;
	private String name;
	
//===============Detail====================
	
	private int pdbno;
	private int min_plbno;
	private int abno;
	private int tbno;
	
	private String image_240;

//제어자
	
	private int menu;
}
