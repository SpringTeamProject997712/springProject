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
	
	//관리자
	
	//트랙관리자 리스트
	public List<TrackVO> viewTrackListWithPaging(int abno);

	//트랙 세부사항
	public TrackVO viewTrackList(int tbno);
	
	//트랙 수정
	public int updateTrack(TrackVO tvo);
	
}
