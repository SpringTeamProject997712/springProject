package com.music.service;

import java.util.List;

import com.music.domain.CartVO;

public interface CartService {

	public void insertCart(CartVO cvo);
	
	public List<CartVO> cartList(String id);
	
	public List<CartVO> viewCartlist(String id);

	public int deleteOneCart(CartVO cvo);
	
	public int deleteCart(String id);
}
