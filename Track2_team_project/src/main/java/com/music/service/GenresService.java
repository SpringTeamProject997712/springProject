package com.music.service;

import java.util.List;

import com.music.domain.GenresVO;

public interface GenresService {
		public List<GenresVO> genresView(String genre);
}
