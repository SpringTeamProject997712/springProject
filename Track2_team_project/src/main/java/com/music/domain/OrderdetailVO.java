package com.music.domain;


import lombok.Data;

@Data
public class OrderdetailVO {

	private int odbno;
	private int pbno;
	private int price;
	private int quantity;
	private String result;
	
}
