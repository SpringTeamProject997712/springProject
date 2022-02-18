package com.music.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.mapper.FavouriteMapper;

import lombok.Setter;

@Service
public class FavouriteServiceImpl implements FavouriteService {

	@Setter(onMethod_ = @Autowired)
	FavouriteMapper mapper;
	
	@Override
	public String checkFavouriteThis(int pbno, String id) {
		return mapper.checkFavourite(pbno, id);
	}
}
