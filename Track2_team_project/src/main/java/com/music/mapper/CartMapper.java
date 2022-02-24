package com.music.mapper;

import java.util.List;

import com.music.domain.CartVO;

public interface CartMapper {
	
	public void insertCart(CartVO cvo);
	
	public List<CartVO> cartList(String id);
}
