package com.music.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.domain.AlbumVO;
import com.music.domain.GoodsVO;
import com.music.domain.ProductVO;
import com.music.domain.TrackVO;
import com.music.mapper.ProductMapper;

import lombok.Setter;


@Service
public class ProductServiceImpl implements ProductService {

	@Setter(onMethod_= @Autowired)
	private ProductMapper pMapper;
	
	@Override
	public ProductVO listProduct(int pbno) {
		return pMapper.listProduct(pbno);
	}
	
	@Override
	public void insertProduct(ProductVO product) {
		pMapper.insertProduct(product);
	}

	@Override
	public void insertAlbum(AlbumVO album) {
		pMapper.insertAlbum(album);
	}

	@Override
	public void insertTrack(TrackVO track) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertGoods(GoodsVO goods) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int searchPbno() {
		return pMapper.searchPbno();
	}
	
	

}
