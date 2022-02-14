package com.music.service;

import java.util.List;

import com.music.domain.PlaylistVO;

public interface CreatePlaylistService {

	//트랙에서 4장 뽑아서 플레이리스트로 만들어버림
	public List<PlaylistVO> addRandomPlaylist();
}
