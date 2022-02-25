package com.music.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.domain.ReviewVO;
import com.music.mapper.ReviewMapper;

import lombok.Setter;


@Service
public class ReviewServiceImpl implements ReviewService {

	@Setter(onMethod_ = @Autowired)
	ReviewMapper mapper;
	
	@Override
	public int insertReview(ReviewVO vo) {
		return mapper.insertReview(vo);
	}
	@Override
	public List<ReviewVO> selectReview(int pbno) {
		return mapper.selectReview(pbno);
	}
	@Override
	public Integer countReview(int pbno) {
		return mapper.countReview(pbno);
	}
}
