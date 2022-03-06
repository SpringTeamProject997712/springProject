package com.music.mapper;


import java.util.List;

import com.music.domain.AlbumVO;
import com.music.domain.CouponVO;
import com.music.domain.GoodsVO;
import com.music.domain.ProductVO;
import com.music.domain.TrackVO;
import com.music.utility.Criteria;

public interface ProductMapper {

	//카테고리 보기
	public List<ProductVO> listProduct();
	public int searchPbno();
	public List<AlbumVO> searchAbno();
	public ProductVO selectOneProduct(int pbno);
	public List<CouponVO> selectCouponWithPage(Criteria cri);
	public Integer countCoupon(Criteria cri);
	public CouponVO selectOneCoupon(int couponnumber);
	
	//각종 넣기
	public void insertProduct(ProductVO product);
	public void insertAlbum(AlbumVO album);
	public void insertTrack(TrackVO track);
	public void insertGoods(GoodsVO goods);
	public int insertCoupon(CouponVO cvo);
	
	//업데이트
	public int updateOneCoupon(CouponVO cvo);
	
	//삭제
	public void deleteProduct(int pbno);
	public List<AlbumVO> selectBestAlbumList();
	public int deleteOneCoupon(int couponnumber);
	
	
	
}
