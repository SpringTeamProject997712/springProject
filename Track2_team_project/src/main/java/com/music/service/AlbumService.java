package com.music.service;

import java.util.List;

import com.music.domain.AlbumVO;

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
}
