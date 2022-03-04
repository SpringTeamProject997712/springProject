package com.music.service;

import java.util.List;

import com.music.domain.AlbumVO;
import com.music.domain.TrackVO;
import com.music.utility.Criteria;
import com.music.utility.PageMaker;

public interface AlbumService {

	// 엘범 업데이트
	public void insertAlbum(AlbumVO album);

	// 엘범 리스트
	public List<AlbumVO> listAlbum();
	
	public AlbumVO readAlbum(int abno);
	// 엘범 상세보기
	public List<AlbumVO> readAlbum_single(int abno);
	
	//새로운 앨범 
	public List<AlbumVO> newly();
	
	//좋아요순 
	public List<AlbumVO> getCountLikes();
	
	//트랙 이름으로 앨범-싱글 리스트
	public List<AlbumVO> searchAlbumWithTrackName(String tname);
	
	//앨범 총길이
	public String calTotalLength(int abno);
	
	//어드민
	
	//앨범 관리자 리스트
	public List<AlbumVO> viewAlbumListWithPaging(Criteria cri);
	
	//페이징
	public PageMaker pagingList(Criteria cri);
	
	//앨범 검색
	public List<AlbumVO> selectAlbumWithKeyword(String word);

	//top15
	public List<AlbumVO> topAlbums();

	//앨범 세부사항
	public AlbumVO viewAlbumList(int abno);
	
	//앨범 수정
	public int updateAlbum(AlbumVO avo);
	
	//앨범 삭제
	public void deleteAlbum(int pbno);
	

}
