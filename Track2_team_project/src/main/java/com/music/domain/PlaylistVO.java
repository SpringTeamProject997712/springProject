package com.music.domain;

import lombok.Data;

@Data
public class PlaylistVO {

	private int plbno;
	private String id;
	private String name;
	
//===============Detail====================
	
	private int pdbno;
	private int abno;
	private int tbno;
	
}
