package com.music.mapper;

import com.music.domain.LikeVO;

public interface FavouriteMapper {

	public String checkFavourite(LikeVO vo);
	//likes 1 -> 0 
	public int updateYesToNo(LikeVO vo);
	//likes 0 -> 1
	public int updateNoToYes(LikeVO vo);
	//처음으로 좋아요를 눌렀을때
	public int createLike(LikeVO vo);
}
