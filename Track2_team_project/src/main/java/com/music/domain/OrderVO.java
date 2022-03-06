package com.music.domain;

import java.util.Date;

import lombok.Data;

@Data
public class OrderVO {

	private int rownum;
	private String orderid;
	private String id;
	private Date orderdate;
	private int amount;
	private String name;
	
	private String aname;
	private String tname;
	private String category;
	private int count;
}
