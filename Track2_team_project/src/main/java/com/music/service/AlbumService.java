package com.music.service;

import java.util.List;

import com.music.domain.AlbumVO;

public interface AlbumService {

	// 엘범 업데이트
	public void insertAlbum(AlbumVO album);

	// 엘범 리스트
	public List<AlbumVO> listAlbum();

	// 엘범 상세보기
	public AlbumVO readAlbum(int pbno);

}
