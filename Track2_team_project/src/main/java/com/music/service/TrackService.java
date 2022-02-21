package com.music.service;

import java.util.List;

import com.music.domain.AlbumVO;
import com.music.domain.TrackVO;
import com.music.domain.jPlayerVO;
import com.music.utility.Criteria;
import com.music.utility.PageMaker;

public interface TrackService {
	
	public List<AlbumVO> listNewly();
	
	public TrackVO selectTrack(int tbno);
	
	public jPlayerVO convertTrackToJPlayer(TrackVO tvo);
	
	//관리자
	
	//트랙관리자 리스트
	public List<TrackVO> viewTrackListWithPaging(Criteria cri);
	
	//페이징
	public PageMaker pagingList(Criteria cri);
}
