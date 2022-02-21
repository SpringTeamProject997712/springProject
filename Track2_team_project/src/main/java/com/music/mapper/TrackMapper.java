package com.music.mapper;

import java.util.List;

import com.music.domain.AlbumVO;
import com.music.domain.TrackVO;

public interface TrackMapper {

	public List<AlbumVO> listNewly();
	
	//tbno를 받아서 트랙VO를 가져온다
	public TrackVO selectTrack(int tbno);
	
	//이름을 받아서 이름이 겹치는 트랙 VO를 가져온다
	public List<TrackVO> searchTrackList(String name);
}
