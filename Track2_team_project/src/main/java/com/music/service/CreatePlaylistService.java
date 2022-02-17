package com.music.service;

import java.util.List;

import com.music.domain.jPlayerVO;

public interface CreatePlaylistService {

	public List<jPlayerVO> selectMethod(int menu);
	public int insertBasicPlaylist(String id);
}
