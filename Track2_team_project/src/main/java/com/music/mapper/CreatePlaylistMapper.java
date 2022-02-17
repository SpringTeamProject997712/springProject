package com.music.mapper;

import java.util.List;

import com.music.domain.TrackVO;

public interface CreatePlaylistMapper {

	//트랙리스트 뽑아옴
	public List<TrackVO> viewTrackList();
	
	//트랙리스트 5개 뽑아옴
	public List<TrackVO> viewTrackList5();
}
