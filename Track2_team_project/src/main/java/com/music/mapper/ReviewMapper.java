package com.music.mapper;

import java.util.List;

import com.music.domain.ReviewVO;

public interface ReviewMapper {

	public List<ReviewVO> selectReview(int pbno);
	public int insertReview(ReviewVO vo);
	public Integer countReview(int pbno);
}
