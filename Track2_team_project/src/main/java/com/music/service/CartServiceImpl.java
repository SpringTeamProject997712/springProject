package com.music.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.domain.CartVO;
import com.music.domain.OrderVO;
import com.music.domain.OrderdetailVO;
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
	@Override
	public List<CartVO> viewCartlist(String id) {
		return cmapper.viewCartlist(id);
	}
	@Override
	public int deleteOneCart(CartVO cvo) {
		return cmapper.deleteOneCart(cvo);
	}
	@Override
	public int deleteCart(String id) {
		return cmapper.deleteCart(id);
	}

	@Override
	public void orderInfo(OrderVO ovo) {
		cmapper.orderInfo(ovo);
	}

	@Override
	public void orderInfo_detail(OrderdetailVO odvo) {
		cmapper.orderInfo_detail(odvo);
	}

}
