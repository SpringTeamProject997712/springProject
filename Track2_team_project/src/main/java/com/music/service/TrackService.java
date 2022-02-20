package com.music.service;

import java.util.List;

import com.music.domain.AlbumVO;
import com.music.domain.TrackVO;
import com.music.domain.jPlayerVO;

public interface TrackService {
	
	public List<AlbumVO> listNewly();
	
	public TrackVO selectTrack(int tbno);
	
	public jPlayerVO convertTrackToJPlayer(TrackVO tvo);
	
	public List<TrackVO> searchTrackList(String name);
	
}
