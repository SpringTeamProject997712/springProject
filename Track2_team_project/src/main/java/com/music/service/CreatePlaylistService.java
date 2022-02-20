package com.music.service;

import java.util.List;

import com.music.domain.PlaylistVO;
import com.music.domain.jPlayerVO;

public interface CreatePlaylistService {

	public List<jPlayerVO> selectMethod(int menu);
	public int insertBasicPlaylist(String id);
	public int insertPlaylist(PlaylistVO pvo);
	public int countPlaylist(String id);
	public int maxPlbno(String id);
	public int insertPlaylistDetail(PlaylistVO vo);
}
