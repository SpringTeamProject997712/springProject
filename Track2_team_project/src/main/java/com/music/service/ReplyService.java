package com.music.service;

import java.util.List;

import com.music.domain.ReplyVO;

public interface ReplyService {

	public List<ReplyVO> selectReply(int wbno);
	public int insertReply(ReplyVO vo);
	public Integer countReply(int wbno);
}
