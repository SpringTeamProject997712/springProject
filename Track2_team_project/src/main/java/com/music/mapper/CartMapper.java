package com.music.mapper;

import java.util.List;

import com.music.domain.CartVO;

public interface CartMapper {
	
	public void insertCart(CartVO cvo);
	//id로 카트리스트 찾기
	public List<CartVO> selectCartList(String id);
	
	public List<CartVO> cartList(String id);
	//id랑 pbno 받아서 삭제
	public int deleteOneCart(CartVO cvo);
	
	public List<CartVO> viewCartlist(String id);
	//카트 통으로 삭제
	public int deleteCart(String id);
}
