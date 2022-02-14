package com.music.mapper;

import com.music.domain.ProductVO;

public interface ProductMapper {

	//카테고리 보기
	public ProductVO readProduct(int pbno);
	
}
