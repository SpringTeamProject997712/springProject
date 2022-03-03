package com.music.service;

import java.util.List;

import com.music.domain.NoticeVO;
import com.music.utility.Criteria;
import com.music.utility.PageMaker;

public interface NoticeService {

	// 공지 업데이트
	public void insertNotice(NoticeVO notice);

	// 공지 리스트
	public List<NoticeVO> listNotice();

	// 공지 상세보기
	public NoticeVO readNotice(int wbno);
	

	//키워드로 검색
	public List<NoticeVO> searchNoticeWithTitle(String title);
		
	//어드민
	
	//공지 관리자 리스트
	public List<NoticeVO> viewNoticeListWithPaging(Criteria cri);
		
	//페이징
	public PageMaker pagingList(Criteria cri);
		
	//공지 세부사항
	public NoticeVO viewNoticeList(int wbno);
		
	//공지 수정
	public int updateNotice(NoticeVO nvo);
}
