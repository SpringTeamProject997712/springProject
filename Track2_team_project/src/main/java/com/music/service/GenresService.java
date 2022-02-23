package com.music.service;

import java.util.List;

import com.music.domain.AlbumVO;
import com.music.domain.GenresVO;

public interface GenresService {
		public List<GenresVO> genresView(String genre);
		public GenresVO genrelist(String genre);
		public List<AlbumVO> listNewly();
}
	