package com.music.domain;

import java.util.Date;

import lombok.Data;

@Data
public class OrderVO {

	private int obno;
	private String id;
	private Date orderdate;
	private int amount;
	
}
