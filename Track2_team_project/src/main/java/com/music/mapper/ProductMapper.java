package com.music.mapper;

import com.music.domain.AlbumVO;
import com.music.domain.GoodsVO;
import com.music.domain.ProductVO;
import com.music.domain.TrackVO;

public interface ProductMapper {

	//카테고리 보기
	public ProductVO listProduct(int pbno);
	public int searchPbno();
	
	//각종 넣기
	public void insertProduct(ProductVO product);
	public void insertAlbum(AlbumVO album);
	public void insertTrack(TrackVO track);
	public void insertGoods(GoodsVO goods);
	
}
