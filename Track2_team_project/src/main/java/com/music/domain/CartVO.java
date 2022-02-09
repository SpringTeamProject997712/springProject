package com.music.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CartVO {

	private int cbno;
	private String id;
	private int pbno;
	private int quantity;
	private String result;
	private Date putdate;
}
