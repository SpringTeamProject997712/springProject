package com.music.service;

import com.music.domain.LikeVO;

public interface FavouriteService {

	public String checkFavouriteThis(LikeVO vo);
	public int updateYesToNo(LikeVO vo);
	public int updateNoToYes(LikeVO vo);
	public int createLike(LikeVO vo);
	
}
