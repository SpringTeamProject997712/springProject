package com.music.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.domain.CartVO;
import com.music.mapper.CartMapper;

import lombok.Setter;

@Service
public class CartServiceImpl implements CartService {

	@Setter(onMethod_= @Autowired)
	private CartMapper cmapper;
	
	@Override
	public void insertCart(CartVO cvo) {
		cmapper.insertCart(cvo);
	}

	@Override
	public List<CartVO> cartList(String id) {
		return cmapper.cartList(id);
	}

}
