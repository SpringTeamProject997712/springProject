package com.music.mapper;

import java.util.List;

import com.music.domain.GenresVO;

public interface GenresMapper {
	public List<GenresVO> genresView(String genre);
}
