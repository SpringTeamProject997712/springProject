package com.music.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.domain.ReplyVO;
import com.music.mapper.ReplyMapper;

import lombok.Setter;


@Service
public class ReplyServiceImpl implements ReplyService {

	@Setter(onMethod_ = @Autowired)
	ReplyMapper mapper;
	
	@Override
	public int insertReply(ReplyVO vo) {
		return mapper.insertReply(vo);
	}
	@Override
	public List<ReplyVO> selectReply(int wbno) {
		return mapper.selectReply(wbno);
	}
	@Override
	public Integer countReply(int wbno) {
		return mapper.countReply(wbno);
	}
}