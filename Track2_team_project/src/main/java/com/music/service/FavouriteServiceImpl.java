package com.music.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.domain.LikeVO;
import com.music.mapper.FavouriteMapper;

import lombok.Setter;

@Service
public class FavouriteServiceImpl implements FavouriteService {

	@Setter(onMethod_ = @Autowired)
	FavouriteMapper mapper;
	
	@Override
	public String checkFavouriteThis(LikeVO vo) {
		return mapper.checkFavourite(vo);
	}
}
