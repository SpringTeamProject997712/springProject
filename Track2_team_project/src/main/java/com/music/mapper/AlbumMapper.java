package com.music.mapper;

import java.util.List;

import com.music.domain.AlbumVO;
import com.music.utility.Criteria;

public interface AlbumMapper {
	
	//엘범 업데이트
	public void insertAlbum(AlbumVO album);
	
	//엘범 리스트
	public List<AlbumVO> listAlbum();
	
	
	//앨범상세보기
	public AlbumVO readAlbum(int abno);
	//엘범 상세보기
	public List<AlbumVO> readAlbum_single(int abno);
	
	//새로운 앨범 
	public List<AlbumVO> listNewly();
	
	//좋아요 순 정렬
	public List<AlbumVO> getCountLikes();

	
	//트랙 이름으로 앨범-싱글 리스트 찾기
	public List<AlbumVO> searchAlbumWithTrackName(String tname);
	
	//관리자
	
	//관리자 엘범 리스트
	public List<AlbumVO> viewAlbumListWithPaging(Criteria cri);
	
	//페이징
	public int countAlbum(Criteria cri);
}
