package com.music.service;

import java.util.List;

import com.music.domain.ReviewVO;

public interface ReviewService {

	public List<ReviewVO> selectReview(int pbno);
	public int insertReview(ReviewVO vo);
}
