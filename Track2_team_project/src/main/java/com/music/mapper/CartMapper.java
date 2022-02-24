package com.music.mapper;

import java.util.List;

import com.music.domain.CartVO;

public interface CartMapper {
	
	public void insertCart(CartVO cvo);
	//id로 카트리스트 찾기
	public List<CartVO> selectCartList(String id);
	
	public List<CartVO> cartList(String id);
}
