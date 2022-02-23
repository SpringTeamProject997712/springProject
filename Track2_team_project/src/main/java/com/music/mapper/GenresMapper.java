package com.music.mapper;

import java.util.List;

import com.music.domain.AlbumVO;
import com.music.domain.GenresVO;

public interface GenresMapper {
	public List<GenresVO> genresView(String genre);
	public GenresVO genrelist(String genre);
	public List<AlbumVO> listNewly();
}
