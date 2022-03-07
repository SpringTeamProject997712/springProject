package com.music.mapper;

import java.util.List;

import com.music.domain.CartVO;
import com.music.domain.CouponVO;
import com.music.domain.OrderVO;
import com.music.domain.OrderdetailVO;

public interface CartMapper {
	
	public void insertCart(CartVO cvo);
	//id로 카트리스트 찾기
	public List<CartVO> selectCartList(String id);
	
	public List<CartVO> cartList(String id);
	//id랑 cbno 받아서 삭제
	public int deleteOneCart(CartVO cvo);
	//id랑 pbno 받아서 삭제
	public int deleteOneCartWithPbno(CartVO cvo);
	
	public List<CartVO> viewCartlist(String id);
	//카트 통으로 삭제
	public int deleteCart(String id);
	
	public void orderInfo(OrderVO ovo);
	
	public void orderInfo_detail(OrderdetailVO odvo);
	
	public void cartAllDelete(String id);
	
	public List<CouponVO> getCoupons(String id);
	
	public Integer searchCouponIsRealWithCouponid(String couponid);
	
	public int setCoupon(CouponVO cvo);
	
	public int deleteUsedCoupon(CouponVO cvo);
}
