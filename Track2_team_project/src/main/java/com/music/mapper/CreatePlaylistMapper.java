package com.music.mapper;

import java.util.List;

import com.music.domain.PlaylistVO;
import com.music.domain.TrackVO;

public interface CreatePlaylistMapper {

	//트랙리스트 뽑아옴
	public List<TrackVO> viewTrackList();
	
	//트랙리스트 5개 뽑아옴
	public List<TrackVO> viewTrackList5();
	
	//회원가입하면 베이직 플레이리스트 만들어줌(첫화면 컨트롤용)
	public int insertBasicPlaylist(String id);
	
	//id로 basic_playlist의 plbno를 찾음
	public Integer selectBasicPlaylistPrimaryKey(String id);
	
	//id로 플레이리스트와 플레이리스트 디테일들 소환
	public List<PlaylistVO> selectPlaylistwithId(String id);
	
	//id로 플레이리스트와 그 플레이리스트의 트랙 개수들 소환
	public List<PlaylistVO> readPlaylistsWithId(String id);
	
	//트랙 개수 소환
	public Integer countTrack(int plbno);
	
	//플레이리스트 번호로 플레이리스트와 플레이리스트 디테일 소환
	public List<PlaylistVO> selectPlaylist(int plbno);
}
