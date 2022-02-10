package com.music.domain;

import lombok.Data;

@Data
public class CouponVO {

	private int couponnumber;
	private String couponname;
	private String couponid;
	private int saleper;
	private String type;
	
	//GetCounponVO
	private String id;
}
