package com.music.domain;

import java.util.Date;

import lombok.Data;

@Data
public class OrderVO {

	private int obno;
	private String id;
	private Date orderdate;
	private int amount;
	
	//OrderDetail
	
	private int odbno;
	private int pbno;
	private int price;
	private int quantity;
	private String result;
	
}
