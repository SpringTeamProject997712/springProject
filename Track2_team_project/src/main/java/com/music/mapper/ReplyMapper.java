package com.music.mapper;

import java.util.List;

import com.music.domain.ReplyVO;

public interface ReplyMapper {

	public List<ReplyVO> selectReply(int wbno);
	public int insertReply(ReplyVO vo);
	public Integer countReply(int wbno);
}
