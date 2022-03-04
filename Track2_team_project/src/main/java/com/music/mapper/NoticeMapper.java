package com.music.mapper;

import java.util.List;

import com.music.domain.AlbumVO;
import com.music.domain.NoticeVO;
import com.music.utility.Criteria;

public interface NoticeMapper {
	
	//공지 업데이트	
	public void insertNotice(NoticeVO notice);
	
	//공지 리스트
	public List<NoticeVO> listNotice();
	
	//공지 상세보기
	public NoticeVO readNotice(int wbno);
	
	//키워드로 검색
	public List<NoticeVO> searchNoticeWithTitle(String title);
	
	
	//관리자
	
	//관리자 공지 리스트
	public List<NoticeVO> viewNoticeListWithPaging(Criteria cri);
		
	//수정 보기
	public NoticeVO viewNotice(int wbno);
		
	//페이징
	public int countNotice(Criteria cri);
		
	//공지 수정
	public int updateNotice(NoticeVO nvo);
	
	//공지 삭제
	public int deleteNotice(int wbno);
	
}
