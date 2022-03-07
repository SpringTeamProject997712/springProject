package com.music.service;

import java.util.List;

import com.music.domain.PlaylistVO;
import com.music.domain.jPlayerVO;

public interface CreatePlaylistService {

	public List<jPlayerVO> selectMethod(PlaylistVO vo);
	public int insertBasicPlaylist(PlaylistVO pvo);
	public int insertPlaylist(PlaylistVO pvo);
	public int countPlaylist(String id);
	public int maxPlbno(String id);
	public int insertPlaylistDetail(PlaylistVO vo);
	public int minPlbno(String id);
	public int deletePdbnoWithIdTbno(PlaylistVO vo);
	public int clearQue(int plbno);
	public int modifyPlaylist(PlaylistVO pvo);
	public PlaylistVO selectJustOnePlaylist(int plbno);
	public int deletePlaylist(PlaylistVO pvo);
}
