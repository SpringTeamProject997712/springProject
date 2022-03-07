package com.music.service;

import java.util.List;

import com.music.domain.AlbumVO;
import com.music.domain.CouponVO;
import com.music.domain.GoodsVO;
import com.music.domain.ProductVO;
import com.music.domain.TrackVO;
import com.music.utility.Criteria;
import com.music.utility.PageMaker;

public interface ProductService {

	public List<ProductVO> listProduct();
	
	//제품 업데이트
	public int searchPbno();
	public List<AlbumVO> searchAbno();
	
	
	//제품 업데이트
	public void insertProduct(ProductVO product);
	
	
	//엘범 업데이트
	public void insertAlbum(AlbumVO album);
	
	//트랙 업데이트
	public void insertTrack(TrackVO track);
	
	//굿즈 업데이트
	public void insertGoods(GoodsVO goods);
	
	//카트 중복체크기능
	public int checkPbnoForCart(ProductVO pvo);
	
	//삭제
	public void deleteProduct(int pbno);
	public int deleteOneCoupon(int couponnumber);
	
	
	public List<CouponVO> selectCouponWithPage(Criteria cri);
	public CouponVO selectOneCoupon(int couponnumber);
	public int insertCoupon(CouponVO cvo);
	public int updateOneCoupon(CouponVO cvo);
	
	public PageMaker pagingCoupon(Criteria cri);
}
