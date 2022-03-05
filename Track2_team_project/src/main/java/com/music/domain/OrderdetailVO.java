package com.music.domain;


import lombok.Data;

@Data
public class OrderdetailVO {

	private int odbno;
	private String orderid;
	private int pbno;
	private int price;
	private int quantity;
	private String result;
	
	private String userId;
	
}
