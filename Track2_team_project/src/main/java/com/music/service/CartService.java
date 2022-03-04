package com.music.service;

import java.util.List;

import com.music.domain.CartVO;
import com.music.domain.OrderVO;
import com.music.domain.OrderdetailVO;

public interface CartService {

	public void insertCart(CartVO cvo);
	
	public List<CartVO> cartList(String id);
	
	public List<CartVO> viewCartlist(String id);

	public int deleteOneCart(CartVO cvo);
	
	public int deleteCart(String id);
	
	public void orderInfo(OrderVO ovo);
	
	public void orderInfo_detail(OrderdetailVO odvo);
	
	public void cartAllDelete(String id);
}
