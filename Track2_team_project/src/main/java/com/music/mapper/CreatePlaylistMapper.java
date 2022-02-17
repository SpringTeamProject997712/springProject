package com.music.mapper;

import java.util.List;

import com.music.domain.TrackVO;

public interface CreatePlaylistMapper {

	//트랙리스트 뽑아옴
	public List<TrackVO> viewTrackList();
	
	//트랙리스트 5개 뽑아옴
	public List<TrackVO> viewTrackList5();
	
	//회원가입하면 베이직 플레이리스트 만들어줌(첫화면 컨트롤용)
	public int insertBasicPlaylist(String id);
}
